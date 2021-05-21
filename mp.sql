-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 08, 2021 lúc 09:28 AM
-- Phiên bản máy phục vụ: 10.4.14-MariaDB
-- Phiên bản PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `mp`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `id_chi_tiet_hoadon` bigint(10) NOT NULL,
  `sodh` bigint(20) NOT NULL,
  `masp` bigint(20) NOT NULL,
  `soluong` int(11) NOT NULL,
  `dongia` float NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL,
  `madv` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`id_chi_tiet_hoadon`, `sodh`, `masp`, `soluong`, `dongia`, `thanhtien`, `madv`) VALUES
(131, 115, 203, 2, 220, '440.00', '12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dichvu`
--

CREATE TABLE `dichvu` (
  `madv` bigint(20) NOT NULL,
  `tendv` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dichvu`
--

INSERT INTO `dichvu` (`madv`, `tendv`, `gia`) VALUES
(12, 'Giao hàng trong ngày', 30),
(13, 'Giao hàng thông thường', 10),
(14, 'Gói quà + Giao hàng', 50);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `sodh` bigint(20) NOT NULL,
  `emailkh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ngaygiao` date NOT NULL,
  `tenkh` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `diachi` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `dienthoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `hinhthucthanhtoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `thanhtien` decimal(9,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`sodh`, `emailkh`, `ngaygiao`, `tenkh`, `diachi`, `dienthoai`, `hinhthucthanhtoan`, `thanhtien`) VALUES
(115, 'huy@gmail.com', '2020-10-13', 'Thanh Truong', '235 Hoàng Quốc Việt', '1234567890', 'ATM', '470.00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginadmin`
--

CREATE TABLE `loginadmin` (
  `tendangnhap` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginadmin`
--

INSERT INTO `loginadmin` (`tendangnhap`, `matkhau`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loginuser`
--

CREATE TABLE `loginuser` (
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `matkhau` int(200) NOT NULL,
  `HoTen` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `DienThoai` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loginuser`
--

INSERT INTO `loginuser` (`email`, `matkhau`, `HoTen`, `DienThoai`) VALUES
('thanh@gmail.com', 123, 'Thanh Truong', '1234567890');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhasanxuat`
--

CREATE TABLE `nhasanxuat` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nhasanxuat`
--

INSERT INTO `nhasanxuat` (`ID`, `Ten`) VALUES
(11, 'Australis'),
(12, 'BOBBI BROWN'),
(13, 'CARENEL '),
(14, 'LANEIGE');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` bigint(10) NOT NULL,
  `Ten` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Gia` double NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Manhasx` bigint(10) NOT NULL,
  `Mota` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `KhuyenMai` tinyint(1) NOT NULL,
  `giakhuyenmai` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`ID`, `Ten`, `Gia`, `HinhAnh`, `Manhasx`, `Mota`, `date`, `KhuyenMai`, `giakhuyenmai`) VALUES
(203, 'Son Kem Bán Lì Australis (Đỏ cam)', 270, 'son-kem-ban-li-australis-strength-mau-do-cam-8ml-1_img_300x300_b798dd_fit_center.jpg', 11, '<p><strong>Son Kem B&aacute;n L&igrave; Australis GRL Boss Demi Matte Lip Cream 8ml</strong></p>\r\n\r\n<p>Bạn ngại d&ugrave;ng&nbsp;<strong>son l&igrave;</strong>&nbsp;v&igrave; đ&ocirc;i m&ocirc;i kh&ocirc; nẻ, bong tr&oacute;c? Vậy th&igrave; son b&aacute;n l&igrave; (Demi-Matte) ch&iacute;nh l&agrave; &ldquo;ch&acirc;n &aacute;i&rdquo; d&agrave;nh cho bạn. Đ&acirc;y l&agrave; loại son v&ocirc; c&ugrave;ng th&iacute;ch hợp với những n&agrave;ng c&oacute; đ&ocirc;i m&ocirc;i dễ bị kh&ocirc; nhờ v&agrave;o độ dưỡng vừa phải, gi&uacute;p m&ocirc;i vẫn mềm mịn v&agrave; mượt m&agrave; khi thoa, đồng thời vẫn c&oacute; độ l&igrave; nhất định, kh&ocirc;ng hề b&oacute;ng nhẫy hay qu&aacute; kh&ocirc; m&ocirc;i.</p>\r\n\r\n<p><strong>Hasaki</strong>&nbsp;xin giới thiệu đến c&aacute;c bạn&nbsp;<strong>Son Kem B&aacute;n L&igrave; Australis GRL Boss Demi Matte Lip Cream&nbsp;</strong>đến từ&nbsp;<strong>thương hiệu mỹ phẩm trang điểm Australis Cosmetics</strong>&nbsp;nổi tiếng của nước &Uacute;c,&nbsp;với chất son mềm mịn, mượt như nhung, nhẹ v&agrave; l&acirc;u tr&ocirc;i suốt cả ng&agrave;y d&agrave;i, ho&agrave;n hảo cho những bạn muốn sở hữu đ&ocirc;i m&ocirc;i đậm sắc v&agrave; ấn tượng.</p>\r\n\r\n<p>Bộ sưu tập&nbsp;<strong>Son Kem B&aacute;n L&igrave; Australis GRL Boss Demi Matte Lip Cream</strong><strong>&nbsp;</strong>hiện đ&atilde; c&oacute; mặt tại<strong>&nbsp;Hasaki&nbsp;</strong>với 16 t&ocirc;ng m&agrave;u ở đủ mọi sắc độ cho bạn tha hồ &ldquo;biến h&oacute;a&rdquo; phong c&aacute;ch trang điểm:</p>\r\n\r\n<h2><strong>C&ocirc;ng dụng:</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Chất son kem b&aacute;n l&igrave; l&agrave;m cho đ&ocirc;i m&ocirc;i căng mọng.</p>\r\n	</li>\r\n	<li>\r\n	<p>Chứa chất chống oxy h&oacute;a, dưỡng chất vitamin gi&uacute;p mềm m&ocirc;i.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đạt chuẩn Vegan Friendly &ndash; kh&ocirc;ng sử dụng th&agrave;nh phần từ động vật cũng như kh&ocirc;ng thử nghiệm tr&ecirc;n động vật, th&acirc;n thiện với người ăn chay.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Bảo quản:</strong></p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.</p>\r\n	</li>\r\n	<li>\r\n	<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n	</li>\r\n</ul>\r\n\r\n<p><strong>Dung t&iacute;ch:</strong>&nbsp;8ml</p>\r\n\r\n<p><strong>Thương hiệu:</strong>&nbsp;Australis</p>\r\n\r\n<p><strong>Xuất Xứ:</strong>&nbsp;&Uacute;c</p>\r\n\r\n<p>&nbsp;</p>\r\n', '2020-10-13', 1, 220),
(204, 'Kem Nền Australis Siêu Nhẹ Tông Da Sáng', 299, 'kem-nen-australis-sieu-nhe-tong-da-sang-pearl-30ml-4_img_300x300_b798dd_fit_center.jpg', 11, '<p>Nếu bạn đang c&oacute; &yacute; định t&igrave;m hiểu về kem nền, c&aacute;ch chọn kem nền hoặc c&aacute;ch đ&aacute;nh kem nền thế n&agrave;o hiệu quả th&igrave; đừng bỏ lỡ những b&iacute; k&iacute;p tuyệt vời sẽ được ch&uacute;ng t&ocirc;i tiết lộ ngay sau đ&acirc;y.</p>\r\n\r\n<h2>Kem nền l&agrave; g&igrave;</h2>\r\n\r\n<p>Kem nền l&agrave; một loại mỹ phẩm được sử dụng phổ biến khi trang điểm, được sử dụng ch&iacute;nh ở c&ocirc;ng đoạn đầu. Kem nền gi&uacute;p che đi những khuyết điểm tr&ecirc;n khu&ocirc;n mặt như mụn, rỗ, t&agrave;n nhang, n&aacute;m hoặc thậm ch&iacute; l&agrave; c&aacute;c vết ch&agrave;m l&acirc;u năm.</p>\r\n\r\n<p>Ch&uacute;ng ta kh&ocirc;ng nhất thiết phải sử dụng kem nền khi trang điểm nhưng kh&ocirc;ng phải ai cũng c&oacute; được l&agrave;n da như mơ ước n&ecirc;n việc sử dụng sản phẩm n&agrave;y l&agrave; rất cần thiết.&nbsp;</p>\r\n\r\n<h2>Kem nền c&oacute; t&aacute;c dụng như thế n&agrave;o</h2>\r\n\r\n<p>Kem nền đ&atilde; được nghi&ecirc;n cứu v&agrave; ph&aacute;t triển với t&iacute;nh năng hỗ trợ trang điểm, chăm s&oacute;c da hiệu quả. Dưới đ&acirc;y l&agrave; một số t&aacute;c dụng nổi bật của kem nền:</p>\r\n\r\n<p>Che khuyết điểm da kh&ocirc;ng đều m&agrave;u, vết sẹo, mụn, l&agrave;m phẳng v&agrave; gi&uacute;p da mịn m&agrave;ng tự nhi&ecirc;n.</p>\r\n\r\n<p>Kiềm dầu, nguy&ecirc;n nh&acirc;n ch&iacute;nh l&agrave;m tr&ocirc;i đi lớp trang điểm</p>\r\n\r\n<p>Tăng cường bảo vệ da, bổ sung độ ẩm, vitamin v&agrave; kho&aacute;ng chất, bảo vệ da v&agrave; chống nắng hiệu quả.</p>\r\n\r\n<p>Gi&uacute;p c&aacute;c loại mỹ phẩm l&ecirc;n m&agrave;u đẹp hơn. Dễ d&agrave;ng kết hợp với nhiều phong c&aacute;ch trang điểm kh&aacute;c nhau.</p>\r\n', '2020-10-13', 0, 0),
(205, 'Mascara Làm Dài, Dày Mi Australis Mini', 116, 'mascara-lam-dai-day-mi-australis-mini_img_300x300_b798dd_fit_center.jpg', 11, '<p><strong>Mascara L&agrave;m D&agrave;i D&agrave;y Mi Australis Fake It Mascara Mini</strong></p>\r\n\r\n<p><strong>Mascara L&agrave;m D&agrave;i D&agrave;y Mi Australis Fake It Mascara Mini</strong><strong>&nbsp;</strong>từ<strong>&nbsp;</strong>thương hiệu Australis&nbsp;của &Uacute;c với thiết kế mini tiện dụng khi mang theo b&ecirc;n m&igrave;nh hay khi du lịch gi&uacute;p đ&ocirc;i mi d&agrave;y v&agrave; d&agrave;i hơn nhiều lần đồng thời gi&uacute;p đ&ocirc;i mắt to tr&ograve;n quyến rũ.</p>\r\n\r\n<p>Như si&ecirc;u mẫu Gisele Bundchen đ&atilde; từng n&oacute;i: &ldquo;Khi ra đường, t&ocirc;i chỉ chải mascara l&agrave; thấy h&agrave;i l&ograve;ng về gương mặt m&igrave;nh&rdquo;. Ch&iacute;nh v&igrave; thế trang đi&ecirc;̉m cho mắt th&igrave; kh&ocirc;ng th&ecirc;̉ bỏ qua ph&acirc;̀n mi mắt, do vậy mascara là m&ocirc;̣t ph&acirc;̀n kh&ocirc;ng th&ecirc;̉ thi&ecirc;́u giúp cho bạn c&oacute; đ&ocirc;i mắt với hàng mi cong dài quy&ecirc;́n rũ để gương mặt bạn trở n&ecirc;n h&uacute;t hồn ngay tức th&igrave;. Đ&ocirc;i mắt là cửa s&ocirc;̉ t&acirc;m h&ocirc;̀n, khi trang đi&ecirc;̉m n&ecirc;́u bi&ecirc;́t cách khéo léo t&ocirc; điểm các khung cửa sổ khó tính này, bạn sẽ sở hữu được m&ocirc;̣t khu&ocirc;n mặt rạng ngời với đ&ocirc;i mắt long lanh gợi cảm.</p>\r\n\r\n<p>Tr&ecirc;n thị trường hiện c&oacute; h&agrave;ng ng&agrave;n loại&nbsp;mascara&nbsp;kh&aacute;c nhau thế nhưng bạn phải biết c&aacute;ch chọn đ&uacute;ng loại mascara ph&ugrave; hợp với m&igrave;nh th&igrave; mới mang lại hiệu quả. H&atilde;y d&agrave;nh thời gian để quan s&aacute;t h&agrave;ng mi của bạn xem ch&uacute;ng ngắn hay d&agrave;i, cong hay thẳng, mỏng hay d&agrave;y như thế n&agrave;o để từ đ&oacute; bạn c&oacute; thể t&igrave;m được c&aacute;ch cải thiện mi cho ph&ugrave; hơp v&agrave; mua đ&uacute;ng loại mascara m&agrave; m&igrave;nh c&oacute; thể khắc phục được nhược điểm v&agrave; t&ocirc;n l&ecirc;n những ưu điểm của bản th&acirc;n. Nếu bạn lo lắng về đ&ocirc;i mi thưa mỏng v&agrave; ngắn của m&igrave;nh th&igrave;&nbsp;<strong>Mascara L&agrave;m D&agrave;i D&agrave;y Mi Australis Fake It Mascara Mini</strong>&nbsp;chắc chắn sẽ l&agrave;m h&agrave;i l&ograve;ng bạn. Với c&ocirc;ng thức đặc biệt c&ugrave;ng thiết kế độc đ&aacute;o,<strong>&nbsp;Mascara Australis&nbsp;</strong>sẽ<strong>&nbsp;</strong>gi&uacute;p cho h&agrave;ng mi bạn ngay lập tức d&agrave;y v&agrave; d&agrave;i l&ecirc;n tr&ocirc;ng thấy, đồng thời tạo hiệu ứng như l&agrave;n mi của bạn đ&atilde; mọc th&ecirc;m nhiều sợi mi mới</p>\r\n\r\n<p><strong>Hasaki</strong>&nbsp;xin giới thiệu d&ograve;ng sản phẩm&nbsp;<strong>Mascara L&agrave;m D&agrave;i D&agrave;y Mi Australis Fake It Mascara Mini</strong>&nbsp;phi&ecirc;n bản nhỏ xinh tiện lợi mang theo bất cứ đ&acirc;u.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://api.hasaki.vn/wysiwyg?id=e3ttZWRpYSB1cmw9Ind5c2l3eWcvVGh1eUhhby9tYXNjYXJhLWxhbS1kYWktZGF5LW1pLWF1c3RyYWxpcy1mYWtlLWl0LW1hc2NhcmEtbWluaS00LmpwZyJ9fQ,,/\" style=\"height:auto; width:800px\" />&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Mascara L&agrave;m D&agrave;i D&agrave;y Mi Australis Fake It Mascara Mini&nbsp;</strong>l&agrave; loại Mascara gi&agrave;u&nbsp;dưỡng chất c&ugrave;ng c&ocirc;ng thức đen ho&agrave;n hảo, bổ sung dưỡng chất cho mi khỏe mạnh v&agrave; đen b&oacute;ng</p>\r\n\r\n<p>C&aacute;c sợi l&ocirc;ng trải đều gi&uacute;p việc chải mi dễ d&agrave;ng hơn đồng thời gi&uacute;p mi cong d&agrave;i v&agrave; d&agrave;y ho&agrave;n hảo</p>\r\n\r\n<p>Thiết kế đầu cọ hơi cong nhẹ gi&uacute;p t&aacute;ch từng sợi mi dễ d&agrave;ng, chải đều từ sợi mi gi&uacute;p mi d&agrave;i hơn tr&ocirc;ng thấy</p>\r\n\r\n<p>C&ocirc;ng thức m&agrave;u đen ho&agrave;n hảo gi&uacute;p sợi mi được phủ một lớp đen &oacute;ng tự nhi&ecirc;n m&agrave; kh&ocirc;ng hề g&acirc;y hại cho mi, gi&uacute;p nu&ocirc;i dưỡng mi ng&agrave;y c&agrave;ng chắc khỏe, kh&ocirc;ng rụng g&atilde;y.</p>\r\n\r\n<p>Sản phẩm kh&ocirc;ng g&acirc;y v&oacute;n cục khi chải nhờ c&aacute;c l&ocirc;ng cọ v&agrave; c&ocirc;ng thức kh&ocirc;ng g&acirc;y kh&ocirc; v&oacute;n tr&ecirc;n từng đường chải</p>\r\n\r\n<p>Chống nước, chống dầu ho&agrave;n hảo gi&uacute;p mi kh&ocirc;ng lem tr&ocirc;i</p>\r\n\r\n<p>C&ocirc;ng thức dưỡng ẩm gi&uacute;p bảo vệ sợi mi, kh&ocirc;ng g&acirc;y hư tổn cũng như g&atilde;y rụng mi</p>\r\n\r\n<p>Sản phẩm đạt chuẩn Vegan Friendly, với nguy&ecirc;n liệu tự nhi&ecirc;n từ thực vật th&acirc;n thiện với người d&ugrave;ng</p>\r\n\r\n<p>Phi&ecirc;n bản mini size tiện dụng v&agrave; dễ d&agrave;ng mang theo du lịch hay đi bất cứ đ&acirc;u.</p>\r\n\r\n<p><strong>C&ocirc;ng dụng nổi bật:</strong></p>\r\n\r\n<ul>\r\n	<li>Mascara gi&agrave;u dưỡng chất cho mi khỏe mạnh v&agrave; đen b&oacute;ng</li>\r\n	<li>Chống nước, chống dầu ho&agrave;n hảo gi&uacute;p mi kh&ocirc;ng lem tr&ocirc;i</li>\r\n	<li>C&ocirc;ng thức dưỡng ẩm gi&uacute;p bảo vệ sợi mi</li>\r\n	<li>Thiết kế đầu cọ hơi cong nhẹ gi&uacute;p t&aacute;ch từng sợi mi dễ d&agrave;ng</li>\r\n	<li>C&ocirc;ng thức m&agrave;u đen ho&agrave;n hảo tăng hiệu ứng d&agrave;y mi</li>\r\n	<li>Sản phẩm kh&ocirc;ng g&acirc;y v&oacute;n cục khi chải</li>\r\n	<li>Phi&ecirc;n bản mini size nhỏ gọn, dễ d&agrave;ng mang theo</li>\r\n	<li>Sản phẩm đạt chuẩn Vegan Friendly</li>\r\n</ul>\r\n', '2020-10-13', 0, 0),
(206, 'Chì Kẻ Mày Lâu Trôi Bobbi Brown', 900, 'google-shopping-chi-ke-may-lau-troi-bobbi-brown-rich-brown-0-33g_img_300x300_b798dd_fit_center.jpg', 12, '<p><strong>Ch&igrave; Kẻ M&agrave;y L&acirc;u Tr&ocirc;i Bobbi Brown Perfectly Defined Longwear Brow Pencil 0.33g</strong></p>\r\n\r\n<p><strong>Ch&igrave; Kẻ M&agrave;y L&acirc;u Tr&ocirc;i Bobbi Brown Perfectly Defined Longwear Brow Pencil 0.33g</strong><strong>&nbsp;</strong>l&agrave; sản phẩm của&nbsp;<strong>thương hiệu Bobbi Brown</strong>&nbsp;từ Mỹ với chất ch&igrave; kẻ m&agrave;y l&acirc;u tr&ocirc;i với đường kẻ thanh mảnh, c&ocirc;ng thức chuẩn m&agrave;u tr&ocirc;ng từng đường vẽ, mang lại đ&ocirc;i l&ocirc;ng m&agrave;y mềm mại, sắc sảo. Ngo&agrave;i ra, kết cấu hạt bột mịn của&nbsp;<strong>ch&igrave; kẻ m&agrave;y</strong>&nbsp;cho hiệu ứng l&igrave; v&agrave; mịn mượt, dễ d&agrave;ng tạo kiểu ch&acirc;n m&agrave;y một c&aacute;ch nhanh ch&oacute;ng. Sản phẩm chống thấm nước v&agrave; chống mồ h&ocirc;i</p>\r\n\r\n<p><strong>Hasaki</strong>&nbsp;xin giới thiệu d&ograve;ng sản phẩm&nbsp;<strong>Ch&igrave; Kẻ M&agrave;y L&acirc;u Tr&ocirc;i Bobbi Brown Perfectly Defined Longwear Brow Pencil 0.33g&nbsp;</strong>mang lại h&agrave;ng ch&acirc;n m&agrave;y ấn tượng, sắc n&eacute;t gi&uacute;p t&ocirc;n l&ecirc;n c&aacute;c đường n&eacute;t tr&ecirc;n mặt.</p>\r\n\r\n<p>Hiện&nbsp;<strong>Ch&igrave; Kẻ M&agrave;y L&acirc;u Tr&ocirc;i Bobbi Brown Perfectly Defined Longwear Brow Pencil 0.33g</strong><strong>&nbsp;</strong>tại Hasaki<strong>&nbsp;</strong>gồm c&aacute;c m&agrave;u sau:</p>\r\n\r\n<p><strong>#Rich Brown</strong></p>\r\n\r\n<p><strong>#Blonde</strong></p>\r\n\r\n<p><strong>#Espresso</strong></p>\r\n\r\n<p><strong>#Gray</strong></p>\r\n\r\n<p><strong>#Mahogany</strong></p>\r\n\r\n<p><strong>#Taupe</strong></p>\r\n\r\n<p><strong>#Wheat</strong></p>\r\n\r\n<p><strong>Ch&igrave; Kẻ M&agrave;y L&acirc;u Tr&ocirc;i Bobbi Brown Perfectly Defined Longwear Brow Pencil 0.33</strong><strong>g&nbsp;</strong>thiết kế nhỏ gọn, tiện lợi với 2 đầu: 1 đầu ch&igrave; kẻ, 1 đầy cọ chải. Hạt bột mịn l&igrave;, dễ định h&igrave;nh v&agrave; t&aacute;n đều, đường kẻ sắc sảo mềm mại. Độ b&aacute;m giữ m&agrave;u kh&aacute; tốt, kh&ocirc;ng lem tr&ocirc;i v&agrave; chống thấm nước. Ch&igrave; kẻ gi&uacute;p ch&acirc;n m&agrave;y th&ecirc;m phần quyến rũ. Tạo khu&ocirc;n l&ocirc;ng m&agrave;y gọn g&agrave;ng gi&uacute;p gương mặt thanh tho&aacute;t tự nhi&ecirc;n hơn. Đ&ocirc;i ng&agrave;i tinh tế, gi&uacute;p gương mặt bừng s&aacute;ng v&agrave; tươi tắn. Đầu cọ dặng vặn dễ kẻ, chống thấm nước, định h&igrave;nh ch&acirc;n m&agrave;y v&agrave; dễ d&agrave;ng điều chỉnh tạo n&ecirc;n đường kẻ r&otilde; n&eacute;t, tinh tế gi&uacute;p bạn c&oacute; đ&ocirc;i l&ocirc;ng m&agrave;y đẹp tự nhi&ecirc;n.</p>\r\n\r\n<p>Ch&igrave; c&oacute; thiết kế nhỏ gọn, tiện lợi cho n&agrave;ng bỏ t&uacute;i mang theo b&ecirc;n m&igrave;nh khắp mọi nơi. Sản phẩm gi&uacute;p n&agrave;ng nhanh ch&oacute;ng sở hữu h&agrave;ng ch&acirc;n m&agrave;y sắc n&eacute;t, với nhiều m&agrave;u sắc tự nhi&ecirc;n n&agrave;ng c&oacute; thể dễ d&agrave;ng lựa chọn.</p>\r\n\r\n<p>Đặc biệt đầu b&uacute;t c&oacute; dạng s&aacute;p bột cũng kh&aacute; mướt, dễ kẻ, c&oacute; độ b&aacute;m cao, kh&ocirc;ng v&oacute;n cục hay bết d&iacute;nh gi&uacute;p đường kẻ tr&ocirc;ng rất tự nhi&ecirc;n. Đầu c&ograve;n lại l&agrave; cọ chải m&agrave;y, c&oacute; chức năng t&aacute;n đều m&agrave;u, gi&uacute;p đường kẻ mềm mại, tự nhi&ecirc;n v&agrave; sắc n&eacute;t sau khi bạn vẽ ch&acirc;n m&agrave;y đồng thời khiến c&aacute;c sợi l&ocirc;ng m&agrave;y v&agrave;o nếp gọn g&agrave;ng. Sản phẩm sở hữu bảng m&agrave;u kh&aacute; đa dạng, gi&uacute;p bạn dễ d&agrave;ng lựa chọn theo m&agrave;u da v&agrave; m&agrave;u t&oacute;c m&agrave; kh&ocirc;ng sợ bị lệch t&ocirc;ng</p>\r\n\r\n<p><strong>Loại da ph&ugrave; hợp:</strong></p>\r\n\r\n<ul>\r\n	<li>Ph&ugrave; hợp cho mọi loại da</li>\r\n</ul>\r\n\r\n<h2><strong>C&ocirc;ng dụng nổi bật:</strong></h2>\r\n\r\n<ul>\r\n	<li>\r\n	<p>Ch&igrave; kẻ m&agrave;y l&acirc;u tr&ocirc;i</p>\r\n	</li>\r\n	<li>Thiết kế 2 đầu tiện lợi</li>\r\n	<li>C&ocirc;ng thức hạt bột mịn</li>\r\n	<li>Dễ d&agrave;ng định h&igrave;nh v&agrave; t&aacute;n đều</li>\r\n	<li>Độ b&aacute;m giữ m&agrave;u tốt</li>\r\n	<li>Chống thấm nước v&agrave; chống mồ h&ocirc;i</li>\r\n</ul>\r\n\r\n<p><strong>Bảo</strong><strong>&nbsp;</strong><strong>quản:</strong></p>\r\n\r\n<ul>\r\n	<li>Bảo quản nơi kh&ocirc; r&aacute;o. Tr&aacute;nh &aacute;nh mặt trời trực tiếp chiếu v&agrave;o. Tr&aacute;nh xa tầm tay trẻ em.</li>\r\n</ul>\r\n\r\n<p><strong>Trọng lượng:&nbsp;</strong>0.33g</p>\r\n\r\n<p><strong>Xuất xứ thương hiệu:&nbsp;</strong>Mỹ</p>\r\n\r\n<p><strong>Thương hiệu:&nbsp;</strong>Bobbi Brown</p>\r\n\r\n<p><strong>Sản</strong><strong>&nbsp;xuất tại:&nbsp;</strong>Mỹ</p>\r\n', '2020-10-13', 1, 799),
(207, 'Dầu Tẩy Trang Làm Dịu Da Bobbi Brown 200ml', 999, 'dau-tay-trang-lam-diu-da-bobbi-brown-200ml-1_img_300x300_b798dd_fit_center.jpg', 12, '<p><strong>Dầu Tẩy Trang L&agrave;m Dịu Da Bobbi Brown Soothing Cleansing Oil 200ml</strong></p>\r\n\r\n<p>Dầu tẩy trang lu&ocirc;n l&agrave; sản phẩm được ưa chuộng bởi c&aacute;c c&ocirc; n&agrave;ng thường xuy&ecirc;n&nbsp;trang điểm&nbsp;đậm nhờ khả năng &ldquo;đ&aacute;nh bay&rdquo; lớp makeup v&ocirc; c&ugrave;ng đỉnh kể cả những sản phẩm chống thấm nước. Đặc biệt, qu&aacute; tr&igrave;nh massage với dầu tẩy trang c&ograve;n gi&uacute;p h&ograve;a tan đi bụi bẩn, b&atilde; nhờn s&acirc;u trong lỗ ch&acirc;n l&ocirc;ng, l&agrave;m sạch s&acirc;u da, kể cả mụn c&aacute;m li ti cũng sẽ &ldquo;rơi rụng&rdquo; theo trong qu&aacute; tr&igrave;nh n&agrave;y. Dầu tẩy trang đ&atilde; trở th&agrave;nh một xu hướng tr&ecirc;n thị trường l&agrave;m đẹp kh&ocirc;ng chỉ ri&ecirc;ng tại Nhật Bản hay H&agrave;n Quốc m&agrave; c&ograve;n lan truyền sang cả thị trường &Acirc;u Mỹ.</p>\r\n\r\n<p><strong>Hasaki</strong>&nbsp;xin giới thiệu đến c&aacute;c bạn&nbsp;<strong>Dầu Tẩy Trang L&agrave;m Dịu Da Bobbi Brown Soothing Cleansing Oil&nbsp;</strong>đến từ thương hiệu mỹ phẩm trang điểm cao cấp&nbsp;<strong>Bobbi Brown</strong>&nbsp;sẽ mang đến trải nghiệm l&agrave;m sạch s&acirc;u da tuyệt vời nhất m&agrave; vẫn v&ocirc; c&ugrave;ng dịu nhẹ cho l&agrave;n da. Sản phẩm chứa th&agrave;nh phần chiết xuất thảo mộc trong c&ocirc;ng thức dạng dầu độc đ&aacute;o, hoạt động theo cơ chế &ldquo;dầu h&ograve;a tan dầu&rdquo; để l&agrave;m sạch s&acirc;u bụi bẩn, b&atilde; nhờn v&agrave; lớp trang điểm cứng đầu nhất m&agrave; kh&ocirc;ng g&acirc;y cảm gi&aacute;c kh&ocirc; căng, kh&oacute; chịu sau khi sử dụng. Chiết xuất từ hoa Lily trắng, hạt Kukui v&agrave; c&acirc;u kỷ tử sẽ g&oacute;p phần l&agrave;m dịu l&agrave;n da tức th&igrave;, trong khi chiết xuất từ hoa nh&agrave;i nu&ocirc;i dưỡng l&agrave;n da.&nbsp;<strong>Soothing Cleansing Oil</strong>&nbsp;th&iacute;ch hợp cho mọi loại da, kể cả da nhạy cảm, xứng đ&aacute;ng trở th&agrave;nh sản phẩm &ldquo;must-have&rdquo; của ph&aacute;i đẹp, đặc biệt l&agrave; những c&ocirc; n&agrave;ng thường xuy&ecirc;n trang điểm.</p>\r\n\r\n<p>Hiện&nbsp;<strong>Dầu Tẩy Trang L&agrave;m Dịu Da Bobbi Brown Soothing Cleansing Oil</strong>&nbsp;đ&atilde; c&oacute; mặt tại&nbsp;<strong>Hasaki</strong>.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.hasaki.vn/wysiwyg/HaNguyen/dau-tay-trang-lam-diu-da-bobbi-brown-200ml-1.jpg\" style=\"height:auto; width:600px\" /></p>\r\n\r\n<p><strong>Bobbi Brown</strong>&nbsp;l&agrave; thương hiệu mỹ phẩm trang điểm nổi tiếng của Mỹ, được đặt theo t&ecirc;n của một nữ nghệ sĩ, chuy&ecirc;n gia trang điểm h&agrave;ng đầu tại New York- Mỹ. Năm 1991, d&ograve;ng sản phẩm n&agrave;y được giới thiệu lần đầu ti&ecirc;n tại cửa h&agrave;ng cao cấp Bergdorf Goodman tại th&agrave;nh phố New York. Sau khi ra mắt, thương hiệu nhanh ch&oacute;ng ph&aacute;t triển v&agrave; được tập đo&agrave;n Est&eacute;e Lauder mua lại v&agrave;o năm 1995,&nbsp;<strong>Bobbi Brown</strong>&nbsp;vẫn l&agrave; nh&agrave; s&aacute;ng tạo của d&ograve;ng mỹ phẩm trang điểm n&agrave;y. Năm 2007, cửa h&agrave;ng b&aacute;n lẻ mở tại Montclair, New Jersey với lớp học trang điểm ở ph&iacute;a sau. Năm 2012,&nbsp;<strong>Bobbi Brown</strong>&nbsp;được định gi&aacute; l&agrave; chiếm khoảng 10% tổng doanh thu của tập đo&agrave;n Este&eacute; Lauder. Đến năm 2014, ước lượng đ&atilde; c&oacute; đến 30 cửa h&agrave;ng free-standing của&nbsp;<strong>Bobbi Brown</strong>, v&agrave; thương hiệu c&oacute; mặt ở hơn 60 quốc gia tr&ecirc;n to&agrave;n thế giới.</p>\r\n\r\n<p><strong>Hiệu quả nổi bật:</strong></p>\r\n\r\n<ul>\r\n	<li>&ldquo;Giải ph&oacute;ng&rdquo; l&agrave;n da khỏi lớp cặn trang điểm v&agrave; dầu thừa cứng đầu với c&ocirc;ng thức dạng dầu nhẹ nh&agrave;ng lấy đi bụi bẩn b&ecirc;n trong lỗ ch&acirc;n l&ocirc;ng, ph&aacute; vỡ những kết cấu l&igrave; v&agrave; l&acirc;u tr&ocirc;i của những sản phẩm Make-up Waterproof m&agrave; kh&ocirc;ng l&agrave;m da mất đi độ ẩm tự nhi&ecirc;n.</li>\r\n	<li>Dễ d&agrave;ng nhũ h&oacute;a th&agrave;nh dạng sữa khi gặp nước, gi&uacute;p l&agrave;m sạch da nhẹ nh&agrave;ng v&agrave; nhanh ch&oacute;ng m&agrave; kh&ocirc;ng khiến da tổn thương.</li>\r\n	<li>Kh&ocirc;ng để lại cặn dầu thừa, kh&ocirc;ng g&acirc;y nhờn r&iacute;t da, kh&ocirc;ng l&agrave;m kh&ocirc; căng da sau khi sử dụng.</li>\r\n	<li>Lưu giữ độ ẩm c&acirc;n bằng cho l&agrave;n da, mang lại cảm gi&aacute;c mềm mại &amp; dễ chịu.</li>\r\n	<li>C&aacute;c chiết xuất thảo mộc gi&uacute;p l&agrave;m dịu l&agrave;n da nhạy cảm, dễ k&iacute;ch ứng, đồng thời nu&ocirc;i dưỡng da ẩm mịn v&agrave; khỏe mạnh.</li>\r\n	<li>Th&agrave;nh phần hữu cơ l&agrave;nh t&iacute;nh, ph&ugrave; hợp với mọi loại da.</li>\r\n	<li>G&oacute;p phần tối giản bước l&agrave;m sạch trong quy tr&igrave;nh dưỡng da.</li>\r\n</ul>\r\n\r\n<p><strong>Bảo quản:</strong></p>\r\n\r\n<p>Nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p>Tr&aacute;nh &aacute;nh nắng trực tiếp, nơi c&oacute; nhiệt độ cao hoặc ẩm ướt.</p>\r\n\r\n<p>Đậy nắp k&iacute;n sau khi sử dụng.</p>\r\n\r\n<p><strong>Thương hiệu: Bobbi Brown</strong></p>\r\n\r\n<p><strong>Dung t&iacute;ch: 200ml</strong></p>\r\n\r\n<p><strong>Xuất Xứ: Mỹ</strong></p>\r\n', '2020-10-13', 0, 0),
(208, 'Son Kem Lì CARENEL 01 Orange Red', 200, 'son-kem-li-carenel-01-orange-red-4.5g-2_img_800x800_eb97c5_fit_center.jpg', 13, '<p><strong>Son Kem L&igrave; Carenel&nbsp;Ruby Airfit Velvet Tint&nbsp;4.5g</strong></p>\r\n\r\n<p>Từ l&acirc;u, son m&ocirc;i đ&atilde; trở th&agrave;nh một trong những &quot; thứ vũ kh&iacute; l&agrave;m đẹp&quot; đơn giản v&agrave; phổ biến nhất m&agrave; mọi c&ocirc; n&agrave;ng d&ugrave; r&agrave;nh trang điểm hay kh&ocirc;ng cũng sở hữu cho m&igrave;nh v&agrave;i thỏi. V&igrave; thế c&aacute;c h&atilde;ng mỹ phẩm ng&agrave;y nay li&ecirc;n tục tung ra c&aacute;c d&ograve;ng mới với chất son ng&agrave;y c&agrave;ng đa dạng hơn, mẫu m&atilde; bắt mắt hơn. Trong đ&oacute;, son kem l&igrave; được đ&aacute;nh gi&aacute; l&agrave; d&ograve;ng son đang rất được c&aacute;c bạn trẻ ưa chuộng.&nbsp;V&igrave; thế, h&atilde;y bổ sung ngay cho bộ sưu tập son của bạn với những c&acirc;y son trong bộ&nbsp;<strong>Son Kem L&igrave; Ruby Airfit Velvet Tint&nbsp;4.5g</strong><strong>&nbsp;</strong>đến từ thương hiệu&nbsp;<strong>Carenel&nbsp;</strong>ngay đi nha.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.hasaki.vn/wysiwyg/quynhtrang/Trang/son-kem-li-carenel-4-5g.jpg\" style=\"height:auto; width:680px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>D&ugrave; mới ra mắt tại H&agrave;n Quốc v&agrave;o cuối m&ugrave;a đ&ocirc;ng 2018, nhưng&nbsp;<strong>Son Kem L&igrave; Carenel&nbsp;Ruby Airfit Velvet Tint</strong>&nbsp;lại đang l&agrave; gương mặt rất hot tại xứ H&agrave;n.&nbsp;<strong>Ruby Airfit</strong>&nbsp;mang d&aacute;ng dấp của một thỏi son kem ch&iacute;nh hiệu, với chất son nhẹ nh&agrave;ng v&agrave; ẩm mịn, tuy nhi&ecirc;n chỉ sau v&agrave;i gi&acirc;y apply l&ecirc;n m&ocirc;i, chất son sẽ l&igrave; lại v&agrave; đ&ocirc;i m&ocirc;i ngay lập tức trở n&ecirc;n đầy đặn với n&eacute;t gợi cảm ri&ecirc;ng.</p>\r\n\r\n<p><strong>Carenel</strong>&nbsp;l&agrave; thương hiệu mỹ phẩm được ưa chuộng của H&agrave;n Quốc. Những sản phẩm của&nbsp;<strong>Carenel</strong>&nbsp;c&oacute; th&agrave;nh phần thi&ecirc;n nhi&ecirc;n an to&agrave;n nhằm mang đến cho kh&aacute;ch h&agrave;ng vẻ đẹp tinh khiết. Với phương ch&acirc;m kh&ocirc;ng ngừng n&acirc;ng cao chất lượng,&nbsp;<strong>Carenel</strong>&nbsp;đ&atilde; v&agrave; đang được nhiều phụ nữ ch&acirc;u &Aacute; tin d&ugrave;ng hiện nay.</p>\r\n', '2020-10-13', 1, 155),
(209, 'Mặt Nạ Ngủ Môi Laneige Hương Quả Mọng Mini', 190, 'google-shopping-mat-na-ngu-moi-laneige-huong-qua-mong-mini-8g_img_300x300_b798dd_fit_center.jpg', 14, '<p><strong>Mặt Nạ Ngủ M&ocirc;i Laneige Lip Sleeping Mask</strong>&nbsp;l&agrave; một trong những d&ograve;ng sản phẩm b&aacute;n chạy v&agrave; được y&ecirc;u th&iacute;ch nhất của&nbsp;<a href=\"https://hasaki.vn/thuong-hieu/laneige.html\" target=\"_blank\"><strong>thương hiệu mỹ phẩm cao cấp Laneige</strong></a>, gi&uacute;p chăm s&oacute;c đ&ocirc;i m&ocirc;i ngay cả trong giấc ngủ,&nbsp;nhẹ nh&agrave;ng loại bỏ c&aacute;c tế b&agrave;o chết tr&ecirc;n m&ocirc;i, đồng thời&nbsp;dưỡng ẩm cho đ&ocirc;i m&ocirc;i tr&ocirc;ng lu&ocirc;n&nbsp;mềm mượt, căng mọng v&agrave; đ&agrave;n hồi c&ugrave;ng với m&ugrave;i thơm nhẹ nh&agrave;ng từ c&aacute;c chiết xuất tự nhi&ecirc;n.&nbsp;H&atilde;y trải nghiệm cảm gi&aacute;c đ&ocirc;i m&ocirc;i được chăm s&oacute;c mềm mại v&agrave;o ban đ&ecirc;m với&nbsp;<strong>Mặt Nạ Ngủ M&ocirc;i Laneige Lip Sleeping Mask</strong>&nbsp;với 4 m&ugrave;i hương tươi mới như quả mọng, bưởi, t&aacute;o v&agrave; vani!</p>\r\n\r\n<p><strong>Mặt Nạ Ngủ M&ocirc;i Laneige Lip Sleeping Mask&nbsp;</strong>ứng dụng c&ocirc;ng thức&nbsp;Moisture Wrap&trade; độc quyền của LANEIGE&nbsp;chứa nước kho&aacute;ng ion v&agrave; c&aacute;c th&agrave;nh phần hoạt t&iacute;nh, gi&uacute;p thẩm thấu s&acirc;u v&agrave;o b&ecirc;n trong da, nu&ocirc;i dưỡng cho da m&ocirc;i đủ ẩm, hạn chế hiện tượng kh&ocirc; r&aacute;p nứt nẻ hay bong tr&oacute;c da m&ocirc;i. Đồng thời, phi&ecirc;n bản Berry (quả mọng) c&oacute; chứa chiết xuất quả mọng gi&agrave;u Vitamin C gi&uacute;p chống oxy h&oacute;a mạnh mẽ, dưỡng da m&ocirc;i tươi trẻ v&agrave; căng mịn hơn, ngăn ngừa c&aacute;c tổn thương do gốc tự do. Sản phẩm c&oacute; hương thơm ngọt ng&agrave;o v&agrave; tươi mới từ c&aacute;c loại quả mọng như m&acirc;m x&ocirc;i, d&acirc;u, việt quất&hellip; tạo cảm gi&aacute;c dễ chịu khi sử dụng.</p>\r\n', '2020-10-13', 1, 142),
(210, 'Phấn Nước Laneige Trang Điểm Và Che Khuyết Điểm', 700, 'phan-nuoc-laneige-trang-diem-va-che-khuyet-diem-n21-14g-2-5g-02_img_300x300_b798dd_fit_center.jpg', 14, '<p><strong>Phấn Nước + Che Khuyết Điểm 2 Trong 1 Laneige Cover Cushion &amp; Concealing Base Layering Cover Cushion 14g + 2.5g&nbsp;</strong></p>\r\n\r\n<p>Đối với phụ nữ ng&agrave;y n&agrave;y th&igrave; ngoại h&igrave;nh xinh&nbsp;đẹp l&agrave; kh&ocirc;ng thể thiếu gi&uacute;p phụ nữ th&ecirc;m phần tự tin. V&agrave; nếu bạn l&agrave; một c&ocirc; g&aacute;i kh&aacute; bận rộn hay y&ecirc;u th&iacute;ch phong c&aacute;ch&nbsp;trang&nbsp;điểm&nbsp;nhẹ nh&agrave;ng, tự nhi&ecirc;n th&igrave;&nbsp;phấn nước&nbsp;ch&iacute;nh l&agrave; một sự lựa chọn v&ocirc; c&ugrave;ng l&yacute; tưởng&nbsp;đấy nh&eacute;.<strong>&nbsp;Phấn Nước + Che Khuyết Điểm 2 Trong 1 Laneige Cover Cushion &amp; Concealing Base Layering Cover Cushion</strong>&nbsp;với kết cấu 2 trong 1 vừa l&agrave;&nbsp;kem che khuyết điểm, vừa l&agrave; phấn nước gi&uacute;p điều chỉnh độ che phủ, l&acirc;u tr&ocirc;i v&agrave; gi&uacute;p mang đến cho bạn l&agrave;n da s&aacute;ng mịn.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.hasaki.vn/wysiwyg/quynhtrang/Trang/phan-nuoc-che-khuyet-diem-laneige-2-trong-1-14g-2-5g.jpg\" style=\"height:auto; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Hiện&nbsp;<strong>Hasaki&nbsp;</strong>đang c&oacute; c&aacute;c t&ocirc;ng m&agrave;u:</p>\r\n\r\n<p><strong>N.13:&nbsp;</strong>T&ocirc;ng da trắng</p>\r\n\r\n<p><strong>N.21:&nbsp;</strong>T&ocirc;ng da tự nhi&ecirc;n</p>\r\n\r\n<p><strong>N.23:&nbsp;</strong>T&ocirc;ng da tối m&agrave;u</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.hasaki.vn/wysiwyg/quynhtrang/Trang/phan-nuoc-che-khuyet-diem-laneige-2-trong-1-14g-2-5g4.jpg\" style=\"height:auto; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thương hiệu mỹ phẩm&nbsp;<strong>Laneige</strong>&nbsp;trực thuộc&nbsp;Amorepacific Corporation&nbsp;&ndash; tập đo&agrave;n được th&agrave;nh lập bởi Suh Seong-Hwan chuy&ecirc;n sản xuất c&aacute;c sản phẩm mỹ phẩm, chăm s&oacute;c da v&agrave; chăm s&oacute;c sức khỏe. Lấy c&aacute;i t&ecirc;n tiếng Ph&aacute;p&nbsp;<strong>Laneige</strong>, c&oacute; nghĩa l&agrave; v&agrave; được b&aacute;n tuyết, nghĩa l&agrave; ho&agrave;n thiện vẻ đẹp của phụ nữ bằng việc kh&ocirc;ng ngừng nghi&ecirc;n cứu v&agrave; ứng dụng khoa học đầy nghệ thuật v&agrave; tinh tế từ nước, gi&uacute;p ph&aacute;i đẹp c&oacute; được l&agrave;n da ẩm mượt như sương sớm ban mai v&agrave; rạng rỡ suốt cả ng&agrave;y.&nbsp;<strong>Laneige&nbsp;</strong>c&acirc;n bằng ứng dụng hiệu quả từ nước pha l&ecirc; tuyết tạo ra tinh chất dưỡng ẩm l&yacute; tưởng cho da.</p>\r\n\r\n<p><strong>Loại da th&iacute;ch hợp:</strong></p>\r\n\r\n<p>Sản phẩm th&iacute;ch hợp sử dụng cho mọi loại da.</p>\r\n\r\n<p><strong>C&ocirc;ng dụng:</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img alt=\"\" src=\"https://media.hasaki.vn/wysiwyg/quynhtrang/Trang/phan-nuoc-che-khuyet-diem-laneige-2-trong-1-14g-2-5g3.jpg\" style=\"height:auto; width:500px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;Độ che phủ cao v&agrave; hiệu quả bền m&agrave;u.</p>\r\n\r\n<p>- Chiết xuất bột ngọc trai gi&uacute;p mang&nbsp;đến l&agrave;n da&nbsp;đều m&agrave;u v&agrave; tự nhi&ecirc;n.</p>\r\n\r\n<p>-&nbsp;Nước kho&aacute;ng, nước ion kho&aacute;ng chất, nước vải gi&uacute;p mang đến l&agrave;n da ẩm mượt, hồng h&agrave;o.</p>\r\n\r\n<p>-&nbsp;Gi&uacute;p c&acirc;n bằng lượng dầu v&agrave; độ ẩm cho da.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.hasaki.vn/wysiwyg/quynhtrang/Trang/phan-nuoc-che-khuyet-diem-laneige-2-trong-1-14g-2-5g2.jpg\" style=\"height:auto; width:500px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>-&nbsp;C&oacute; thể điều chỉnh lớp nền l&igrave; hoặc s&aacute;ng b&oacute;ng t&ugrave;y theo sở th&iacute;ch của bạn.</p>\r\n\r\n<p>-&nbsp;Sản phẩm mang lại cảm gi&aacute;c ẩm mượt, kh&ocirc;ng g&acirc;y cảm gi&aacute;c kh&ocirc;, căng da.</p>\r\n\r\n<p>-&nbsp;Chức năng k&eacute;p:</p>\r\n\r\n<p>Kem che khuyết điểm: C&oacute; khả năng gi&uacute;p bảo vệ l&agrave;n da trước t&aacute;c hại của tia UV.</p>\r\n\r\n<p>Phấn nước: Gi&uacute;p bảo vệ l&agrave;n da trước t&aacute;c hại của tia UV v&agrave; c&oacute; khả năng gi&uacute;p dưỡng s&aacute;ng da.</p>\r\n\r\n<p>- Phần tr&ecirc;n của b&ocirc;ng phấn phẳng v&agrave; mịn, dễ d&agrave;ng tạo ra lớp nền l&igrave;. Phần dưới được cấu tạo để dễ d&agrave;ng cấp ẩm v&agrave; se kh&iacute;t lỗ ch&acirc;n l&ocirc;ng v&igrave; vậy rất thuận tiện khi trang điểm nhiều lớp.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://media.hasaki.vn/wysiwyg/quynhtrang/Trang/phan-nuoc-che-khuyet-diem-laneige-2-trong-1-14g-2-5g1.png\" style=\"height:auto; width:800px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Bảo quản:</strong></p>\r\n\r\n<p>Bảo quản nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t.</p>\r\n\r\n<p>Tr&aacute;nh&nbsp;&aacute;nh nắng trực tiếp mặt trời.</p>\r\n\r\n<p>Đậy k&iacute;n nắp sau ki sử dụng.</p>\r\n\r\n<p><strong>Dung t&iacute;ch:&nbsp;</strong>14g + 2.5g</p>\r\n\r\n<p><strong>Quy c&aacute;ch sản phẩm:&nbsp;</strong>Phấn nước + che khuyết&nbsp;điểm</p>\r\n\r\n<p><strong>Thương hiệu:&nbsp;</strong>Laneige</p>\r\n\r\n<p><strong>Xuất xứ:</strong>&nbsp;H&agrave;n Quốc</p>\r\n', '2020-10-13', 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`id_chi_tiet_hoadon`),
  ADD KEY `chitiethoadon` (`sodh`);

--
-- Chỉ mục cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  ADD PRIMARY KEY (`madv`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`sodh`);

--
-- Chỉ mục cho bảng `loginadmin`
--
ALTER TABLE `loginadmin`
  ADD PRIMARY KEY (`tendangnhap`);

--
-- Chỉ mục cho bảng `loginuser`
--
ALTER TABLE `loginuser`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `Ten` (`Ten`),
  ADD KEY `sanpham` (`Manhasx`),
  ADD KEY `giakhuyenmai` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_2` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_3` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_4` (`giakhuyenmai`),
  ADD KEY `giakhuyenmai_5` (`giakhuyenmai`);
ALTER TABLE `sanpham` ADD FULLTEXT KEY `Ten_2` (`Ten`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `id_chi_tiet_hoadon` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT cho bảng `dichvu`
--
ALTER TABLE `dichvu`
  MODIFY `madv` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `sodh` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=116;

--
-- AUTO_INCREMENT cho bảng `nhasanxuat`
--
ALTER TABLE `nhasanxuat`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` bigint(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon` FOREIGN KEY (`sodh`) REFERENCES `hoadon` (`sodh`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham` FOREIGN KEY (`Manhasx`) REFERENCES `nhasanxuat` (`ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
