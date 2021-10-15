--DML queries to fill the database
use [TStore]

INSERT INTO Customer 
		VALUES('CU001','ERWIN','JAKARTA','082122221610','male','erwinganteng@yahoo.com')
INSERT INTO Customer 
		VALUES('CU002','VERO','TANJUNG PINANG','082222221000','female','verocantik@yahoo.com')
INSERT INTO Customer 
		VALUES('CU003','ANGEL','MANADO','08114338888','female','angelcantik@yahoo.com')
INSERT INTO Customer
		VALUES('CU004','ZEVIRA','MEDAN','082122220090','female','zeviracantik@yahoo.com')
INSERT INTO Customer  
		VALUES('CU005','FANISA','KALIBATA','08229292929','female','fanisacantik@yahoo.com')
INSERT INTO Customer
		VALUES('CU006','DIVA','JAKARTA','0812345678','female','divacantik@yahoo.com')
INSERT INTO Customer 
		VALUES('CU007','DANIEL','BINUS','0821212121','male','danielganteng@yahoo.com')
INSERT INTO Customer
		VALUES('CU008','CALVIN','BINUS','08211001001','male','calvinganteng@yahoo.com')
INSERT INTO Customer
		VALUES('CU009','MIKE','JAKARTA','08219999023','male','mikeganteng@yahoo.com')
insert into Customer 
		VALUES('CU010','STEFANUS','JAKARTA','08525252525','male','stefanusganteng@yahoo.com')
insert into Customer 
		VALUES('CU011','CLARISA','MEDAN','082120605043','female','clarisaganteng@yahoo.com')


INSERT INTO Staff 
		VALUES('ST001','ZAYN MALIK','BANDAR LAMPUNG','0812345678','male','zaynmalik@gmail.com',3000000)
INSERT INTO Staff 
		VALUES('ST002','LIAM PAYNE','SUMATERA','0811111111','male','liampayne@gmail.com',6000000)
INSERT INTO Staff 
		VALUES('ST003','HARRY STYLES','KALIMANTAN','0822222222','male','harrystyles@gmail.com',8000000)
INSERT INTO Staff
		VALUES('ST004','LOUIS TOMLINSON','PAPUA','083333333','male','louistom@gmail.com',4500000)
INSERT INTO Staff 
		VALUES('ST005','NIALL HORAN','SANGER','084444444','male','niallhoran@gmail.com',3200000)
INSERT INTO Staff 
		VALUES('ST006','LUKE HEMMINGS','JAKARTA','0855555555','male','lukehem@gmail.com',3100000)
INSERT INTO Staff 
		VALUES('ST007','ASHTON IRWIN','SEMARANG','0866666666','male','ashtonirwin@gmail.com',3125000)
INSERT INTO Staff 
		VALUES('ST008','CALUM HOOD','MEDAN','0877777777','male','calumhood@gmail.com',7000000)
INSERT INTO Staff 
		VALUES('ST009','MICHAEL CLIFFORD','JAWA BARAT','0888888888','male','michaelclif@gmail.com',8000000)
INSERT INTO Staff 
		VALUES('ST010','JIPYEONG','MANADO','0899999999','male','jipyeong@gmail.com',10000000)
INSERT INTO Staff 
		VALUES('ST011','DOSAN','PALU','0800000000','male','dosan@gmail.com',7000000)
INSERT INTO Staff 
		VALUES('ST012','JESSY','MEDAN','0800000111','female','jessy@gmail.com',8000000)


INSERT INTO Vendor
		VALUES('VE001','JUNGKOOK', 'BUSAN', '08123232344','jungkook@yahoo.com')
INSERT INTO Vendor
		VALUES('VE002','TAEHYUNG', 'BUSAN', '08123232300','taehyung@yahoo.co.id')
INSERT INTO Vendor
		VALUES('VE003','J HOPE', 'BUSAN', '08123232311','hope@gmail.com')
INSERT INTO Vendor
		VALUES('VE004','RAP MON', 'BUSAN', '08123232322','rapmon@yahoo.com')
INSERT INTO Vendor
		VALUES('VE005','SUGA', 'BUSAN', '08123232333','sugar@yahoo.co.id')
INSERT INTO Vendor
		VALUES('VE006','JIMIN', 'BUSAN', '08123232355','jiminie@yahoo.com')
INSERT INTO Vendor
		VALUES('VE007','JIN', 'BUSAN', '08123232366','jinjin@yahoo.com')
INSERT INTO Vendor
		VALUES('VE008','DAL MI', 'BUSAN', '08123232377','dalmi@gmail.com')
INSERT INTO Vendor
		VALUES('VE009','IN JAE', 'BUSAN', '08123232388','injae@yahoo.com')
INSERT INTO Vendor
		VALUES('VE010','SA HA', 'BUSAN', '08123232399','saha@yahoo.com')
INSERT INTO Vendor
		VALUES('VE011','Saad Do Hyuk', 'BUSAN', '08123232332','chulsan@yahoo.com')
INSERT INTO Vendor
		VALUES('VE012','Nam Joo-Hyuk', 'BUSAN', '08123232111','joohyuk@yahoo.com')


insert into [Clothes Category] values ('CA001', 'Blouse')
insert into [Clothes Category] values ('CA002', 'Shirt')
insert into [Clothes Category] values ('CA003', 'T-Shirt')
insert into [Clothes Category] values ('CA004', 'Sweater')
insert into [Clothes Category] values ('CA005', 'Hoodie')
insert into [Clothes Category] values ('CA006', 'Long Pants')
insert into [Clothes Category] values ('CA007', 'Short Pants')
insert into [Clothes Category] values ('CA008', 'Skirt')
insert into [Clothes Category] values ('CA009', 'Jacket')
insert into [Clothes Category] values ('CA010', 'Suit')


insert into Clothes values ('CL001', 'MATAHARI', 25000, 12, 'CA001')
insert into Clothes values ('CL002', 'PULL&BEAR', 50000, 55, 'CA002')
insert into Clothes values ('CL003', 'MANGOS', 55000, 100, 'CA003')
insert into Clothes values ('CL004', 'CHARLES AND KEITH', 700000, 99, 'CA004')
insert into Clothes values ('CL005', 'POLOES', 81000, 880, 'CA005')
insert into Clothes values ('CL006', 'ANGEL AND ZEVIRA', 90000, 3, 'CA006')
insert into Clothes values ('CL007', 'VERO AND ERWIN', 95000, 2, 'CA007')
insert into Clothes values ('CL008', 'THE VEAZ', 22050, 4, 'CA008')
insert into Clothes values ('CL009', 'MINI FASHION', 50000, 100, 'CA009')
insert into Clothes values ('CL010', 'BERSKA', 90000, 190, 'CA010')
insert into Clothes values ('CL011', 'Zara Brisky', 70000, 190, 'CA001')
insert into Clothes values ('CL012', 'Uniqlo KW', 75000, 160, 'CA002')
insert into Clothes values ('CL013', 'H&M KW', 70000, 170, 'CA003')
insert into Clothes values ('CL014', 'Addidas KW', 70000, 200, 'CA004')
insert into Clothes values ('CL015', 'Nike KW', 70000, 210, 'CA005')


insert into [Purchase Transaction] values ('PU001', 'ST001','VE001', '2020-12-08 17:30:22')
insert into [Purchase Transaction] values ('PU002', 'ST002','VE002', '2020-12-07 17:26:22')
insert into [Purchase Transaction] values ('PU003', 'ST003','VE003', '2020-12-05 15:30:52')
insert into [Purchase Transaction] values ('PU004', 'ST004','VE004', '2020-11-21 07:30:22')
insert into [Purchase Transaction] values ('PU005', 'ST005','VE005', '2020-11-20 19:30:22')
insert into [Purchase Transaction] values ('PU006', 'ST006','VE006', '2020-12-08 10:30:22')
insert into [Purchase Transaction] values ('PU007', 'ST007','VE007', '2020-12-05 11:00:29')
insert into [Purchase Transaction] values ('PU008', 'ST008','VE008', '2020-11-11 17:01:21')
insert into [Purchase Transaction] values ('PU009', 'ST009','VE009', '2020-10-26 19:20:50')
insert into [Purchase Transaction] values ('PU010', 'ST010','VE010', '2020-12-01 13:30:00')
insert into [Purchase Transaction] values ('PU011', 'ST011','VE011', '2020-12-02 17:40:31')
insert into [Purchase Transaction] values ('PU012', 'ST011','VE010', '2020-12-02 14:30:51')
insert into [Purchase Transaction] values ('PU013', 'ST010','VE011', '2020-12-01 11:20:31')
insert into [Purchase Transaction] values ('PU014', 'ST009','VE011', '2020-11-30 17:22:45')
insert into [Purchase Transaction] values ('PU015', 'ST008','VE011', '2020-12-05 17:11:43')
insert into [Purchase Transaction] values ('PU016', 'ST007','VE012', '2020-12-04 17:09:33')
insert into [Purchase Transaction] values ('PU017', 'ST007','VE001', '2020-12-04 17:09:33')
insert into [Purchase Transaction] values ('PU018', 'ST007','VE002', '2020-04-04 17:09:33')


insert into [Purchase Transaction Detail] values ('PU001', 'CL001', 12)
insert into [Purchase Transaction Detail] values ('PU001', 'CL002', 30)
insert into [Purchase Transaction Detail] values ('PU002', 'CL003', 13)
insert into [Purchase Transaction Detail] values ('PU002', 'CL004', 31)
insert into [Purchase Transaction Detail] values ('PU003', 'CL005', 14)
insert into [Purchase Transaction Detail] values ('PU003', 'CL006', 32)
insert into [Purchase Transaction Detail] values ('PU004', 'CL007', 15)
insert into [Purchase Transaction Detail] values ('PU004', 'CL008', 33)
insert into [Purchase Transaction Detail] values ('PU005', 'CL009', 16)
insert into [Purchase Transaction Detail] values ('PU005', 'CL010', 34)
insert into [Purchase Transaction Detail] values ('PU006', 'CL011', 17)
insert into [Purchase Transaction Detail] values ('PU006', 'CL012', 35)
insert into [Purchase Transaction Detail] values ('PU007', 'CL001', 18)
insert into [Purchase Transaction Detail] values ('PU007', 'CL002', 36)
insert into [Purchase Transaction Detail] values ('PU008', 'CL003', 19)
insert into [Purchase Transaction Detail] values ('PU008', 'CL004', 37)
insert into [Purchase Transaction Detail] values ('PU009', 'CL005', 20)
insert into [Purchase Transaction Detail] values ('PU009', 'CL006', 40)
insert into [Purchase Transaction Detail] values ('PU010', 'CL007', 21)
insert into [Purchase Transaction Detail] values ('PU011', 'CL008', 22)
insert into [Purchase Transaction Detail] values ('PU012', 'CL009', 23)
insert into [Purchase Transaction Detail] values ('PU013', 'CL010', 24)
insert into [Purchase Transaction Detail] values ('PU014', 'CL011', 25)
insert into [Purchase Transaction Detail] values ('PU015', 'CL012', 26)
insert into [Purchase Transaction Detail] values ('PU016', 'CL013', 27)
insert into [Purchase Transaction Detail] values ('PU017', 'CL014', 28)
insert into [Purchase Transaction Detail] values ('PU018', 'CL015', 29)


insert into [Sales Transaction] values('SA001', 'ST001', 'CU001', '2020-12-08 17:30:32')
insert into [Sales Transaction] values('SA002', 'ST002', 'CU002', '2020-12-07 16:31:31')
insert into [Sales Transaction] values('SA003', 'ST003', 'CU003', '2020-12-06 15:32:30')
insert into [Sales Transaction] values('SA004', 'ST004', 'CU004', '2020-12-05 14:33:29')
insert into [Sales Transaction] values('SA005', 'ST005', 'CU005', '2020-12-04 13:34:28')
insert into [Sales Transaction] values('SA006', 'ST006', 'CU006', '2020-12-03 12:35:27')
insert into [Sales Transaction] values('SA007', 'ST007', 'CU007', '2020-12-02 11:36:26')
insert into [Sales Transaction] values('SA008', 'ST008', 'CU008', '2020-12-01 10:37:25')
insert into [Sales Transaction] values('SA009', 'ST009', 'CU009', '2020-11-08 09:38:24')
insert into [Sales Transaction] values('SA010', 'ST010', 'CU010', '2020-11-07 08:39:23')
insert into [Sales Transaction] values('SA011', 'ST011', 'CU011', '2020-11-06 07:40:22')
insert into [Sales Transaction] values('SA012', 'ST012', 'CU011', '2020-11-09 07:40:22')
insert into [Sales Transaction] values('SA013', 'ST010', 'CU011', '2020-05-09 06:40:22')
insert into [Sales Transaction] values('SA014', 'ST011', 'CU011', '2020-04-15 04:40:22')
insert into [Sales Transaction] values('SA015', 'ST012', 'CU011', '2020-11-15 01:40:22')
insert into [Sales Transaction] values('SA016', 'ST012', 'CU011', '2020-11-15 02:40:22')
insert into [Sales Transaction] values('SA017', 'ST012', 'CU010', '2020-11-15 00:40:22')


insert into [Sales Transaction Detail] values('SA001', 'CL001', 1)
insert into [Sales Transaction Detail] values('SA002', 'CL002', 2)
insert into [Sales Transaction Detail] values('SA003', 'CL003', 3)
insert into [Sales Transaction Detail] values('SA004', 'CL004', 11)
insert into [Sales Transaction Detail] values('SA005', 'CL005', 10)
insert into [Sales Transaction Detail] values('SA006', 'CL006', 14)
insert into [Sales Transaction Detail] values('SA007', 'CL007', 15)
insert into [Sales Transaction Detail] values('SA007', 'CL008', 13)
insert into [Sales Transaction Detail] values('SA007', 'CL009', 12)
insert into [Sales Transaction Detail] values('SA007', 'CL010', 17)
insert into [Sales Transaction Detail] values('SA008', 'CL008', 19)
insert into [Sales Transaction Detail] values('SA009', 'CL009', 16)
insert into [Sales Transaction Detail] values('SA010', 'CL010', 18)
insert into [Sales Transaction Detail] values('SA011', 'CL011', 20)
insert into [Sales Transaction Detail] values('SA012', 'CL012', 12)
insert into [Sales Transaction Detail] values('SA012', 'CL001', 1)
insert into [Sales Transaction Detail] values('SA013', 'CL002', 2)
insert into [Sales Transaction Detail] values('SA014', 'CL003', 3)
insert into [Sales Transaction Detail] values('SA015', 'CL004', 4)
insert into [Sales Transaction Detail] values('SA016', 'CL005', 4)
insert into [Sales Transaction Detail] values('SA016', 'CL006', 4)
insert into [Sales Transaction Detail] values('SA016', 'CL007', 4)
insert into [Sales Transaction Detail] values('SA016', 'CL008', 4)
insert into [Sales Transaction Detail] values('SA017', 'CL001', 4)
insert into [Sales Transaction Detail] values('SA017', 'CL002', 4)
insert into [Sales Transaction Detail] values('SA017', 'CL003', 4)