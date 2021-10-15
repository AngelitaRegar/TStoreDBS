go
create database [TStore]

go
use [TStore]
--
create table [Staff](
	[staffID] varchar(5) primary key check ([staffID] like 'ST[0-9][0-9][0-9]'),
	[name] varchar(255),
	[address] varchar(255),
	[phone number] varchar(255) check([phone number] not like '%[^0-9]%' and [phone number] like '08%'),
	[gender] varchar(255) check([gender] in ('female', 'male')),
	[email] varchar(255) check([email] like '%@gmail.com' or [email] like '%@yahoo.com' or [email] like '%@yahoo.co.id'),
	[salary] integer check([salary] >= 3000000)
)

create table [Customer](
	[customerID] varchar(5) primary key check ([customerID] like 'CU[0-9][0-9][0-9]'),
	[name] varchar(255),
	[address] varchar(255),
	[phone number] varchar(255) check([phone number] not like '%[^0-9]%' and [phone number] like '08%'),
	[gender] varchar(255) check([gender] in ('female', 'male')),
	[email] varchar(255) check([email] like '%@gmail.com' or [email] like '%@yahoo.com' or [email] like '%@yahoo.co.id')
)

create table [Vendor](
	[vendorID] varchar(5) primary key check ([vendorID] like 'VE[0-9][0-9][0-9]'),
	[name] varchar(255),
	[address] varchar(255),
	[phone number] varchar(255) check([phone number] not like '%[^0-9]%' and [phone number] like '08%'),
	[email] varchar(255) check([email] like '%@gmail.com' or [email] like '%@yahoo.com' or [email] like '%@yahoo.co.id')
)

create table [Clothes Category](
	[clothesCategoryID] varchar(5) primary key check([clothesCategoryID] like 'CA[0-9][0-9][0-9]'),
	[name] varchar(255)
)

create table [Clothes](
	[clothesID] varchar(5) primary key check([clothesID] like 'CL[0-9][0-9][0-9]'),
	[brand] varchar(255) check (len([brand]) > 5 ),
	[price] integer check ([price] >= 20000),
	[stock] integer,
	[clothesCategoryID] varchar(5) foreign key references [Clothes Category]([clothesCategoryID])
)

create table [Purchase Transaction](
	[purchaseID] varchar(5) primary key check([purchaseID] like 'PU[0-9][0-9][0-9]'),
	[staffID] varchar(5) foreign key references [Staff]([staffID] ),
	[vendorID] varchar(5) foreign key references [Vendor]([vendorID]),
	[date] datetime  check (datediff(hour, [date], getdate()) > 1),
)

create table [Purchase Transaction Detail](
	[purchaseID] varchar(5) foreign key references [Purchase Transaction]([purchaseID]),
	[clothesID] varchar(5) foreign key references [Clothes]([clothesID]),
	[quantity] int,
	primary key([purchaseID], [clothesID])
)

create table [Sales Transaction](
	[salesID] varchar(5) primary key check([salesID] like 'SA[0-9][0-9][0-9]'),
	[staffID] varchar(5) foreign key references [Staff]([staffID]),
	[customerID] varchar(5) foreign key references [Customer]([customerID]),
	[date] DATETIME  check (datediff(hour, [date], getdate()) > 1),
)

create table [Sales Transaction Detail](
	[SalesID] varchar(5) foreign key references [Sales Transaction]([salesID]),
	[clothesID] varchar(5) foreign key references [Clothes]([clothesID]),
	[quantity] integer,
	primary key([SalesID], [clothesID])
)

drop database [TStore]
--drop trigger SalesTransactionDetailTrigger
--go
--create trigger SalesTransactionDetailTrigger
--on [Sales Transaction Detail]
--instead of Insert
--as
--begin
--declare @salesTransactionID varchar(5)
--declare @clothesID varchar(5)
--declare @quantity integer
--declare @stock integer
--	if exists (select * from inserted)
--		begin
--		select @salesTransactionID=salesTransactionID, @quantity=quantity,@clothesID=clothesID from inserted
--		select @stock=stock from Clothes where id=@clothesID

--		if(@quantity > @stock)
--		begin
--		print 'Cant buy more than ' + cast(@stock as varchar)
--		delete from [Sales Transaction] where @salesTransactionID = id 
--		end
--		else
--		begin
--		insert into [Sales Transaction Detail] values(@salesTransactionID,@clothesID,@quantity)
--		update Clothes
--		set stock=stock-@quantity
--		where id=@clothesID
--		end
--	end
--end


