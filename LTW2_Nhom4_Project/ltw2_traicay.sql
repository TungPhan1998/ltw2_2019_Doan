-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th12 10, 2019 lúc 07:51 AM
-- Phiên bản máy phục vụ: 5.7.21
-- Phiên bản PHP: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ltw2_traicay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `manufactures`
--

DROP TABLE IF EXISTS `manufactures`;
CREATE TABLE IF NOT EXISTS `manufactures` (
  `manu_ID` int(11) NOT NULL AUTO_INCREMENT,
  `manu_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_img` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`manu_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_img`) VALUES
(1, 'Miền Bắc', 'mien-bac.jpg'),
(2, 'Miền Nam', 'mien-nam.png'),
(3, 'Miền Trung', 'mien-trung.jpg'),
(20, 'Cả Nước', 'ca-nuoc.jpg'),
(29, 'test1', 'Desert.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `image` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `manu_ID` int(11) NOT NULL,
  `type_ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ID`, `name`, `price`, `image`, `description`, `manu_ID`, `type_ID`) VALUES
(75, 'Thăng Long1', 33, 'qua-thang-long.jpg', 'Với hàm lượng chất dinh dưỡng dồi dào như vitamin C, B, chất xơ, protein... thanh long là loại trái cây phổ biến mang lại nhiều lợi ích sức khỏe', 20, 12),
(73, 'Trái Nhãn', 99, 'qua-nhan.jpg', 'Nhãn có vị ngọt, dễ ăn, có thể ăn quả tươi, khô hoặc chế biến thành những loại đồ uống, thức ăn đa dạng, vừa ngon miệng lại đem đến nhiều', 1, 12),
(74, 'Sấu', 13, 'qua-sau.jpg', 'Quả sấu có vị chua thanh mát được thu hái vào mùa hè từ tháng 6 đến tháng 9. Trong quả sấu chín có 86% nước, 1% axit hữu cơ, 1.3% protit', 1, 12),
(72, 'Mận Chua', 13, 'qua-man-chua.jpg', 'Là một loại trái có hương vị chua ngọt với khả năng kích thích vị giác rất tốt, đặc biệt trong mận có nhiều vitamin và dưỡng chất quan trọng cho cơ thể. Mận chứa thành phần dinh dưỡng rất tốt với hàm lượng đường cao, chứa ít cholesterol, natri và chất béo. Bên cạnh đó, mỗi quả mận còn chưa 30 calo, lượng chất xơ cao và hoàn toàn không chứa chất béo giúp người dùng đảm bảo được sức khỏe tốt nhất.', 1, 12),
(71, 'Lựu', 11, 'qua-luu.jpg', 'Lựu là loại trái cây rất tốt cho sức khỏe, tác dụng của lựu không chỉ giúp cải thiện khả năng cương dương của nam giới mà còn rất nhiều lợi ích.', 20, 12),
(70, 'Dâu Tây', 36, 'qua-dau-tay.jpg', 'Dâu tây là loại quả mọng được nhiều người yêu thích nhờ hương vị thơm ngon. Hơn thế, loại quả này còn có nhiều lợi ích sức khỏe', 2, 12),
(69, 'Quả Đào', 132, 'qua-dao.jpg', 'Với lượng calo thấp, đào là một loại trái cây ngon chứa nhiều vitamin và khoáng chất.', 1, 12),
(68, 'Quả Cam', 13, 'qua-cam.jpg', 'cam là loại quả giàu các chất dinh dưỡng như: vitamin C, chất xơ, folate, chất chống oxy hóa nhưng rất ít calo và đường. Những lý do sau đây sẽ khuyến khích bạn nên ăn loại quả kỳ diệu này hàng ngày để bồi bổ cơ thể.', 20, 12),
(67, 'Rau Mùi Tây', 13, 'mui-tay.jpg', 'Theo dân gian, vào dịp tết rau mùi được nhà nhà dùng để tắm hoặc gội với mong muốn thanh sạch cơ thể để đón nhận những điều tốt lành trong một năm mới sắp đến.\r\n\r\nTrong các loại rau thơm, rau mùi gần như được sử dụng rộng rãi hơn cả, có thể làm nước chấm, ăn sống, cắt nhỏ để làm các món xào hay để dài cả cuống ăn sống…', 1, 16),
(66, 'Ngô', 36, 'ngo.jpg', 'Tốt cho tiêu hóa. Ngô giàu chất xơ ăn kiêng, chứa cả sợi hòa tan và không hòa tan. ...\r\nNgăn ngừa thiếu máu. Thiếu máu là do thiếu vitamin B12 và axit folic. ...Tốt cho tim. ...Tăng năng lượng. ...Giảm cholesterol. ...', 20, 12),
(76, 'Tỏi', 55, 'toi.jpg', 'Tỏi không chỉ là loại gia vị thiết yếu trong nhà bếp, giúp làm tăng hương vị cho món ăn mà còn có nhiều tác dụng trong việc phòng, điều trị', 20, 16),
(64, 'Ngọn Khoai Lang', 13, 'khoai-lang.jpg', 'Loại rau khoai lang rất giàu chất diệp lục giúp làm sạch máu, loại bỏ độc tố trong cơ thể. Chống lại sự oxy hóa trong cơ thể bởi trong rau khoai lang có chứa một loại protein độc đáo có khả năng chống lại sự oxy hóa đáng kể. Loại protein này có khoảng 1/3 hoạt tính chống oxy hóa của glutathione một trong những chất quan trọng có vai trò trong việc tạo các chất chống oxy hóa trong cơ thể ta.', 20, 1),
(54, 'Bông Cải Xanh', 55, 'bong-cai-xanh.jpg', 'Bông cải xanh là một loại cây thuộc loài Cải bắp dại, có hoa lớn ở đầu, thường được dùng như rau. Bông cải xanh thường được chế biến bằng cách luộc hoặc hấp, nhưng cũng có thể được ăn sống như là rau sống trong những đĩa đồ nguội khai vị', 20, 1),
(55, 'Cà Rốt', 55, 'cu-ca-rot.jpg', 'Cây cà rốt không chỉ là loại rau quen thuộc mà còn là cây thuốc quý. Cà rốt là loại cây thảo sống 2 năm. Lá cắt thành bản hẹp. Hoa tập hợp thành tán kép; trong mỗi tán, hoa ở chính giữa thì không sinh sản và màu tía, còn các hoa sinh sản ở chung quanh thì màu trắng hay hồng. Hạt Cà rốt có vỏ gỗ và lớp lông cứng che phủ.', 20, 1),
(56, 'Đậu đen', 55, 'dau-den.png', 'Đậu đen là loại ngũ cốc cung cấp nhiều chất dinh dưỡng, còn có những tác dụng hay như dưỡng não, bổ thận, bổ tim, giải độc; phòng chống bệnh tiểu đường, ung thư, tim mạch; làm chậm lão hóa, chữa bệnh gút,…', 20, 15),
(57, 'Đậu đỏ', 66, 'dau-do.jpg', 'Đậu đỏ là cây dây leo hàng năm thuộc phân họ Đậu, được trồng nhiều từ Đông Á đến Himalaya. Hạt đậu đỏ dài khoảng 5 mm, có màu đỏ nhưng đôi khi có màu trắng, đen, xám... Các nhà khoa học cho rằng Vigna angularis var. nipponensis là loài gốc, và các giống khác phát sinh từ đó', 20, 15),
(58, 'Đậu Rồng', 66, 'dau-rong.jpg', 'Đậu rồng rất giàu vitamin C và vitamin A. Ăn đậu này giúp tăng cường hệ miễn dịch và do đó hỗ trợ cơ thể chống lại bất kỳ bệnh nhiễm trùng và bệnh nào. Vitamin C trong cây họ đậu này đóng vai trò là lá chắn bảo vệ, xua đuổi bệnh tật và bảo vệ cơ thể.', 20, 1),
(59, 'Đậu Xanh', 33, 'dau-xanh.jpg', 'Đậu xanh hay đỗ xanh theo phương ngữ miền Bắc là cây đậu có danh pháp hai phần Vigna radiata có kích thước hạt nhỏ. Ở Việt Nam đậu xanh là loại đậu thường được sử dụng để làm xôi, làm các loại bánh khọt, bánh đậu xanh, bánh ngọt, chè, hoặc được ủ cho lên mầm để làm thức ăn', 20, 15),
(60, 'Rau Mùi Tàu- ngò gai', 66, 'mui-tau.jpg', 'Rau mùi tàu dù là ăn sống hay nấu canh đều có công dụng chữa bệnh, kích thích hệ tiêu hóa, khử thấp nhiệt…', 20, 16),
(61, 'Hành Tây', 1323, 'hanh-tay.jpg', 'Hành tây có tên khoa học là Allium cepa, bộ phận của hành tây là phần thân hành nhưng chúng ta hay gọi là phần củ. Hành tây không chỉ được xem là một loại gia vị giàu vitamin, a-xít folic, kalium và selenium…những chất có giá trị dinh dưỡng lớn mà còn là liều thuốc tự nhiên tuyệt vời giúp chúng ta chữa trị được nhiều bệnh khác nhau.', 20, 1),
(62, 'Hành Lá', 13, 'hanh-thom.jpg', 'Hành hoa, hay hành hương, hành lá, đôi khi được gọi là hành ta, có danh pháp khoa học là Allium fistulosum thuộc họ Hành. Trong tiếng Anh nó có tên là Welsh onion-bunching onion. Hành hoa không bao giờ có củ to và chắc như hành tây, hẹ tây và có cán hoa rỗng và mề', 20, 16),
(63, 'Hành Tím', 12, 'hanh-tim.jpg', 'Hành tím chứa nhiều dưỡng chất như vitamin C, vitamin B6, biotin, a xít folic, chromium, can xi và chất xơ tốt cho sức khỏe.', 20, 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `protypes`
--

DROP TABLE IF EXISTS `protypes`;
CREATE TABLE IF NOT EXISTS `protypes` (
  `type_ID` int(100) NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_img` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_ID`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `protypes`
--

INSERT INTO `protypes` (`type_ID`, `type_name`, `type_img`) VALUES
(16, 'Hành Thơm', 'rau-thom.png'),
(1, 'Rau Xanh', 'rau-xanh-img.jpg'),
(12, 'Trái Cây', 'trai-cay-img.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(6, 'tung', 'tung123@gmail.com', NULL, '$2y$10$s2Tde4wp31l9rz.JLVvvPuYRNZe1LkNAlkN5ME/kxmpfVuTDXcxCy', 'GJojMMrxG2HKnHfnpYlF0TjhBe2HEsvLVwpC93sYFr1VlkmlbWHImsQCC9Pi', '2019-12-08 22:52:05', '2019-12-08 22:52:05'),
(10, 'tung', 'tung@gmail.com', NULL, '$2y$10$NTgR0VULeDA1wr/95sEbP.9sifoBprBlOa8pd7n3feI6G.bnOEiZG', 'rDPH9zWOzpSD15TD55kwch1zwu7CsBQShs9FOgPWUamawVkWKM5naOiXfjqF', '2019-12-09 23:37:04', '2019-12-09 23:37:04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
