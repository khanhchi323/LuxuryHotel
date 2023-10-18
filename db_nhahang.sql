-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th9 30, 2023 lúc 06:08 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `db_nhahang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_ban`
--

CREATE TABLE `db_ban` (
  `MaBan` int(3) NOT NULL,
  `MaSanh` varchar(5) DEFAULT NULL,
  `SoLuongKhachToiDa` int(11) DEFAULT NULL,
  `TrangThai` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `db_ban`
--

INSERT INTO `db_ban` (`MaBan`, `MaSanh`, `SoLuongKhachToiDa`, `TrangThai`) VALUES
(1, '1', 2, b'0'),
(2, '2', 4, b'0'),
(3, '3', 6, b'0'),
(4, '4', 8, b'0'),
(5, '5', 10, b'0'),
(6, '5', 2, b'1'),
(7, '4', 6, b'1'),
(8, '3', 6, b'1'),
(9, '2', 2, b'1'),
(10, '1', 4, b'1'),
(11, '1', 2, b'0'),
(12, '2', 4, b'0'),
(13, '3', 6, b'0'),
(14, '4', 8, b'0'),
(15, '5', 10, b'0'),
(16, '1', 6, b'1'),
(17, '2', 10, b'1'),
(18, '3', 4, b'1'),
(19, '4', 8, b'1'),
(20, '5', 2, b'1'),
(21, '5', 2, b'0'),
(22, '4', 4, b'0'),
(23, '3', 6, b'0'),
(24, '2', 8, b'0'),
(25, '1', 10, b'0'),
(26, '1', 6, b'0'),
(27, '2', 4, b'0'),
(28, '3', 2, b'0'),
(29, '4', 8, b'0'),
(30, '5', 10, b'0'),
(31, '1', 8, b'0'),
(32, '2', 10, b'0'),
(33, '3', 6, b'0'),
(34, '4', 4, b'0'),
(35, '5', 2, b'0'),
(36, '5', 2, b'0'),
(37, '4', 10, b'0'),
(38, '3', 6, b'0'),
(39, '2', 8, b'0'),
(40, '1', 4, b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_chitiethoadon`
--

CREATE TABLE `db_chitiethoadon` (
  `MaHoaDon` int(11) DEFAULT NULL,
  `MaMonAn` int(11) DEFAULT NULL,
  `SoLuong` int(3) DEFAULT NULL,
  `DonGia` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_dichvu`
--

CREATE TABLE `db_dichvu` (
  `MaDichVu` varchar(2) NOT NULL,
  `TenDichVu` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `db_dichvu`
--

INSERT INTO `db_dichvu` (`MaDichVu`, `TenDichVu`) VALUES
('HN', 'Hội Nghị'),
('NT', 'Ngoài Trời'),
('SN', 'Sinh Nhật'),
('TC', 'Tiệc Cưới');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_doanhthu`
--

CREATE TABLE `db_doanhthu` (
  `IDDoanhThu` int(5) NOT NULL,
  `Thang` date DEFAULT NULL,
  `TongDoanhThu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `db_doanhthu`
--

INSERT INTO `db_doanhthu` (`IDDoanhThu`, `Thang`, `TongDoanhThu`) VALUES
(1, '2023-09-01', 12300000),
(2, '2023-10-10', 10500000),
(3, '2023-11-04', 10000000),
(4, '2022-12-11', 85000000),
(5, '2023-01-05', 11500000),
(6, '2023-02-16', 15500000),
(7, '2023-03-18', 15000000),
(8, '2023-04-11', 16000000),
(9, '2023-05-12', 20500000),
(10, '2023-06-24', 35000000),
(11, '2023-07-18', 36000000),
(12, '2022-08-31', 35500000),
(13, '2023-09-13', 32000000),
(14, '2021-10-12', 36000000),
(15, '2021-11-13', 41500000),
(16, '2021-12-11', 69000000),
(17, '2022-01-14', 82000000),
(18, '2023-02-28', 83000000),
(19, '2022-03-10', 91000000),
(20, '2022-04-18', 90000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_formdichvu`
--

CREATE TABLE `db_formdichvu` (
  `ID` int(11) NOT NULL,
  `MaDichVu` varchar(2) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `HoTen` varchar(100) DEFAULT NULL,
  `Phone` int(12) DEFAULT NULL,
  `TrangThai` bit(1) DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `db_formdichvu`
--

INSERT INTO `db_formdichvu` (`ID`, `MaDichVu`, `Email`, `HoTen`, `Phone`, `TrangThai`) VALUES
(1, 'SN', 'kchi@gmail.com', 'Nguyễn Phạm Khánh Chi', 916345820, b'0'),
(2, 'SN', 'phatnguyen@gmail.com', 'Nguyễn Tấn Phát', 992228029, b'0'),
(3, 'SN', 'hen@gmail.com', 'Lê Hen', 189993645, b'0'),
(4, 'SN', 'ngonng@gmail.com', 'Nguyễn Thị Hồng Ngọc', 58748471, b'0'),
(5, 'SN', 'chidoi@gmail.com', 'Trần Hải Vũ', 97828362, b'0'),
(6, 'TC', 'luudam@gmail.com', 'Phạm Đàm Lưu', 283618286, b'0'),
(7, 'TC', 'tuandep@gmail.com', 'Hoàng Quốc Tuấn', 372874601, b'0'),
(8, 'TC', 'ngocmai@gmail.com', 'Ngô Ngọc Mai', 84528364, b'0'),
(9, 'TC', 'vhung1002@gmail.com', 'Võ Văn Hùng', 91465888, b'0'),
(10, 'TC', 'tranngochuy@gmail.com', 'Trần Ngọc Huy', 94485211, b'0'),
(11, 'HN', 'hvhk@gmail.com', 'Nguyễn Đức Phúc', 76589912, b'0'),
(12, 'HN', 'vaa@gmail.com', 'Nguyễn Vân Anh', 749842085, b'0'),
(13, 'HN', 'quanganh2@gmail.com', 'Nguyễn Quang Anh', 96482084, b'0'),
(14, 'HN', 'Quangthanh@gmail.com', 'Trần Quang Thanh', 96868403, b'0'),
(15, 'HN', 'nglinh@gmail.com', 'Nguyễn Thị Ngọc Linh', 3945845, b'0'),
(16, 'NT', 'hqmai@gmail.com', 'Trần Quang Mai', 93865024, b'0'),
(17, 'NT', 'homainghi@gmail.com', 'Hồ Mai Nghi', 92364536, b'0'),
(18, 'NT', 'phuonghi@gmail.com', 'Hùng Phương', 79349506, b'0'),
(19, 'NT', 'kiet002@gmail.com', 'Tuấn Kiệt ', 39698680, b'0'),
(20, 'NT', 'saunguyen@gmail.com', 'Nguyễn Văn Sáu', 39584731, b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_hoadon`
--

CREATE TABLE `db_hoadon` (
  `MaHoaDon` int(11) NOT NULL,
  `Phone` int(12) DEFAULT NULL,
  `NgayLapDon` date DEFAULT NULL,
  `ThoiGianLapDon` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_khachhang`
--

CREATE TABLE `db_khachhang` (
  `Phone` int(12) NOT NULL,
  `Pass` varchar(255) DEFAULT NULL,
  `HoTen` varchar(50) DEFAULT NULL,
  `Diem` int(11) DEFAULT NULL,
  `GioiTinh` bit(1) DEFAULT NULL,
  `DiaChi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_lienhe`
--

CREATE TABLE `db_lienhe` (
  `MaDonLienHe` int(11) NOT NULL,
  `HoTen` varchar(50) DEFAULT NULL,
  `SDT` int(12) DEFAULT NULL,
  `Mail` varchar(50) DEFAULT NULL,
  `GhiChu` text DEFAULT NULL,
  `TrangThai` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_maloai`
--

CREATE TABLE `db_maloai` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(30) DEFAULT NULL,
  `MoTa` longtext DEFAULT NULL,
  `HinhAnh` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `db_maloai`
--

INSERT INTO `db_maloai` (`MaLoai`, `TenLoai`, `MoTa`, `HinhAnh`) VALUES
(1, 'Món Khai Vị', 'Món khai vị (tiếng Pháp phân biệt hors d\'œuvre và entrée, tiếng Anh: appetizer hoặc starter) là một món ăn nhỏ dùng trước bữa ăn. Một số món khai vị là lạnh, một số món khác lại nóng.', 'khaivi.jpg'),
(2, 'Món Chính', 'Món chính là phần ăn quan trọng nhất, hấp dẫn nhất trong bữa ăn, thường được ăn sau khi đã dùng món khai vị. Nền ẩm thực Việt Nam đa dạng sẽ đem đến cho chúng ta nhiều nguyên liệu, gia vị và cách chế biến món ăn chính.\r\n\r\n', 'monchinh.jpg'),
(3, 'Tráng Miệng', 'Tráng miệng là những món ăn nhẹ để kết thúc mỗi bữa ăn chính với khẩu phần nhỏ đồ ngọt như: bánh, thạch, chè, hoa quả hay có thể là đồ uống. Người Việt Nam trước đây vẫn thường ăn nhẹ sau bữa ăn bằng hoa quả hay bánh trà nhưng mãi về sau, thuật ngữ “tráng miệng” mới trở nên phổ biến và quen thuộc hơn. Đến nay món tráng miệng là một phần không thể thiếu và chiếm vai trò quan trọng trong bữa ăn mỗi ngày.', 'trangmieng.jpg'),
(4, 'Thức Uống', 'Mỗi khi thiết lập một cuộc hẹn với gia đình, bạn bè khi muốn ra ngoài thưởng thức một món đồ uống, chúng ta hay nói “đi cà phê nhé”. Nhưng đi cà phê không có nghĩa là chỉ uống cà phê, mà có thể là trà sữa, trà, bia, sinh tố … Nó như là một câu cửa miệng thông dụng như nét văn hoá cho một hành động ra ngoài uống nước. Thị trường Việt Nam trong những năm trở lại đây có thể nói là giai đoạn bùng nổ của sản phẩm đồ uống. Nó đa dạng cả về hương vị lẫn hình thức. Chúng ta hãy cùng tìm hiểu tổng quan về từ điển đồ uống phổ biến trên thị trường hiện nay nhé.', 'thucuong.jpg');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_menu`
--

CREATE TABLE `db_menu` (
  `MaMonAn` int(11) NOT NULL,
  `MaLoai` int(11) DEFAULT NULL,
  `TenMonAn` varchar(100) DEFAULT NULL,
  `Gia` int(11) DEFAULT NULL,
  `MoTa` longtext DEFAULT NULL,
  `HinhAnh` varchar(50) DEFAULT NULL,
  `TrangThaiMenu` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `db_menu`
--

INSERT INTO `db_menu` (`MaMonAn`, `MaLoai`, `TenMonAn`, `Gia`, `MoTa`, `HinhAnh`, `TrangThaiMenu`) VALUES
(1, 1, 'Gỏi Ngó sen', 199000, 'Gỏi ngó sen là món khai vị vô cùng phổ biến trên những bàn tiệc bởi hương vị thơm ngon và hình thức bắt mắt nhưng lợi ích sức khỏe mà chúng mang lại còn nhiều hơn thế! ', 'goingosentomthit.jpg', b'1'),
(2, 1, 'Súp cua', 289000, 'súp cua là một món xúp với nguyên liệu chính là thịt cua, trứng gà hoặc trứng cút, ngoài ra còn có xương gà hoặc hạt bắp để làm nồi xúp thêm vị ngọt và bổ dưỡng.', 'supcua.jpg', b'1'),
(3, 1, 'Salad trộn', 149000, 'Salad trộn là một loại món ăn có nguồn gốc từ các nước châu Âu, đây là món hỗn hợp theo phương pháp trộn lẫn bao gồm nhiều nguyên liệu khác nhau và có nhiều loại khác nhau', 'saladtron.jpg', b'1'),
(4, 1, ' Gỏi hoa chuối', 189000, 'nộm hoa chuối thì chắc hẳn ai cũng sẽ nghĩ ngay đến phiên bản nộm hoa chuối tai heo. Đây là món ăn mang hương vị thanh mát với vị chua cay ngọt mặn kết hợp với tai heo giòn dai đảm bảo mang lại cảm giác mới lạ cho những ai chưa từng thưởng thức món ăn dân dã này.', 'goihoachuoi.jpg', b'1'),
(5, 1, 'Gỏi bò mè bóp thấu', 209000, 'Gỏi bò mè bóp thấu là món ăn sẽ chinh phục vị giác thực khách bởi sự kết hợp hoàn hảo giữa thịt bò và các loại rau củ quả. Món ăn có vị chua từ khế, chát của chuối xanh và ngọt từ đường khiến bạn thích ngay từ những miếng đầu tiên. Đây cũng là món ăn giàu dinh dưỡng, thanh mát giải nhiệt.\r\n\r\n', 'goibo.jpg', b'1'),
(6, 2, 'Cơm Chiên Hải Sản', 99000, 'Cơm chiên hải sản siêu hấp dẫn với hạt cơm tơi giòn bùi hòa quyện với vị ngọt của tôm, vị giòn của râu mực, cùng cá viên chiên thái nhỏ và sự bắt mắt bởi các rau củ tươi ngon và giàu vitamin như màu xanh của đậu hà lan, màu đỏ của cà rốt, màu trắng của chả lụa hòa quyện tạo lên 1 đĩa cơm chiên nóng hổi thơm ngon.\r\n\r\n', 'comhaisan.jpg', b'1'),
(7, 2, 'Bò nấu lagu với bánh mì', 99000, 'Món bò nấu lagu sau khi hoàn thành có hương vị rất ngon và hấp dẫn, thịt bò thì chín mềm, khoai tây dẻo thơm và cà rốt chín tới ngọt bùi. Món ăn có màu đỏ nâu óng ánh cùng mùi thơm từ cà chua pha chút hương sả, hành tây tạo lên hương vị nước dùng đậm đà. Nên ăn kèm mới bánh mì và món ăn này sẽ ăn cùng với muối tiêu chanh hoặc nước tương, tuỳ vào khẩu vị và sở thích của từng người.', 'bolagu.jpg', b'1'),
(8, 2, 'Mực hấp hành gừng', 299000, 'Mực hấp hành gừng là một trong các món chính đãi tiệc ngon, được nhiều khách hàng của Naifood lựa chọn nhất, món ăn này chủ yếu là mức lá thái từng miếng vừa ăn, hành tây và gừng thái sợi được hấp trên khây sắt cùng với nước dùng. Món này thường dùng nước mắm rừng hoặc nước tương ớt. ', 'muchapgung.jpg', b'1'),
(9, 2, 'Tôm sú hấp bia', 399000, 'Tôm hấp bia là 1 món ăn đãi khách dể dàng làm nhất, điều quan trọng là phải chọn được tôm tươi ngon loại to. Tôm hấp cùng với bia không chỉ tăng hương vị cho món ăn mà còn giúp khử đi mùi tanh của tôm vô cùng hiệu quả. Món tôm hấp bia đỏ tươi, nóng hổi.Thịt tôm dai ngọt bùi bùi với mùi thơm của sả chấm cùng muối tiêu chanh thì ngon nhất nách.\r\n\r\n', 'tomhap.jpg', b'1'),
(10, 2, 'Gà hấp bẹ cải xanh\r\n', 399000, 'Gà hấp cải bẹ xanh là 1 món ăn độc đáo quen thuộc của các bữa tiệc, vị ngọt từ thịt gà kết hợp vị thanh mát cải bẹ. Gà hấp xong có màu vàng óng và mùi thơm đặt trưng. Thịt gà chín mềm, ngọt thịt thấm gia vị, cải xanh chín giòn ngọt thơm nồng. Khi ăn nên chấm cùng chén muối tiêu chanh sẽ giúp kích thích vị giác, giúp ngon miệng hơn.', 'lauhaisantuxuyen.jpg', b'1'),
(11, 3, 'Bánh chuối nướng', 29000, 'Bánh chuối nướng là món bánh tráng miệng thơm ngon, nguyên liệu dễ. Món bánh tơi xốp có vị ngọt vừa phải của chuối, mùi thơm nồng nàn, rất kích thích vị giác. Bạn có thể thêm một ít socola chip để bánh ngon hơn, các em nhỏ cũng thích thú thưởng thức hơn.', 'tiramisutruyenthong.jpg', b'1'),
(12, 3, 'Bánh da lợn', 39000, 'Bánh da lợn là món bánh dân dã của vùng quê Nam Bộ, Việt Nam. Bánh thơm mát mùi lá dứa, ngọt bùi hương vị đậu xanh. Bánh mềm, mịn và dẻo vừa ăn. Bạn có thể biến tấu bánh da lợn thành những màu sắc khác nhau để bánh được bắt mắt hơn.', 'tiramisutraxanh.jpg', b'1'),
(13, 3, 'Sương sáo nước cốt dừa', 39000, 'Sương sáo nước cốt dừa là món tráng miệng thích hợp cho những buổi chiều nóng nực. Sương sáo dai dai, mềm mềm ăn kèm với nước cốt dừa béo béo, thêm vài viên đá mát lạnh sẽ giúp bạn phấn chấn tinh thần hơn hẳn sau bữa ăn.', 'moussetraxanh.jpg', b'1'),
(14, 3, 'Chè dừa dầm', 29000, 'Chè dừa dầm là món chè nổi tiếng của Hải Phòng. Tuy nhiên, bạn cũng có thể tự nấu món tráng miệng này tại nhà để chiêu đãi gia đình mình sau bữa ăn chính. Chè có vị ngọt thanh, béo béo của sữa dừa, phần cùi dừa dai mềm vừa phải. Chè sẽ thơm ngon hơn khi bạn ăn lạnh và thêm vào đó vài hạt đậu phộng rang hoặc mè rang.', 'flancremecaramel.jpg', b'1'),
(15, 3, 'Bánh chuối hấp nước cốt dừa', 39000, 'Bánh chuối hấp ăn cùng nước cốt dừa là món tráng miệng quen thuộc của người dân Nam Bộ. Bánh chuối mềm, dẻo và ngọt vừa ăn, ăn kèm nước cốt dừa thơm, béo. Bạn có thể thêm vào đậu phộng rang để tăng hương vị cho món ăn.\r\n\r\n', 'chekhucbach.jpg', b'1'),
(16, 4, 'Bia Tiger (Lon)', 35000, NULL, 'biatigerlon.jpg', b'1'),
(17, 4, 'Bia Heineken (Lon)', 35000, NULL, 'biaheinekenlon.jpg', b'1'),
(18, 4, '', 20000, NULL, 'cocalon.jpg', b'1'),
(19, 4, 'Fanta Lon (330ml)', 20000, NULL, 'fantalon.jpg', b'1'),
(20, 4, 'Nước suối', 15000, NULL, 'nuocsuoi.jpg', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_nhanvien`
--

CREATE TABLE `db_nhanvien` (
  `MaNV` int(11) NOT NULL,
  `NickName` varchar(30) DEFAULT NULL,
  `Pass` varchar(30) DEFAULT NULL,
  `Phone` int(12) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Levels` smallint(6) DEFAULT NULL,
  `GioiTinh` bit(1) DEFAULT NULL,
  `QueQuan` varchar(30) DEFAULT NULL,
  `DiaChi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `db_nhanvien`
--

INSERT INTO `db_nhanvien` (`MaNV`, `NickName`, `Pass`, `Phone`, `Email`, `Levels`, `GioiTinh`, `QueQuan`, `DiaChi`) VALUES
(10001, 'Mai Lương', 'hahaha123', 336215221, 'bedaudeptrai@gmail.com', 2, b'0', 'Đăk Nông', 'Tân Bình-TP Hồ Chí Minh'),
(10002, 'Nguyễn Hữu Toàn', 'huhu0111', 336375537, 'thienngaxauxi@gmail.com', 2, b'1', 'Bà Rịa-Vũng Tàu', 'Tân Bình-TP Hồ Chí Minh'),
(10003, 'Phùng Thanh Độ', 'okebannha', 369183533, 'changtraicuaem@gmail.com', 1, b'0', 'TP Hồ Chí Minh', 'Phường 12-Tân Bình'),
(10004, 'Lam Thảo', 'oidoioi', 356294658, 'lamthao123@gmail.com', 1, b'1', 'Lạng Sơn', 'Tân Bình-TP Hồ Chí Minh'),
(10005, 'Trần Ngọc Nhi', 'emdepemcoquyen', 371527481, 'nhitran@gmail.com', 2, b'0', 'Gia Lai', 'Quang Bích-Gia Lai'),
(10006, 'Nguyễn Điển Trí Nam', 'anhdeptrai', 173892737, 'trinamok@gmail.com', 1, b'0', 'TP Hồ Chí Minh', 'Quận 5-TP Hồ Chí Minh'),
(10007, 'Nguyễn Điển Thanh Trúc', 'motden8chin', 385491866, 'nguyentruc102@gmail.com', 2, b'1', 'TP Hồ Chí Minh', 'Quận 5-TP Hồ Chí Minh'),
(10008, 'Hà Linh', 'danchuyenskincare', 335215255, 'hlinh123@gmail.com', 1, b'1', 'TP Hồ Chí Minh', 'Quận 12-TP Hồ Chí Minh'),
(10009, 'Phạm Tuân', 'tacgialaanh', 311234432, 'tuan01@gmail.com', 1, b'0', 'TP Hồ Chí Minh', 'Quận 12-TP Hồ Chí Minh'),
(10010, 'Lý Sơn', 'son112233', 337112234, 'lyson0001@gmail.com', 2, b'0', 'Sơn La', 'Tân Bình-TP Hồ Chí Minh'),
(10011, 'Nguyễn Thị Trúc', 'trucxinh123321', 341662987, 'truc111101@gmail.com', 2, b'1', 'Đắk Nông', 'Tân Bình-TP Hồ Chí Minh'),
(10012, 'Lương Thị Thanh Kim', 'thanhkim', 137261928, 'kimkim@gmail.com', 2, b'1', 'Thái Bình', 'Quận 4-TP Hồ Chí Minh '),
(10013, 'Nguyễn Minh Hiếu', 'hieuthuhai', 345776667, 'hieudeptrai@gmail.com', 1, b'0', 'TP Hồ Chí Minh', 'Quận 12-TP Hồ Chí Minh'),
(10014, 'Lê Dương Bảo Lâm', 'haygadequa', 375775246, 'leduongbaolam123@gmail.com', 1, b'0', 'Đồng Nai', 'Tân Bình-TP Hồ Chí Minh'),
(10015, 'Lý Nhã Kì', 'dienvienchuyennghiep', 345282647, 'anhlaanh@gmail.com', 2, b'0', 'Đồng Tháp', 'Tam Nông-Đồng Tháp'),
(10016, 'Phan Ngọc Phụng', 'phungphann', 362578224, 'phungisme@gmail.com', 2, b'1', 'Tây Ninh', 'Bình Chánh-TP Hồ Chí Minh'),
(10017, 'Trịnh Minh Sơn', 'msonkhongdep', 352759748, 'sonminhtrinh@gmail.com', 1, b'0', 'Đồng Nai', 'Long Khánh-Đồng Nai'),
(10018, 'Trần My', 'kemtrons1tg', 345456789, 'kemtron6@gmail.com', 2, b'1', 'Hải Phòng', 'Tân Bình-TP Hồ Chí Minh'),
(10019, 'Ly Ly', 'mangcaukhonggai', 543337654, 'lymangcau@gmail.com', 1, b'1', 'Quốc Oai', 'Tân Bình-TP Hồ Chí Minh'),
(10020, 'Vy Anh', 'mangcau20k', 336267812, 'vyanhdethuong@gmail.com', 1, b'1', 'Long An', 'Tân Bình-TP Hồ Chí Minh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_nhatkydatban`
--

CREATE TABLE `db_nhatkydatban` (
  `MaNhatKy` int(11) NOT NULL,
  `MaHoaDon` int(11) DEFAULT NULL,
  `MaBan` int(3) DEFAULT NULL,
  `TenKhachHang` varchar(50) DEFAULT NULL,
  `SDTKhachHang` int(12) DEFAULT NULL,
  `SoNguoi` int(3) DEFAULT NULL,
  `NgayDat` date DEFAULT NULL,
  `NgayDatCho` date DEFAULT NULL,
  `ThoiGian` time DEFAULT NULL,
  `ThoiGianNhanBan` time DEFAULT NULL,
  `GhiChu` text DEFAULT NULL,
  `TrangThai` int(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_sanh`
--

CREATE TABLE `db_sanh` (
  `MaSanh` varchar(5) NOT NULL,
  `MaNV` int(11) DEFAULT NULL,
  `TenSanh` varchar(20) DEFAULT NULL,
  `ViTri` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `db_sanh`
--

INSERT INTO `db_sanh` (`MaSanh`, `MaNV`, `TenSanh`, `ViTri`) VALUES
('1', 10001, 'Ruby', 'Sảnh A'),
('2', 10014, 'Amethyst', 'Sảnh B'),
('3', 10015, 'Sapphire', 'Sảnh C'),
('4', 10004, 'Diamond', 'Sảnh D'),
('5', 10007, 'Pure Diamond', 'Sảnh E');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `db_tintuc`
--

CREATE TABLE `db_tintuc` (
  `MaID` int(11) NOT NULL,
  `HinhAnhTinTuc` varchar(50) DEFAULT NULL,
  `TieuDe` varchar(255) DEFAULT NULL,
  `Content` longtext DEFAULT NULL,
  `NgayDang` datetime DEFAULT NULL,
  `TrangThai` bit(1) DEFAULT b'1',
  `NguoiDang` int(11) DEFAULT NULL,
  `Likes` varchar(255) DEFAULT NULL,
  `Views` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `db_tintuc`
--

INSERT INTO `db_tintuc` (`MaID`, `HinhAnhTinTuc`, `TieuDe`, `Content`, `NgayDang`, `TrangThai`, `NguoiDang`, `Likes`, `Views`) VALUES
(1, 'tintuc-khaitruong.jpg', 'Tưng Bừng Khai Trương Nhà Hàng Night Light', 'Nhân dịp khai trương Nhà Hàng Night Light, Night Light House khuyến mãi tưng bừng dành cho khách hàng với chương trình siêu hấp dẫn sẽ diễn ra trong suốt 3 ngày từ 16-18/06.', '2023-06-15 10:00:00', b'0', 10001, '2000', '15000'),
(2, 'tintuc-lau.jpg', 'Mở Tiệc Tại Gia, Mang Lẩu Night Light về', 'Thưởng thức thiên đường lẩu “quốc dân” đã dễ dàng hơn với hình thức mua mang về (Take away) cho các thực thần.', '2023-05-20 09:30:00', b'0', 10009, '1000', '4400'),
(3, 'tintuc-covid.jpg', 'CÙNG CHUNG TAY ĐẨY LÙI COVID NHÀ HÀNG Night Light', 'QUYẾT THẮNG ĐẠI DỊCH Với mục tiêu chung về phòng, chống dịch COVID- 19 và luôn chấp hành nghiêm các biện pháp của Bộ và Nhà nước đề ra: Tất cả nhân viên trong nhà hàng đều mang khẩu trang trong suốt…', '2023-05-28 10:30:00', b'1', 10001, '3000', '10500'),
(4, 'tintuc-thang5.jpg', 'Tháng 5 Rực Rỡ Cùng Ưu Đãi Đi 3 Tính Tiền 2 Tại Night Light House', 'Chào hè rực rỡ, Night Light House tặng ngay khách yêu ưu đãi cực chất chưa từng có.', '2023-05-20 15:00:00', b'0', 10003, '400', '1500'),
(5, 'tintuc-muahe.jpg', 'Chill Hè Cuồng Nhiệt Với Ưu Đãi Có 102 Tại Night Light House', 'Chào đón ngày hội Night Light DAYS – ĂN UỐNG THẢ GA KHÔNG LO VỀ GIÁ', '2023-06-01 16:00:00', b'0', 10005, '2000', '1500'),
(6, 'tintuc-giamgia.jpg', 'Flash Sale - Săn Deal 0 Đồng Nhận Ngay Voucher 300k', 'ĐẠI TIỆC VOUCHER NÓNG BỎNG TAY ĐẾN TỪ Night Light HOUSE VÀ SĂN DEAL 0 ĐỒNG CHỈ DIỄN RA TRONG KHUNG GIỜ 9H – 11H DUY NHẤT NGÀY 20.05.2023', '2023-05-18 18:00:00', b'1', 10001, '1000', '2500'),
(7, 'tintuc-7.jpg', 'LỰA CHỌN ĐỊA ĐIỂM ĂN UỐNG', 'Lựa chọn địa điểm ăn uống vừa ý không phải là điều dễ dàng. Bạn đang băn khoăn tìm một nhà hàng phù hợp cho bữa tiệc quan trọng của mình hay là buổi hẹn hò, tụ tập bạn bè, gia đình sum họp…? Vậy nhà hàng Night Light thì sao?', '2023-06-06 10:30:00', b'0', 10001, '2230', '5000'),
(8, 'tintuc-8.jpg', 'Night Light HOUSE CHÚC MỪNG NGÀY CỦA MẸ', 'Nhân dịp Ngày của Mẹ, Night Light xin gửi đến những ai đã, đang và sẽ làm mẹ những lời yêu thương ngọt ngào nhất. Nhân Ngày của Mẹ (Chủ nhật 14/5), hãy dành tặng người mẹ kính yêu của bạn những món quá ý nghĩa nhất và những giây phút sum họp, trò chuyện bên nhau. Hãy dành ra một khoảng thời gian nhỏ vào ngày này để có thể nấu cho mẹ một bữa ăn, thậm chí dẫn mẹ đi ăn tại một nhà hàng Night Light nào đó và cùng nhau lắng nghe tâm sự để hiểu mẹ hơn. Night Light House sẽ luôn sẵn lòng phục vụ bạn và người phụ nữ trân quý của bạn ', '2023-05-13 10:00:00', b'0', 10001, '400', '2000'),
(9, 'tintuc-tetnguyendan.jpg', 'LỊCH HOẠT ĐỘNG TẾT NHÂM DẦN 2022 – Night Light HOUSE', 'THÔNG BÁO LỊCH HOẠT ĐỘNG CỦA CÁC NHÀ HÀNG TRONG DỊP TẾT NGUYÊN ĐÁN 2022', '2022-12-25 10:00:00', b'1', 10010, '3000', '1000'),
(10, 'tintuc-10.jpg', 'BIG MEMBER DAY: ƯU ĐÃI NHÂN ĐÔI – THỨ BA HẰNG TUẦN', 'Ưu đãi đặc biệt dành cho member của Night Light nói riêng và toàn hệ thống REDSUN nói chung vào mỗi thứ ba hàng tuần: TÍCH LŨY 15 % tổng hóa đơn (chưa tính VAT) và nhận FREE COCA tươi cực hấp dẫn. Thưởng thức trọn vẹn ẩm thực Châu Á thượng hạng với giá cực hấp dẫn, quá hời cho một bữa tiệc đầu tuần tràn đầy năng lượng phải không nào.', '2023-01-17 15:59:59', b'1', 10017, '10000', '20000'),
(11, 'tintuc-11.jpg', 'Đổi vị bữa trưa tại Golden Gate Night Light', 'Vào những giờ nghỉ trưa chỉ có khoảng 1 tiếng mệt mỏi, công việc đứng đắn suy nghĩ xem trưa nay phải ăn gì hay ăn ở đâu đã là một vấn đề, mà còn phải tìm được địa điểm với không gian thoải mái, thư giãn sau 4 tiếng làm việc buổi sáng quả thực khiến chúng ta rất đau đầu. Tại Golden Gate Night Light, bạn có thể tha hồ lựa chọn các phong cách ẩm thực sự theo từng nhà hàng và sự đa dạng từ các nền văn hóa khác nhau, cùng ưu đãi giờ tiệc giảm 20% giá trị hóa đơn', '2023-02-20 14:46:33', b'1', 10019, '1000', '5000'),
(12, 'tintuc-12.jpg', 'Ưu Đãi Giảm 10% Cho Hội Viên', 'Thưởng thức mọi chương trình ẩm thực hấp dẫn tại Sheraton Saigon với đặc quyền giảm 10% cho hội viên Night Light bất kể hạng hội viên ngay hôm nay! ', '2023-04-06 13:50:41', b'0', 10006, '1000', '3300'),
(13, 'tintuc-13.jpg', 'ĂN NGON MÊ LY – ƯU ĐÃI HẾT Ý', 'Tiệc tất niên với SET ẨM THỰC Chỉ từ 150K/1 người. Sở hữu không gian Nhà sàn đậm chất Tây Bắc ngay giữa lòng TPHCM với sức chứa lên tới hàng trăm khách tại 1 thời điểm, được chọn là điểm lý tưởng cho các buổi tất niên nghĩa nhất.', '2023-02-04 10:00:00', b'1', 10011, '2000', '1500'),
(14, 'tintuc-14.jpg', 'MÙA LỄ HỘI NHẬN NGAY ƯU ĐÃI HẤP DẪN TỪ Night Light', 'Night Light House khao lớn ưu đãi bất ngờ không nên bỏ lỡ “MUA 1 TẶNG 1 - BIA Night Light – Mua 1 Bia Night Light tặng ngay 1 Bia Night Light cùng dòng !', '2023-04-06 11:59:00', b'1', 10007, '124', '1000'),
(15, 'tintuc-15.jpg', 'Chỉnh chu trong từng khâu chuẩn bị', 'Thời điểm cuối năm là dịp để tiệc tùng chào đón năm mới rực rỡ và thành công. Bạn lo lắng bữa tiệc nhỏ sắp tới mỗi người 1 ý nhưng phải đảm bảo ngân sách đưa ra thì Night Light House sẽ thật lý tưởng đấy !!!', '2023-04-17 14:01:01', b'1', 10012, '2000', '3000'),
(16, 'tintuc-laucay.jpg', 'Lẩu cay Tứ Xuyên thượng hạng – Lựa chọn đáng thử tại Nhà Hàng Night Light', 'Lẩu cay Tứ Xuyên được sinh ra với hương vị không cố gắng chiều lòng tất cả các tín đồ ăn uống bởi vị cay thực sự “đến nơi chốn của nó”. Nhưng đối với những ai đã từng nói cảm giác cay tê nơi đầu trọc và hậu vị đậm đà, thì Tứ Xuyên là lựa chọn không thể bỏ qua.', '2023-05-01 18:01:59', b'0', 10001, '2000', '1500'),
(17, 'tintuc-17.jpg', 'Night Light nay đã có thực đơn gọi món!​', 'Nếu những lần gọi món tại Night Light House khiến bạn trố mắt vì ăn hoài không hết thì từ tháng 3 này, thực khách đã có thêm lựa chọn mới: Thưởng lẩu Gọi Món với giá chỉ từ 59.000vnđ. Vẫn còn 6 vị nước lẩu đặc trưng, ​​80 món nhúng tinh tuyển nhưng giờ đây, bạn có thể truy cập Night Light House và gọi là vừa đủ.', '2023-03-22 10:32:48', b'1', 10016, '4400', '9350'),
(18, 'tintuc-3loailau.jpg', 'Top 3 loại lẩu cay vừa cay vừa tê ăn là phê cho “team ăn cay”', 'Trong những loại lẩu, lẩu cay là món “khoái khẩu” của tín đồ trẻ và team ăn cay. Nồi lẩu thơm ngào ngạt, nghi ngút khói cùng topping nhúng “đầy ụ” khiến bao thực khách “thôn thức” mỗi buổi chiều tan tầm trong tiết trời se lạnh. Hôm nay, hãy cùng tôi khám phá món lẩu hot trend này nhé! Chắc chắn chỉ nghe thôi là bạn đã muốn thưởng thức ngay rồi.', '2023-02-13 08:59:46', b'0', 10010, '1800', '5990'),
(19, 'tintuc-khuyenmai.jpg', 'Crazy Day: Thứ 3 \"điên rồ\" cùng Night Light TPHCM', 'Một sự kiện mới toanh từ Night Light House đang chờ các homies truy cập đây! Từ nay không còn ngao ngán với thứ 2 vì đã biết thứ 3 sắp tới: Crazy Day - Thứ 3 siêu giảm giá Crazy Lẩu Hải Sản Tứ Xuyên 399k chỉ còn 259k!​', '2023-04-04 11:18:21', b'0', 10003, '2000', '5000'),
(20, 'tintuc-donuong.jpg', 'Lý do nên liên hoàn tại nhà hàng món nướng thay vì ăn tại nhà', 'Những món nướng thơm ngon, hợp khẩu vị của nhiều người. Với những bữa tiệc đông người, đồ nướng luôn là lựa chọn được ưu tiên hàng đầu. Đến nhà hàng món nướng được đánh giá là giải pháp hoàn hảo, nhanh chóng và thuận tiện nhất. Vì sao nên tổ chức liên hoan tại nhà hàng thay vì ở nhà hay văn phòng? Cùng chúng tôi tìm hiểu những lý do cần làm ngay trong thông tin bài viết dưới đây nhé!', '2023-04-20 16:05:55', b'1', 10002, '3100', '8700');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `db_ban`
--
ALTER TABLE `db_ban`
  ADD PRIMARY KEY (`MaBan`),
  ADD KEY `MaSanh` (`MaSanh`);

--
-- Chỉ mục cho bảng `db_chitiethoadon`
--
ALTER TABLE `db_chitiethoadon`
  ADD KEY `MaHoaDon` (`MaHoaDon`),
  ADD KEY `MaMonAn` (`MaMonAn`);

--
-- Chỉ mục cho bảng `db_dichvu`
--
ALTER TABLE `db_dichvu`
  ADD PRIMARY KEY (`MaDichVu`);

--
-- Chỉ mục cho bảng `db_doanhthu`
--
ALTER TABLE `db_doanhthu`
  ADD PRIMARY KEY (`IDDoanhThu`);

--
-- Chỉ mục cho bảng `db_formdichvu`
--
ALTER TABLE `db_formdichvu`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MaDichVu` (`MaDichVu`);

--
-- Chỉ mục cho bảng `db_hoadon`
--
ALTER TABLE `db_hoadon`
  ADD PRIMARY KEY (`MaHoaDon`),
  ADD KEY `Phone` (`Phone`);

--
-- Chỉ mục cho bảng `db_khachhang`
--
ALTER TABLE `db_khachhang`
  ADD PRIMARY KEY (`Phone`);

--
-- Chỉ mục cho bảng `db_lienhe`
--
ALTER TABLE `db_lienhe`
  ADD PRIMARY KEY (`MaDonLienHe`);

--
-- Chỉ mục cho bảng `db_maloai`
--
ALTER TABLE `db_maloai`
  ADD PRIMARY KEY (`MaLoai`);

--
-- Chỉ mục cho bảng `db_menu`
--
ALTER TABLE `db_menu`
  ADD PRIMARY KEY (`MaMonAn`),
  ADD KEY `MaLoai` (`MaLoai`);

--
-- Chỉ mục cho bảng `db_nhanvien`
--
ALTER TABLE `db_nhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Chỉ mục cho bảng `db_nhatkydatban`
--
ALTER TABLE `db_nhatkydatban`
  ADD PRIMARY KEY (`MaNhatKy`),
  ADD KEY `MaHoaDon` (`MaHoaDon`),
  ADD KEY `MaBan` (`MaBan`);

--
-- Chỉ mục cho bảng `db_sanh`
--
ALTER TABLE `db_sanh`
  ADD PRIMARY KEY (`MaSanh`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Chỉ mục cho bảng `db_tintuc`
--
ALTER TABLE `db_tintuc`
  ADD PRIMARY KEY (`MaID`),
  ADD KEY `NguoiDang` (`NguoiDang`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `db_ban`
--
ALTER TABLE `db_ban`
  MODIFY `MaBan` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `db_formdichvu`
--
ALTER TABLE `db_formdichvu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `db_hoadon`
--
ALTER TABLE `db_hoadon`
  MODIFY `MaHoaDon` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_lienhe`
--
ALTER TABLE `db_lienhe`
  MODIFY `MaDonLienHe` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_maloai`
--
ALTER TABLE `db_maloai`
  MODIFY `MaLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `db_menu`
--
ALTER TABLE `db_menu`
  MODIFY `MaMonAn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `db_nhatkydatban`
--
ALTER TABLE `db_nhatkydatban`
  MODIFY `MaNhatKy` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `db_tintuc`
--
ALTER TABLE `db_tintuc`
  MODIFY `MaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `db_ban`
--
ALTER TABLE `db_ban`
  ADD CONSTRAINT `db_ban_ibfk_1` FOREIGN KEY (`MaSanh`) REFERENCES `db_sanh` (`MaSanh`);

--
-- Các ràng buộc cho bảng `db_chitiethoadon`
--
ALTER TABLE `db_chitiethoadon`
  ADD CONSTRAINT `db_chitiethoadon_ibfk_1` FOREIGN KEY (`MaHoaDon`) REFERENCES `db_hoadon` (`MaHoaDon`),
  ADD CONSTRAINT `db_chitiethoadon_ibfk_2` FOREIGN KEY (`MaMonAn`) REFERENCES `db_menu` (`MaMonAn`);

--
-- Các ràng buộc cho bảng `db_formdichvu`
--
ALTER TABLE `db_formdichvu`
  ADD CONSTRAINT `db_formdichvu_ibfk_1` FOREIGN KEY (`MaDichVu`) REFERENCES `db_dichvu` (`MaDichVu`);

--
-- Các ràng buộc cho bảng `db_hoadon`
--
ALTER TABLE `db_hoadon`
  ADD CONSTRAINT `db_hoadon_ibfk_1` FOREIGN KEY (`Phone`) REFERENCES `db_khachhang` (`Phone`);

--
-- Các ràng buộc cho bảng `db_menu`
--
ALTER TABLE `db_menu`
  ADD CONSTRAINT `db_menu_ibfk_1` FOREIGN KEY (`MaLoai`) REFERENCES `db_maloai` (`MaLoai`);

--
-- Các ràng buộc cho bảng `db_nhatkydatban`
--
ALTER TABLE `db_nhatkydatban`
  ADD CONSTRAINT `db_nhatkydatban_ibfk_1` FOREIGN KEY (`MaHoaDon`) REFERENCES `db_hoadon` (`MaHoaDon`),
  ADD CONSTRAINT `db_nhatkydatban_ibfk_2` FOREIGN KEY (`MaBan`) REFERENCES `db_ban` (`MaBan`);

--
-- Các ràng buộc cho bảng `db_sanh`
--
ALTER TABLE `db_sanh`
  ADD CONSTRAINT `db_sanh_ibfk_1` FOREIGN KEY (`MaNV`) REFERENCES `db_nhanvien` (`MaNV`);

--
-- Các ràng buộc cho bảng `db_tintuc`
--
ALTER TABLE `db_tintuc`
  ADD CONSTRAINT `db_tintuc_ibfk_1` FOREIGN KEY (`NguoiDang`) REFERENCES `db_nhanvien` (`MaNV`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
