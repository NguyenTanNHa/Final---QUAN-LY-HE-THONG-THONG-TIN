/* Task 1: (2.0 point)
Please set up a database (minimum 8 tables) serving the above functions with full primary and foreign key relationships base on file DBMS_Lab_1_QLBD.pdf.
- Describe in words the content to be managed.
- Describe the table structure and relational schema.
- Describe the test data input for all tables.
Hãy thiết lập CSDL (tối thiểu 8 bảng) phục vụ các chức năng trên có đầy đủ mối liên hệ khóa chính, khóa ngoại dựa trên file bài lab DBMS_Lab_1_QLBD.pdf

////////////////////////////////// 
24 table / 4 -> 6 * 4  = 24


--- Thịnh
nguoidung, 2
loainguodung, 5
giaovien, 5
phancong, 5
phanlop, 4
tôn giao, 2


-- Hoàng
nghenghiep, 2
khoi, 2
lop,  6
hanh kiem, 2
diem, 8
loaidiem, 3


--- Nhã
hoc luc, 5
nam học, 2
ket qua, 2
hoc ky, 3
mon hoc, 4
qui dinh,5


--- Vỹ
kqcanam, 9
kqhocky, 5
kqhocsinhmonhoc, 10
kqhocsinhlophoc, 6
dan toc, 2
hocsinh, 12







/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
BƯỚC 1: 
	THÔNG TIN CẦN MÔ TẢ: 
		Ý NGHĨA TỪNG CỘT:  
		ERD: VẼ THÔNG TIN ERD LÊN FILE KHÔNG YÊU CẦU NÓI MỐI QUAN HỆ: https://www.lucidchart.com/pages/er-diagrams
		CLASS-DIAGRAM: MÔ TẢ KIỂU DỮ LIỆU CHO TỪNG FIELD
			VÍ DỤ: https://www.lucidchart.com/pages/uml-class-diagram
			TRÊN VISUAL STUDIO CODE: TẢI EXTENSION -> Draw.io Integration


TO BE CONTINOUS .......
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
BƯỚC 2: 

DANTOC
TONGIAO
NAMHOC
HOCKY
KHOILOP
MONHOC
HOCLUC
HANHKIEM
KETQUA
NGHENGHIEP
LOAIDIEM
QUIDINH
LOAINGUOIDUNG
NGUOIDUNG
	- MALOAI (LOAINGUOIDUNG) -------------- Hoàng

GIAOVIEN
	- MAMONHOC(MONHOC) -------------- Hoàng
HOCSINH
	- MADANTOC(DANTOC) -------------- Hoàng
	- MATONGIAO(TONGIAO) -------------- Hoàng
	- MANGHE(NGHENGHIEP) -------------- Hoàng

PHANLOP
	- MAHOCSINH (HOCSINH) -------------- Hoàng
	- MANAMHOC (NAMHOC)  -------------- Nhã
	- MAKHOILOP (KHOILOP)  -------------- Nhã
	- MALOP (LOP)  -------------- Nhã
LOP
	- MAKHOILOP (KHOI) -------------- Nhã
	- MANAMHOC (NAMHOC)  -------------- Nhã
	- MAGIAOVIEN (GIAOVIEN)  -------------- Nhã
PHANCONG
	- MANAMHOC (NAMHOC) -------------- Thịnh
	- MALOP (LOP) -------------- Thịnh
	- MAMONHOC (MONHOC) -------------- Thịnh
	- MAGIAOVIEN (GIAOVIEN) -------------- Thịnh
DIEM
	- MAHOCSINH (HOCSINH) -------------- Thịnh
	- MAMONHOC (MONHOC) -------------- Thịnh
	- MAHOCKY (HOCKY) -------------- Vỹ
	- MANAMHOC (NAMHOC) -------------- Vỹ
	- MALOP (LOP) -------------- Vỹ
	- MALOAI (LOAIDIEM) -------------- Vỹ
KQ_HOCSINH_MONHOC
	- MAHOCSINH (HOCSINH) -------------- Vỹ
	- MALOP (LOP) -------------- Vỹ
	- MANAMHOC (NAMHOC) -------------- Vỹ
	- MAMONHOC (MONHOC) -------------- Vỹ
	- MAHOCKY (HOCKY) -------------- Vỹ
KQ_HOCSINH_CANAM
	- MAHOCSINH (HOCSINH) -------------- Vỹ
	- MALOP (LOP) -------------- Vỹ
	- MANAMHOC (NAMHOC) -------------- Vỹ
	- MAHOCLUC (HOCLUC) -------------- Vỹ
	- MAHANHKIEM (HANHKIEM) -------------- Vỹ
	- MAKETQUA (KETQUA) -------------- Vỹ
KQ_LOPHOC_MONHOC
	- MALOP (LOP) -------------- Vỹ
	- MANAMHOC (NAMHOC) -------------- Vỹ
	- MAMONHOC (MONHOC) -------------- Vỹ
	- MAHOCKY (HOCKY) -------------- Vỹ
KQ_LOPHOC_HOCKY
	- MALOP (LOP) -------------- Vỹ
	- MANAMHOC (NAMHOC) -------------- Vỹ
	- MAHOCKY (HOCKY) -------------- Vỹ






	Thịnh
			viết mô tả: phân tích mối quan hệ 1 - n hay  1 - 1 
				PHANCONG 	- MANAMHOC
							- MALOP
							- MAMONHOC
							- GIAOVIEN
				DIEM		- MAMONHOC
							- MAHOCSINH
	Hoàng 
		
		viết mô tả: phân tích mối quan hệ 1 - n hay  1 - 1 
			HOCSINH 	- DAN TOC 
						- NGHE
				 		- TON GIAO
			GIAOVIEN 	- MONHOC 
			NGUOIDUNG 	- LOAINGUOIDUNG
			PHAN LOP 	- MAHOCSINH
	Nhã
		viết mô tả: phân tích mối quan hệ 1 - n hay  1 - 1 
			LOP		 	- MAKHOI 
						- MANAMHOC
				 		- MAGIAOVIEN
			PHANLOP 	- MANAMHOC 
					 	- MAKHOILOP
						- MALOP
	
	Vỹ 
		Viết mô tả: phân tích mối quan hệ 1 - n hay  1 - 1 
			DIEM 		- MAHOCSINH (HOCSINH)
						- MAMONHOC (MONHOC)
						- MAHOCKY (HOCKY)
						- MANAMHOC (NAMHOC)
						- MALOP (LOP)
						- MALOAI (LOAIDIEM )

	

TO BE CONTINOUS .......
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
BƯỚC 3:
	xác định kiểu dữ liệu và loại trường bắt buộc
		Định dạng bảng 	TÊN CỘT   |    KIỂU DỮ LIỆU   |  BẮT BUỘT ( YES / NO )

	Thịnh
			nguoidung, 2
			loainguodung, 5
			giaovien, 5
			phancong, 5
			phanlop, 4
			tôn giao, 2

	Hoàng 
		
			nghenghiep, 2
			khoi, 2
			lop,  6
			hanh kiem, 2
			diem, 8
			loaidiem, 3
	Nhã
			hoc luc, 5
			nam học, 2
			ket qua, 2
			hoc ky, 3
			mon hoc, 4
			qui dinh,5

	
	Vỹ 
			kqcanam, 9
			kqhocky, 5
			kqhocsinhmonhoc, 10
			kqhocsinhlophoc, 6
			dan toc, 2
			hocsinh, 12



	

TO BE CONTINOUS .......
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	





- Mô tả bằng lời các nội dung cần quản lý.
//////////////////////////////////
	-- quản lý thông tin học sinh : dan toc, tôn giao, hoc luc, khoi, lop, hocsinh
	-- quản lý kết quả học sinh: nam học, ket qua, hoc ky, mon hoc, kqcanam, kqmonhoc, kqhocky, kqmonhoc, loaidiem
	-- quản lý các hành vi của học sinh: hanh kiem, qui dinh


//////////////////////////////////
- Mô tả cấu trúc bảng và lược đồ quan hệ.
//////////////////////////////////
	-- ERD 
	-- Use case 
	-- Class diagram
	-- Determine the ralationship between tables 

//////////////////////////////////
- Mô tả dữ liệu nhập thử cho tất cả các bảng.
//////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
BƯỚC 4: 

	Thịnh
			
	Hoàng 
		
	Nhã

	
	Vỹ 
		

	

TO BE CONTINOUS .......
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
TABLE CHƯA CÓ DATA -> 
	NGƯỜI DÙNG
	HỌC SINH MÔN HỌC
	HỌC SINH CẢ NĂM
	LỚP HỌC HỌC KỲ
	LỚP HỌC MÔN HỌC
	DIEM
	
	

Task 2: (3.0 point)
Identify 03 integrity constraints and write source code to implement the business related trigger.
Xác định 03 ràng buộc toàn vẹn và viết mã nguồn cài đặt trigger liên quan nghiệp vụ.
	
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
BƯỚC 5: xác định ít nhất 6 ràng buộc toàn vẹn và cài đặt trigger
	Thịnh
			
	Hoàng 
		
	Nhã

	
	Vỹ 
		

	

TO BE CONTINOUS .......
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	




Task 3: (2.0 point)
Create 02 stores combined using cursor to browse data to serve any function of the store..
Tạo 02 store kết hợp sử dụng cursor để duyệt dữ liệu phục vụ cho chức năng bất kỳ của cửa hàng..

Task 4: (3.0 point)
Write 02 queries for any business functions and using heuristic algorithm to optimize query.
Viết 02 truy vấn cho bất kỳ chức năng kinh doanh nào và sử dụng thuật toán heuristic để tối ưu hóa
*/