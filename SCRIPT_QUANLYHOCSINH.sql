
CREATE DATABASE QuanLyHocSinh
GO

USE QuanLyHocSinh
GO

--===================================================================================================================================================

CREATE TABLE LOAINGUOIDUNG
(
	MaLoai VARCHAR(6) NOT NULL PRIMARY KEY,
	TenLoai NVARCHAR(30) NOT NULL
)

INSERT INTO LOAINGUOIDUNG VALUES('LND001', N'Ban giám hiệu')
INSERT INTO LOAINGUOIDUNG VALUES('LND002', N'Giáo viên')
INSERT INTO LOAINGUOIDUNG VALUES('LND003', N'Nhân viên giáo vụ')

--===================================================================================================================================================

CREATE TABLE NGUOIDUNG
(
	MaNguoiDung VARCHAR(6) NOT NULL PRIMARY KEY,
	MaLoai VARCHAR(6) NOT NULL,
	TenNguoiDung NVARCHAR(30) NOT NULL,
	TenDangNhap NVARCHAR(30) NOT NULL,
	MatKhau VARCHAR(64) NOT NULL,
	CONSTRAINT FK_NGUOIDUNG_LOAINGUOIDUNG FOREIGN KEY(MaLoai) REFERENCES LOAINGUOIDUNG(MaLoai)
)
INSERT INTO NGUOIDUNG (MaNguoiDung, MaLoai, TenDangNhap, TenNguoiDung, MatKhau) VALUES
	('ND123', 'LND002', 'NDSYSTEM1', N'Nguyễn Triệu Vỹ', '0837441290'),
	('ND124', 'LND002', 'NDSYSTEM1', N'Nguyễn Tấn Nhã', '0876432152'),
	('ND125', 'LND002', 'NDSYSTEM1', N'Nguyễn Minh Hoàng', '0736266122'),
	('ND126', 'LND002', 'NDSYSTEM1', N'Nguyễn Văn Thịnh', '0873287121');
--===================================================================================================================================================

CREATE TABLE DANTOC
(
	MaDanToc VARCHAR(6) NOT NULL PRIMARY KEY,
	TenDanToc NVARCHAR(30) NOT NULL
)

INSERT INTO DANTOC VALUES('DT0001', N'Kinh')
INSERT INTO DANTOC VALUES('DT0002', N'Hoa')
INSERT INTO DANTOC VALUES('DT0003', N'Khơ-me')
INSERT INTO DANTOC VALUES('DT0004', N'Chăm')

--===================================================================================================================================================

CREATE TABLE TONGIAO
(
	MaTonGiao VARCHAR(6) NOT NULL PRIMARY KEY,
	TenTonGiao NVARCHAR(30) NOT NULL
)

INSERT INTO TONGIAO VALUES('TG0001', N'Không')
INSERT INTO TONGIAO VALUES('TG0002', N'Phật Giáo')
INSERT INTO TONGIAO VALUES('TG0003', N'Cao Đài')
INSERT INTO TONGIAO VALUES('TG0004', N'Thiên Chúa')
INSERT INTO TONGIAO VALUES('TG0005', N'Tin Lành')

--===================================================================================================================================================

CREATE TABLE NAMHOC
(
	MaNamHoc VARCHAR(6) NOT NULL PRIMARY KEY,
	TenNamHoc NVARCHAR(30) NOT NULL
)

INSERT INTO NAMHOC VALUES('NH1920', '2019-2020')
INSERT INTO NAMHOC VALUES('NH2021', '2020-2021')

--===================================================================================================================================================

CREATE TABLE HOCKY
(
	MaHocKy VARCHAR(3) NOT NULL PRIMARY KEY,
	TenHocKy NVARCHAR(30) NOT NULL,
	HeSo INT,
	CONSTRAINT CK_HOCKY CHECK(CAST(RIGHT(MaHocKy, 1) AS INT) BETWEEN 1 AND 3)
)

INSERT INTO HOCKY VALUES('HK1', N'Học Kỳ 1', 1)
INSERT INTO HOCKY VALUES('HK2', N'Học Kỳ 2', 2)

--===================================================================================================================================================

CREATE TABLE KHOILOP
(
	MaKhoiLop VARCHAR(6) NOT NULL PRIMARY KEY,
	TenKhoiLop NVARCHAR(30) NOT NULL
)

INSERT INTO KHOILOP VALUES('KHOI10', N'Khối 10')
INSERT INTO KHOILOP VALUES('KHOI11', N'Khối 11')
INSERT INTO KHOILOP VALUES('KHOI12', N'Khối 12')

--===================================================================================================================================================

CREATE TABLE MONHOC
(
	MaMonHoc VARCHAR(6) NOT NULL PRIMARY KEY,
	TenMonHoc NVARCHAR(30) NOT NULL,
	SoTiet INT NOT NULL,
	HeSo INT NOT NULL
)

INSERT INTO MONHOC VALUES('MH0001', N'Toán', 90, 2)
INSERT INTO MONHOC VALUES('MH0002', N'Vật Lý', 60, 1)
INSERT INTO MONHOC VALUES('MH0003', N'Hóa Học', 60, 1)
INSERT INTO MONHOC VALUES('MH0004', N'Sinh Học', 60, 1)
INSERT INTO MONHOC VALUES('MH0005', N'Lịch Sử', 45, 1)
INSERT INTO MONHOC VALUES('MH0006', N'Địa Lý', 45, 1)
INSERT INTO MONHOC VALUES('MH0007', N'Ngữ Văn', 90, 2)
INSERT INTO MONHOC VALUES('MH0008', N'Đạo Đức', 30, 1)
INSERT INTO MONHOC VALUES('MH0009', N'Thể Dục', 30, 1)

--===================================================================================================================================================

CREATE TABLE HOCLUC
(
	MaHocLuc VARCHAR(6) NOT NULL PRIMARY KEY,
	TenHocLuc NVARCHAR(30) NOT NULL,
	DiemCanDuoi FLOAT NOT NULL,
	DiemCanTren FLOAT NOT NULL,
	DiemKhongChe FLOAT NOT NULL,

	CONSTRAINT CK_DiemCanDuoi CHECK(DiemCanDuoi BETWEEN 0 AND 10),
	CONSTRAINT CK_DiemCanTren CHECK(DiemCanTren BETWEEN 0 AND 10),
	CONSTRAINT CK_DiemKhongChe CHECK(DiemKhongChe BETWEEN 0 AND 10),
)

INSERT INTO HOCLUC VALUES('HL0001', N'Giỏi', 8.0, 10.0, 6.5)
INSERT INTO HOCLUC VALUES('HL0002', N'Khá', 6.5, 7.9, 5.0)
INSERT INTO HOCLUC VALUES('HL0003', N'Trung bình', 5.0, 6.4, 3.5)
INSERT INTO HOCLUC VALUES('HL0004', N'Yếu', 3.5, 4.9, 2.0)
INSERT INTO HOCLUC VALUES('HL0005', N'Kém', 0.0, 3.4, 0.0)

--===================================================================================================================================================

CREATE TABLE HANHKIEM
(
	MaHanhKiem VARCHAR(6) NOT NULL PRIMARY KEY,
	TenHanhKiem NVARCHAR(30) NOT NULL
)

INSERT INTO HANHKIEM VALUES('HK0001', N'Tốt')
INSERT INTO HANHKIEM VALUES('HK0002', N'Khá')
INSERT INTO HANHKIEM VALUES('HK0003', N'Trung bình')
INSERT INTO HANHKIEM VALUES('HK0004', N'Yếu')

--===================================================================================================================================================

CREATE TABLE KETQUA
(
	MaKetQua VARCHAR(6) NOT NULL PRIMARY KEY,
	TenKetQua NVARCHAR(30) NOT NULL
)

INSERT INTO KETQUA VALUES('KQ0001', N'Lên lớp')
INSERT INTO KETQUA VALUES('KQ0002', N'Thi lại')
INSERT INTO KETQUA VALUES('KQ0003', N'Rèn luyện hè')
INSERT INTO KETQUA VALUES('KQ0004', N'Ở lại')

--===================================================================================================================================================

CREATE TABLE NGHENGHIEP
(
	MaNghe VARCHAR(6) NOT NULL PRIMARY KEY,
	TenNghe NVARCHAR(30) NOT NULL
)

INSERT INTO NGHENGHIEP VALUES('NN0001', N'Nội trợ')
INSERT INTO NGHENGHIEP VALUES('NN0002', N'Giáo viên')
INSERT INTO NGHENGHIEP VALUES('NN0003', N'Công nhân')
INSERT INTO NGHENGHIEP VALUES('NN0004', N'Làm ruộng')
INSERT INTO NGHENGHIEP VALUES('NN0005', N'Buôn bán')

--===================================================================================================================================================

CREATE TABLE GIAOVIEN
(
	MaGiaoVien VARCHAR(6) NOT NULL PRIMARY KEY,
	TenGiaoVien NVARCHAR(30) NOT NULL,
	DiaChi NVARCHAR(50) NOT NULL,
	DienThoai NVARCHAR(15) NOT NULL,
	MaMonHoc VARCHAR(6) NOT NULL,
	CONSTRAINT FK_GIAOVIEN_MONHOC FOREIGN KEY(MaMonHoc) REFERENCES MONHOC(MaMonHoc)
)

INSERT INTO GIAOVIEN VALUES('GV0001', N'Nguyễn Hoàng Trung', N'100 Trần Hưng Đạo, Long Xuyên', '0975058876', 'MH0001')
INSERT INTO GIAOVIEN VALUES('GV0002', N'Phan Hồng Nhung', N'Lac Quoi - Tri Ton', '0976630315', 'MH0002')
INSERT INTO GIAOVIEN VALUES('GV0003', N'Huỳnh Thanh Trúc', N'10C Nguyễn Trung Trực, Châu Đốc', '0699015456', 'MH0003')
INSERT INTO GIAOVIEN VALUES('GV0004', N'Lam Trung Toan', N'Long Dien B, An Phú', '0845241566', 'MH0004')
INSERT INTO GIAOVIEN VALUES('GV0005', N'Huynh Túc Trí', N'Rạch Giá, Kiên Giang', '0123456789', 'MH0005')
INSERT INTO GIAOVIEN VALUES('GV0006', N'Lê Thi Minh Nguyệt', N'000 Long Xuyên, An Giang', '0123456789', 'MH0006')

--===================================================================================================================================================

CREATE TABLE HOCSINH
(
	MaHocSinh VARCHAR(6) NOT NULL PRIMARY KEY,
	HoTen NVARCHAR(30) NOT NULL,
	GioiTinh BIT,
	NgaySinh DATETIME,
	DiaChi NVARCHAR(50) NOT NULL,
	MaDanToc VARCHAR(6) NOT NULL,
	MaTonGiao VARCHAR(6) NOT NULL,
	HoTenCha NVARCHAR(30) NOT NULL,
	MaNgheCha VARCHAR(6) NOT NULL,
	HoTenMe NVARCHAR(30) NOT NULL,
	MaNgheMe VARCHAR(6) NOT NULL,
	Email NVARCHAR(50) NOT NULL UNIQUE,
 
	CONSTRAINT FK_HOCSINH_DANTOC FOREIGN KEY(MaDanToc) REFERENCES DANTOC(MaDanToc),
	CONSTRAINT FK_HOCSINH_TONGIAO FOREIGN KEY(MaTonGiao) REFERENCES TONGIAO(MaTonGiao),
	CONSTRAINT FK_HOCSINH_NGHENGHIEPCHA FOREIGN KEY(MaNgheCha) REFERENCES NGHENGHIEP(MaNghe),
	CONSTRAINT FK_HOCSINH_NGHENGHIEPME FOREIGN KEY(MaNgheMe) REFERENCES NGHENGHIEP(MaNghe)
)

INSERT INTO HOCSINH VALUES('HS0001', N'Nguyễn Văn Tú', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs001@gmail.com')
INSERT INTO HOCSINH VALUES('HS0002', N'Nguyễn Ngọc An', '0', '01/02/2005', N'Bến Tre', 'DT0001', 'TG0002', N'Biết chết liền', 'NN0003', N'Biết chết liền', 'NN0001', 'hs002@gmail.com')
INSERT INTO HOCSINH VALUES('HS0003', N'Lê Hoàng Anh', '0', '04/15/2005', N'Chợ Mới', 'DT0001', 'TG0004', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0005', 'hs003@gmail.com')
INSERT INTO HOCSINH VALUES('HS0004', N'Huỳnh Thiên Chí', '0', '01/02/2004', N'Đồng Tháp', 'DT0001', 'TG0003', N'Biết chết liền', 'NN0002', N'Biết chết liền', 'NN0004', 'hs004@gmail.com')
INSERT INTO HOCSINH VALUES('HS0005', N'Lý Ngọc Duy', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs005@gmail.com')
INSERT INTO HOCSINH VALUES('HS0006', N'Huỳnh Ngọc Điệp', '1', '01/02/2005', N'Bến Tre', 'DT0001', 'TG0002', N'Biết chết liền', 'NN0003', N'Biết chết liền', 'NN0001', 'hs006@gmail.com')
INSERT INTO HOCSINH VALUES('HS0007', N'Trần Thị Huệ', '1', '04/15/2005', N'Chợ Mới', 'DT0001', 'TG0004', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0005', 'hs007@gmail.com')
INSERT INTO HOCSINH VALUES('HS0008', N'Nguyễn Thanh Huy', '0', '01/02/2004', N'Đồng Tháp', 'DT0001', 'TG0003', N'Biết chết liền', 'NN0002', N'Biết chết liền', 'NN0004', 'hs008@gmail.com')
INSERT INTO HOCSINH VALUES('HS0009', N'Trần Phước Lập', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs009@gmail.com')
INSERT INTO HOCSINH VALUES('HS0010', N'Trương Thị Nga', '1', '01/02/2005', N'Bến Tre', 'DT0001', 'TG0002', N'Biết chết liền', 'NN0003', N'Biết chết liền', 'NN0001', 'hs010@gmail.com')
INSERT INTO HOCSINH VALUES('HS0011', N'Nguyễn Thị Nga', '1', '04/15/2005', N'Chợ Mới', 'DT0001', 'TG0004', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0005', 'hs011@gmail.com')
INSERT INTO HOCSINH VALUES('HS0012', N'Trần Thị Hồng Nghi', '1', '01/02/2004', N'Đồng Tháp', 'DT0001', 'TG0003', N'Biết chết liền', 'NN0002', N'Biết chết liền', 'NN0004', 'hs012@gmail.com')
INSERT INTO HOCSINH VALUES('HS0013', N'Huỳnh Thị Mỹ Ngọc', '1', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs013@gmail.com')
INSERT INTO HOCSINH VALUES('HS0014', N'Trần Thị My Nhân', '1', '01/02/2005', N'Bến Tre', 'DT0001', 'TG0002', N'Biết chết liền', 'NN0003', N'Biết chết liền', 'NN0001', 'hs014@gmail.com')
INSERT INTO HOCSINH VALUES('HS0015', N'Trương Thị Ngoc Nhung', '1', '04/15/2005', N'Chợ Mới', 'DT0001', 'TG0004', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0005', 'hs015@gmail.com')
INSERT INTO HOCSINH VALUES('HS0016', N'Huỳnh Quốc Phuong', '0', '01/02/2004', N'Đồng Tháp', 'DT0001', 'TG0003', N'Biết chết liền', 'NN0002', N'Biết chết liền', 'NN0004', 'hs016@gmail.com')
INSERT INTO HOCSINH VALUES('HS0017', N'Lý Ngọc Phương', '1', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs017@gmail.com')
INSERT INTO HOCSINH VALUES('HS0018', N'Nguyễn Thị Phương', '1', '01/02/2005', N'Bến Tre', 'DT0001', 'TG0002', N'Biết chết liền', 'NN0003', N'Biết chết liền', 'NN0001', 'hs018@gmail.com')
INSERT INTO HOCSINH VALUES('HS0019', N'Nguyễn Phú Quốc', '0', '04/15/2005', N'Chợ Mới', 'DT0001', 'TG0004', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0005', 'hs019@gmail.com')
INSERT INTO HOCSINH VALUES('HS0020', N'Võ Thiên Quốc', '0', '01/02/2004', N'Đồng Tháp', 'DT0001', 'TG0003', N'Biết chết liền', 'NN0002', N'Biết chết liền', 'NN0004', 'hs020@gmail.com')
INSERT INTO HOCSINH VALUES('HS0021', N'Trần Văn Rang', '0', '01/02/2004', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs021@gmail.com')
INSERT INTO HOCSINH VALUES('HS0022', N'Võ Hưu Tanh', '0', '01/02/2004', N'Bến Tre', 'DT0001', 'TG0002', N'Biết chết liền', 'NN0003', N'Biết chết liền', 'NN0001', 'hs022@gmail.com')
INSERT INTO HOCSINH VALUES('HS0023', N'Lê Minh Tâm', '0', '04/15/2004', N'Chợ Mới', 'DT0001', 'TG0004', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0005', 'hs023@gmail.com')
INSERT INTO HOCSINH VALUES('HS0024', N'Nguyễn Đức Tâm', '0', '01/02/2003', N'Đồng Tháp', 'DT0001', 'TG0003', N'Biết chết liền', 'NN0002', N'Biết chết liền', 'NN0004', 'hs024@gmail.com')
INSERT INTO HOCSINH VALUES('HS0025', N'Nguyễn Thanh Tâm', '0', '01/02/2004', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs025@gmail.com')
INSERT INTO HOCSINH VALUES('HS0026', N'Trần Ngọc Minh Tân', '0', '01/02/2004', N'Bến Tre', 'DT0001', 'TG0002', N'Biết chết liền', 'NN0003', N'Biết chết liền', 'NN0001', 'hs026@gmail.com')
INSERT INTO HOCSINH VALUES('HS0027', N'Dương Kim Thanh', '1', '04/15/2004', N'Chợ Mới', 'DT0001', 'TG0004', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0005', 'hs027@gmail.com')
INSERT INTO HOCSINH VALUES('HS0028', N'Vang Si Thanh', '0', '01/02/2004', N'Đồng Tháp', 'DT0001', 'TG0003', N'Biết chết liền', 'NN0002', N'Biết chết liền', 'NN0004', 'hs028@gmail.com')
INSERT INTO HOCSINH VALUES('HS0029', N'Đỗ Thị Bích Thảo', '1', '01/02/2004', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs029@gmail.com')
INSERT INTO HOCSINH VALUES('HS0030', N'Hồ Minh Thiên', '0', '01/02/2004', N'Bến Tre', 'DT0001', 'TG0002', N'Biết chết liền', 'NN0003', N'Biết chết liền', 'NN0001', 'hs030@gmail.com')
INSERT INTO HOCSINH VALUES('HS0031', N'Nguyễn Thị Anh Thư', '1', '04/15/2004', N'Chợ Mới', 'DT0001', 'TG0004', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0005', 'hs031@gmail.com')
INSERT INTO HOCSINH VALUES('HS0032', N'Phạm Nguyễn B.Trinh', '1', '01/02/2003', N'Đồng Tháp', 'DT0001', 'TG0003', N'Biết chết liền', 'NN0002', N'Biết chết liền', 'NN0004', 'hs032@gmail.com')
INSERT INTO HOCSINH VALUES('HS0033', N'Võ Ngọc Trinh', '1', '01/02/2004', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs033@gmail.com')
INSERT INTO HOCSINH VALUES('HS0034', N'Nguyễn Huỳnh Minh Trí', '0', '01/02/2004', N'Bến Tre', 'DT0001', 'TG0002', N'Biết chết liền', 'NN0003', N'Biết chết liền', 'NN0001', 'hs034@gmail.com')
INSERT INTO HOCSINH VALUES('HS0035', N'Đỗ Xuân Trinh', '0', '04/15/2004', N'Chợ Mới', 'DT0001', 'TG0004', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0005', 'hs035@gmail.com')
INSERT INTO HOCSINH VALUES('HS0036', N'Nguyễn Hiếu Trung', '0', '01/02/2003', N'Đồng Tháp', 'DT0001', 'TG0003', N'Biết chết liền', 'NN0002', N'Biết chết liền', 'NN0004', 'hs036@gmail.com')
INSERT INTO HOCSINH VALUES('HS0037', N'Nguyễn Thanh Trung', '0', '01/02/2004', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs037@gmail.com')
INSERT INTO HOCSINH VALUES('HS0038', N'Trần Thanh Trúc', '1', '01/02/2004', N'Bến Tre', 'DT0001', 'TG0002', N'Biết chết liền', 'NN0003', N'Biết chết liền', 'NN0001', 'hs038@gmail.com')
INSERT INTO HOCSINH VALUES('HS0039', N'Cao Minh Tuấn', '0', '04/15/2004', N'Chợ Mới', 'DT0001', 'TG0004', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0005', 'hs039@gmail.com')
INSERT INTO HOCSINH VALUES('HS0040', N'Nguyễn Hoang Tuấn', '0', '01/02/2004', N'Đồng Tháp', 'DT0001', 'TG0003', N'Biết chết liền', 'NN0002', N'Biết chết liền', 'NN0004', 'hs040@gmail.com')
INSERT INTO HOCSINH VALUES('HS0041', N'Trương Minh Tuyên', '0', '01/02/2003', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs041@gmail.com')
INSERT INTO HOCSINH VALUES('HS0042', N'Lê Thanh Tung', '0', '01/02/2003', N'Bến Tre', 'DT0001', 'TG0002', N'Biết chết liền', 'NN0003', N'Biết chết liền', 'NN0001', 'hs042@gmail.com')
INSERT INTO HOCSINH VALUES('HS0043', N'Phạm Thị Bích Vi', '1', '04/15/2003', N'Chợ Mới', 'DT0001', 'TG0004', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0005', 'hs043@gmail.com')
INSERT INTO HOCSINH VALUES('HS0044', N'Đặng Quang Vinh', '0', '01/02/2003', N'Đồng Tháp', 'DT0001', 'TG0003', N'Biết chết liền', 'NN0002', N'Biết chết liền', 'NN0004', 'hs044@gmail.com')
INSERT INTO HOCSINH VALUES('HS0045', N'Âu Ngọc Vũ', '0', '01/02/2003', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs045@gmail.com')
INSERT INTO HOCSINH VALUES('HS0046', N'Hồ Thanh Vũ', '0', '01/02/2002', N'Bến Tre', 'DT0001', 'TG0002', N'Biết chết liền', 'NN0003', N'Biết chết liền', 'NN0001', 'hs046@gmail.com')
INSERT INTO HOCSINH VALUES('HS0047', N'Phan Quốc Vương', '0', '04/15/2003', N'Chợ Mới', 'DT0001', 'TG0004', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0005', 'hs047@gmail.com')
INSERT INTO HOCSINH VALUES('HS0048', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs048@gmail.com')
INSERT INTO HOCSINH VALUES('HS0049', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs059@gmail.com')
INSERT INTO HOCSINH VALUES('HS0050', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs050@gmail.com')
INSERT INTO HOCSINH VALUES('HS0051', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs051@gmail.com')
INSERT INTO HOCSINH VALUES('HS0052', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs052@gmail.com')
INSERT INTO HOCSINH VALUES('HS0053', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs053@gmail.com')
INSERT INTO HOCSINH VALUES('HS0054', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs054@gmail.com')
INSERT INTO HOCSINH VALUES('HS0055', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs055@gmail.com')
INSERT INTO HOCSINH VALUES('HS0056', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs056@gmail.com')
INSERT INTO HOCSINH VALUES('HS0057', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs057@gmail.com')
INSERT INTO HOCSINH VALUES('HS0058', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs058@gmail.com')
INSERT INTO HOCSINH VALUES('HS0059', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs059@gmail.com')
INSERT INTO HOCSINH VALUES('HS0060', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs060@gmail.com')
INSERT INTO HOCSINH VALUES('HS0061', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs061@gmail.com')
INSERT INTO HOCSINH VALUES('HS0062', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs062@gmail.com')
INSERT INTO HOCSINH VALUES('HS0063', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs063@gmail.com')
INSERT INTO HOCSINH VALUES('HS0064', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs064@gmail.com')
INSERT INTO HOCSINH VALUES('HS0065', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs065@gmail.com')
INSERT INTO HOCSINH VALUES('HS0066', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs066@gmail.com')
INSERT INTO HOCSINH VALUES('HS0067', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs067@gmail.com')
INSERT INTO HOCSINH VALUES('HS0068', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs068@gmail.com')
INSERT INTO HOCSINH VALUES('HS0069', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs069@gmail.com')
INSERT INTO HOCSINH VALUES('HS0070', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs070@gmail.com')
INSERT INTO HOCSINH VALUES('HS0071', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs071@gmail.com')
INSERT INTO HOCSINH VALUES('HS0072', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs072@gmail.com')
INSERT INTO HOCSINH VALUES('HS0073', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs073@gmail.com')
--===================================================================================================================================================

CREATE TABLE LOP
(
	MaLop VARCHAR(10) NOT NULL PRIMARY KEY,
	TenLop NVARCHAR(30) NOT NULL,
	MaKhoiLop VARCHAR(6) NOT NULL,
	MaNamHoc VARCHAR(6) NOT NULL,
	SiSo INT NOT NULL,
	MaGiaoVien VARCHAR(6) NOT NULL,
 
	CONSTRAINT FK_LOP_KHOILOP FOREIGN KEY(MaKhoiLop) REFERENCES KHOILOP(MaKhoiLop),
	CONSTRAINT FK_LOP_NAMHOC FOREIGN KEY(MaNamHoc) REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT FK_LOP_GIAOVIEN FOREIGN KEY(MaGiaoVien) REFERENCES GIAOVIEN(MaGiaoVien)
)

INSERT INTO LOP VALUES('LOP1011920', '10A1', 'KHOI10', 'NH1920', 35, 'GV0006') /*10 */
INSERT INTO LOP VALUES('LOP1021920', '10A2', 'KHOI10', 'NH1920', 36, 'GV0005') /*10 */
INSERT INTO LOP VALUES('LOP1031920', '10A3', 'KHOI10', 'NH1920', 34, 'GV0004') /*0 */
INSERT INTO LOP VALUES('LOP1111920', '11A1', 'KHOI11', 'NH1920', 37, 'GV0003') /*10 */
INSERT INTO LOP VALUES('LOP1121920', '11A2', 'KHOI11', 'NH1920', 38, 'GV0002') /*10 */
INSERT INTO LOP VALUES('LOP1211920', '12A1', 'KHOI12', 'NH1920', 39, 'GV0001') /*7 */

INSERT INTO LOP VALUES('LOP1012021', '10A1', 'KHOI10', 'NH2021', 39, 'GV0001') /*0 */
INSERT INTO LOP VALUES('LOP1022021', '10A2', 'KHOI10', 'NH2021', 38, 'GV0002') /*0 */
INSERT INTO LOP VALUES('LOP1032021', '10A3', 'KHOI10', 'NH2021', 35, 'GV0003') /*0 */
INSERT INTO LOP VALUES('LOP1112021', '11A1', 'KHOI11', 'NH2021', 40, 'GV0004') /*0 */
INSERT INTO LOP VALUES('LOP1122021', '11A2', 'KHOI11', 'NH2021', 38, 'GV0005') /*0 */
INSERT INTO LOP VALUES('LOP1212021', '12A1', 'KHOI12', 'NH2021', 38, 'GV0006') /*0 */

--===================================================================================================================================================

CREATE TABLE PHANLOP
(
	MaNamHoc VARCHAR(6) NOT NULL,
	MaKhoiLop VARCHAR(6) NOT NULL,
	MaLop VARCHAR(10) NOT NULL,
	MaHocSinh VARCHAR(6) NOT NULL,
	PRIMARY KEY(MaNamHoc, MaKhoiLop, MaLop, MaHocSinh),

	CONSTRAINT FK_PHANLOP_NAMHOC FOREIGN KEY(MaNamHoc) REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT FK_PHANLOP_KHOI FOREIGN KEY(MaKhoiLop) REFERENCES KHOILOP(MaKhoiLop),
	CONSTRAINT FK_PHANLOP_LOP FOREIGN KEY(MaLop) REFERENCES LOP(MaLop),
	CONSTRAINT FK_PHANLOP_HOCSINH FOREIGN KEY(MaHocSinh) REFERENCES HOCSINH(MaHocSinh)
)

INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1011920', 'HS0001')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1011920', 'HS0002')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1011920', 'HS0003')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1011920', 'HS0004')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1011920', 'HS0005')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1011920', 'HS0006')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1011920', 'HS0007')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1011920', 'HS0008')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1011920', 'HS0009')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1011920', 'HS0010')

INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1021920', 'HS0011')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1021920', 'HS0012')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1021920', 'HS0013')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1021920', 'HS0014')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1021920', 'HS0015')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1021920', 'HS0016')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1021920', 'HS0017')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1021920', 'HS0018')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1021920', 'HS0019')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI10', 'LOP1021920', 'HS0020')

INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1111920', 'HS0021')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1111920', 'HS0022')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1111920', 'HS0023')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1111920', 'HS0024')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1111920', 'HS0025')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1111920', 'HS0026')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1111920', 'HS0027')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1111920', 'HS0028')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1111920', 'HS0029')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1111920', 'HS0030')

INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1121920', 'HS0031')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1121920', 'HS0032')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1121920', 'HS0033')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1121920', 'HS0034')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1121920', 'HS0035')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1121920', 'HS0036')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1121920', 'HS0037')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1121920', 'HS0038')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1121920', 'HS0039')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI11', 'LOP1121920', 'HS0040')

INSERT INTO PHANLOP VALUES('NH1920', 'KHOI12', 'LOP1211920', 'HS0041')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI12', 'LOP1211920', 'HS0042')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI12', 'LOP1211920', 'HS0043')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI12', 'LOP1211920', 'HS0044')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI12', 'LOP1211920', 'HS0045')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI12', 'LOP1211920', 'HS0046')
INSERT INTO PHANLOP VALUES('NH1920', 'KHOI12', 'LOP1211920', 'HS0047')

--===================================================================================================================================================

CREATE TABLE PHANCONG
(
	STT INT IDENTITY PRIMARY KEY,
	MaNamHoc VARCHAR(6) NOT NULL,
	MaLop VARCHAR(10) NOT NULL,
	MaMonHoc VARCHAR(6) NOT NULL,
	MaGiaoVien VARCHAR(6) NOT NULL,
 
	CONSTRAINT FK_PHANCONG_NAMHOC FOREIGN KEY(MaNamHoc) REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT FK_PHANCONG_LOP FOREIGN KEY(MaLop) REFERENCES LOP(MaLop),
	CONSTRAINT FK_PHANCONG_MONHOC FOREIGN KEY(MaMonHoc) REFERENCES MONHOC(MaMonHoc),
	CONSTRAINT FK_PHANCONG_GIAOVIEN FOREIGN KEY(MaGiaoVien) REFERENCES GIAOVIEN(MaGiaoVien)
)

INSERT INTO PHANCONG VALUES('NH1920', 'LOP1011920', 'MH0001', 'GV0001')
INSERT INTO PHANCONG VALUES('NH1920', 'LOP1011920', 'MH0002', 'GV0002')
INSERT INTO PHANCONG VALUES('NH1920', 'LOP1011920', 'MH0003', 'GV0003')
INSERT INTO PHANCONG VALUES('NH1920', 'LOP1011920', 'MH0004', 'GV0004')

INSERT INTO PHANCONG VALUES('NH1920', 'LOP1021920', 'MH0001', 'GV0001')
INSERT INTO PHANCONG VALUES('NH1920', 'LOP1021920', 'MH0002', 'GV0002')
INSERT INTO PHANCONG VALUES('NH1920', 'LOP1021920', 'MH0003', 'GV0003')
INSERT INTO PHANCONG VALUES('NH1920', 'LOP1021920', 'MH0004', 'GV0004')

INSERT INTO PHANCONG VALUES('NH1920', 'LOP1111920', 'MH0001', 'GV0001')
INSERT INTO PHANCONG VALUES('NH1920', 'LOP1111920', 'MH0002', 'GV0002')
INSERT INTO PHANCONG VALUES('NH1920', 'LOP1111920', 'MH0003', 'GV0003')
INSERT INTO PHANCONG VALUES('NH1920', 'LOP1111920', 'MH0004', 'GV0004')

--===================================================================================================================================================

CREATE TABLE LOAIDIEM
(
	MaLoai VARCHAR(6) NOT NULL PRIMARY KEY,
	TenLoai NVARCHAR(30) NOT NULL,
	HeSo INT NOT NULL
)

INSERT INTO LOAIDIEM VALUES('LD0001', N'Kiểm tra miệng', 1)
INSERT INTO LOAIDIEM VALUES('LD0002', N'Kiểm tra 15 phút', 1)
INSERT INTO LOAIDIEM VALUES('LD0003', N'Kiểm tra 1 tiết', 2)
INSERT INTO LOAIDIEM VALUES('LD0004', N'Thi học kỳ', 1)

--===================================================================================================================================================

CREATE TABLE DIEM
(
	STT INT IDENTITY PRIMARY KEY,
	MaHocSinh VARCHAR(6) NOT NULL,
	MaMonHoc VARCHAR(6) NOT NULL,
	MaHocKy VARCHAR(3) NOT NULL,
	MaNamHoc VARCHAR(6) NOT NULL,
	MaLop VARCHAR(10) NOT NULL,
	MaLoai VARCHAR(6) NOT NULL,
	Diem FLOAT NOT NULL,

	CONSTRAINT FK_DIEM_HOCSINH FOREIGN KEY(MaHocSinh) REFERENCES HOCSINH(MaHocSinh),
	CONSTRAINT FK_DIEM_MONHOC FOREIGN KEY(MaMonHoc) REFERENCES MONHOC(MaMonHoc),
	CONSTRAINT FK_DIEM_HOCKY FOREIGN KEY(MaHocKy) REFERENCES HOCKY(MaHocKy),
	CONSTRAINT FK_DIEM_NAMHOC FOREIGN KEY(MaNamHoc) REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT FK_DIEM_LOP FOREIGN KEY(MaLop) REFERENCES LOP(MaLop),
	CONSTRAINT FK_DIEM_LOAIDIEM FOREIGN KEY(MaLoai) REFERENCES LOAIDIEM(MaLoai),
	CONSTRAINT CK_DIEM CHECK(Diem BETWEEN 0 AND 10)
)

INSERT INTO DIEM (MaHocSinh, MaMonHoc, MaHocKy, MaNamHoc, MaLop, MaLoai, Diem) VALUES 
('HS0001', 'MH0001', 'HK1', 'NH2021', 'LOP1212021', 'LD0001', 9 ),
('HS0002', 'MH0002', 'HK1', 'NH2021', 'LOP1212021', 'LD0002', 8 ),
('HS0003', 'MH0003', 'HK1', 'NH2021', 'LOP1212021', 'LD0003', 7 ),
('HS0004', 'MH0004', 'HK1', 'NH2021', 'LOP1212021', 'LD0004', 6 ),
('HS0005', 'MH0005', 'HK1', 'NH2021', 'LOP1212021', 'LD0004', 5 ),
('HS0006', 'MH0006', 'HK1', 'NH2021', 'LOP1212021', 'LD0003', 4 ),
('HS0001', 'MH0001', 'HK2', 'NH2021', 'LOP1212021', 'LD0002', 9 ),
('HS0002', 'MH0002', 'HK2', 'NH2021', 'LOP1212021', 'LD0001', 8 ),
('HS0003', 'MH0003', 'HK2', 'NH2021', 'LOP1212021', 'LD0004', 7 ),
('HS0004', 'MH0004', 'HK2', 'NH2021', 'LOP1212021', 'LD0003', 6 ),
('HS0005', 'MH0005', 'HK2', 'NH2021', 'LOP1212021', 'LD0002', 5 ),
('HS0006', 'MH0006', 'HK2', 'NH2021', 'LOP1212021', 'LD0001', 4 )
--===================================================================================================================================================

CREATE TABLE KQ_HOCSINH_MONHOC
(
	MaHocSinh VARCHAR(6) NOT NULL,
	MaLop VARCHAR(10) NOT NULL,
	MaNamHoc VARCHAR(6) NOT NULL,
	MaMonHoc VARCHAR(6) NOT NULL,
	MaHocKy VARCHAR(3) NOT NULL,
	DiemMiengTB FLOAT NOT NULL,
	Diem15PhutTB FLOAT NOT NULL,
	Diem45PhutTB FLOAT NOT NULL,
	DiemThi FLOAT NOT NULL,
	DiemTBHK FLOAT NOT NULL,
	PRIMARY KEY(MaHocSinh, MaLop, MaNamHoc, MaMonHoc, MaHocKy),

	CONSTRAINT FK_KQHSMH_HOCSINH FOREIGN KEY(MaHocSinh) REFERENCES HOCSINH(MaHocSinh),
	CONSTRAINT FK_KQHSMH_LOP FOREIGN KEY(MaLop) REFERENCES LOP(MaLop),
	CONSTRAINT FK_KQHSMH_NAMHOC FOREIGN KEY(MaNamHoc) REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT FK_KQHSMH_MONHOC FOREIGN KEY(MaMonHoc) REFERENCES MONHOC(MaMonHoc),
	CONSTRAINT FK_KQHSMH_HOCKY FOREIGN KEY(MaHocKy) REFERENCES HOCKY(MaHocKy),

	CONSTRAINT CK_DiemMiengTB CHECK(DiemMiengTB BETWEEN 0 AND 10),
	CONSTRAINT CK_Diem15PhutTB CHECK(Diem15PhutTB BETWEEN 0 AND 10),
	CONSTRAINT CK_Diem45PhutTB CHECK(Diem45PhutTB BETWEEN 0 AND 10),
	CONSTRAINT CK_DiemThi CHECK(DiemThi BETWEEN 0 AND 10),
	CONSTRAINT CK_DiemTBHK CHECK(DiemTBHK BETWEEN 0 AND 10),
)


INSERT INTO KQ_HOCSINH_MONHOC (MaHocSinh,  MaLop, MaNamHoc, MaMonHoc, MaHocKy, DiemMiengTB, Diem15PhutTB, Diem45PhutTB, DiemThi, DiemTBHK) VALUES 
('HS0001', 'LOP1212021','NH2021', 'MH0001', 'HK1', 7,8,9,7,10),
('HS0001', 'LOP1212021','NH2021', 'MH0002', 'HK1', 6,8,1,7,4),
('HS0001', 'LOP1212021','NH2021', 'MH0003', 'HK1', 7,8,2,7,3),
('HS0001', 'LOP1212021','NH2021', 'MH0004', 'HK1', 9,8,9,7,2),
('HS0001', 'LOP1212021','NH2021', 'MH0001', 'HK2', 7,8,9,7,4),
('HS0001', 'LOP1212021','NH2021', 'MH0002', 'HK2', 7,8,9,7,9),
('HS0001', 'LOP1212021','NH2021', 'MH0003', 'HK2', 7,8,9,7,7)
--===================================================================================================================================================

CREATE TABLE KQ_HOCSINH_CANAM
(
	MaHocSinh VARCHAR(6) NOT NULL,
	MaLop VARCHAR(10) NOT NULL,
	MaNamHoc VARCHAR(6) NOT NULL,
	MaHocLuc VARCHAR(6) NOT NULL,
	MaHanhKiem VARCHAR(6) NOT NULL,
	MaKetQua VARCHAR(6) NOT NULL,
	DiemTBHK1 FLOAT NOT NULL,
	DiemTBHK2 FLOAT NOT NULL,
	DiemTBCN FLOAT NOT NULL, 
	PRIMARY KEY(MaHocSinh, MaLop, MaNamHoc),
 
	CONSTRAINT FK_KQHSCN_HOCSINH FOREIGN KEY(MaHocSinh) REFERENCES HOCSINH(MaHocSinh),
	CONSTRAINT FK_KQHSCN_LOP FOREIGN KEY(MaLop) REFERENCES LOP(MaLop),
	CONSTRAINT FK_KQHSCN_NAMHOC FOREIGN KEY(MaNamHoc) REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT FK_KQHSCN_HOCLUC FOREIGN KEY(MaHocLuc) REFERENCES HOCLUC(MaHocLuc),
	CONSTRAINT FK_KQHSCN_HANHKIEM FOREIGN KEY(MaHanhKiem) REFERENCES HANHKIEM(MaHanhKiem),
	CONSTRAINT FK_KQHSCN_KETQUA FOREIGN KEY(MaKetQua) REFERENCES KETQUA(MaKetQua),

	CONSTRAINT CK_DiemTBHK1 CHECK(DiemTBHK1 BETWEEN 0 AND 10),
	CONSTRAINT CK_DiemTBHK2 CHECK(DiemTBHK2 BETWEEN 0 AND 10),
	CONSTRAINT CK_DiemTBCN CHECK(DiemTBCN BETWEEN 0 AND 10),
)

INSERT INTO KQ_HOCSINH_CANAM (MaHocSinh,  MaLop, MaNamHoc, MaHocLuc, MaHanhKiem, MaKetQua, DiemTBHK1, DiemTBHK2, DiemTBCN) VALUES 
('HS0001', 'LOP1212021','NH2021', 'HL0001', 'HK0001', 'KQ0001',9,7,10),
('HS0002', 'LOP1212021','NH2021', 'HL0002', 'HK0001', 'KQ0001',8,7,8),
('HS0003', 'LOP1212021','NH2021', 'HL0002', 'HK0001', 'KQ0001',7,7,7),
('HS0004', 'LOP1212021','NH2021', 'HL0002', 'HK0001', 'KQ0001',9,8,7),
('HS0005', 'LOP1212021','NH2021', 'HL0002', 'HK0002', 'KQ0001',9,7,7),
('HS0006', 'LOP1212021','NH2021', 'HL0001', 'HK0002', 'KQ0001',9,7,9),
('HS0007', 'LOP1212021','NH2021', 'HL0002', 'HK0002', 'KQ0001',9,7,7)
--===================================================================================================================================================

CREATE TABLE KQ_LOPHOC_MONHOC
(
	MaLop VARCHAR(10) NOT NULL,
	MaNamHoc VARCHAR(6) NOT NULL,
	MaMonHoc VARCHAR(6) NOT NULL,
	MaHocKy VARCHAR(3) NOT NULL,
	SoLuongDat INT NOT NULL,
	TiLe FLOAT NOT NULL,
	PRIMARY KEY(MaLop, MaNamHoc, MaMonHoc, MaHocKy),

	CONSTRAINT FK_KQLHMH_LOP FOREIGN KEY(MaLop) REFERENCES LOP(MaLop),
	CONSTRAINT FK_KQLHMH_NAMHOC FOREIGN KEY(MaNamHoc) REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT FK_KQLHMH_MONHOC FOREIGN KEY(MaMonHoc) REFERENCES MONHOC(MaMonHoc),
	CONSTRAINT FK_KQLHMH_HOCKY FOREIGN KEY(MaHocKy) REFERENCES HOCKY(MaHocKy),
)
INSERT INTO KQ_LOPHOC_MONHOC ( MaLop, MaNamHoc, MaMonHoc, MaHocKy, SoLuongDat, TiLe) VALUES
('LOP1212021','NH2021','MH0001','HK1', 3,15),
('LOP1212021','NH2021','MH0001','HK2', 2,20),
('LOP1012021','NH2021','MH0001','HK1', 3,15),
('LOP1012021','NH2021','MH0001','HK2', 2,20),
('LOP1031920','NH2021','MH0001','HK1', 1,10),
('LOP1031920','NH2021','MH0001','HK2', 2,15)
--===================================================================================================================================================

CREATE TABLE KQ_LOPHOC_HOCKY
(
	MaLop VARCHAR(10) NOT NULL,
	MaNamHoc VARCHAR(6) NOT NULL,
	MaHocKy VARCHAR(3) NOT NULL,
	SoLuongDat INT NOT NULL,
	TiLe FLOAT NOT NULL,
	PRIMARY KEY(MaLop, MaNamHoc, MaHocKy),

	CONSTRAINT FK_KQLHHK_LOP FOREIGN KEY(MaLop) REFERENCES LOP(MaLop),
	CONSTRAINT FK_KQLHHK_NAMHOC FOREIGN KEY(MaNamHoc) REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT FK_KQLHHK_HOCKY FOREIGN KEY(MaHocKy) REFERENCES HOCKY(MaHocKy),
)
INSERT INTO KQ_LOPHOC_HOCKY ( MaLop, MaNamHoc, MaHocKy, SoLuongDat, TiLe) VALUES
('LOP1212021','NH2021','HK1', 3,15),
('LOP1212021','NH2021','HK2', 2,20),
('LOP1012021','NH2021','HK1', 3,15),
('LOP1012021','NH2021','HK2', 2,20),
('LOP1031920','NH2021','HK1', 1,10),
('LOP1031920','NH2021','HK2', 2,15)
--===================================================================================================================================================

CREATE TABLE QUYDINH
(
	TuoiCanDuoi INT NOT NULL,
	TuoiCanTren INT NOT NULL,
	SiSoCanDuoi INT NOT NULL,
	SiSoCanTren INT NOT NULL,
	DiemDat INT NOT NULL,
)

INSERT INTO QUYDINH VALUES(15, 20, 30, 40, 5)
--===================================================================================================================================================
---																TRIGGER																	---																
---																																                ---
--===================================================================================================================================================
--===================================================================================================================================================
--Trigger  cập nhật số lượng học sinh khi xóa hoặc thêm trong bảng LOP --> VỸ
	-- khi thêm hoặc xóa cập nhật lại số lượng học sinh
	DROP TRIGGER IF EXISTS INSERT_OR_DELETE_HOCSINH_FROM_PHANLOP;

	SELECT * FROM LOP
	SELECT * FROM PHANLOP
	SELECT * FROM HOCSINH

	--Bước 1: Tạo Trigger
	CREATE TRIGGER INSERT_OR_DELETE_HOCSINH_FROM_PHANLOP
	ON PHANLOP
	AFTER INSERT, DELETE
	AS
	BEGIN
		-- Cập nhật số lượng học sinh sau khi thêm
		IF EXISTS (SELECT * FROM inserted)
		BEGIN
			UPDATE LOP
			SET SiSo = (SELECT COUNT(*) FROM PHANLOP PL WHERE MaLop = LOP.MaLop)
			WHERE MaLop IN (SELECT DISTINCT MaLop FROM inserted);

		END

		-- Cập nhật số lượng học sinh sau khi xóa
		IF EXISTS (SELECT * FROM deleted)
		BEGIN
			UPDATE LOP
			SET SiSo = (SELECT COUNT(*) FROM PHANLOP PL WHERE MaLop = LOP.MaLop)
			WHERE MaLop IN (SELECT DISTINCT MaLop FROM deleted);
		END
	END;
	--Bước 2: Chèn hoặc Xóa
	-- chèn danh sách học sinh mới và cập nhật sỉ số  -> tự động cập nhật sỉ số
		-- mã học sinh và email là duy nhất
	INSERT INTO HOCSINH VALUES('HS0053', N'Trịnh Trần Phương Tuấn', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Biết chết liền', 'NN0005', N'Biết chết liền', 'NN0002', 'hs053@gmail.com')
	INSERT INTO PHANLOP VALUES('NH2021', N'KHOI10', 'LOP1012021', 'HS0051')


	-- Xóa học sinh ra khỏi lớp học -> tự động cập nhật sỉ số
	DELETE FROM PHANLOP
	WHERE MaHocSinh = 'HS0051'
	


--===================================================================================================================================================
--Trigger cập nhật thông tin lớp học LOP VÀ PHAN LOP --> VỸ
	-- khi thay đổi lớp sẽ cập nhật lại thông tin
	DROP TRIGGER IF EXISTS UPDATE_HOCSINH;
		---Bước 1: Tạo Trigger
	CREATE TRIGGER UPDATE_HOCSINH
	ON PHANLOP
	AFTER UPDATE
	AS
	BEGIN
		-- Cập nhật số lượng học sinh sau khi thêm
		IF EXISTS (SELECT * FROM inserted)
		BEGIN
			UPDATE LOP
			SET SiSo = (SELECT COUNT(*) FROM PHANLOP PL WHERE MaLop = LOP.MaLop)
			WHERE MaLop IN (SELECT DISTINCT MaLop FROM inserted);

		END

		-- Cập nhật số lượng học sinh sau khi xóa
		IF EXISTS (SELECT * FROM deleted)
		BEGIN
			UPDATE LOP
			SET SiSo = (SELECT COUNT(*) FROM PHANLOP PL WHERE MaLop = LOP.MaLop)
			WHERE MaLop IN (SELECT DISTINCT MaLop FROM deleted);
		END
	END;
	-- đưa học sinh vào lớp học
	-- INSERT INTO PHANLOP VALUES('NH2021', N'KHOI10', 'LOP1012021', 'HS0051')
	
	-- thay đổi học sinh mới và cập nhật sỉ số  -> tự động cập nhật sỉ số
	UPDATE PHANLOP 
	SET MaNamHoc = 'NH1920' ,
		MaKhoiLop = 'KHOI10',
		MaLop = 'LOP1031920'
	WHERE MaHocSinh = 'HS0051'

--===================================================================================================================================================


--===================================================================================================================================================


-- Trigger tự động phân loại học sinh  ----> HOÀNG
	-- khi điểm mới được thêm vào tự động phân vào các nhóm học lực khác nhau

CREATE OR ALTER TRIGGER TRG_PhanLoaiHocSinh
ON KQ_HOCSINH_MONHOC
AFTER INSERT, UPDATE
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE kqcn
    SET 
        
        MaHocLuc = CASE
            WHEN i.DiemTBHK >= 8.0 THEN 'HL0001' -- Giỏi
            WHEN i.DiemTBHK >= 6.5 THEN 'HL0002' -- Khá
            WHEN i.DiemTBHK >= 5.0 THEN 'HL0003' -- Trung bình
            WHEN i.DiemTBHK >= 3.5 THEN 'HL0004' -- Yếu
            ELSE 'HL0005' -- Kém
        END,
        
        MaKetQua = CASE
            WHEN i.DiemTBHK >= 5.0 THEN 'KQ0001' -- Lên lớp
            WHEN i.DiemTBHK >= 3.5 THEN 'KQ0002' -- Thi lại
            WHEN i.DiemTBHK >= 2.0 THEN 'KQ0003' -- Rèn luyện hè
            ELSE 'KQ0004' -- Ở lại lớp
        END,
       
        DiemTBHK1 = CASE WHEN i.MaHocKy = 'HK1' THEN i.DiemTBHK ELSE kqcn.DiemTBHK1 END,
        DiemTBHK2 = CASE WHEN i.MaHocKy = 'HK2' THEN i.DiemTBHK ELSE kqcn.DiemTBHK2 END
    FROM KQ_HOCSINH_CANAM kqcn
    INNER JOIN inserted i ON kqcn.MaHocSinh = i.MaHocSinh 
                        AND kqcn.MaNamHoc = i.MaNamHoc
                        AND kqcn.MaLop = i.MaLop;

    UPDATE KQ_HOCSINH_CANAM
    SET DiemTBCN = (ISNULL(DiemTBHK1, 0) + ISNULL(DiemTBHK2, 0)) / 
                   CASE WHEN DiemTBHK1 IS NOT NULL AND DiemTBHK2 IS NOT NULL THEN 2
                        WHEN DiemTBHK1 IS NULL OR DiemTBHK2 IS NULL THEN 1
                        ELSE NULL
                   END
    WHERE MaHocSinh IN (SELECT MaHocSinh FROM inserted);
END;

DROP TRIGGER TRG_PhanLoaiHocSinh;

-- Kiểm tra dữ liệu hiện có
SELECT * FROM KQ_HOCSINH_CANAM;

-- Thêm dữ liệu ban đầu vào KQ_HOCSINH_CANAM
INSERT INTO KQ_HOCSINH_CANAM 
(MaHocSinh, MaLop, MaNamHoc, MaHocLuc, MaHanhKiem, MaKetQua, DiemTBHK1, DiemTBHK2, DiemTBCN)
VALUES 
('HS0001', 'LOP1212021', 'NH2021', 'HL0001', 'HK0001', 'KQ0001', 0, 0, 0),
('HS0002', 'LOP1212021', 'NH2021', 'HL0001', 'HK0001', 'KQ0001', 0, 0, 0);


-- Cập nhật điểm cho học sinh
UPDATE KQ_HOCSINH_MONHOC
SET DiemMiengTB = 9.0,
    Diem15PhutTB = 8.5,
    Diem45PhutTB = 8.0,
    DiemThi = 8.5,
    DiemTBHK = 8.5
WHERE MaHocSinh = 'HS0001' 
AND MaLop = 'LOP1212021'
AND MaNamHoc = 'NH2021'
AND MaMonHoc = 'MH0001'
AND MaHocKy = 'HK1';

-- Kiểm tra kết quả phân loại
SELECT * FROM KQ_HOCSINH_CANAM 
WHERE MaHocSinh IN ('HS0001', 'HS0002') 
AND MaNamHoc = 'NH2021';


--===================================================================================================================================================


-- Trigger cảnh báo số lượng học sinh vượt quá số lượng giới hạn của từng lớp ---> VỸ
SELECT * FROM HOCSINH
SELECT * FROM LOP
SELECT * FROM PHANLOP
DROP TRIGGER IF EXISTS WARNING_QUANTITY_HOCSINH

CREATE TRIGGER WARNING_QUANTITY_HOCSINH
ON PHANLOP
AFTER INSERT, UPDATE, DELETE
AS
BEGIN
	DECLARE @RULE_QUANTITY INT = 33
	DECLARE @ExistLop VARCHAR(50);

	IF EXISTS (SELECT * FROM inserted)
        SET @ExistLop = (SELECT TOP 1 MaLop FROM inserted);
    ELSE
        SET @ExistLop = (SELECT TOP 1 MaLop FROM deleted);
	IF (SELECT COUNT(*) FROM PHANLOP WHERE MaLop = @ExistLop) > @RULE_QUANTITY
		BEGIN
			RAISERROR(N'Số lượng học sinh trong lớp %s đã vượt quá giới hạn %d', 16, 1, @ExistLop, @RULE_QUANTITY);
			ROLLBACK TRANSACTION;
		END
	ELSE 
		BEGIN
			IF EXISTS (SELECT * FROM inserted)
			BEGIN
				UPDATE LOP
				SET SiSo = (SELECT COUNT(*) FROM PHANLOP WHERE MaLop = @ExistLop)
				WHERE MaLop IN (SELECT DISTINCT MaLop FROM inserted); 
			END
			IF EXISTS (SELECT * FROM deleted)
			BEGIN
				UPDATE LOP
				SET SiSo = (SELECT COUNT(*) FROM PHANLOP WHERE MaLop = @ExistLop)
				WHERE MaLop IN (SELECT DISTINCT MaLop FROM deleted); 
			END
		END
END

-- PHÂN LỚP
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0048')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0049')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0050')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0051')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0052')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0053')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0054')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0055')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0056')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0057')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0058')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0059')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0060')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0061')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0062')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0063')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0064')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0065')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0066')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0067')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0068')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0069')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0070')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0071')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0072')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1011920', 'HS0073')

-- thêm xóa tự động cập lại sỉ số

-- PHÂN LỚP
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0048')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0049')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0050')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0051')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0052')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0053')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0054')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0055')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0056')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0057')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0058')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0059')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0060')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0061')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0062')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0063')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0064')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0065')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0066')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0068')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0069')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0070')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0071')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0072')
INSERT INTO PHANLOP VALUES('NH1920', N'KHOI10', 'LOP1021920', 'HS0073')


-- Xóa xóa tự động cập lại sỉ số
DELETE FROM PHANLOP
WHERE MaKhoiLop ='KHOI10'
AND MaLop = 'LOP1021920'
AND MaNamHoc = 'NH1920'
AND MaHocSinh IN (
'HS0048', 
'HS0049', 
'HS0050', 
'HS0051', 
'HS0052', 
'HS0053',
'HS0054',
'HS0055',
'HS0056',
'HS0057',
'HS0058',
'HS0059',
'HS0060',
'HS0061',
'HS0062',
'HS0063',
'HS0064',
'HS0065',
'HS0066',
'HS0067',
'HS0068',
'HS0069',
'HS0070',
'HS0071',
'HS0072',
'HS0073'
);




--===================================================================================================================================================

-- Trigger cập nhật lại trạng thái học lực   ---> NHÃ 
	-- nếu có điểm mới được thêm vào tự động cập nhật lại trạng thái bảng KQ_LOPHOC_HOCKY
	CREATE TRIGGER TRG_CapNhatHocLuc
	ON DIEM
	AFTER INSERT, UPDATE, DELETE
	AS
	BEGIN
		SET NOCOUNT ON;
		DECLARE @AffectedClasses TABLE (
        MaLop VARCHAR(10),
        MaNamHoc VARCHAR(6),
        MaHocKy VARCHAR(3)
    );

    
    INSERT INTO @AffectedClasses
    SELECT DISTINCT MaLop, MaNamHoc, MaHocKy FROM INSERTED
    UNION
    SELECT DISTINCT MaLop, MaNamHoc, MaHocKy FROM DELETED;

    UPDATE kq
    SET 
        SoLuongDat = (
            SELECT COUNT(DISTINCT d.MaHocSinh)
            FROM DIEM d
            WHERE d.MaLop = ac.MaLop 
            AND d.MaNamHoc = ac.MaNamHoc 
            AND d.MaHocKy = ac.MaHocKy
            AND d.Diem >= (SELECT TOP 1 DiemDat FROM QUYDINH)
        ),
        TiLe = CAST(
            (SELECT COUNT(DISTINCT d.MaHocSinh) * 100.0
            FROM DIEM d
            WHERE d.MaLop = ac.MaLop 
            AND d.MaNamHoc = ac.MaNamHoc 
            AND d.MaHocKy = ac.MaHocKy
            AND d.Diem >= (SELECT TOP 1 DiemDat FROM QUYDINH)) /
            NULLIF((SELECT SiSo FROM LOP WHERE MaLop = ac.MaLop), 0) AS FLOAT
        )
    FROM KQ_LOPHOC_HOCKY kq
    INNER JOIN @AffectedClasses ac 
        ON kq.MaLop = ac.MaLop
        AND kq.MaNamHoc = ac.MaNamHoc
        AND kq.MaHocKy = ac.MaHocKy;
END;

DROP TRIGGER TRG_CapNhatHocLuc;

-- Xem dữ liệu hiện tại của KQ_LOPHOC_HOCKY
SELECT * FROM KQ_LOPHOC_HOCKY WHERE MaLop = 'LOP1212021';

-- Thêm điểm mới
INSERT INTO DIEM (MaHocSinh, MaMonHoc, MaHocKy, MaNamHoc, MaLop, MaLoai, Diem)
VALUES ('HS0001', 'MH0001', 'HK1', 'NH2021', 'LOP1212021', 'LD0001', 8.5);

-- Xem kết quả sau khi thêm điểm
SELECT * FROM KQ_LOPHOC_HOCKY WHERE MaLop = 'LOP1212021';

-- Cập nhật điểm
UPDATE DIEM 
SET Diem = 4.5
WHERE MaHocSinh = 'HS0001' 
AND MaLop = 'LOP1212021' 
AND MaHocKy = 'HK1'
AND MaNamHoc = 'NH2021'
AND MaMonHoc = 'MH0001';

-- Xem kết quả sau khi cập nhật
SELECT * FROM KQ_LOPHOC_HOCKY WHERE MaLop = 'LOP1212021';

-- Xóa điểm
DELETE FROM DIEM 
WHERE MaHocSinh = 'HS0001' 
AND MaLop = 'LOP1212021' 
AND MaHocKy = 'HK1'
AND MaNamHoc = 'NH2021'
AND MaMonHoc = 'MH0001';

-- Xem kết quả sau khi xóa
SELECT * FROM KQ_LOPHOC_HOCKY WHERE MaLop = 'LOP1212021';



--===================================================================================================================================================
-- Trigger kiểm tra học sinh trước khi xóa kiểm tra xem học sinh đó có đang tham gia lớp học hay không --> VỸ

SELECT * FROM HOCSINH
SELECT * FROM PHANLOP
SELECT* FROM LOP

DROP TRIGGER IF EXISTS KIEMTRA_BEFORE_DELETE

CREATE TRIGGER KIEMTRA_BEFORE_DELETE
ON HOCSINH
INSTEAD OF DELETE
AS
BEGIN
	 -- Kiểm tra xem có học sinh nào trong bảng deleted
    IF EXISTS (SELECT * FROM deleted)
    BEGIN
        -- Kiểm tra xem học sinh có đang tham gia lớp học không
        IF EXISTS (
            SELECT 1 
            FROM PHANLOP 
            WHERE MaHocSinh IN (SELECT MaHocSinh FROM deleted)
        )
        BEGIN
            -- Nếu học sinh tham gia lớp, thông báo lỗi
            RAISERROR('Học sinh này đang tham gia lớp học, không thể xóa!', 16, 1);
            ROLLBACK TRANSACTION;  -- Hủy giao dịch
            RETURN;
        END
        -- Nếu không có học sinh nào tham gia lớp, thực hiện xóa
        DELETE FROM HOCSINH WHERE MaHocSinh IN (SELECT MaHocSinh FROM deleted);
    END
END



-- nếu học sinh đâng học thì không thể xóa
DELETE FROM HOCSINH
WHERE MaHocSinh = 'HS0049'


-- xóa học sinh đang học
DELETE FROM PHANLOP
WHERE MaKhoiLop ='KHOI10'
AND MaLop = 'LOP1011920'
AND MaNamHoc = 'NH1920'
AND MaHocSinh IN (
'HS0048')


-- kiểm tra học sinh đang học
SELECT *  FROM PHANLOP
WHERE MaKhoiLop ='KHOI10'
AND MaLop = 'LOP1021920'
AND MaNamHoc = 'NH1920'
AND MaHocSinh = 'HS0048'



--===================================================================================================================================================

-- Trigger tự động cập nhật lại ngày cập nhật  --> THỊNH
	-- bảng HOCSINH -> khi một bản ghi được cập nhật thì ngày cập nhật tự động update  


--===================================================================================================================================================
---																STORE PROCEDURE																	---																
--===================================================================================================================================================





--===================================================================================================================================================

-- store procedure cập nhật lại kết quả đậu hoặc rớt cho học sinh  khi có điểm dược thêm vào --> VỸ
	-- bảng KQ_HOCSINH_CANAM, DIEM
	-- 

/*
// CÓ BAO NHIÊU MÔN HỌC = 9 MÔN 
					= TBHK1 = TỔNG 9 MÔN / SÓ MÔN HỌC
							= ((MÔN 1 * HỆ SỐ) + (MÔN 2 * HỆ SỐ) + (MÔN n * HỆ SỐ) / 9
			
	KQ_HOCSINH_MONHOC
		DiemMiengTB
		Diem15P
		Diem45P
		DiemThi ---> CỦA MÔN HỌC
		DiemTBHK --> CỦA MÔN HỌC

	KQ_HOCSINH_CANAM
		DIEMTBHK1 -> CỦA TOÀN BỘ MÔN HỌC TRONG HK

*/
SELECT * FROM KQ_HOCSINH_CANAM
SELECT * FROM DIEM
SELECT * FROM KETQUA
SELECT * FROM NAMHOC
SELECT * FROM HOCSINH
SELECT * FROM MONHOC
SELECT * FROM KQ_HOCSINH_MONHOC

CREATE PROCEDURE CapNhatKetQuaHocSinh
    @MaHocSinh VARCHAR(6),
    @MaLop VARCHAR(10),
    @MaNamHoc VARCHAR(6)
AS
BEGIN
    DECLARE @DiemTBHK1 FLOAT;
    DECLARE @DiemTBHK2 FLOAT;
    DECLARE @MaKetQua VARCHAR(6);

    -- Tính điểm trung bình học kỳ 1
    SELECT @DiemTBHK1 = (SELECT AVG(Diem) 
                          FROM DIEM 
                          WHERE MaHocSinh = @MaHocSinh 
                          AND MaLop = @MaLop 
                          AND MaNamHoc = @MaNamHoc 
                          AND MaHocKy = 'HK1');

    -- Tính điểm trung bình học kỳ 2
    SELECT @DiemTBHK2 = (SELECT AVG(Diem) 
                          FROM DIEM 
                          WHERE MaHocSinh = @MaHocSinh 
                          AND MaLop = @MaLop 
                          AND MaNamHoc = @MaNamHoc 
                          AND MaHocKy = 'HK2');

    -- Xác định mã kết quả
    SET @MaKetQua = CASE
        WHEN (@DiemTBHK1 + @DiemTBHK2) / 2.0 < 2 THEN 'KQ0004'
        WHEN (@DiemTBHK1 + @DiemTBHK2) / 2.0 >= 2 AND (@DiemTBHK1 + @DiemTBHK2) / 2.0 < 3.5 THEN 'KQ0003'
        WHEN (@DiemTBHK1 + @DiemTBHK2) / 2.0 >= 3.5 AND (@DiemTBHK1 + @DiemTBHK2) / 2.0 < 5 THEN 'KQ0002'
        ELSE 'KQ0001'
    END;

    -- Kiểm tra xem có bản ghi nào để cập nhật không
    IF EXISTS (SELECT 1 FROM KQ_HOCSINH_CANAM 
               WHERE MaHocSinh = @MaHocSinh 
               AND MaLop = @MaLop 
               AND MaNamHoc = @MaNamHoc)
    BEGIN
        UPDATE KQ_HOCSINH_CANAM
        SET DiemTBHK1 = @DiemTBHK1,
            DiemTBHK2 = @DiemTBHK2,
            DiemTBCN = (@DiemTBHK1 + @DiemTBHK2) / 2.0,
            MaKetQua = @MaKetQua 
        WHERE MaHocSinh = @MaHocSinh AND MaLop = @MaLop AND MaNamHoc = @MaNamHoc;

        PRINT 'Updated: ' + @MaHocSinh + ', ' + @MaLop + ', ' + @MaNamHoc + 
              ', DiemTBHK1: ' + CAST(@DiemTBHK1 AS VARCHAR) +
              ', DiemTBHK2: ' + CAST(@DiemTBHK2 AS VARCHAR) +
              ', MaKetQua: ' + @MaKetQua;
    END
    ELSE
    BEGIN
        PRINT 'No matching record found for: ' + @MaHocSinh + ', ' + @MaLop + ', ' + @MaNamHoc;
    END
END;
EXEC CapNhatKetQuaHocSinh @MaHocSinh = 'HS0047', @MaLop = 'LOP1212021', @MaNamHoc = 'NH1920';

--===================================================================================================================================================
-- store procedure tự động kiểm tra độ tuổi học sinh kiểm tra độ tuổi có hợp lệ hay không ( nhỏ nhất 15 - lớn nhất 30 )  --> VỸ
CREATE PROCEDURE KiemTraDoTuoiHocSinh
AS
BEGIN
    DECLARE @MaHocSinh VARCHAR(6);
    DECLARE @Tuoi INT;
    DECLARE @NgaySinh DATE;

    DECLARE cur CURSOR FOR 
    SELECT MaHocSinh, NgaySinh FROM HOCSINH;

    OPEN cur;
    FETCH NEXT FROM cur INTO @MaHocSinh, @NgaySinh;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Tính tuổi
        SET @Tuoi = DATEDIFF(YEAR, @NgaySinh, GETDATE());

        -- Kiểm tra độ tuổi hợp lệ
        IF @Tuoi < 6 OR @Tuoi > 18
        BEGIN
            PRINT 'Học sinh ' + @MaHocSinh + ' có độ tuổi không hợp lệ: ' + CAST(@Tuoi AS VARCHAR);
            -- Cập nhật trạng thái (nếu cần)
            UPDATE HOCSINH
            SET TinhTrang = 'KhongHopLe'
            WHERE MaHocSinh = @MaHocSinh;
        END
        ELSE
        BEGIN
            PRINT 'Học sinh ' + @MaHocSinh + ' có độ tuổi hợp lệ: ' + CAST(@Tuoi AS VARCHAR);
        END

        FETCH NEXT FROM cur INTO @MaHocSinh, @NgaySinh;
    END;

    CLOSE cur;
    DEALLOCATE cur;
END;
--===================================================================================================================================================
-- Store procedure nếu học sinh đã được phân lớp thì không được phân lần nữa

-- GỠ NẾU KHÔNG CẦN THIẾT 
DROP TRIGGER IF EXISTS PhanLopHocSinh

--HOCSINH: Chứa thông tin học sinh.
--PHANLOP: Chứa thông tin phân lớp.
--LOP: Chứa thông tin lớp học.
SELECT * FROM HOCSINH
SELECT * FROM PHANLOP
SELECT * FROM LOP

CREATE PROCEDURE PhanLopHocSinh 
    @MaHocSinh NVARCHAR(50),
    @MaLop NVARCHAR(50)
AS
BEGIN
    -- Kiểm tra xem học sinh đã được phân lớp hay chưa
    IF EXISTS (SELECT 1 FROM PHANLOP WHERE MaHocSinh = @MaHocSinh)
    BEGIN
        PRINT N'Học sinh đã được phân lớp. Không thể phân lớp lần nữa.'
        RETURN
    END

    -- Nếu chưa phân lớp, thực hiện phân lớp
    INSERT INTO PHANLOP (MaHocSinh, MaLop)
    VALUES (@MaHocSinh, @MaLop)

    PRINT N'Phân lớp thành công.'
END




--- THỰC THI CÂU LỆNH 

EXEC PhanLopHocSinh @MaHocSinh = 'HS0001', @MaLop = 'LOP1021920'


--- THỰC HIỆN LOẠI RA KHỎI LỚP

UPDATE PHANLOP
SET MaLop = ''
WHERE MaHocSinh = 'HS0001'

--- CHỈNH SỬA KHÓA NGOẠI CHO PHÉP NULL
-- BƯỚC 1 XÓA STORE ĐANG ẢNH HƯỞNG TRƯỚC
ALTER TABLE PHANLOP
DROP CONSTRAINT FK_PhanLop_HocSinh;
-- Kiểm tra cấu trúc bảng HOCSINH
EXEC sp_help 'HOCSINH';

-- Kiểm tra cấu trúc bảng PHANLOP
EXEC sp_help 'PHANLOP';

--  THỰC HIỆN SET
ALTER TABLE PHANLOP
ADD CONSTRAINT FK_PhanLop_HocSinh
FOREIGN KEY (MaHocSinh) REFERENCES HOCSINH(MaHocSinh) 
ON DELETE SET NULL;

--===================================================================================================================================================
---Stored Procedure Xóa Học Sinh Theo Điều Kiện




--===================================================================================================================================================

---Stored procedure này sẽ xóa học sinh không còn tham gia học.



--===================================================================================================================================================
---																THUẬT TOÁN HEURISTIC															  ---																
---																																                  ---
--===================================================================================================================================================



--===================================================================================================================================================

-- Tìm Kiếm Giáo Viên Theo Môn Học

--Bảng PHANCONG: Chứa thông tin về việc phân công giáo viên giảng dạy các môn học.
--Bảng GIAOVIEN: Chứa thông tin chi tiết về các giáo viên.
SELECT p.STT,g.TenGiaoVien, g.DiaChi, g.DienThoai, p.MaGiaoVien
FROM PHANCONG p
INNER JOIN GIAOVIEN g ON p.MaGiaoVien = g.MaGiaoVien
WHERE p.MaMonHoc = 'MH0002' 
ORDER BY g.TenGiaoVien;

----------------- CÂU TỐI ƯU ----------------- 
SELECT 
	B.STT AS 'SỐ THỨ TỰ',
	A.MaGiaoVien AS 'MÃ GIÁO VIÊN',
	B.MaLop as 'MÃ LỚP',
	A.TenGiaoVien AS 'TÊN GIÁO VIÊN',
	A.DiaChi AS 'ĐỊA CHỈ',
	A.DienThoai AS 'ĐIỆN THOẠI'
FROM 
	(SELECT g.MaGiaoVien, g.TenGiaoVien, g.DiaChi, g.DienThoai FROM GIAOVIEN g) A
	JOIN
	(SELECT p.MaGiaoVien, p.STT, p.MaMonHoc, p.MaLop FROM PHANCONG p) B
	ON A.MaGiaoVien = B.MaGiaoVien
WHERE B.MaMonHoc =  'MH0001'


--===================================================================================================================================================

 --Tìm Học Sinh Có Điểm Trung Bình Thấp Nhất

SELECT 
	hs.MaHocSinh AS 'MÃ HỌC SINH',
	hs.HOTEN AS 'TÊN HỌC SINH',
	dcn.DiemTBCN AS 'ĐIỂM TRUNG BÌNH'
FROM HOCSINH hs
INNER JOIN KQ_HOCSINH_CANAM dcn ON dcn.MaHocSinh = hs.MaHocSinh
WHERE DiemTBCN = (SELECT MIN(dcn.DiemTBCN) FROM KQ_HOCSINH_CANAM dcn)


/*
Kiểm tra tính chính sát

Bước 1: update hs có điểm thành 2
UPDATE KQ_HOCSINH_CANAM
SET DiemTBCN = 2
WHERE MaHocSinh = 'HS0003'

*/
----------------- CÂU TỐI ƯU ----------------- 
SELECT 
	TOP 1
	A.MaHocSinh AS 'MÃ HỌC SINH',
	A.HOTEN AS 'TÊN HỌC SINH',
	MIN(B.DiemTBCN) AS 'ĐIỂM TRUNG BÌNH'
FROM 
	(SELECT hs.MaHocSinh, hs.HoTen FROM HOCSINH hs) A
	JOIN
	(SELECT dcn.MaHocSinh, dcn.DiemTBCN FROM KQ_HOCSINH_CANAM dcn) B
	ON A.MaHocSinh = B.MaHocSinh
GROUP BY A.MaHocSinh, A.HoTen, B.DiemTBCN
ORDER BY B.DiemTBCN ASC


--===================================================================================================================================================

 --- Tính Tổng Điểm Của Học Sinh Trong Mỗi Khóa Học

SELECT 
	hs.MaHocSinh as 'Mã Học Sinh',
	d.MaMonHoc as 'Mã Môn Học',
	hs.HoTen as 'Tên Học Sinh',
	SUM(d.Diem) as 'TỔNG ĐIỂM'
FROM HOCSINH hs
INNER JOIN DIEM d ON d.MaHocSinh = hs.MaHocSinh
WHERE hs.MaHocSinh = 'HS0001'
GROUP BY hs.MaHocSinh, d.MaMonHoc, hs.HoTen 
----------------- CÂU TỐI ƯU ----------------- 
SELECT 
	A.MaHocSinh as 'Mã Học Sinh',
	A.MaMonHoc as 'Mã Môn Học',
	B.HoTen as 'Tên Học Sinh',
	SUM(A.Diem) as 'TỔNG ĐIỂM'
FROM 
	(SELECT d.MaHocSinh, d.MaMonHoc, d.Diem FROM DIEM d)  A
	JOIN
	(SELECT hs.MaHocSinh, hs.HoTen FROM HOCSINH hs)  B  
	ON A.MaHocSinh = B.MaHocSinh
GROUP BY A.MaHocSinh, A.MaMonHoc, B.HoTen

--===================================================================================================================================================

-- Tim Điểm Cao Nhất Của Từng Học Sinh

SELECT 
	hs.MaHocSinh AS 'MÃ HỌC SINH',
	hs.HoTen AS 'TÊN HỌC SINH',
	dcn.MaMonHoc AS 'MÃ MÔN HỌC',
	MAX(dcn.Diem)  AS 'ĐIỂM TRUNG BÌNH'
FROM HOCSINH hs
INNER JOIN DIEM dcn ON dcn.MaHocSinh = hs.MaHocSinh
GROUP BY hs.MaHocSinh, hs.HoTen, dcn.Diem, dcn.MaMonHoc


----------------- CÂU TỐI ƯU ----------------- 
SELECT 
	B.MaHocSinh AS 'MÃ HỌC SINH',
	B.HoTen AS 'TÊN HỌC SINH',
	A.MaMonHoc AS 'MÃ MÔN HỌC',
	A.Diem AS 'ĐIỂM'
FROM 
	(SELECT d.MaHocSinh, d.MaMonHoc, d.Diem FROM DIEM d ) A
	JOIN 
	(SELECT hs.MaHocSinh, hs.HoTen FROM HOCSINH hs) B
	ON A.MaHocSinh = B.MaHocSinh
GROUP BY B.MaHocSinh, B.HoTen, A.Diem, A.MaMonHoc
HAVING A.Diem = MAX(A.Diem)