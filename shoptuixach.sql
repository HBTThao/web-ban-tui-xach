-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 27, 2023 lúc 10:35 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `shoptuixach`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`Id`, `HinhAnh`) VALUES
(5, 'img/banners/banner1.jpg'),
(7, 'img/banners/banner2.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` int(11) NOT NULL,
  `TenDM` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
(1, 'Túi Xách'),
(2, 'Ví da'),
(3, 'Giày dép');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(11) NOT NULL,
  `MaND` int(11) NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `PhuongThucTT` varchar(20) NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaND`, `NgayLap`, `NguoiNhan`, `SDT`, `DiaChi`, `PhuongThucTT`, `TongTien`, `TrangThai`) VALUES
(1, 1, '2020-07-23 17:44:22', 'Duong Duong', '0976942493', 'An Vĩnh', '', 10880000, '0'),
(2, 1, '2020-07-24 21:54:03', 'Duong Duong', '0976942493', 'An Vĩnh', '', 39932000, '1'),
(3, 1, '2020-07-24 22:05:07', 'Duong Duong', '0976942493', 'An Vĩnh', '', 39932000, '0'),
(4, 1, '2020-07-24 22:06:01', 'Duong Duong', '0976942493', 'An Vĩnh', '', 39932000, '0'),
(6, 13, '2020-07-25 11:59:47', 'Nguyễn Trí', '02354129852', '39 đường 3/2 Đà Nẵng', '', 15340000, '0'),
(7, 1, '2020-07-27 10:49:40', 'Duong Duong', '0976942493', 'An Vĩnh', '', 9440000, '0'),
(8, 14, '2020-10-19 14:41:42', 'admin admin', '23423', 'nui thanh', '', 8590000, '0'),
(9, 15, '2020-10-22 08:05:50', 'a c', '1234567890', 'abc', '', 6900000, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TenKM` varchar(100) NOT NULL,
  `LoaiKM` varchar(20) NOT NULL,
  `GiaTriKM` float(11,0) NOT NULL,
  `NgayBD` datetime NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `TrangThai`) VALUES
(1, 'Không khuyến mãi', 'Nothing', 0, '2019-04-08 00:00:00', 1),
(2, 'Giảm giá', 'GiamGia', 500000, '2019-05-01 00:00:00', 1),
(5, 'Mới ra mắt', 'MoiRaMat', 0, '2019-05-01 00:00:00', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(11) NOT NULL,
  `TenLSP` varchar(70) NOT NULL,
  `HinhAnh` varchar(200) NOT NULL,
  `Mota` varchar(200) NOT NULL,
  `MaDM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`, `MaDM`) VALUES
(1, 'Túi Đeo Vai', 'SP3A.jpg', 'Túi Xách Thời Trang', 1),
(6, 'Túi Xách Tay', 'SP4C.jpg', 'Các sản phẩm của Vivo', 1),
(7, 'Túi Đeo Chéo', 'SP1B.jpg', 'Túi Xách Thời Trang', 1),
(45, 'Ví gập', 'SP6A.jpg', 'Ví thời trang', 2),
(46, 'Ví Kéo Khóa', 'SP5A.jpg', 'Ví Kéo Khóa', 2),
(47, 'Giày hè', 'SP7A.jpg', 'Giày hè thời trang', 3),
(48, 'Giày đông', 'SP8B.jpg', 'Giày đông thời trang', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` int(11) NOT NULL,
  `Ho` varchar(20) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `GioiTinh` varchar(10) NOT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `DiaChi` varchar(200) NOT NULL,
  `TaiKhoan` varchar(100) NOT NULL,
  `MatKhau` varchar(100) NOT NULL,
  `MaQuyen` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`, `TrangThai`) VALUES
(1, 'kimtuyen', 'kimtuyen', 'Nữ', '0976942493', 'kimtuyen123@gmail.com', 'Đồng Tháp', 'kimtuyen123', 'c0a8a75788941c71fecca0eb069d264c', 2, 1),
(3, 'KTuyen', 'KTuyen', 'Nữ', '0976944675', 'tuyenTtkduongls@gmail.com', 'Cần Thơ', 'tuyenTtk', 'c6a7472d3ae9d7c56f09e47b976a73d0', 3, 1),
(12, 'Tran', 'Tuyen', 'Nữ', '0976457643', 'tuyenTran234@gmail.com', 'Kan Tho', 'tuyenTran234', '35cdb356ddb1554e1c4eaa32e4de7f41', 2, 1),
(13, 'Nguyễn', 'Trí', '', '02354129852', 'tringuyendb@gmail.com', '', 'trimen', 'e99a18c428cb38d5f260853678922e03', 1, 1),
(14, 'admin', 'admin', 'Nam', '23423', 'admin@gmail.com', 'Can Tho', 'admin', 'c3284d0f94606de1fd2af172aba15bf3', 2, 1),
(15, 'a', 'c', '', '1234567890', 'a@gmail.com', '', '123456', '040d9b33af7249502cd6ec06c422755a', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` int(11) NOT NULL,
  `TenQuyen` varchar(20) NOT NULL,
  `ChiTietQuyen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
(1, 'Customer', 'Khách hàng có tài khoản'),
(2, 'Admin', 'Quản trị viên'),
(3, 'Personnel', 'Nhân Viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(11) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaDM` int(11) NOT NULL,
  `TenSP` varchar(70) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `HinhAnh1` varchar(200) NOT NULL,
  `HinhAnh2` varchar(255) DEFAULT NULL,
  `HinhAnh3` varchar(255) DEFAULT NULL,
  `MaKM` int(11) NOT NULL,
  `KieuDang` varchar(50) DEFAULT NULL,
  `ChatLieu` varchar(50) DEFAULT NULL,
  `MauSac` varchar(50) DEFAULT NULL,
  `KichCo` varchar(50) DEFAULT NULL,
  `XuatXu` varchar(50) DEFAULT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `MoTa` text NOT NULL,
  `ThoiGian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `MaDM`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh1`, `HinhAnh2`, `HinhAnh3`, `MaKM`, `KieuDang`, `ChatLieu`, `MauSac`, `KichCo`, `XuatXu`, `SoSao`, `SoDanhGia`, `TrangThai`, `MoTa`, `ThoiGian`) VALUES
(7, 7, 1, 'TÚI XÁCH NỮ LEMINO MONOGRAM JACQUARD LE26009-80', 2900000, 10, 'img/products/SP3A.jpg', 'img/products/SP3B.jpg', 'img/products/SP3C.jpg', 2, 'Túi Xách Thời Trang', 'Vải Jacquard dệt họa tiết', 'Đen', '37cm (dài) x 25cm (cao) x 13cm (rộng)', 'Viet Nam', 0, 0, 1, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;utm avo&quot;, sans-serif; font-size: 14px; text-align: justify;\">Mẫu&nbsp;túi Never Full Lemino&nbsp;Monogram Jacquard Denim này sinh ra để dành cho những cô nàng thành thị bận rộn, với&nbsp;thiết kế phom túi lớn đặc trưng giúp bạn mang theo cả thế giới nhỏ bên mình mỗi khi ra ngoài.</span><br></p>', '2023-03-27 13:09:09'),
(8, 7, 1, 'TÚI XÁCH NỮ LEMINO MONOGRAM CANVAS LE25061-40', 3700000, 20, 'img/products/SP4A.jpg', 'img/products/SP4B.jpg', 'img/products/SP4C.jpg', 2, 'Túi Xách Thời Trang', 'Da Canvas', 'Đỏ', '24cm (dài) x 13cm (cao) x 8cm (rộng)', 'Viet Nam', 0, 0, 1, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;utm avo&quot;, sans-serif; font-size: 14px; text-align: justify;\">Túi xách nữ&nbsp; đeo vai được thiết kế theo kiểu dáng hiện đại, sản phẩm có kích thước vừa phải, thu nhỏ dưới cánh tay của bạn. Nắp gập có khóa nam châm giúp giữ đồ đạc của bạn ở một nơi an toàn và ngay trong tầm với. Hãy thử kết hợp chiếc túi này với áo crop top, quần đáy chuông bằng vải sa tanh và giày mules dệt để có vẻ ngoài năng động vào buổi sáng cuối tuần.</span><br></p>', '2023-03-27 14:03:56'),
(59, 1, 1, 'TÚI XÁCH NỮ LEMINO MONOGRAM CANVAS LE259051', 725000, 5, 'img/products/SP1A.jpg', '/img/products/SP1B.jpg', '/img/products/SP1C.jpg', 1, 'Túi Xách Thời Trang', 'Vải Jacquard dệt họa tiết', 'Xanh', '24cm( dài đáy) x 21.5( dài miệng)  x 18cm (cao) x ', 'Viet Nam', 0, 0, 0, '', '2023-03-27 13:11:06'),
(60, 46, 2, 'VÍ NỮ LEMINO MONOGRAM CANVAS LE451004-51', 980000, 5, 'img/products/SP5A.jpg', '/img/products/SP5B.jpg', '/img/products/SP5C.jpg', 1, 'Ví nữ cầm tay , có dây đeo', 'Da Canvas', 'Nâu', '22cm (dài) x 12cm  (cao) x 3cm (rộng)', 'Viet Nam', 0, 0, 0, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;utm avo&quot;, sans-serif; font-size: 14px; text-align: justify;\">Ví nữ kéo khóa cầm tay</span><br style=\"color: rgb(51, 51, 51); font-family: &quot;utm avo&quot;, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;utm avo&quot;, sans-serif; font-size: 14px; text-align: justify;\">Là một chiếc ví Monogram Canvas cổ điển quen thuộc với bất kì cô gái nào. Ưu điểm nổi bật ở&nbsp;khóa kéo giúp giữ an toàn cho các vật dụng quan trọng của bạn. Có thể bỏ vừa vặn vào túi xách của bạn hoặc mang nó như một chiếc clucth cùng với một chiếc váy vest thắt đai và giày cao gót khối để có một diện mạo liền mạch từ bàn làm việc đến bữa tối</span><br></p>', '2023-03-27 14:58:36'),
(61, 46, 2, 'VÍ NỮ LE BY LEMINO LB43036-80', 300000, 7, 'img/products/SP6A.jpg', '/img/products/SP6B.jpg', '/img/products/SP6C.jpg', 1, 'Dây đeo tay', 'Da tổng hợp cao cấp', 'Đen', '11cm (dài)x 9,5cm (cao) x 3cm (rộng)', 'Viet Nam', 0, 0, 0, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;utm avo&quot;, sans-serif; font-size: 14px; text-align: justify;\">Ví nữ mini phối dây móc&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: &quot;utm avo&quot;, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;utm avo&quot;, sans-serif; font-size: 14px; text-align: justify;\">Đừng bao giờ bỏ qua một chiếc ví mini size, bởi thoạt nhìn trông chúng có vẻ nhỏ bé nhưng khi mở ra bạn sẽ bất ngờ về diện tích của chúng, khóa kéo miệng&nbsp;giữ đồ đạc luôn trong trạng thái an toàn nhất.</span><br></p>', '2023-03-27 15:01:17'),
(62, 47, 3, 'GIÀY NỮ LE BY LEMINO LB63029-10', 450000, 4, 'img/products/SP7A.jpg', '/img/products/SP7B.jpg', '/img/products/SP7C.jpg', 1, 'Giày thời trang', 'Da tổng hợp cao cấp', 'Trắng', 'Size 28', 'Viet Nam', 0, 0, 0, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;utm avo&quot;, sans-serif; font-size: 14px; text-align: justify;\">Giày nữ Moccasins có thiết kế đặc trưng thường thấy với đế kếp chống trơn trượt, da thật mềm mại có độ bóng tự nhiên đạt hiệu quả thẩm mĩ và trải nghiệm dễ chịu khi sử dụng. Ngoài ra, items này còn được cách điệu&nbsp;với chi tiết hợp kim phủ màu ấn tượng.</span><br></p>', '2023-03-27 15:04:28'),
(63, 48, 3, 'BOOTS DA NỮ THỜI TRANG MIORR MGM9-5-80', 850000, 9, 'img/products/SP8A.jpg', '/img/products/SP8B.jpg', '/img/products/SP8C.jpg', 1, 'Giày thời trang', 'Da cao cấp', 'Đen', 'Size 29', 'Viet Nam', 0, 0, 0, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;utm avo&quot;, sans-serif; font-size: 14px; text-align: justify;\">Boots da nữ thời trang (Boots thấp cổ)&nbsp;</span><br style=\"color: rgb(51, 51, 51); font-family: &quot;utm avo&quot;, sans-serif; font-size: 14px; text-align: justify;\"><span style=\"color: rgb(51, 51, 51); font-family: &quot;utm avo&quot;, sans-serif; font-size: 14px; text-align: justify;\">Có cấu tạo đế kếp cao suđặc trên độ cao 5cm cho trải nghiệm của những bước đi chắc chắn.&nbsp;Đây sẽ là lựa chọn tuyệt vời để mang cùng những chiếc chân váy dài quá đầu gối.</span><br></p>', '2023-03-27 15:06:44'),
(64, 6, 1, 'TÚI XÁCH NỮ LEMINO MONOGRAM CANVAS LE25059-10', 4300000, 3, 'img/products/SP10A.jpg', '/img/products/SP10B.jpg', '', 1, 'Túi đeo vai hoặc xách tay', ' Da canvas', 'Trắng', '35cm( dài) x 26 (cao) x 15cm (rộng)', 'Viet Nam', 0, 0, 0, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;utm avo&quot;, sans-serif; font-size: 14px; text-align: justify;\">Túi TOTE là dáng túi mà bất kì cô gái thành thị nào cũng nên có, cấu tạo phom túi lớn đặc trưng cho phép chứa đựng lượng lớn đồ dùng cá nhân mà phông phải phân vân lựa chọn mỗi khi ra ngoài.&nbsp;Thiết kế đơn giản sẽ phù hợp với rấtnhiều phong cách thời trang khác nhau và không bị lỗi mốt theo thời gian.</span><br></p>', '2023-03-27 15:15:22'),
(65, 45, 2, 'VÍ NỮ LEMINO MONOGRAM JACQUARD LE46002-80', 665000, 4, 'img/products/SP11A.jpg', '/img/products/SP11B.jpg', '/img/products/SP11C.jpg', 1, 'Túi Xách Thời Trang', 'Vải Jacquard dệt họa tiết', 'Đen', '19cm (dài) x 10cm (cao) x 2cm (rộng)', 'Viet Nam', 0, 0, 0, '<p><span style=\"color: rgb(51, 51, 51); font-family: &quot;utm avo&quot;, sans-serif; font-size: 14px; text-align: justify;\">Ví nữ nắp gập Monogram Jacquard lần đầu tiên được ra mắt&nbsp;chất liệu vải Jacquard với&nbsp;kĩ thuật dệt họa tiết cao cấp, diện mạo mô phỏng như chiếc bì thư đẹp đẽ, gọn gàng nằm gọn trong chiếc túi xách của bạn.</span><br></p>', '2023-03-27 15:18:18');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`) USING BTREE;

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`) USING BTREE,
  ADD KEY `MaSP` (`MaSP`) USING BTREE;

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`) USING BTREE;

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`) USING BTREE,
  ADD KEY `MaKH` (`MaND`) USING BTREE;

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`) USING BTREE;

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`) USING BTREE,
  ADD KEY `MaDM` (`MaDM`) USING BTREE,
  ADD KEY `MaLSP` (`MaLSP`,`MaDM`) USING BTREE,
  ADD KEY `MaLSP_2` (`MaLSP`) USING BTREE;

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`) USING BTREE,
  ADD KEY `MaQuyen` (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`) USING BTREE;

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`) USING BTREE,
  ADD KEY `LoaiSP` (`MaLSP`) USING BTREE,
  ADD KEY `MaKM` (`MaKM`) USING BTREE;

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `MaLSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `MaND` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `MaQuyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD CONSTRAINT `MaDM` FOREIGN KEY (`MaDM`) REFERENCES `danhmuc` (`MaDM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sanpham_ibfk_3` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
