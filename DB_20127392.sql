﻿--b1: tạo csdl
USE master --CHUYỂN CSDL MẶC ĐỊNH VỀ MASTER
GO --KẾT THÚC KHỐI LỆNH TRÊN
IF DB_ID('QLTHIHOCTHUAT') IS NOT NULL --KIỂM TRA CSDL CÓ TỒN TẠI KO?
	DROP DATABASE QLTHIHOCTHUAT --XÓA CSDL
GO
CREATE DATABASE QLTHIHOCTHUAT --TẠO CSDL
GO
USE QLTHIHOCTHUAT --DÙNG CSDL 
GO
--b2: tạo bảng & khóa chính 
CREATE TABLE KHACHHANG
(
	--KHAI BÁO THUỘC TÍNH TRONG BẢNG
	MAKH VARCHAR(15),
	TEN VARCHAR (50),
	DCHI VARCHAR(100),
	DIENTHOAI	VARCHAR(15)

	--TẠO KHÓA CHÍNH
	CONSTRAINT PK_KHACHHANG --CÂU LỆNH ĐẶT TÊN KHÓA
	PRIMARY KEY(MAKH) --CÂU LỆNH TẠO KHÓA CHÍNH
)
CREATE TABLE DATCHO
(
	MAKH VARCHAR (15),
	NGAYDI DATE,
	MACB VARCHAR(15)

	CONSTRAINT PK_DATCHO
	PRIMARY KEY (MAKH,NGAYDI,MACB)
)
CREATE TABLE LICHBAY
(
	NGAYDI DATE,
	MACB VARCHAR(15),
	SOHIEU INT,
	MALOAI VARCHAR(15)

	CONSTRAINT PK_LICHBAY
	PRIMARY KEY(NGAYDI, MACB)
)
--b3: tạo khóa ngoại (dây liên kết)
ALTER TABLE DATCHO --BẢNG Ở ĐÂU VÔ CỰC
ADD
	CONSTRAINT FK_DC_KH --ĐẶT TÊN CHO KHÓA
	FOREIGN KEY(MAKH) --THUỘC TÍNH CỦA BẢNG ALTER
	REFERENCES KHACHHANG, --BẢNG Ở ĐẦU CHÌA KHÓA
	CONSTRAINT FK_DC_LB
	FOREIGN KEY (NGAYDI,MACB)
	REFERENCES LICHBAY
--b4: nhập liệu. BẢNG Ở ĐẦU CHÍA KHÓA NHẬP TRƯỚC -> ĐẦU VÔ CỰC
--CHUỖI KHÔNG DẤU: 'ABC'
--SỐ: 2; 3.4
--DATE: '2000-3-30'
--TIME: '3:10:30'
INSERT KHACHHANG(MAKH, TEN, DCHI,DIENTHOAI)
VALUES('1111','11111','11111','1111'),
('2222','222','2222','222')
SELECT * FROM KHACHHANG
--CẬP NHẬT DỮ LIỆU
UPDATE KHACHHANG
SET TEN = 'AAA', DCHI = 'BBB'
WHERE MAKH = '1111'--ĐIỀU KIỆN ĐỂ TÌM DÒNG CẦN CẬP NHẬT
--XÓA DÒNG BỊ SAI
DELETE KHACHHANG
WHERE MAKH = '1111'