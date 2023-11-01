-- create database QUANLYBANHANG;
-- use QUANLYBANHANG;  

-- create table KHACHHANG(
-- MaKH varchar(4) primary key ,
-- TenKH varchar(30) not null,
-- Diachi varchar(50),
-- Ngaysinh datetime,
-- soDT varchar(15) unique
-- );

-- create table NHANVIEN(
-- MaNV varchar(4) primary key ,
-- HoTen varchar(30) not null,
-- GioiTinh bit not null,
-- DiaChi varchar(50) not null,
-- NgaySinh datetime not null,
-- DienThoai varchar(15),
-- Email text ,
-- NoiSinh varchar(20) not null,
-- NgayVaoLam datetime ,
-- MaNQL varchar(4) 
-- );

-- create table NHACUNGCAP (
-- MaNCC varchar(5) primary key ,
-- TenNCC varchar(50) not null,
-- DiaChi varchar(50) not null,
-- Dienthoai varchar(50) not null,
-- Email varchar(50) not null,
-- Website varchar(30)
-- );

-- create table LOAISP(
-- MaloaiSP varchar(4) primary key,
-- TenloaiSP varchar(30) not null,
-- Ghichu varchar(100) not null
-- );

-- create table SANPHAM(
-- MaSP varchar(4) primary key ,
-- MaloaiSP varchar(4) not null,
-- TenSP varchar(50) not null,
-- Donvitinh varchar(10) not null,
-- Ghichu varchar(100)
-- );

-- create table PHIEUNHAP(
-- SoPN varchar(5) primary key ,
-- MaVN varchar(4) not null ,
-- MaNCC varchar(5) not null,
-- NgayNhap datetime not null ,
-- Ghichu varchar(100)
-- );

-- create table CTPHIEUNHAP (
-- MaSP varchar(4),
-- SoPN varchar(5),
-- Soluong smallint not null default 0,
-- Gianhap real not null check (Gianhap>=0),
-- primary key(MaSP,SoPN)

-- );

-- create table PHIEUXUAT (
-- SoPX varchar(5) primary key,
-- MaNV varchar(4) not null,
-- MaKH varchar(4) not null,
-- NgayBan datetime not null ,
-- GhiCHu text 
-- );

-- create table CTPHIEUXUAT (
-- SoPX varchar(5) not null ,
-- MaSP varchar(4) not null,
-- SoLuong smallint not null,
-- GiaBan real not null,
-- primary key(SoPX,MaSP)
-- );

-- alter table SANPHAM 
-- add foreign key (`MaloaiSP`) references LOAISP(`MaloaiSP`); 

-- alter table PHIEUNHAP
-- add foreign key (`MaVN`) references NHANVIEN(`MaNV`) ;
-- alter table PHIEUNHAP 
-- add foreign key (`MaNCC`) references NHACUNGCAP(`MaNCC`);

-- alter table CTPHIEUNHAP
-- add foreign key (`MaSP`) references SANPHAM(`MaSP`);
-- alter table CTPHIEUNHAP 
-- add foreign key (`SoPN`) references PHIEUNHAP(`SoPN`);

-- alter table PHIEUXUAT
-- add foreign key (`MaNV`) references NHANVIEN(`MaNV`);
-- alter table PHIEUXUAT 
-- add foreign key (`MaKH`) references KHACHHANG (`MaKH`);

-- alter table CTPHIEUXUAT
-- add foreign key (`SoPX`) references PHIEUXUAT (`SoPX`);
-- alter table CTPHIEUXUAT
-- add foreign key (`MaSP`) references SANPHAM(`MaSP`);

-- insert into NHANVIEN (MaNV,HoTen,GioiTinh,DiaChi,NgaySinh,DienThoai,Email,NoiSinh,NgayVaoLam,MaNQL) value('KH01','cường',1,'Bình Thạnh','1999-03-01 23:59:59','1234','cuong@gmail.com','Hà Nam','2000-01-03 23:59:59',1234); 

-- insert into nhacungcap value ('ncc01','SamSung','Hồ Chí Minh','1234','nhacungcap@gmail.com','https://nhacungcap.com');

-- insert into sanpham value('SP01','LSP1','Quần què','vnd','hàng mới về');
-- insert into sanpham value('SP02','LSP1','Quần không què','vnd','hàng mới về rất đẹp');

-- insert into loaisp value('LSP1','Quần','Quần áo rất đẹp');

-- insert into phieunhap values('PN01','NV01','NCC01','1999-03-01 23:59:59','hàng đã được kiểm duyệt') ,
-- 							('PN02','NV02','NCC01','1999-03-01 23:59:59','hàng đã được kiểm duyệt và chứng nhận');

-- insert into phieuxuat values('PX01','NV01','KH01','1999-03-01 23:59:59','hàng đã lên đường'),
-- 							('PX02','NV02','KH01','1999-03-01 23:59:59','hàng đã lên đườngvà sắp tới nơi');

-- insert into nhanvien value('NV03','Cường Cao',1,'Hồ Chí Minh','1999-03-01 23:59:59','123456','cuong@gmail.com','Hà Nam','1999-03-01 23:59:59','1234')

-- update khachhang set soDT = 1111 where MaKH like 'KH01';

-- update nhanvien  set diachi = 'Hà nội' where manv like 'NV01';  

-- Bài 5:
-- delete from  nhanvien where manv like 'NV03';

-- delete from sanpham where masp like 'SP04';

-- Bài 6
select * from phieunhap left join  phieuxuat on phieunhap.maVN = phieuxuat.MaNV;
 