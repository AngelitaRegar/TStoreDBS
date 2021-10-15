use [TStore]

--1. Display Transaction Count (obtained from the total transaction), StaffName, and VendorName for each purchase which made by staff whose salary is between 5000000 and 10000000, to a vendor whose name contains character ‘o’
go
select
	[Transaction Count] = count(pt.purchaseID),
	[Staff Name] = s.[name],
	[Vendor Name] = v.[name]
from
	[Purchase Transaction] pt
	join Vendor v on pt.vendorID = v.vendorID
	join Staff s on pt.staffID = s.staffID
where
	s.salary > 5000000 
	and s.salary < 10000000 
	and v.[name] like '%o%'
group by
	s.[name], v.[name]

--2. Display SalesId, SalesDate, CustomerName, and CustomerAddress for every sale that happens on 15th day of the month, where the sum of the clothes’ price is more than 150000.
go
select
	[SalesId] = st.salesID,
	[Sales Date] = [date],
	[Customer Name] = [name],
	[Customer address] = [address]
from
	[Sales Transaction] st
	join [Sales Transaction Detail] std on st.salesID = std.salesID
	join Customer cu on st.customerID = cu.customerID
	join Clothes c on std.clothesID = c.clothesID
where day([date]) = 15
group by st.salesID, [name], [address], [date]
having sum(price) > 150000

--3. Display Month (obtained from month name of one month before current date), Transaction Count (obtained from the total of sales), and Cloth Sold Count (obtained from sum quantity) for each sale which is managed by female staff and the sold cloth price is more than 70000.
go
select
	[Month] = datename(month, dateadd(month, -1, getdate())),
	[Transaction Count] = count(st.salesID),
	[Cloth Sold Count] = sum(std.quantity)
from 
	[Sales Transaction] st 
	join [Sales Transaction Detail] std on st.salesID = std.salesID
	join [Clothes] c on std.clothesID = c.clothesID
	join [Staff] s on st.staffID = s.staffID
where s.gender = 'female' 
	and c.price > 70000 
	and month(st.[date]) = month(dateadd(month, -1, getdate()))

--4. Display Brand Last Name (obtained from the last word from the ClothBrand) and Maximum Cloth(s) Sold (obtained from maximum quantity) for each sale which the sum of the quantity is more than 5 and less than 10.
go
select
	[Brand Last Name] = reverse(substring(reverse(brand), 1, (charindex(' ', reverse(brand) +' ')-1 ) )),
	[Maximum Cloth(s) Sold] = max(quantity)
from
	[Sales Transaction] st 
	join [Sales Transaction Detail] std on st.salesID = std.salesID
	join [Clothes] c on std.clothesID = c.clothesID
group by brand
having sum(quantity) > 5 and sum(quantity) < 10

--5. Display ClothBrand, ClothPrice, and Stock for each purchase where the cloth price is between average price minus 35000 and the average price. The average price is obtained from average cloth price which is purchased from vendor with the first name ‘Saad’. (alias subquery)
select
	[ClothBrand] = brand,
	[ClothPrice] = price,
	[Stock] = stock
from Clothes c , (
	select [avg_price] = avg(price)
	from
		[Purchase Transaction] pt
		join [Purchase Transaction Detail] ptd on pt.purchaseID = ptd.purchaseID
		join Vendor v on pt.vendorID = v.vendorID
		join Clothes c on ptd.clothesID = c.clothesID
	where [name] like 'Saad%') as avgprice
where price >= (avgprice.avg_price - 35000) and price <= avgprice.avg_price

--6. Display Sales Date (obtained SalesDate with format ‘mm/dd/yyyy’), ClothBrand, Quantity for each sale where the quantity is more than total sales happened in May. Sort the result by Quantity in ascending order. (alias subquery)
go
select
	[Sales Date] = convert(varchar, [date], 101),
	[ClothBrand] = brand,
	[Quantity] = quantity
from
	[Sales Transaction] st 
	join [Sales Transaction Detail] std on st.salesID = std.SalesID
	join [Clothes] c on std.clothesid = c.clothesID, (
	select [qty] = sum(quantity) 
	from [Sales Transaction], [Sales Transaction Detail]
	where [Sales Transaction].salesID = [Sales Transaction Detail].SalesID
		and month([date]) = 5) as may_sales
where quantity > may_sales.qty
order by [Quantity] asc

--7. Display PurchaseId, Staff Name (obtained from lowercase the StaffName), Staff Salary (obtained from adding ‘IDR ’ in front of StaffSalary), Purchase Date (obtained from the PurchaseDate with format ‘Mon dd, yyyy’) and Total Quantity (obtained from the sum of purchased clothes’ quantity) for every purchase where the Quantity is more than MinQuantity (obtained from the minimum quantity from each purchase that happened on the 4th  month). (alias subquery)
go
select
	[PurchaseId] = pt.purchaseID,
	[Staff Name] = lower([name]),
	[Staff Salary] = 'IDR '+ cast(salary as varchar),
	[Purchase Date] = convert(varchar, [date], 107),
	[Total Quantity] = sum(quantity)
from
	[Purchase Transaction] pt
	join [Purchase Transaction Detail] ptd on pt.purchaseID = ptd.purchaseID
	join [Clothes] c on ptd.clothesID = c.clothesID
	join Staff s on pt.staffID = s.staffID, (
	select[min] = min(quantity)
	from [Purchase Transaction] pt
		join [Purchase Transaction Detail] ptd on pt.purchaseID = ptd.purchaseID
	where month([date]) = 4) as minqty
where quantity > minqty.[min]
group by pt.purchaseID, [name], salary, [date]

--8. Display Vendor Id (obtained from the last 3 character of VendorId), VendorName, Clothes Bought (obtained from sum of quantity and ended with ‘ piece(s)’), and Vendor Phone (obtained by replacing 2 first digits with ‘+62’) for every purchase where the Clothes Bought is less than 100 and quantity is more than the average quantity of all transactions. (alias subquery)
select
	[Vendor Id] = substring(v.vendorID, 3, len(v.vendorID)),
	[Vendor Name] = v.[name],
	[Cloths Bought] = cast(sum(quantity) as varchar) + ' piece(s)',
	[Vendor Phone] = stuff(v.[phone number],1,2,'+62')
from
	[Purchase Transaction] pt
	join [Purchase Transaction Detail] ptd on pt.purchaseID = ptd.purchaseID
	join [Clothes] c on ptd.clothesID = c.clothesID
	join Vendor v on pt.vendorID = v.vendorID, (
	select [avg] = avg(quantity)
	from [Purchase Transaction] pt
		join [Purchase Transaction Detail] ptd on pt.purchaseID = ptd.purchaseID
		join [Clothes] c on ptd.clothesID = c.clothesID) as avgqty
where quantity < 100 and quantity > avgqty.[avg]
group by v.vendorID, v.[name], v.[phone number]

--9. Create a view named ‘StoreSalesView’ to display SalesId, CustomerName, CustomerPhone, Cloth Average Price (obtained from average of ClothPrice starts with ‘IDR ’), and Sales Quantity (obtained from the sum of quantity ended with ‘ piece(s)’) for every sales which Cloth Average Price is more than 100000 and the Sales Quantity is more than 4.
go
create view [StoreSalesView] as
select
	[SalesId] = st.salesID,
	[CustomerName] = cu.[name],
	[CustomerPhone] = cu.[phone number],
	[Cloth Average Price] = 'IDR ' + cast(avg(c.price) as varchar),
	[SalesQuantity] = cast(sum(std.quantity) as varchar) + ' piece(s)'
from
	[Sales Transaction] st 
	join [Sales Transaction Detail] std on st.salesID = std.SalesID
	join [Clothes] c on std.clothesID = c.clothesID
	join [Customer] cu on st.Customerid = cu.customerID
group by
	st.salesID, cu.[name],cu.[phone number]
having
	avg(c.price) > 100000 and sum(std.quantity) > 4


--10. Create a view named ‘StorePurchaseView’ to display the Purchase Month (obtained from the month name of purchase date), Minimum Purchase Quantity (obtained from the minimum of quantity), and Purchased Cloth Count (obtained from the total of clothes purchased) for every purchase where the Minimum Purchase Quantity is more than 10 and the Purchase Cloth Count is more than 1.
go
create view [StorePurchaseView] as
select
	[Puchase Month] = datename(month, ([date])),
	[Minimun Puchase Quantity] = min(quantity),
	[Purchase Cloth Count] = sum(quantity)
from
	[Purchase Transaction] pt
	join [Purchase Transaction Detail] ptd on pt.purchaseID = ptd.purchaseID
	join [Clothes] c on ptd.clothesID = c.clothesID
group by
	datename(month, ([date]))
having
	min(quantity) > 10 and sum(quantity) > 1

select * from [StorePurchaseView]