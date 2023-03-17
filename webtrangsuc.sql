-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2022 at 12:31 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webtrangsuc`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL,
  `admin_name` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 'Tiểu Băng');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_baiviet`
--

CREATE TABLE `tbl_baiviet` (
  `baiviet_id` int(11) NOT NULL,
  `tenbaiviet` varchar(100) CHARACTER SET utf8 NOT NULL,
  `tomtat` text CHARACTER SET utf8 NOT NULL,
  `noidung` text CHARACTER SET utf8 NOT NULL,
  `danhmuctin_id` int(11) NOT NULL,
  `baiviet_image` varchar(50) CHARACTER SET utf8 NOT NULL,
  `imagetin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_baiviet`
--

INSERT INTO `tbl_baiviet` (`baiviet_id`, `tenbaiviet`, `tomtat`, `noidung`, `danhmuctin_id`, `baiviet_image`, `imagetin`) VALUES
(1, 'Cách Nhận Biết Đồng Hồ Tissot Thật Giả', '- Theo thống kê, mỗi năm thương hiệu Tissot tiêu thụ hơn 3,8 triệu chiếc đồng hồ, và là một trong những thương hiệu đồng hồ Thụy Sĩ phổ biến nhất trên toàn cầu. Tuy nhiên, thương hiệu này cũng mất hàng triệu USD vì hàng giả. Nếu bạn là một người yêu đồng hồ và đang có ý định sắm cho mình một chiếc đồng hồ Tissot chính hãng thì cần nắm được những mẹo cơ bản dưới đây.', '<br><h5>1. Chú ý đến giá cả</h5>\r\n- Là thương hiệu đồng hồ hàng đầu Thụy Sĩ, Tissot được nhiều người ưa chuộng bởi phân khúc giá trải dài, từ 200 USD cho đến hàng nghìn USD, mỗi dòng sản phẩm ấn định một khoảng giá nhất định.\r\n<br>- Một thiết kế Tissot Chronograph chính hãng phải có giá từ 10 triệu đồng trở lên. Một mẫu đồng hồ cơ Tissot cũng không bao giờ có giá dưới 15 triệu đồng. Vì vậy, nếu bạn thấy một chiếc đồng hồ có mức giá chênh lệch quá nhiều so với giá niêm yết của đại lý bán lẻ đã tham khảo trước đó thì khả năng cao đó hàng giả\r\n<br><h5>2. Kiểm tra trọng lượng của đồng hồ</h5>\r\n- Đồng hồ Tissot chính hãng được làm từ các vật liệu cao cấp có độ bền cao nên khi cầm thấy chắc tay, thường nặng hơn đồng hồ nhái. Cùng với thông số máy, Tissot luôn công khai số liệu về trọng lượng đồng hồ trên website chính hãng, mỗi kiểu dáng, mỗi kiểu dây đều có trọng lượng khác nhau. Bạn có thể đối chiếu để kiểm tra đồng hồ Tissot thật – giả.\r\n<br><h5>3. Kiểm tra núm điều chỉnh giờ</h5>\r\n- Trên mỗi chiếc đồng hồ Tissot chính hãng, núm điều chỉnh giờ đều có khắc chữ T, viết tắt của Tissot, nét khắc rõ ràng, sắc nét và tỉ mỉ. Trong khi đó đồng hồ giả thường không có khắc chữ T trên núm điều chỉnh giờ, nếu có thì được dập khắc cẩu thả, mờ hoặc bị mất nét.\r\n<br><h5>4. Kiểm tra dây đồng hồ</h5>\r\n- Đối với những chiếc đồng hồ Tissot sử dụng dây kim loại, bạn nên cầm lên lắc qua lại xem có chắc chắn không, các mắt xích có đều nhau không, màu có bị loang lổ hay không. Nếu đảm bảo được các yếu tố trên thì là đồng hồ chính hãng, nếu dây đeo lỏng lẻo, xỉn màu, cạnh các mắt xích có độ nhám thì là hàng giả. \r\n<br>- Đối với những mẫu đồng hồ Tissot dùng dây da thì đồng hồ fake thường có dây rất mềm, nhão, đường may lộn xộn, và khi đeo có cảm giác khó chịu ở cổ tay.', 1, 'tindh1.jpg', 'tindh1-1.png'),
(2, 'SEAMASTER RAILMASTER - Mẫu Đồng Hồ \"Must Have\" Dành Cho Tín Đồ Yêu Thích Omega', '- Luôn đa dạng và biến hóa những cỗ máy phục vụ cho nhu cầu và công việc thiết yếu của người mua đồng hò, Omega luôn dẫn đầu về sản xuất những đồng hồ được thiết kế riêng biệt cho những nhóm khách hàng từ đồng hồ cho thợ lặn, đồng hồ cho doanh nhân, đồng hồ cho người thích sưu tầm đồ cổ cho đến đồng hồ dành cho các nhà khoa học. Thật vậy, Omega Seamaster Railmaster là sản phẩm riêng biệt dành riêng cho những người làm khoa học, làm việc trong phòng nghiên cứu.', '<br><h5>1. Đánh giá đồng hồ Omega Seamaster Railmaster</h5>\r\n- Seamaster Railmaster nằm trong bộ sưu tập Seamaster chính của Omega, cùng với các đồng hồ khác như Aqua Terra và Planet Ocean. Thay vì đưa Railmaster lên bộ sưu tập hàng đầu của riêng mình thì hãng đặt nó cùng với Speedmaster và Constellation - đặt chiếc đồng hồ trong bối cảnh có những bước tiến mới được thực hiện trong gia đình để làm nổi bật và nhấn mạnh rằng Railmaster là tài sản đặc biệt, không phải là mẫu bị thay thế hay ngăn cách bởi những cỗ máy thịnh hành khác của Omega. Thay vào đó, Seamaster Railmaster là sự khác biệt mới về phong cách mang lại sức cuốn hút riêng làm nên sự hoàn hảo của bộ sưu tập Seamaster.\r\n<br><h5>2. Vỏ đồng hồ</h5>\r\n- Seamaster Railmaster có vỏ thép không gỉ 40mm với độ dày vỏ là 12mm, đeo lên tay sẽ có cảm giác chắc chắn mà không hề nặng nề hay gò bó cổ tay của người đeo. Để mang đến sự thoải mái này, kích thước được hãng làm ra đều chú trọng đến từng tỉ lệ của đồng hồ.\r\n<br><h5>3. Mặt số đồng hồ</h5>\r\n- Railmaster có 2 sự lựa chọn cho mặt số: một đen và một xám nhưng chúng chia ra một số tính năng chính. Cả hai đều có màu sắc nổi bật, dễ bắt sáng và bố cục phối hợp hoàn hảo với những chi tiết trên chúng\r\n<br><h5>4. Bộ chuyển động</h5>\r\n- Tuy không thể nhìn thấy chuyển động thông qua vỏ thép, chiếc đồng hồ này đang đóng gói nhiệt nghiêm trọng dưới mui xe. Railmaster sử dụng bộ máy Omega calibre 8806, một bộ máy được cho là tốt nhất lúc bấy giờ.\r\n<br>- Cả hai đều có hệ thống thoát hiểm đồng trục Co-Axial sử dụng bánh xe cân bằng lò xo tự do và lò xo cân bằng silicon, không chỉ chuyển động chronograph đã được kiểm tra và chứng nhận, mà toàn bộ đồng hồ đã được thử nghiệm để đạt tiêu chuẩn cao về độ chính xác, tính chống nước, chống từ tính. ', 1, 'tindh2.jpeg', 'tindh2-1.jpg'),
(3, 'Đá Nhảy - Viên Đá Kỳ Diệu Trong Ngành Kim Hoàn', '- Dancing Stone, hay còn gọi là Đá Nhảy, được biết đến là một trong những kỳ quan của ngành kim hoàn. Nhóm trang sức này có đặc điểm là viên đá được đặt ngay tâm giữa, có thể chuyển động và phản quang ánh sáng trong từng nhịp hoạt động của các chủ nhân.', '<br><h5>- Bí mật của dòng sản phẩm này nằm ở cấu trúc của các khớp nối giữ viên đá. Thay vì sử dụng kỹ thuật gắn đá truyền thống, tinh thể long lanh được cố định bằng những  chiếc chấu siêu nhỏ. Từ đó, viên đá quý sẽ luôn di chuyển và phát ra những luồng sáng cực kỳ hút mắt.\r\n<br>- Một trong những lý do chính yếu giúp Dancing Stone được yêu thích rộng rãi chính là sự sống động. Khác với những món trang sức truyền thống, điểm nhấn đá nhảy ghi dấu ấn bằng những tia sáng luôn uyển chuyển, tựa như những người vũ công đang nhảy múa.\r\n<br>- Việc chế tác trang sức đá nhảy cũng đòi hỏi sự khắt khe và tinh chọn kỹ lưỡng. Để hoàn thành một sản phẩm, các nghệ nhân phải có tay nghề cao cũng như sự am hiểu tường tận về nghệ thuật kim hoàn. Do đó, việc sở hữu trang sức Dancing Stone sẽ tạo cảm giác nàng đang có trong tay món trang sức độc đáo, đầy mê hoặc.</h5>', 2, 'tintrangsuc1.png', 'tintrangsuc1-1.jpg'),
(4, 'Hiểu Về Đá Morganite – Viên Đá Đẹp Đến Nao Lòng', '- Không quá tiếng tăm như những người họ hàng của mình nhưng đá Morganite lại mang một vẻ đẹp lộng lẫy, “nhìn xíu thích ngay” dành cho các nàng.', '<br><h5>- Đá Morganite có màu hồng đào ngọt lịm tim, khiến nhiều người phải trầm trồ. Đây là viên đá quý thuộc họ beryl, tức “anh em” với những loại đá nổi tiếng khác như Aquamarine, Emerald, Goshenite,…\r\n<br>- Bảng màu của Morganite cũng rất đa dạng, chạy dài từ hồng nhạt đến hồng đậm, đôi khi là màu tím hay màu của cá hồi. Đặc biệt, những khối đá lớn sẽ có tông màu rực rỡ và đậm đà hơn. Nếu may mắn, bạn có thể sở hữu Morganite có màu đỏ tươi cực quý hiếm, được tìm thấy ở khu vực Madagascar. Ưu điểm của dòng đá này là ít tạp chấp nên sở hữu độ trong veo hoàn hảo, đáng mơ ước. Do đó, chúng thường được chế tác thành những món trang sức đắt giá, làm điểm nhấn khiến các chủ nhân thêm lộng lẫy và xa hoa.\r\n<br>- Đối với phương Tây, viên đá này này dành cho nhóm người thuộc cung Song Ngư, Kim Ngưu và Cự Giải. Ngoài ra, Morganite cũng có quan hệ mật thiết với năng lượng của những ai sinh vào giữa cuối tháng 10 đến cuối tháng 11.\r\n<br>- Trang sức đá Morganite đang rất được yêu thích tại PNJ. Nếu nàng cũng mê tít vẻ đẹp tinh khôi này, đừng ngần ngại mà hãy đến ngay cửa hàng gần nhất nhé!</h5> ', 2, 'tintrangsuc2.jpg', 'tintrangsuc2-1.jpg'),
(5, 'Rực Rỡ Sắc Hè, Sáng Bừng Phong Cách', '- Những cơn mưa bất chợt cùng tia nắng hè vàng ươm khởi đầu cho những ngày rực rỡ, sẽ mở ra khoảng thời gian tươi trẻ tuyệt vời của mỗi chúng ta. Hè đến cũng là khi chúng ta thấy năng động và tràn trề sức trẻ, đây cũng chính là lúc bạn thổi vào phong cách cuả mình làn gió mới mẻ, thổi vào đó những cảm xúc thanh xuân sáng bừng.', '<br><h5>- Để chào đón những ngày hè rực rỡ, cùng bạn sáng bừng phong cách cho quý khách hàng khu vực TP Cần Thơ, Vĩnh Long, Trà Vinh, Đồng Tháp, An Giang, Sóc Trăng, Bạc Liêu, Cà Mau, Kiên Giang & Hậu Giang, từ ngày 25/05 đến 05/06/2022, BJC gửi đến các chương trình ưu đãi chào hè hấp dẫn.\r\n<br>- Không ngừng nâng cao trải nghiệm mua sắm cũng như mang đến những lợi ích tốt nhất đến các khách hàng, trong nhiều năm qua BJC đã luôn là thương hiệu được khách hàng khắp Việt Nam tin chọn và không ngừng phát triển hệ thống cửa hàng hiện đại với những ưu đãi hấp dẫn. Không chỉ vậy, BJC còn sở hữu đội ngũ chuyên nghiệp, liên tục sáng tạo ra những sản phẩm vượt trội, khẳng định đẳng cấp riêng của khách hàng.\r\n<br>- Trang sức kim cương là một trong những dòng sản phẩm tạo nên tên tuổi của BJC. Kim cương BJC vốn nổi tiếng với chất lượng vượt trội, khẳng định giá trị người sở hữu. Trong thời gian qua, phái đẹp hiện đại, khách hàng phong cách thường chọn kim cương BJC cho đẳng cấp cũng như diện mạo của mình. Chính vì vậy, Kim cương BJC là món quà tưởng thưởng hoàn hảo để khách hàng làm mới chính mình, chào đón những ngày hè rực rỡ.</h5>', 3, 'tinkm1.jpg', 'tinkm1-1.jpg'),
(6, 'Ưu Đãi Cực VIP – Nâng Cấp Đặc Quyền', '- Nhằm tri ân sự tin yêu của khách hàng trong thời gian qua, đồng thời mong muốn mang đến thêm nhiều trải nghiệm mua sắm và dịch vụ tuyệt vời hơn nữa, BJC khu vực Miền Trung hân hạnh mang đến chương trình NÂNG CẤP ĐẶC QUYỀN cao hơn cả những ưu đãi VIP thông thường, duy nhất các ngày từ 20/05 – 22/05/2022 (Đợt 1) và 27/05 – 29/05/2022 (Đợt 2).', '<br><h5>- Theo đó, trong thời gian diễn ra chương trình, khách hàng mua sắm Trang Sức Vàng (trang sức kim cương, trang sức đá quý, trang sức CZ, ECZ, trang sức Ý,…) sẽ được tận hưởng ĐẶC QUYỀN CỰC VIP với ưu đãi vô cùng hấp dẫn lên đến 8% dành cho khách hàng thân thiết, ưu đãi đến 6% cho khách hàng đồng hành, ưu đãi đến 4% cho khách hàng thành viên và 3% cho khách hàng mới, khách hàng kết nối.\r\n<br>- Ngoài ra, khi mua sắm Trang Sức Bạc, Hợp Kim tại hệ thống BJC khu vực Miền Trung vào 03 ngày duy nhất từ 20/05 – 22/05/2022, khách hàng sẽ nhận được ƯU ĐÃI ĐẶC BIỆT đến 20% đối với khách hàng thân thiết, ưu đãi 15% cho khách hàng đồng hành, ưu đãi đến 10% cho khách hàng thành viên và 7% cho khách hàng mới, khách hàng kết nối.\r\n<br>- Trang sức kim cương là một trong những dòng sản phẩm tạo nên tên tuổi của BJC. Kim cương BJC vốn nổi tiếng với chất lượng vượt trội, khẳng định giá trị người sở hữu. Với kim cương BJC, đẳng cấp của bạn sẽ luôn bừng sáng cùng năm tháng. Với sự tinh tế của riêng bạn, chỉ những viên kim cương tinh tuyển của BJC mới xứng đáng!</h5>', 3, 'tinkm2.png', 'tinkm2-1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Đồng Hồ'),
(2, 'Trang Sức Bạc'),
(3, 'Trang Sức Kim Cương');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_danhmuc_tin`
--

CREATE TABLE `tbl_danhmuc_tin` (
  `danhmuctin_id` int(11) NOT NULL,
  `tendanhmuc` varchar(150) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_danhmuc_tin`
--

INSERT INTO `tbl_danhmuc_tin` (`danhmuctin_id`, `tendanhmuc`) VALUES
(1, 'Đồng Hồ'),
(2, 'Trang Sức'),
(3, 'Khuyến Mãi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `donhang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mahang` varchar(50) CHARACTER SET utf8 NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tinhtrang` int(11) NOT NULL,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`donhang_id`, `sanpham_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(15, 40, 1, '6757', 2, '2022-05-27 18:09:33', 0, 0),
(17, 40, 2, '1942', 1, '2022-05-28 10:33:51', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) CHARACTER SET utf8 NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) CHARACTER SET utf8 NOT NULL,
  `hinhanh` varchar(50) CHARACTER SET utf8 NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_giohang`
--

INSERT INTO `tbl_giohang` (`giohang_id`, `tensanpham`, `sanpham_id`, `giasanpham`, `hinhanh`, `soluong`) VALUES
(58, 'Đồng Hồ Thông Minh Fossil. Unisex Dây cao su cao cấp', 10, '3715000', 'dhu2.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8 NOT NULL,
  `address` varchar(200) CHARACTER SET utf8 NOT NULL,
  `note` text CHARACTER SET utf8 NOT NULL,
  `email` varchar(150) CHARACTER SET utf8 NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `phone`, `address`, `note`, `email`, `password`) VALUES
(1, 'bang', '0778268330', 'Ninh Kiều, Cần Thơ', '', 'bang@gmail.com', '202cb962ac59075b964b07152d234b70'),
(2, 'hao', '0907986036', 'Texas, USA', 'dsafghj', 'hao@gmail.com', '250cf8b51c773f3f8dc8b4be867a9a02');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `lienhe_id` int(11) NOT NULL,
  `lienhe_name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `lienhe_email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `lienhe_noidung` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`lienhe_id`, `lienhe_name`, `lienhe_email`, `lienhe_noidung`) VALUES
(5, 'chung', 'chung@gmail.com', 'sadsff'),
(6, 'ố là la', 'lala@gmail.com', 'sdfghjkloiuytré'),
(7, 'cạp', 'cap@gmail.com', 'ádfghjklqưẻtyuio');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sanpham_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sanpham_chitiet` text CHARACTER SET utf8 NOT NULL,
  `sanpham_mota` text CHARACTER SET utf8 NOT NULL,
  `sanpham_gia` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `sanpham_giakhuyenmai` varchar(100) CHARACTER SET utf8 NOT NULL,
  `sanpham_hot` int(11) NOT NULL,
  `sanpham_soluong` int(11) NOT NULL,
  `sanpham_image` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_hot`, `sanpham_soluong`, `sanpham_image`) VALUES
(1, 1, 'Đồng Hồ Tissot Nam Dây Da', '<br><h5>Thông Số</h5>\r\n- Thương hiệu: Tissot\r\n<br>- Chất liệu dây: Dây Da\r\n<br>- Chất liệu vỏ: Vỏ Thép Cao Cấp Không Gỉ 316L\r\n<br>- Kích thước mặt: 35 - 40mm\r\n<br>- Kích thước dây: 19mm\r\n<br>- Loại máy đồng hồ: Quartz\r\n<br>- Độ chịu nước: 30m\r\n<br>- Độ dày vỏ máy: 8.4mm\r\n<br>- Xuất xứ bộ máy: Thụy Sỹ\r\n<br>- Xuất Xứ Thương Hiệu: Thụy Sỹ\r\n<br>- Lắp ráp tại: Thụy Sỹ\r\n<br>- Loại mặt kính: Kính Sapphire\r\n<br>- Hình dạng mặt: Oval\r\n<br>- Số Kim: 3 Kim\r\n<br>- Đá Gắn Kèm Đồng Hồ: Không gắn đá\r\n<br>- Chứng nhận Chronometer: Không\r\n<br>- Chức năng chính: Khác\r\n<br>- Giới tính: Nam', '- Nổi bật với những kỹ thuật Tốt nhất đem đến sự chính xác và chất lượng vượt trội với nhiều dòng sản phẩm khác nhau. Một số mẫu trong bộ sưu tập T-classic luôn là best-seller trên toàn cầu và đã giành được giải thưởng uy tín trong các cuộc thi đồng hồ. Thiết kế của đồng hồ T-Classic là không bao giờ lỗi mốt, một số mẫu đã luôn tồn tại trong hơn 20 năm.\r\n<br>- Dòng TISSOT LE LOCLE nằm trong bộ sưu tập T-Classic, là sản phẩm khẳng định giá trị tuyệt vời với giá tốt nhất. ', '10260000', '8725000', 0, 27, 'dhn4.png'),
(2, 1, 'Đồng Hồ Skagen Nữ Dây Da', '<br><h5>Thông Số</h5>\r\n- Thương hiệu: Skagen\r\n<br>- Chất liệu dây: Dây Da\r\n<br>- Chất liệu vỏ: Vỏ Thép Cao Cấp Không Gỉ 316L\r\n<br>- Kích thước mặt: 25 - 30mm\r\n<br>- Kích thước dây: 14mm\r\n<br>- Loại máy đồng hồ: Quartz\r\n<br>- Độ chịu nước: 50m\r\n<br>- Độ dày vỏ máy: 7.2mm\r\n<br>- Xuất xứ bộ máy: Nhật Bản\r\n<br>- Xuất Xứ Thương Hiệu: Đan Mạch\r\n<br>- Lắp ráp tại: Trung Quốc\r\n<br>- Loại mặt kính: Kính Khoáng Cứng\r\n<br>- Hình dạng mặt: Tròn\r\n<br>- Số Kim: 2 Kim\r\n<br>- Đá Gắn Kèm Đồng Hồ: Đá Quý\r\n<br>- Chứng nhận Chronometer: Không\r\n<br>- Chức năng chính: Khác\r\n<br>- Giới tính: Nữ', '- Thiết kế sang trọng đầy lịch lãm mang vẻ đẹp dịu dàng của biển cả hòa quyện cùng nét đẹp hùng vĩ của núi non, được tạo nên từ những chất liệu hàng đầu cho sản phẩm đồng hồ SKAGEN chính hãng một chất lượng hoàn hảo. Đơn giản nhưng đầy tinh tế, những chiếc đồng hồ SKAGEN không chỉ những hữu thiết kế sang trọng mà còn có mức giá bán hết sức “Cạnh Tranh”. Đó chính là lý do vì sao đồng hồ SKAGEN đã có mặt trên toàn Thế Giới và đang rất thịnh hành tại mọi quốc gia.', '4960000', '2960000', 0, 4, 'dhnu2.jpg'),
(3, 1, 'Đồng Hồ Thông Minh Fossil Nam Dây Da', '<br><h5>Thông Số</h5>\r\n- Thương hiệu: Fossil\r\n<br>- Chất liệu dây: Dây Da\r\n<br>- Chất liệu vỏ: Vỏ Thép Cao Cấp Không Gỉ 316L\r\n<br>- Kích thước mặt: 40 - 45mm\r\n<br>- Kích thước dây: 22mm\r\n<br>- Độ chịu nước: 30m\r\n<br>- Độ dày vỏ máy: 13mm\r\n<br>- Xuất xứ bộ máy: Nhật Bản\r\n<br>- Xuất Xứ Thương Hiệu: Mỹ\r\n<br>- Lắp ráp tại: Trung Quốc\r\n<br>- Loại mặt kính: Khác\r\n<br>- Hình dạng mặt: Tròn\r\n<br>- Số Kim: 0 Kim\r\n<br>- Đá Gắn Kèm Đồng Hồ: Không gắn đá\r\n<br>- Chứng nhận Chronometer: Không\r\n<br>- Chức năng chính: Khác\r\n<br>- Giới tính: Nam', '- Fossil ra đời vào năm 1984 -Thương hiệu đồng hồ Thời trang đến từ Mỹ. Tất cả sản phẩm Fossil tạo ra đều mang thiết kế độc đáo và đậm nét hoài niệm. Hướng tới việc hoàn thiện mọi dấu ấn và cũng như phong cách riêng của người yêu thời trang.Phong cách thời trang tối gián vẫn luôn giữ một vị trí quan trọng trong lòng các bạn trẻ yêu thích thời trang.\r\n<br>- Với thiết kế thanh mảnh, tiết chế ở mặt số, mẩu đồng hồ mang đến phong cách thời trang lịch lãm, dễ dàng phối với các trang phúc từ thường ngày đến dạo phố.', '7430000', '3715000', 0, 5, 'dhn3.jpg'),
(4, 1, 'Đồng Hồ Citizen Nam Dây Thép Không Gỉ', '<br><h5>Thông Số</h5>\r\n- Thương hiệu: Citizen<br>\r\n- Chất liệu dây: Dây Kim Loại<br>\r\n- Chất liệu vỏ:\r\nVỏ Thép Cao Cấp Không Gỉ 316L<br>\r\n- Kích thước mặt: 25 - 30mm<br>\r\n- Loại máy đồng hồ: Eco-drive<br>\r\n- Độ chịu nước: 50m<br>\r\n- Xuất xứ bộ máy: Nhật Bản<br>\r\n- Xuất Xứ Thương Hiệu: Nhật Bản<br>\r\n- Lắp ráp tại: Trung Quốc<br>\r\n- Loại mặt kính: Kính Khoáng Cứng<br>\r\n- Hình dạng mặt: Tròn<br>\r\n- Số Kim: 2 Kim<br>\r\n- Đá Gắn Kèm Đồng Hồ: Không gắn đá\r\n<br>\r\n- Chứng nhận Chronometer: Không<br>\r\n- Chức năng chính: Khác<br>\r\n- Giới tính: Nam', '- Thương Hiệu Đồng Hồ Citizen - Since 1918, trải qua hơn 100 năm thành lập và phát triển. Nổi danh toàn cầu là một trong những Thương hiệu xuất sắc vượt trội về công nghệ tiên tiến với Thiết kế sáng tạo. Đặc biệt là chất lượng bền bỉ và mức giá phù hợp với đại đa số người dùng. <br>- Thiết kế đa dạng mẩu mã liên tục cải tiến và không ngừng cập nhật về xu hướng thịnh hành trên thế giới, Citizen Eco-drive tự hào vì đáp ứng được mọi phong cách thời trang đến từng khách hàng.', '11550000', '9460000', 0, 10, 'dhn1.png'),
(5, 1, 'Đồng Hồ Just Cavalli Nữ Dây Thép Không Gỉ', '<br><h5>Thông Số</h5>\r\n- Thương hiệu: Just Cavalli\r\n<br>- Chất liệu dây: Dây Kim Loại\r\n<br>- Chất liệu vỏ: Vỏ Thép Cao Cấp Không Gỉ 316L\r\n<br>- Kích thước mặt: 30 - 35mm\r\n<br>- Kích thước dây: 16mm\r\n<br>- Loại máy đồng hồ: Quartz\r\n<br>- Độ chịu nước: 50m\r\n<br>- Độ dày vỏ máy: 7.2mm\r\n<br>- Xuất xứ bộ máy: Nhật Bản\r\n<br>- Xuất Xứ Thương Hiệu: Ý\r\n<br>- Lắp ráp tại: Trung Quốc\r\n<br>- Loại mặt kính: Kính Khoáng Cứng\r\n<br>- Hình dạng mặt: Tròn\r\n<br>- Số Kim: 3 Kim\r\n<br>- Đá Gắn Kèm Đồng Hồ: Không gắn đá\r\n<br>- Chứng nhận Chronometer: Không\r\n<br>- Chức năng chính: Khác\r\n<br>- Giới tính: Nữ', '- JUST CAVALLI là dòng sản phẩm đồng hồ dành cho phái nữ nên thường được thiết kế mang những phong cách riêng biệt ở những model khác nhau như nữ tính, ngọt ngào, quyến rũ, trẻ trung,...\r\n<br>- Đồng hồ JUST CAVALLI luôn được người tiêu dùng đánh giá cao bởi khả năng vận hành và thời lượng pin nổi bật trong phân khúc sản phẩm tầm trung. Đồng thời, JUST CAVALLI còn có khả năng chống nước tốt từ 5 ATM đến 10 ATM cùng những mẫu thiết kế phong cách khác nhau từ nữ tính đến cá tính', '6600000', '5400000', 0, 14, 'dhnu1.jpg'),
(6, 1, 'Đồng Hồ Skagen Nam Dây Da 42 mm', '<br><h5>Thông Số</h5>\r\n- Thương hiệu: Skagen\r\n<br>- Chất liệu dây: Dây Da\r\n<br>- Chất liệu vỏ: Vỏ Thép Cao Cấp Không Gỉ 316L\r\n<br>- Kích thước mặt: 40 - 45mm\r\n<br>- Kích thước dây: 22mm\r\n<br>- Loại máy đồng hồ: Quartz\r\n<br>- Độ chịu nước: 50 m\r\n<br>- Xuất xứ bộ máy: Nhật Bản\r\n<br>- Xuất Xứ Thương Hiệu: Đan Mạch\r\n<br>- Lắp ráp tại: Trung Quốc\r\n<br>- Loại mặt kính: Kính Khoáng Cứng\r\n<br>- Hình dạng mặt: Tròn\r\n<br>- Số Kim: 6 Kim\r\n<br>- Đá Gắn Kèm Đồng Hồ: Không gắn đá\r\n<br>- Chứng nhận Chronometer: Không\r\n<br>- Chức năng chính: Khác\r\n<br>- Giới tính: Nam', '- Đồng hồ Skagen là một trong số ít các thương hiệu thời trang của người Đan Mạch đã giành được nhiều giải thưởng Red Dot cho thiết kế đồng hồ. Hầu hết chủ sở hữu của các mẫu đồng hồ này đều nói rằng họ nhận được nhiều lời khen về đồng hồ của họ và họ cảm thấy thoải mái khi đeo.\r\n<br>- Đồng hồ Skagen có xu hướng mỏng hơn và nhẹ hơn một chút so với đồng hồ thời trang trung bình của bạn. Chúng chủ yếu có tính năng chuyển động Quartz và vỏ thép không gỉ, mặc dù cũng có một vài bộ sưu tập có kim loại titan. Các thiết kế của Jorst có xu hướng đặc trưng cho các mặt đồng hồ Milan, dây da, dây NATO và thiết kế vòng đeo tay được cung cấp trong dòng đồng hồ Skagen.', '5520000', '4520000', 0, 15, 'dhn2.jpg'),
(7, 1, 'Đồng Hồ Thông Minh Fossil Nữ Dây Da', '<br><h5>Thông Số</h5>\r\n- Thương hiệu: Fossil\r\n<br>- Chất liệu vỏ: Vỏ Thép Cao Cấp Không Gỉ 316L\r\n<br>- Kích thước mặt: 40 - 45mm\r\n<br>- Kích thước dây: 22mm\r\n<br>- Loại máy đồng hồ: Quartz\r\n<br>- Độ chịu nước: 30m\r\n<br>- Độ dày vỏ máy: 12mm\r\n<br>- Xuất xứ bộ máy: Nhật Bản\r\n<br>- Xuất Xứ Thương Hiệu: Mỹ\r\n<br>- Lắp ráp tại: Trung Quốc\r\n<br>- Loại mặt kính: Kính Phản Quang\r\n<br>- Hình dạng mặt: Tròn\r\n<br>- Số Kim: 0 Kim\r\n<br>- Đá Gắn Kèm Đồng Hồ: Đá Quý\r\n<br>- Chứng nhận Chronometer: Không\r\n<br>- Chức năng chính: Khác\r\n<br>- Giới tính: Nữ', '- Fossil ra đời vào năm 1984 -Thương hiệu đồng hồ Thời trang đến từ Mỹ. Tất cả sản phẩm Fossil tạo ra đều mang thiết kế độc đáo và đậm nét hoài niệm. Hướng tới việc hoàn thiện mọi dấu ấn và cũng như phong cách riêng của người yêu thời trang.\r\n<br>- Thiết kế mới vẫn giữ nguyên nét truyền thống và hoài niệm của thương hiệu nhưng có sự cải tiến về chất liệu và thiết kế, giúp làm nên một chiếc đồng hồ tích hợp cả hai yếu tố hiện đại và truyền thống, tạo nên phong cách nổi bật cho người dùng.', '7970000', '3985000', 0, 25, 'dhnu3.jpg'),
(8, 1, 'Đồng Hồ Thông Minh Michael Kors Nữ Dây Cao Su', '<br><h5>Thông Số</h5>\r\n- Thương hiệu: Michael Kors\r\n<br>- Chất liệu vỏ: Vỏ Thép Cao Cấp Không Gỉ 316L\r\n<br>- Kích thước mặt: 40 - 45mm\r\n<br>- Kích thước dây: 20mm\r\n<br>- Loại máy đồng hồ: Quartz\r\n<br>- Độ chịu nước: 30m\r\n<br>- Độ dày vỏ máy: 7mm\r\n<br>- Xuất xứ bộ máy: Nhật Bản\r\n<br>- Xuất Xứ Thương Hiệu: Mỹ\r\n<br>- Lắp ráp tại: Trung Quốc\r\n<br>- Loại mặt kính: Kính Phản Quang\r\n<br>- Hình dạng mặt: Tròn\r\n<br>- Số Kim: 0 Kim\r\n<br>- Đá Gắn Kèm Đồng Hồ: Không Gắn Đá\r\n<br>- Chứng nhận Chronometer: Không\r\n<br>- Chức năng chính: Khác\r\n<br>- Giới tính: Nữ', '- Michael Kors Smartwatch - Sự cộng hưởng hoàn hảo giữa yếu tố thời trang và công nghệ hiện đại. Chưa bao giờ những tính năng vượt trội, cũng như những tiện ích đến từ một chiếc đồng hồ thông minh lại được tích hợp đầy đủ đến thế.\r\n<br>- Chính sự pha trộn giữa thiết kế hiện đại, sự cải tiến trong thiết kế, đường nét tinh tế, thanh mảnh và nhẹ hơn, kết hợp với thủ công đính đá truyền thống được lưu giữ và phát huy - yếu tố đã làm nên sự thành công cho những chiếc đồng hồ Michael Kors. Tất cả sự kết hợp này mang đến sự hỗ trợ đắc lực cho những cô nàng hiện đại, yêu thích công nghệ và đặc biệt là không quên bắt kịp cùng những xu hướng thời trang thịnh hành nhất.', '6500000', '2985000', 0, 20, 'dhnu4.jpg'),
(9, 1, 'Đồng Hồ Manoir Unisex  Dây Thép Không Gỉ', '<br><h5>Thông Số</h5>\r\n- Thương hiệu: Jacques du Manoir\r\n<br>- Chất liệu vỏ: Vỏ Thép Cao Cấp Không Gỉ 316L\r\n<br>- Kích thước dây: 18mm\r\n<br>- Loại máy đồng hồ: Quartz\r\n<br>- Độ chịu nước: 50m\r\n<br>- Độ dày vỏ máy: 9.5mm\r\n<br>- Xuất xứ bộ máy: Thụy Sỹ\r\n<br>- Xuất Xứ Thương Hiệu: Thụy Sỹ\r\n<br>- Lắp ráp tại: Thụy Sỹ\r\n<br>- Loại mặt kính: Kính Khoáng Cứng\r\n<br>- Hình dạng mặt: Tròn\r\n<br>- Số Kim: 3 Kim\r\n<br>- Đá Gắn Kèm Đồng Hồ: Đá Quý\r\n<br>- Chứng nhận Chronometer: Không\r\n<br>- Chức năng chính: Lịch\r\n<br>- Giới tính: Unisex', '- Jacques du Manoir - thương hiệu bình dân đến từ Thụy Sĩ mang lại 1 vẻ đẹp nhẹ nhàng và lịch lãm với thiết kế quen thuộc gồm bộ 3 kim và cọc số đính đá cao cấp vận hành bởi bộ máy pin thụy sĩ chính xác và bền bỉ\r\n<br>- Jacques du Manoir NROP.17 rất dễ kết hợp với mọi loại trang phục thể hiện được vẻ sang trọng và lịch thiệp cho phái nam', '7580000', '5860000', 0, 22, 'dhu1.jpg'),
(10, 1, 'Đồng Hồ Thông Minh Fossil. Unisex Dây cao su cao cấp', '<br><h5>Thông Số</h5>\r\n- Thương hiệu: Fossil\r\n<br>- Chất liệu vỏ: Vỏ Thép Cao Cấp Không Gỉ 316L\r\n<br>- Kích thước mặt:40 - 45mm\r\n<br>- Kích thước dây: 18 - 22mm\r\n<br>- Độ chịu nước: 50m\r\n<br>- Độ dày vỏ máy: 12mm\r\n<br>- Xuất xứ bộ máy: Nhật Bản\r\n<br>- Xuất Xứ Thương Hiệu: Mỹ\r\n<br>- Lắp ráp tại: Trung Quốc\r\n<br>- Loại mặt kính: Khác\r\n<br>- Hình dạng mặt: Tròn\r\n<br>- Số Kim: 0 Kim\r\n<br>- Đá Gắn Kèm Đồng Hồ: Không Gắn Đá\r\n<br>- Chứng nhận Chronometer: Không\r\n<br>- Chức năng chính: Khác\r\n<br>- Giới tính: Unisex', '- Fossil ra đời vào năm 1984 - Thương hiệu đồng hồ Thời trang đến từ Mỹ. Tất cả sản phẩm Fossil tạo ra đều mang thiết kế độc đáo và đậm nét hoài niệm. Hướng tới việc hoàn thiện mọi dấu ấn và cũng như phong cách riêng của người yêu thời trang.Phong cách thời trang tối gián vẫn luôn giữ một vị trí quan trọng trong lòng các bạn trẻ yêu thích thời trang. Với thiết kế thanh mảnh, tiết chế ở mặt số, mẩu đồng hồ mang đến phong cách thời trang lịch lãm, dễ dàng phối với các trang phúc từ thường ngày đến dạo phố.', '7430000', '3715000', 0, 5, 'dhu2.jpg'),
(11, 1, 'Đồng Hồ Tissot Unisex Dây Thép Không Gỉ', '<br><h5>Thông Số</h5>\r\n- Thương hiệu: Tissot\r\n<br>- Chất liệu dây: Dây Kim Loại\r\n<br>- Chất liệu vỏ: Vỏ Thép Cao Cấp Không Gỉ 316L\r\n<br>- Kích thước mặt: 35 - 40mm\r\n<br>- Kích thước dây: 19mm\r\n<br>- Loại máy đồng hồ: Quartz\r\n<br>- Độ chịu nước: 30m\r\n<br>- Độ dày vỏ máy: 6.5mm\r\n<br>- Xuất xứ bộ máy: Thụy Sỹ\r\n<br>- Xuất Xứ Thương Hiệu: Thụy Sỹ\r\n<br>- Lắp ráp tại: Thụy Sỹ\r\n<br>- Loại mặt kính: Kính Sapphire\r\n<br>- Hình dạng mặt: Tròn\r\n<br>- Số Kim: 3 Kim\r\n<br>- Đá Gắn Kèm Đồng Hồ: Không gắn đá\r\n<br>- Chứng nhận Chronometer: Không\r\n<br>- Chức năng chính: Khác\r\n<br>- Giới tính: Unisex', '- Trong bộ sưu tập T-Classic, dễ dàng tìm thấy những thuộc tính nổi bật và những kỹ thuật Tốt nhất từ Tissot, đem đến sự chính xác và chất lượng vượt trội từ với nhiều dòng sản phẩm khác nhau. Thiết kế của đồng hồ T-Classic là không bao giờ lỗi mốt, một số mẫu đã luôn tồn tại trong hơn 20 năm.\r\n<br>- Dòng TISSOT EVERYTIME nằm trong bộ sưu tập T-Classic, thiết kế tối giản và hiện đại được sản xuất bởi một thương hiệu đồng hồ nổi tiếng của Thụy Sĩ.', '8550000', '8010000', 0, 2, 'dhu3.png'),
(12, 2, 'Nhẫn bạc đính đá BJCSilver', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: CZ\r\n<br>- Màu đá chính: Trắng\r\n<br>- Hình dạng đá: Tròn\r\n<br>- Thương hiệu: BJCSilver\r\n<br>- Giới tính: Nữ', '- Chiếc nhẫn bạc BJCSilver nổi bật với mặt đá nhô cao, viên đá trong suốt sáng lấp lánh gắn ở vị trí trung tâm được nâng đỡ bởi 4 chân bạc vô cùng cuốn hút. Thêm một chút nhấn nhá với dải đá nằm xen giữa 2 khối bạc gắn dọc thân nhẫn. Phần thân khá dày dặn mang đến cảm giác chắc chắn và thoải mái. Các bạn gái sẽ thật ấn tượng khi đeo chiếc nhẫn bạc cao cấp tuyệt đẹp này.\r\n<br>- Ngoài ra, màu bạc trung tính của nhẫn BJCSilver cho phép bạn kết hợp với mọi trang phục mà không sợ bị lạc quẻ. Còn chần chừ gì nữa mà không bổ sung chiếc nhẫn ấy vào bộ sưu tập trang sức bạc của bạn.', '628000', '514000', 0, 30, 'nhanbac.png'),
(13, 2, 'Dây chuyền Bạc Ý BJCSilve', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: Không Đá\r\n<br>- Thương hiệu: BJCSilver\r\n<br>- Giới tính: Nữ', '- Bằng việc kết hợp chất liệu bạc Ý cao cấp, sợi dây cổ bạc chính là điểm nhấn nổi bật, tô điểm thêm vẻ đẹp thanh lịch và duyên dáng cho nàng. Sự đính kết và sắp xếp những điểm nhấn một cách hoàn hảo mang đến vẻ đẹp của sự phá cách, cá tính và thời thượng cho chiếc dây cổ.\r\n<br>- Đặc biệt hơn, chiếc dây cổ sẽ trở nên ý nghĩa hơn khi trở thành món quà ghi dấu yêu thương vào những dịp quan trọng. Đây chắc chắn sẽ là thứ giúp bạn gắn kết những khoảnh khắc đáng nhớ với mình hoặc người thương.', '4235000', '3825000', 0, 15, 'dcbacy.png'),
(14, 2, 'Bông tai bạc Friendzone Breaker hình trái tim', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: Nhựa\r\n<br>- Loại đá phụ: Xoàn Mỹ\r\n<br>- Bộ sưu tập: Friendzone Breaker\r\n<br>- Thương hiệu: BJCSilver\r\n<br>- Giới tính: Nữ', '- Đôi khuyên tai BJCSilver được thiết kế với chi tiết hình trái tim ngọt ngào, điểm xuyến những viên đá CZ sáng lấp lánh được đính một cách tinh tế, tạo nên vẻ đẹp quyến rũ và hoàn hảo, làm say đắm biết bao cô nàng.\r\n<br>- Đặc biệt với đôi bông tai này, nàng có thể kết hợp với những món trang sức bạc hoặc phụ kiện khác, thiết kế và sáng tạo nên phong cách của riêng mình và mạnh dạn phá tan bức tường vô hình bao lâu nay đã ngăn cản tình cảm của bạn.\r\n', '634000', '492000', 0, 18, 'bongtaibactraitim.png'),
(15, 2, 'Bông tay bac đính ngọc trai Her Time', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: Freshwater Pearl\r\n<br>- Loại đá phụ: Xoàn Mỹ\r\n<br>- Bộ sưu tập: Her Time\r\n<br>- Thương hiệu: BJCSilver\r\n<br>- Giới tính: Nữ', '- Her Time là một câu chuyện đầy sắc màu của cá tính, thể hiện những ước mơ xen lẫn những xúc cảm vô cùng con gái mà BJCSilver luôn biết cách sáng tạo và thể hiện qua phiên bản trang sức thời trang mới nhất của mình. \r\n<br>- Sự nổi bật của viên ngọc trai trở thành nét điểm xuyến đầy tinh tế trên sản phẩm, tạo điểm nhấn mới ấn tượng và cuốn hút. Có thể nói, ngọc trai là món trang sức quý phái, thường khó kết hợp với các set đồ trẻ trung, cá tính. Tuy nhiên, với sự kết hợp độc đáo trong thiết kế của BJCSilver, các cô nàng sẽ dễ dàng mix & match trang sức bạc được biến tấu với ngọc một cách trẻ trung, phù hợp nhất với những bộ cánh dạ tiệc nổi bật.\r\n', '726000', '613000', 0, 21, 'bongtaibachername.png'),
(16, 2, 'Vòng tay bạc đính đá BJCSilver Aura', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: Xoàn Mỹ\r\n<br>- Loại đá phụ: Sythetic\r\n<br>- Bộ sưu tập: Aura\r\n<br>- Thương hiệu: BJCSilver\r\n<br>- Giới tính: Nữ', '- Các thiết kế của AURA được tạo nên từ những viên đá Swarovski chuyển màu theo sắc độ huyền ảo của Cực quang: Xanh hồ trăn (fancy green), xanh dương ấn tượng (artic blue), tím vô cực, hồng tím thời trang (purplish pink), đỏ rượu nồng – đỏ burgundy hay trắng basic (white).\r\n<br>- Được thiết kế với kiểu dáng độc đáo điểm xuyến bởi những viên đá nhỏ xinh mang đến vẻ đẹp trẻ trung và tinh tế cho chiếc vòng tay bạc. Với thiết kế mang tính ứng dụng cao, AURA “hợp cạ” với nhiều phong cách thời trang khác biệt.', '1415000', '1335000', 0, 23, 'vongtaybacdinhda.png'),
(17, 2, 'Dây chuyền bạc Ý BJCSilver xoắn hai màu', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: Không Đá\r\n<br>- Thương hiệu: BJCSilver\r\n<br>- Giới tính: Nữ', '- Bằng việc kết hợp chất liệu bạc Ý cao cấp, sợi dây cổ bạc chính là điểm nhấn nổi bật, tô điểm thêm vẻ đẹp thanh lịch và duyên dáng cho nàng. Sự đính kết và sắp xếp những điểm nhấn một cách hoàn hảo mang đến vẻ đẹp của sự phá cách, cá tính và thời thượng cho chiếc dây cổ.\r\n<br>- Đặc biệt hơn, chiếc dây cổ sẽ trở nên ý nghĩa hơn khi trở thành món quà ghi dấu yêu thương vào những dịp quan trọng. Đây chắc chắn sẽ là thứ giúp bạn gắn kết những khoảnh khắc đáng nhớ với mình hoặc người thương.', '2195000', '1195000', 0, 6, 'dcbacyxoan.png'),
(18, 2, 'Dây chuyền nam bạc BJCSilver dây cong dập dẹp', '<br><h5>Thông Số</h5>\r\n- Bộ sưu tập: My man\r\n<br>- Thương hiệu: BJCSilver\r\n<br>- Giới tính: Nam', '- Sở hữu kiểu dây chữ cong dập dẹp, được đúc tỉ mỉ bằng máy với hình dáng chữ cong gắn kết chắn chắn và được xem là phụ kiện \"không kén trang phục \" dây chuyền nam BJCSilver sẽ giúp phái mạnh thể hiện phong cách cá tính hơn. Đồng thời, với dây chuyền bằng bạc cao cấp của thương hiệu trang sức BJCSilver sẽ giúp các chàng trai trở nên thật hoàn hảo trong mắt các nàng. ', '1250000', '775000', 0, 15, 'dcnambac.png'),
(19, 2, 'Lắc tay bạc đính đá Disney Beauty & The Beast', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: Sythetic\r\n<br>- Màu đá chính: Vàng\r\n<br>- Hình dạng đá: Tròn\r\n<br>- Bộ sưu tập: Beauty & The Beast\r\n<br>- Thương hiệu: Disney|BJCSilver\r\n<br>- Giới tính: Nữ', '- Sở hữu kiểu dáng không quá xa lạ nhưng lại cực kỳ độc đáo, chiếc lắc tay Disney|BJC được chế tác từ chất liệu bạc 92.5 khoác lên mình vẻ ngoài trẻ trung, phá cách và “high fashion”.\r\n<br>- Điểm tô cho cổ tay nàng với chiếc lắc bạc xinh xắn, đây chắc chắn sẽ là một nét chấm phá tinh tế tô điểm thêm nét cá tính, năng động và trẻ trung cho các cô gái. Tuy chỉ sở hữu thiết kế đơn giản với điểm nhấn đính đá nho nhỏ, nhưng nó lại là phụ kiện giúp các cô nàng có vẻ ngoài thanh lịch, nữ tính và trở nên nổi bật hơn bao giờ hết. ', '1435000', '1095000', 0, 23, 'lactaybac.png'),
(20, 2, 'Vòng tay bạc đính đá BJCSilver', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: CZ\r\n<br>- Màu đá chính: Trắng\r\n<br>- Hình dạng đá: Tròn\r\n<br>- Thương hiệu: BJCSilver\r\n<br>- Giới tính: Nữ', '- Những mắc xích nối tiếp nhau trong thiết kế của chiếc vòng tạo nên một vẻ đẹp thanh lịch, dịu dàng tựa như một cô nàng yêu kiều. Không những thế, nét tinh tế của sản phẩm còn được thể hiện ở sự đan xen của màu bạc thuần của chất liệu cùng những chi tiết được đính đá một cách tỉ mỉ, trông thêm phần bắt mắt và cuốn hút.', '1215000', '1050000', 0, 22, 'vongtaybac.png'),
(21, 2, 'Bông tai bạc đính ngọc trai BJCSilver', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: Freshwater Pearl\r\n<br>- Loại đá phụ: Xoàn Mỹ\r\n<br>- Thương hiệu: BJCSilver\r\n<br>- Giới tính: Nữ', '- Sự thuần khiết, quý phái và đầy nữ tính, bông tai ngọc trai ngày càng phổ biến và được phái đẹp ưa chuộng. Đối với trang phục đơn sắc và khá giản dị, việc nhấn nhá cho mình một đôi bông tai hạt ngọc trai cầu kì kết hợp giữa dáng tròn và dây dài sẽ mang đến vẻ ngoài ấn tượng. Giúp chị em phụ nữ luôn được nổi bật.\r\n<br>- Bông tai bạc BJCSilver đính ngọc trai còn thể hiện được sự sang trọng, tinh tế và đặc biệt là nét đẹp quý phái của phụ nữ. Nên đôi bông tai bạc PNJSilver đính ngọc trai được xem là món quà tuyệt vời mà phái mạnh dành tặng cho những người thương yêu của mình trong dịp đặc biệt', '645000', '537000', 0, 15, 'bongtaibacngoctrai.png'),
(22, 2, 'Vòng tay bạc Disney|BJC Frozen', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: Không gắn đá\r\n<br>- Bộ sưu tập: Frozen\r\n<br>- Thương hiệu: Disney|BJC\r\n<br>- Giới tính: Nữ', '- Sở hữu kiểu dáng không quá xa lạ nhưng lại cực kỳ độc đáo, đây chắc chắn sẽ là một nét chấm phá tinh tế tô điểm thêm nét cá tính, năng động và trẻ trung cho các cô gái. Nó sẽ là phụ kiện giúp các cô nàng có vẻ ngoài thanh lịch, nữ tính và trở nên nổi bật hơn bao giờ hết.', '1350000', '1295000', 0, 14, 'vongtaydisney.png'),
(23, 2, 'Nhẫn bạc đính đá BJCSilver My Princess', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: CZ\r\n<br>- Màu đá chính: Trắng\r\n<br>- Hình dạng đá: Tròn\r\n<br>- Bộ sưu tập: My Princess\r\n<br>- Thương hiệu: BJCSilver\r\n<br>- Giới tính: Nữ', '- Royal là dòng trang sức đại diện cho quyền năng của phái đẹp. Với bộ sưu tập trang sức nhẫn thật thời trang, thật mới mẻ này, PNJSilver gửi lời nhắn nhủ rằng \"Các cô gái ơi, hãy cứ luôn xinh đẹp như những nàng công chúa trong mắt người mình yêu và trong mắt cả thế giới quanh mình\".\r\n<br>- Với thiết kế mặt vương miện đính đá tròn thu hút, trang sức nhỏ xinh, tinh tế sẽ là bảo bối tô điểm nét quyến rũ của mỗi người phụ nữ, Bên cạnh đó, nhẫn bạc - My Princess chắc chắn sẽ là món quà bất ngờ đầy yêu thương dành cho nàng \"công chúa\" của riêng bạn.', '625000', '415000', 0, 17, 'nhanda.png'),
(24, 2, 'Nhẫn cặp bạc đính đá BJC Friendzone Breaker', '<br><h5>Thông Số</h5>\r\n<br>- Bộ sưu tập: Friendzone Breaker\r\n<br>- Thương hiệu: BJCSilver', '- Nhẫn đôi là hiện thân của sự yêu thương, là cái ôm ấm áp của người ấy, là vật minh chứng tình yêu giữa 2 người do đó nhẫn luôn là món quà ý nghĩa nhất dành tặng cho người ấy của bạn. Ngoài ra, nhẫn cặp còn là “bùa hộ mệnh” giúp bạn đánh dấu chủ quyền một cách chính đáng.\r\n', '996000', '896000', 0, 18, 'nhancapfriend.png'),
(25, 2, 'Nhẫn Vàng trắng 10K đính đá ECZ BJC', '<br><h5>Thông Số</h5>\r\n- Trọng lượng vàng tham khảo (phân vàng): 5.69685\r\n<br>- Loại đá chính: Xoàn Mỹ\r\n<br>- Màu đá chính: Trắng\r\n<br>- Thương hiệu: BJCSilver\r\n<br>- Giới tính: Nữ', '- Sở hữu thiết kế cổ điển với các chi tiết đính đá ECZ Swarovski đính tỉ mỉ, tạo nên vẻ đẹp tinh khôi, nổi bật và vô cùng sang trọng cho nhẫn vàng, đồng thời cùng với việc sử dụng chất liệu vàng trắng 10K còn mang đến vẻ đẹp quý phái và tôn vinh nét đẹp của người phụ nữ Việt trong thời hiện đại\r\n<br>- Với ý nghĩa mang lại sự may mắn và hạnh phúc, chiếc nhẫn vàng trắng đính đá ECZ – Swarovski của thương hiệu BJC chắc chắn sẽ là món quà tinh tế và ý nghĩa nhất dành tặng cho người phụ nữ mà bạn yêu thương, giúp quý cô rạng rỡ khi trưng diện.', '6523000', '4063000', 0, 27, 'nhanvang2.png'),
(26, 2, 'Nhẫn cặp bạc đính đá BJCSilver', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: CZ\r\n<br>- Màu đá chính: Trắng\r\n<br>- Hình dạng: Tròn\r\n<br>- Bộ sưu tập: Nhẫn cặp\r\n<br>- Thương hiệu: BJCSilver', '- Nhẫn cặp bạc đến từ thương hiệu trang sức BJCSilver sở hữu thiết kế theo phong cách mới kết hợp đá CZ được đính khéo léo và tinh tế, tạo nên vẻ đẹp riêng trẻ trung, năng động. Được làm từ chất liệu cao cấp, trọn bộ sản phẩm mang vẻ đẹp, phong cách mới và an toàn khi sử dụng.\r\n', '1030000', '730000', 0, 7, 'nhancapda.png'),
(27, 2, 'Nhẫn cặp bạc đính đá BJCSilver', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: CZ\r\n<br>- Màu đá chính: Trắng\r\n<br>- Hình dạng: Tròn\r\n<br>- Bộ sưu tập: Nhẫn cặp\r\n<br>- Thương hiệu: BJCSilver', '- Nhẫn BJCSilver sở hữu chữ LOVE chạm khắc một cách tinh tế kết hợp chữ L được làm nổi ấn tượng, tạo nên vẻ đẹp trẻ trung và hiện đại. Đặc biệt, nhẫn nữ đính những viên đá CZ tạo nên nét cá tính và năng động. Ngoài ra, với mẫu nhẫn này bạn có thể phối cùng những phụ kiện hoặc trang phục khác nhau tùy theo tính cách và sở thích của mình.\r\n', '879000', '679000', 0, 13, 'nhancapbacda.png'),
(28, 2, 'Bông tai bạc đính đá màu đỏ BJCSilver Fantasia', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: CZ\r\n<br>- Màu đá chính: Đỏ\r\n<br>- Hình dạng đá: Trái tim\r\n<br>- Loại đá phụ: CZ\r\n<br>- Màu đá phụ: Trắng\r\n<br>- Bộ sưu tập: Fantasia\r\n<br>- Thương hiệu: BJCSilver\r\n<br>- Giới tính: Nữ', '- Sở hữu thiết kế trẻ trung, luôn là sự lựa chọn của những cô nàng ưa chuộng phong cách tinh tế và hiện đại mà còn giúp nàng tôn lên nét kiêu sa và quyến rũ.\r\n<br>- Từ kiểu dáng thiết kế cho đến chất liệu, đôi bông tai từ BJCSilver sẽ không chỉ làm nàng hài lòng mà còn khiến bao ánh mắt phải say đắm và mê mệt. Đôi bông tai chính là nguồn cảm hứng vô tận cho nàng tự do sáng tạo, thiết kế cho mình một phong cách mới đầy tự tin và tỏa sáng.', '845000', '545000', 0, 30, 'bongtaibacdado.png'),
(29, 3, 'Vỏ Vòng tay Vàng trắng 18K BJC', '<br><h5>Thông Số</h5>\r\n- Trọng lượng vàng tham khảo (phân vàng): 51.71579\r\n<br>- Loại đá chính: Không gắn đá\r\n<br>- Loại đá phụ: Kim cương\r\n<br>- Thương hiệu: BJC\r\n<br>- Giới tính: Nữ', '- Được thiết kế theo phong cách hiện đại kết hợp những chi tiết đính kim cương sang trọng, tạo nên vẻ đẹp hoàn hảo cho sản phẩm vòng tay vàng 18K BJC. Không chỉ sang trọng, kim cương còn là loại đá cứng cỏi, bền bỉ bậc nhất hiện nay, giúp cho món trang sức của bạn trường tồn giữa dòng thời gian.\r\n<br>- Với sự kết hợp đồng điệu giữa vàng 18K và kim cương, chiếc vòng tay BJC sở hữu một vẻ đẹp vừa trẻ trung, vừa toát lên khí chất của người phụ nữ quyền lực. Với các điểm nhấn trên sản phẩm, BJC tin rằng nàng sẽ trở nên thật sự tỏa sáng và nổi bật khi trưng diện.', '252760000', '250760000', 0, 18, 'lactaykc18k.png'),
(30, 3, 'Nhẫn Kim cương Vàng trắng 14K BJC', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: Kim cương\r\n<br>- Màu đá chính: Trắng\r\n<br>- Hình dạng đá: Tròn\r\n<br>- Màu đá phụ: Trắng\r\n<br>- Loại đá phụ: Kim cương\r\n<br>- Số viên đá phụ: 94 viên\r\n<br>- Thương hiệu: BJCSilver\r\n<br>- Kích thước đá chính (tham khảo): 4.8 ly\r\n<br>- Giới tính: Nữ', '- Kim cương vốn là món trang sức mang đến niềm kiêu hãnh và cảm hứng thời trang bất tận. Sở hữu riêng cho mình món trang sức kim cương chính là điều mà ai cũng mong muốn. Chiếc nhẫn được chế tác từ vàng 14K cùng điểm nhấn kim cương với 57 giác cắt chuẩn xác, tạo nên món trang sức đầy sự sang trọng và đẳng cấp.\r\n<br>- Kim cương đã đẹp, trang sức kim cương lại càng mang sức hấp dẫn khó cưỡng. Sự kết hợp mới mẻ này chắc chắn sẽ tạo nên dấu ấn thời trang hiện đại và giúp quý cô trở nên nổi bật, tự tin và thu hút sự ngưỡng mộ của mọi người.', '103576000', '101576000', 0, 25, 'nhankc14k.png'),
(31, 3, 'Cặp nhẫn cưới Vàng trắng 10K đính đá ECZ BJC Chung Đôi', '<br><h5>Thông Số</h5>\r\n- Bộ sưu tập: Hạnh phúc vàng\r\n<br>- Thương hiệu: BJC', '- \" Nhẫn Cưới Chung Đôi \" Thu hút bởi kiểu dáng tinh xảo, hài hòa đến từng đường nét, nhẫn cưới \"Chung Đôi\" với thiết kế nhẫn nam và nhẫn nữ đồng nhất, mang đến ấn tượng về sự đồng cảm, sẻ chia.\r\n<br>- Với các dòng nhẫn cưới đa dạng, tinh tế, nhẫn cưới Hạnh Phúc Vàng là lựa chọn hoàn hảo cho các cặp đôi.\r\n<br>- Nhẫn cưới là món trang sức bạn sẽ đeo mỗi ngày, nên cần có sự chăm sóc, bảo quản phù hợp. Hãy tìm hiểu thêm về thông tin bảo hành cũng như chọn được một cặp nhẫn cưới thật ưng ý nhé.', '7877000', '5877000', 0, 16, 'nhankccapecz.png'),
(32, 3, 'Vỏ Lắc Kim cương Vàng trắng 18K BJC', '<br><h5>Thông Số</h5>\r\n- Trọng lượng vàng tham khảo (phân vàng): 50.00725\r\n<br>- Loại đá chính: Không gắn đá\r\n<br>- Loại đá phụ: Kim cương\r\n<br>- Màu đá phụ: Trắng\r\n<br>- Số viên đá phụ: 86 viên\r\n<br>- Thương hiệu: BJC\r\n<br>- Ổ hột: 7.0 ly\r\n<br>- Giới tính: Nữ', '- Được thiết kế theo phong cách hiện đại kết hợp những chi tiết đính kim cương sang trọng, tạo nên vẻ đẹp hoàn hảo cho sản phẩm lắc tay vàng 18K BJC. Không chỉ sang trọng, kim cương còn là loại đá cứng cỏi, bền bỉ bậc nhất hiện nay, giúp cho món trang sức của bạn trường tồn giữa dòng thời gian.\r\n<br>- Với sự kết hợp đồng điệu giữa vàng 18K và kim cương, chiếc lắc tay BJC sở hữu một vẻ đẹp vừa trẻ trung, vừa toát lên khí chất của người phụ nữ quyền lực. Với các điểm nhấn trên sản phẩm, BJC tin rằng nàng sẽ trở nên thật sự tỏa sáng và nổi bật khi trưng diện.', '183611000', '182611000', 0, 10, 'lackimcuong.png'),
(33, 3, 'Lắc tay Kim cương Vàng trắng 14K BJC', '<br><h5>Thông Số</h5>\r\n- Trọng lượng vàng tham khảo (phân vàng): 44.70385\r\n<br>- Loại đá chính: Kim cương\r\n<br>- Màu đá chính: Trắng\r\n<br>- Hình dạng đá: Tròn\r\n<br>- Thương hiệu: BJC\r\n<br>- Giới tính: Nữ', '- Với đặc tính là loại đá quý cứng nhất, Kim cương được xem là bảo vật trong các loại đá quý, khiến ai cũng khao khát sở hữu. Mang đến hơi thở hiện đại trên thiết kế lắc tay kim cương mới mẻ, BJC tinh tế sắp đặt từng viên kim cương trên nền vàng 14K, tạo nên phiên bản trang sức đầy đẳng cấp và sang trọng.\r\n<br>- Không chỉ vậy, trang sức kim cương độc đáo này còn giúp nàng khoe trọn vẻ đẹp kiêu kỳ và quyến rũ của mình. Cùng thiết kế cầu kỳ, nổi bật, món trang sức là “trợ thủ đắc lực” giúp nàng trông sang trọng, quý phái và quyền lực trong những buổi dạ tiệc.', '109666000', '99666000', 0, 11, 'lactaykcvang.png'),
(34, 3, 'Mặt dây chuyền Kim cương Vàng trắng 14K BJC', '<br><h5>Thông Số</h5>\r\n- Trọng lượng vàng tham khảo (phân vàng): 2.28500\r\n<br>- Loại đá chính: Kim Cương\r\n<br>- Thương hiệu: BJC\r\n<br>- Kích thước đá chính (tham khảo): 3.5 ly\r\n<br>- Color (Màu sắc/ Nước kim cương): F\r\n<br>- Clarity (Độ tinh khiết): SI1\r\n<br>- Giới tính: Nữ', '- BJC xin giới thiệu một món trang sức đặc biệt, giúp nàng thu hút mọi sự chú ý xung quanh với chiếc mặt dây chuyền sở hữu chi tiết Kim cương đính một cách tỉ mỉ trên chất liệu vàng 14K.\r\n<br>- Không chỉ sang trọng, kim cương còn là loại đá cứng cỏi, bền bỉ bậc nhất hiện nay, giúp cho món trang sức của bạn trường tồn giữa dòng thời gian. Với sự kết hợp đồng điệu giữa vàng 14K và kim cương, chiếc mặt dây chuyền BJC sở hữu một vẻ đẹp vừa trẻ trung, vừa toát lên khí chất của người phụ nữ quyền lực.', '18204000', '16204000', 0, 20, 'dckimcuong.png'),
(35, 3, 'Nhẫn Kim cương Vàng 14K BJCSilver', '<br><h5>Thông Số</h5>\r\n- Trọng lượng vàng tham khảo (phân vàng): 9.77667\r\n<br>- Loại đá chính: Kim cương\r\n<br>- Màu đá chính: Trắng\r\n<br>- Hình dạng đá: Tròn\r\n<br>- Loại đá phụ: Kim cương\r\n<br>- Màu đá phụ: Trắng\r\n<br>- Thương hiệu: BJCSilver\r\n<br>- Kích thước đá chính (tham khảo): 4.5 ly\r\n<br>- Color (Màu sắc/ Nước kim cương): E\r\n<br>- Clarity (Độ tinh khiết): SI1\r\n<br>- Giấy kiểm định: Có\r\n<br>- Giới tính: Nữ', '- Kim cương vốn là món trang sức mang đến niềm kiêu hãnh và cảm hứng thời trang bất tận. Sở hữu riêng cho mình món trang sức kim cương chính là điều mà ai cũng mong muốn. Chiếc nhẫn được chế tác từ vàng 14K cùng điểm nhấn kim cương với 57 giác cắt chuẩn xác, tạo nên món trang sức đầy sự sang trọng và đẳng cấp.\r\n<br>- Kim cương đã đẹp, trang sức kim cương lại càng mang sức hấp dẫn khó cưỡng. Sự kết hợp mới mẻ này chắc chắn sẽ tạo nên dấu ấn thời trang hiện đại và giúp quý cô trở nên nổi bật, tự tin và thu hút sự ngưỡng mộ của mọi người.\r\n\r\n', '55790000', '54790000', 0, 24, 'nhankc.png'),
(36, 3, 'Nhẫn Kim cương Vàng 14K BJC True Love', '<br><h5>Thông Số</h5>\r\n- Trọng lượng vàng tham khảo (phân vàng): 7.43800\r\n<br>- Loại đá chính: Kim cương\r\n<br>- Thương hiệu: BJCSilver\r\n<br>- Kích thước đá chính (tham khảo): 5.0 ly\r\n<br>- Color (Màu sắc/ Nước kim cương): E\r\n<br>- Clarity (Độ tinh khiết): SI1\r\n<br>- Giấy kiểm định: Có\r\n<br>- Giới tính: Nữ', '- Những thiết kế trang sức Kim cương được xem như “vũ khí tối thượng” giúp cho phái đẹp khoe trọn sắc xuân của mình. Đồng thời, dưới bàn tay chế tác tài hoa, những món nữ trang là sự biến hóa nghệ thuật sắp đặt với những viên kim cương sang trọng trên bề mặt của mỗi thiết kế. Cùng với đó, kiểu dáng phong phú và chất liệu vàng cũng góp phần quan trọng mang đến một sản phẩm hoàn chỉnh tuyệt đối, giúp cho phái đẹp tùy ý lựa chọn theo sở thích của mình.', '57154000', '56154000', 0, 28, 'nhankctruelove1.png'),
(37, 3, 'Mặt dây chuyền Kim cương Vàng trắng 14K BJC', '<br><h5>Thông Số</h5>\r\n- Trọng lượng vàng tham khảo (phân vàng): 3.54167\r\n<br>- Loại đá chính: Kim Cương\r\n<br>- Màu đá chính: Trắng\r\n<br>- Hình dạng đá: Tròn\r\n<br>- Bộ sưu tập: Hoàng gia - Royal\r\n<br>- Thương hiệu: BJC\r\n<br>- Kích thước đá chính (tham khảo): 4.3 ly\r\n<br>- Color (Màu sắc/ Nước kim cương): E\r\n<br>- Clarity (Độ tinh khiết): SI1\r\n<br>- Giới tính: Nữ', '- Vượt lên trên tất cả những giá trị vật chất của kim loại quý giá, ánh sáng vĩnh cửu của kim cương luôn có sức lôi cuốn không giới hạn và mãi trường tồn cùng thời gian. Các tuyệt tác trang sức Kim Cương BJC không chỉ tôn vinh vẻ đẹp mà còn khẳng định phong cách, đẳng cấp, niềm đam mê và mang lại thành công cho chủ nhân.\r\n<br>- Trang sức Kim Cương BJC luôn lựa chọn những viên kim cương Round Brilliant Cut với 57 giác cắt, đó cũng là tiêu chí hoàn hảo, và chuẩn mực nhất cho trang sức kim cương.', '43913000', '41913000', 0, 7, 'dckimcuong14k.png'),
(38, 3, 'Cặp nhẫn cưới Kim cương Vàng 18K BJC Chung Đôi', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: Kim cương\r\n<br>- Màu đá chính: Trắng\r\n<br>- Hình dạng đá: Tròn\r\n<br>- Bộ sưu tập: Hạnh phúc vàng\r\n<br>- Thương hiệu: BJC', '- Chiếc nhẫn trong ngày cưới có rất nhiều ý nghĩa, mỗi ý nghĩa sẽ phù hợp riêng với mong muốn và tính cách của từng cặp đôi trong hôn nhân. Sở hữu thiết kế độc đáo với chi tiết tinh xảo kết hợp điểm nhấn kim cương sang trọng, nhẫn cưới Chung đôi mang vẻ đẹp hiện đại và thời thượng. Bên cạnh đó, Nhẫn cưới kim cương luôn là một trong những lựa chọn hàng đầu của các cặp vợ chồng vì vẻ đẹp và chính ý nghĩa vĩnh cửu của chúng.\r\n<br>- Sự đối lập, tính cách là những thách thức không nhỏ trong bất cứ mối quan hệ, tuy nhiên, nếu biết dung hòa giữa hai tính cách để hoàn thiện và đón nhận sự khác biệt, chắc chắn mối quan hệ mà bạn đang xây dựng và vun đắp sẽ mang lại nhiều thú vị. Và nhẫn cưới chính là cột mốc quan trọng đánh dấu hành trình tìm kiếm và xây dựng hạnh phúc của hai người.', '20106000', '18106000', 0, 34, 'nhankccap.png'),
(39, 3, 'Cặp nhẫn cưới Kim cương Vàng 18K BJC True Love', '<br><h5>Thông Số</h5>\r\n- Thương hiệu: BJC', '- BJC mang đến những thiết kế nhẫn cưới với phong cách hiện đại, giúp cho cặp đôi có nhiều sự lựa chọn. Cặp nhẫn cưới BJC được thiết kế đơn giản nhưng lại sở hữu điểm nhấn Kim cương sang trọng, đã tạo nên một sản phẩm trang sức cưới thanh lịch và thời thượng.\r\n<br>- Nhẫn cưới là nhẫn dành cho nam và nữ, ngoài ý nghĩa gắn bó, tin tưởng thì nó còn là biểu trưng cho sự thủy chung, lâu bền, mang ý nghĩa nghiêm túc hơn vì kể từ khi họ trao cho nhau họ đã chính thức làm vợ chồng. Nhẫn cưới chính là tình yêu của cả hai để họ cùng nhau vượt qua khó khăn, đau khổ trong cuộc sống và gắn bó với nhau đến cuối cuộc đời.', '23704000', '20704000', 0, 29, 'nhankccaptruelove.png'),
(40, 3, 'Cặp nhẫn cưới Kim cương Vàng trắng 14K Vàng Son', '<br><h5>Thông Số</h5>\r\n- Loại đá chính: Kim cương\r\n<br>- Màu đá chính: Trắng\r\n<br>- Hình dạng đá: Tròn\r\n<br>- Bộ sưu tập: Hạnh phúc vàng\r\n<br>- Thương hiệu: BJC', '- Nhẫn cưới \"Vàng Son\" là nét phá cách hiện đại từ sự kết hợp giữa nhẫn nữ mềm mại và nhẫn nam mạnh mẽ. Tuy khác biệt về kiểu dáng nhưng cặp nhẫn vẫn giữ được sự đồng nhất bởi những chi tiết tạo điểm nhấn đầy tinh tế, mang ý nghĩa ngợi ca sự thuỷ chung, son sắt. Với chất liệu vàng trắng 14K sang trọng, sản phẩm còn được đính thêm những viên kim cương cao cấp, tô điểm vẻ đẹp kiêu sa và thanh lịch cho các đôi phu thê. Bên cạnh đó, kim cương với một ý nghĩa về sự bền bỉ và cứng cáp sẽ đại diện thể hiện cho sự viên mãn, đong đầy của tình yêu nơi bạn.', '30000000', '27663000', 0, 16, 'nhankccapvangtrang.png'),
(41, 3, 'Mặt dây chuyền Kim cương Vàng trắng 18K BJC', '<br><h5>Thông Số</h5>\r\n- Trọng lượng vàng tham khảo (phân vàng): 5.95000\r\n<br>- Loại đá chính: Kim Cương\r\n<br>- Màu đá chính: Xanh nước biển\r\n<br>- Hình dạng đá: Tròn\r\n<br>- Bộ sưu tập: Hoàng gia - Royal\r\n<br>- Thương hiệu: BJC\r\n<br>- Kích thước đá chính (tham khảo): 5.1 ly\r\n<br>- Clarity (Độ tinh khiết): SI1\r\n<br>- Giấy kiểm định: Có\r\n<br>- Giới tính: Nữ', '- BJC xin giới thiệu một món trang sức đặc biệt, giúp nàng thu hút mọi sự chú ý xung quanh với chiếc mặt dây chuyền sở hữu chi tiết Kim cương đính một cách tỉ mỉ trên chất liệu vàng 18K.\r\n<br>- Không chỉ sang trọng, kim cương còn là loại đá cứng cỏi, bền bỉ bậc nhất hiện nay, giúp cho món trang sức của bạn trường tồn giữa dòng thời gian. Với sự kết hợp đồng điệu giữa vàng 18K và kim cương, chiếc mặt dây chuyền BJC sở hữu một vẻ đẹp vừa trẻ trung, vừa toát lên khí chất của người phụ nữ quyền lực.', '92892000', '91892000', 0, 17, 'dckimcuong18k.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(100) CHARACTER SET utf8 NOT NULL,
  `slider_caption` text CHARACTER SET utf8 DEFAULT NULL,
  `slider_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `slider_caption`, `slider_active`) VALUES
(1, 'banner.png', NULL, 1),
(2, 'banner1.jpg', NULL, 0),
(3, 'b3.jpg', NULL, 0),
(4, 'b1.jpg', NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD PRIMARY KEY (`baiviet_id`),
  ADD KEY `fk_danhmuctin_id` (`danhmuctin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  ADD PRIMARY KEY (`danhmuctin_id`);

--
-- Indexes for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`donhang_id`),
  ADD KEY `fk_sanpham_id` (`sanpham_id`),
  ADD KEY `fk_khachhang_id` (`khachhang_id`);

--
-- Indexes for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`),
  ADD KEY `fk_sanphamid` (`sanpham_id`);

--
-- Indexes for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Indexes for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`lienhe_id`);

--
-- Indexes for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`),
  ADD KEY `fk_category_id` (`category_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  MODIFY `baiviet_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_danhmuc_tin`
--
ALTER TABLE `tbl_danhmuc_tin`
  MODIFY `danhmuctin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `lienhe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_baiviet`
--
ALTER TABLE `tbl_baiviet`
  ADD CONSTRAINT `fk_danhmuctin_id` FOREIGN KEY (`danhmuctin_id`) REFERENCES `tbl_danhmuc_tin` (`danhmuctin_id`);

--
-- Constraints for table `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD CONSTRAINT `fk_khachhang_id` FOREIGN KEY (`khachhang_id`) REFERENCES `tbl_khachhang` (`khachhang_id`),
  ADD CONSTRAINT `fk_sanpham_id` FOREIGN KEY (`sanpham_id`) REFERENCES `tbl_sanpham` (`sanpham_id`);

--
-- Constraints for table `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD CONSTRAINT `fk_sanphamid` FOREIGN KEY (`sanpham_id`) REFERENCES `tbl_sanpham` (`sanpham_id`);

--
-- Constraints for table `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD CONSTRAINT `fk_category_id` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
