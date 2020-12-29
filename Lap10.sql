--Phần III: Bài tập tự làm
CREATE DATABASE LAP10
USE LAP10
CREATE TABLE Toys
(
	ProductCode VARCHAR(5) NOT NULL,
	Name VARCHAR(30),
	Category VARCHAR(30),
	Manufacturer VARCHAR(40),
	AgeRange VARCHAR(15),
	UnitPrice money,
	NetWeight INT,
	QtyOnHand INT,
	CONSTRAINT PK_ProductCode PRIMARY KEY (ProductCode)
)
INSERT INTO Toys
VALUES('BB1','Bup Be Baby','Bup Be','Viet Nam','3-10',12000,500,23),
('BB2','Gau Teddy','Thu nhoi bong','Viet Nam','5-10',12450,300,33),
('BB3','Chuot Mickey','Thu nhoi bong','English','3-15',22000,600,20),
('RB1','Rubic','Lap ghep','France','10-50',32050,250,50),
('MG1','May Game','Game','English','5-25',12500,300,45),
('XH1','Xep hinh','Lap ghep','Viet Nam','5-30',2000,600,53),
('CN1','Co Ca Ngua','Game','Viet Nam','8-40',6500,550,43),
('RG1','Rut Go','Game','English','15-40',7500,900,83),
('BB4','Vit Donan','Bup Be','Viet Nam','3-20',12500,600,29),
('OT1','Oto','Do choi','Viet Nam','3-15',12000,700,21),
('MT1','Motobike','Do Choi','Viet Nam','3-15',12500,400,90),
('TH1','Tau Hoa','do Choi','Viet Nam','3-20',12450,1000,45),
('BB5','Minion','Thu nhoi bong','Viet Nam','3-30',13300,200,63)

--2. Viết câu lệnh tạo Thủ tục lưu trữ có tên là HeavyToys cho phép liệt kê tất cả các loại đồ chơi có
--trọng lượng lớn hơn 500g.
CREATE PROCEDURE HeavyToys
AS
SELECT * 
FROM Toys
WHERE Toys.NetWeight >= 500
EXECUTE HeavyToys

--3. Viết câu lệnh tạo Thủ tục lưu trữ có tên là PriceIncreasecho phép tăng giá của tất cả các loại đồ
--chơi lên thêm 10 đơn vị giá.
CREATE PROCEDURE PriceIncreasecho
AS
