--DML queries to simulate the transaction process
use [TStore]

insert into [Purchase Transaction] values ('PU019', 'ST001', 'VE001', DATEADD(hour, -2, getdate()))

insert into [Purchase Transaction Detail] values ('PU019', 'CL001', 44)
update Clothes
set stock = stock + 44
where clothesID = 'CL001'

insert into [Purchase Transaction Detail] values ('PU019', 'CL002', 55)
update Clothes
set stock = stock + 55
where clothesID = 'CL002'

insert into [Purchase Transaction Detail] values ('PU019', 'CL003', 66)
update Clothes
set stock = stock + 66
where clothesID = 'CL003'



insert into [Sales Transaction] values ('SA018', 'ST001', 'CU001', DATEADD(hour, -2, getdate()))

insert into [Sales Transaction Detail] values ('SA018', 'CL001', 12)
update Clothes
set stock = stock - 12
where clothesID = 'CL001'


insert into [Sales Transaction] values ('SA019', 'ST002', 'CU002', DATEADD(hour, -2, getdate()))

insert into [Sales Transaction Detail] values ('SA019', 'CL002', 13)
update Clothes
set stock = stock - 13
where clothesID = 'CL002'

insert into [Sales Transaction Detail] values ('SA019', 'CL003', 14)
update Clothes
set stock = stock - 14
where clothesID = 'CL003'
