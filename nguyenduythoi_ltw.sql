-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2023 at 07:05 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nguyenduythoi_ltw`
--

-- --------------------------------------------------------

--
-- Table structure for table `0066_banner`
--

CREATE TABLE `0066_banner` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã Slider',
  `name` varchar(255) NOT NULL COMMENT 'Tên Slider',
  `link` varchar(255) NOT NULL COMMENT 'Liên kết',
  `position` varchar(100) NOT NULL COMMENT 'Vị trí',
  `image` varchar(100) NOT NULL COMMENT 'Hình ảnh',
  `sort_order` int(10) UNSIGNED NOT NULL COMMENT 'Thứ tự',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0066_banner`
--

INSERT INTO `0066_banner` (`id`, `name`, `link`, `position`, `image`, `sort_order`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Khuyễn mãi hè 2020', 'http://domain.com/index.php?option=page&cat=khuyen-mai-he', 'slideshow', 'slider_1.webp', 1, '2020-06-30 17:12:13', 1, '2022-09-02 19:07:10', 1, 1),
(2, 'Khuyễn mãi mùa khai giảng', 'http://domain.com/index.php?option=page&cat=khuyen-mai-mua-khai-giang', 'slideshow', 'slider_2.webp', 2, '2020-06-30 17:12:13', 1, '2022-09-02 19:07:08', 1, 1),
(3, 'Khuyễn mãi giáng sinh', 'http://domain.com/index.php?option=page&cat=khuyen-giang-sinh', 'slideshow', 'slider_3.webp', 3, '2020-06-30 17:12:13', 1, '2020-06-30 17:12:13', 1, 1),
(4, 'Khuyễn mãi Covid', 'http://domain.com/index.php?option=page&cat=khuyen-mai-covid', 'slideshow', 'slider_1.jpg', 4, '2020-06-30 17:12:13', 1, '2022-11-20 04:24:40', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `0066_brand`
--

CREATE TABLE `0066_brand` (
  `id` int(11) NOT NULL COMMENT 'Mã Loại',
  `name` varchar(255) NOT NULL COMMENT 'Tên loại SP',
  `slug` varchar(255) NOT NULL COMMENT 'SLug Loại SP',
  `sort_order` int(11) NOT NULL DEFAULT 1 COMMENT 'Thứ tự',
  `image` varchar(255) DEFAULT '' COMMENT 'Hình đại diện',
  `description` varchar(255) DEFAULT NULL COMMENT 'Từ khóa SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Người tạo',
  `updated_at` timestamp NULL DEFAULT NULL COMMENT 'Ngày sửa',
  `updated_by` tinyint(4) DEFAULT NULL COMMENT 'Người sửa',
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0066_brand`
--

INSERT INTO `0066_brand` (`id`, `name`, `slug`, `sort_order`, `image`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Việt Nam', 'viet-nam', 1, '', 'Từ khóa SEO', '2020-07-03 02:06:19', 1, '2023-10-23 02:19:51', 7, 1),
(2, 'Quảng Châu', 'quang-chau', 2, '', 'Từ khóa SEO', '2020-07-03 02:06:19', 1, '2022-11-19 04:33:57', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `0066_category`
--

CREATE TABLE `0066_category` (
  `id` int(11) NOT NULL COMMENT 'Mã Loại',
  `name` varchar(255) NOT NULL COMMENT 'Tên loại SP',
  `slug` varchar(255) NOT NULL COMMENT 'SLug Loại SP',
  `parent_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Mã cấp cha',
  `sort_order` int(11) NOT NULL COMMENT 'Thứ tự',
  `image` varchar(255) DEFAULT NULL COMMENT 'Hình đại diện',
  `description` varchar(255) NOT NULL COMMENT 'Từ khóa SEO',
  `created_at` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Người tạo',
  `updated_at` datetime DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(4) DEFAULT 0 COMMENT 'Người sửa',
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0066_category`
--

INSERT INTO `0066_category` (`id`, `name`, `slug`, `parent_id`, `sort_order`, `image`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Iphone', 'i-phone', 0, 1, 'iphone1.webp', 'mobile', '2022-11-22 18:17:31', 1, '2022-11-22 18:17:31', 0, 1),
(2, 'Macbook', 'mac-book', 0, 1, 'macbook.webp', 'computer', '2023-11-16 05:20:55', 14, '2023-11-16 05:23:03', 14, 1);

-- --------------------------------------------------------

--
-- Table structure for table `0066_contact`
--

CREATE TABLE `0066_contact` (
  `id` int(11) NOT NULL COMMENT 'Mã liên hệ',
  `name` varchar(255) NOT NULL COMMENT 'Họ và tên',
  `email` varchar(100) NOT NULL COMMENT 'Email',
  `phone` varchar(100) NOT NULL COMMENT 'Điện thoại',
  `title` varchar(255) NOT NULL COMMENT 'Tiêu đề',
  `content` mediumtext NOT NULL COMMENT 'Chi tiết',
  `replay_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Nội dung liên hệ',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày liên hệ',
  `updated_at` timestamp NULL DEFAULT current_timestamp() COMMENT 'Ngày trả lời',
  `updated_by` tinyint(4) DEFAULT 0 COMMENT 'Người trả lời',
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT 'Tráng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0066_contact`
--

INSERT INTO `0066_contact` (`id`, `name`, `email`, `phone`, `title`, `content`, `replay_id`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(8, 'ten moi', '1212', '1212', '1212', '1212', NULL, '2023-11-15 11:43:39', '2023-11-15 11:43:39', 0, 1),
(9, 'ten moi', 'dtmd@gmail.com', '123', 'yyy', 'ttt', NULL, '2023-11-15 11:51:43', '2023-11-15 11:51:43', 0, 1),
(10, 'duy thoi ', 'dtmd@gmail.com', '123', 'test', 'test', NULL, '2023-11-15 20:27:09', '2023-11-15 20:27:09', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `0066_menu`
--

CREATE TABLE `0066_menu` (
  `id` int(11) NOT NULL COMMENT 'Mã Menu',
  `name` varchar(255) NOT NULL COMMENT 'Tên Menu',
  `link` varchar(255) NOT NULL COMMENT 'Liên kết',
  `type` varchar(50) NOT NULL COMMENT 'Kiểu Menu',
  `table_id` int(11) NOT NULL DEFAULT 0 COMMENT 'Mã trong bảng',
  `sort_order` int(11) NOT NULL DEFAULT 0 COMMENT 'Thứ tự',
  `position` varchar(255) NOT NULL COMMENT 'Vị trí',
  `level` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL COMMENT 'Mã cấp cha',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày Tạo',
  `created_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0066_menu`
--

INSERT INTO `0066_menu` (`id`, `name`, `link`, `type`, `table_id`, `sort_order`, `position`, `level`, `parent_id`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 'Trang chủ', 'http://localhost/NguyenDuyThoi_2122110066/', 'custom', 0, 2, 'mainmenu', 1, 0, '2023-11-15 23:49:34', 7, '2023-11-15 23:49:34', 1, 1),
(2, 'Giới thiệu', 'index.php?option=page&cat=gioi-thieu', 'page', 39, 2, 'mainmenu', 1, 0, '2023-11-15 23:49:40', 7, '2023-11-15 23:49:40', 1, 1),
(3, 'Laptop', 'index.php?option=product&cat=mac-book', 'category', 1, 3, 'mainmenu', 1, 0, '2023-11-15 23:49:43', 7, '2023-11-15 23:49:43', 1, 1),
(4, 'Iphone', 'index.php?option=product&cat=i-phone', 'category', 1, 4, 'mainmenu', 0, 0, '2023-11-15 23:49:44', 7, '2023-11-15 23:49:44', 1, 1),
(16, 'Giới thiệu', 'index.php?option=page&cat=gioi-thieu', 'page', 39, 1, 'footermenu', 1, 0, '2022-11-22 06:55:36', 1, '2022-11-29 19:31:59', 1, 0),
(17, 'Chính Sách Đổi Hàng', 'index.php?option=page&cat=chinh-sach-doi-hang', 'page', 38, 1, 'footermenu', 1, 0, '2023-11-15 22:17:55', 14, '2023-11-15 22:17:55', 1, 1),
(18, 'Chính sách bảo hành', 'index.php?option=page&cat=chinh-sach-bao-hanh', 'page', 37, 2, 'footermenu', 1, 0, '2022-11-22 06:55:36', 1, '2023-07-31 23:17:16', 1, 1),
(19, 'Chính sách giao hàng', 'index.php?option=page&cat=chinh-sach-giao-hang', 'page', 36, 2, 'footermenu', 1, 0, '2022-11-22 06:55:36', 1, '2023-07-31 23:17:16', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `0066_order`
--

CREATE TABLE `0066_order` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã đơn hàng',
  `user_id` int(11) NOT NULL COMMENT 'Mã khách hàng',
  `deliveryaddress` varchar(255) NOT NULL COMMENT 'Địa chỉ người nhận',
  `deliveryname` varchar(100) NOT NULL COMMENT 'Tên người nhận',
  `deliveryphone` varchar(120) NOT NULL COMMENT 'Điện thoại người nhận',
  `deliveryemail` varchar(120) NOT NULL COMMENT 'Email ngươig nhận',
  `note` varchar(1000) NOT NULL COMMENT 'Code đơn hàng',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `updated_at` timestamp NULL DEFAULT current_timestamp() COMMENT 'Ngày cập nhật',
  `updated_by` tinyint(3) UNSIGNED DEFAULT NULL COMMENT 'Người cập nhật',
  `status` tinyint(3) UNSIGNED NOT NULL COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0066_order`
--

INSERT INTO `0066_order` (`id`, `user_id`, `deliveryaddress`, `deliveryname`, `deliveryphone`, `deliveryemail`, `note`, `created_at`, `updated_at`, `updated_by`, `status`) VALUES
(5, 7, 'Gia Lai', 'Duy Thời', '123456789', 'duythoi@gmail.com', 'Không chú ý', '2023-11-14 02:11:51', '2023-11-14 02:11:51', NULL, 1),
(6, 14, 'gia lai', 'Ng Duy Thời', '123', 'dtmd@gmail.com', 'Không chú ý', '2023-11-15 20:26:18', '2023-11-15 20:26:19', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `0066_orderdetail`
--

CREATE TABLE `0066_orderdetail` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã CT Đơn hàng',
  `order_id` int(10) UNSIGNED NOT NULL COMMENT 'Mã đơn hàng',
  `product_id` int(10) UNSIGNED NOT NULL COMMENT 'Mã sản phẩm',
  `price` float(12,2) NOT NULL COMMENT 'Giá sản phẩm',
  `qty` int(10) UNSIGNED NOT NULL COMMENT 'Số lượng',
  `amount` float(12,2) NOT NULL COMMENT 'Thành tiền'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0066_orderdetail`
--

INSERT INTO `0066_orderdetail` (`id`, `order_id`, `product_id`, `price`, `qty`, `amount`) VALUES
(10, 5, 16, 10000.00, 4, 40000.00),
(11, 5, 13, 10000.00, 3, 30000.00),
(12, 5, 14, 10000.00, 3, 30000.00),
(13, 6, 36, 0.00, 1, 0.00),
(14, 6, 23, 10000.00, 4, 40000.00);

-- --------------------------------------------------------

--
-- Table structure for table `0066_page`
--

CREATE TABLE `0066_page` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã bài viết',
  `topic_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Mã chủ đề',
  `title` varchar(1000) NOT NULL COMMENT 'Tiêu đề bài viết',
  `slug` varchar(1000) NOT NULL COMMENT 'Slug tiêu đề',
  `detail` longtext NOT NULL COMMENT 'Chi tiết bài viết',
  `image` varchar(1000) NOT NULL COMMENT 'Hình ảnh',
  `type` varchar(10) NOT NULL DEFAULT 'post' COMMENT 'Kiểu bài viết',
  `description` varchar(255) NOT NULL COMMENT 'Từ khóa SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0066_page`
--

INSERT INTO `0066_page` (`id`, `topic_id`, `title`, `slug`, `detail`, `image`, `type`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, NULL, 'bài test-doi ten', 'bai-test', 'khong co gi', 'bai-test.png', 'page', 'khong luon', '2023-11-04 18:43:18', 1, '2023-11-04 13:11:55', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `0066_post`
--

CREATE TABLE `0066_post` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã bài viết',
  `topic_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'Mã chủ đề',
  `title` varchar(1000) NOT NULL COMMENT 'Tiêu đề bài viết',
  `slug` varchar(1000) NOT NULL COMMENT 'Slug tiêu đề',
  `detail` longtext NOT NULL COMMENT 'Chi tiết bài viết',
  `image` varchar(1000) NOT NULL COMMENT 'Hình ảnh',
  `type` varchar(10) NOT NULL DEFAULT 'post' COMMENT 'Kiểu bài viết',
  `description` varchar(255) NOT NULL COMMENT 'Từ khóa SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(4) NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0066_post`
--

INSERT INTO `0066_post` (`id`, `topic_id`, `title`, `slug`, `detail`, `image`, `type`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, NULL, 'test csdl-đổi tên.', 'test-csdl', 'khong co gi', 'test-csdl.png', 'post', 'baby-test', '2023-11-04 17:31:25', 1, '2023-11-04 22:48:26', 7, 2),
(43, 0, 'hdhdhhđ', 'gioi-thieu', 'aoijas', 'gioi-thieu.png', 'page', '', '2023-11-14 23:49:20', 7, '2023-11-15 12:15:51', 14, 2),
(44, 0, 'DUYTHOIMOBILE', 'gioi-thieu', 'Giới thiệu về DUYTHOIMOBILE\nLà công ty hoạt động trong lĩnh vực bán lẻ và sửa chữa các sản phẩm công nghệ và lĩnh vực truyền thông giải trí bao gồm 3 công ty thành viên DUYTHOIMOBILE - Điện thoại vui - Smedia và chuỗi trung tâm bảo hành Apple AASP với quy mô hơn 2.000 nhân viên:\n\nDUYTHOIMOBILE\nSau hơn 10 năm vận hành và phát triển không ngừng, hệ thống bán lẻ DUYTHOIMOBILE liên tục mở rộng với chuỗi hơn 100 cửa hàng trên toàn quốc và tự hào là 1 trong 5 hệ thống lớn nhất tại Việt Nam trong lĩnh vực công nghệ.\n\nCửa hàng DUYTHOIMOBILE\n\nĐiện thoại vui\nTháng 5/2017, Điện Thoại Vui chính thức thành lập với tiền thân là trung tâm bảo hành của DUYTHOIMOBILE. Đến nay, Điện Thoại Vui đã có hơn 21 cửa hàng được đánh giá là một trong những là chuỗi cửa hàng sửa chữa ĐTDĐ số 1 tại Hồ Chí Minh và Hà Nội, là điểm đến uy tín cung cấp các dịch vụ sửa chữa chất lượng dành cho khách hàng.', '', 'page', '', '2023-11-15 12:15:49', 14, '2023-11-15 12:15:49', 1, 1),
(45, 0, 'Chính sách giao hàng', 'chinh-sach-giao-hang', 'THÔNG TIN THANH TOÁN VÀ GIAO HÀNG\r\n\r\n* Khách hàng từ Đà Nẵng ra phía Bắc áp dụng giá bán của DUYTHOIMOBILE Miền Bắc.\r\n\r\n* Khách hàng từ Quảng Nam vào phía Nam áp dụng giá bán của DUYTHOIMOBILE Miền Nam.\r\n\r\n* Mua hàng online bằng cách đặt hàng trên website hoặc các hình thức khác:gọi tổng đài miễn phí 18002097; chat trên Website; Facebook; Email,...\r\n\r\n* Các cách thanh toán mua hàng:\r\n\r\na. Giao hàng và thanh toán tại nhà:\r\nb. Chuyển khoản hoặc Thanh toán online trên website miễn phí với các loại thẻ tín dụng, ATM, Internet Banking, ZaloPay, Moca, VNPay,... \r\n- Khách hàng có thể thực hiện thanh toán chuyển khoản qua VietQR cực kỳ đơn giản, chỉ bằng một thao tác quét mã, tất cả mọi thứ sẽ được thực hiện tự động, không cần nhập thông tin số tài khoản, không cần nhập số tiền và nội dung chuyển khoản. (Xem hướng dẫn thanh toán qua Viet-QR tại đây)\r\n\r\nc. Mua hàng trả góp:\r\n- Trả góp online hơn 20 loại thẻ tín dụng với lựa chọn mua trả góp thẻ tín dụng (xem thêm thanh toán trả góp trực tuyến Alepay)\r\n\r\n- Trả góp qua công ty tài chính: xét duyệt hồ sơ online - nhận sản phẩm tại cửa hàng.\r\n\r\nd. Mua hàng xuất hóa đơn VAT cho công ty:\r\n- Để đảm bảo hoá đơn VAT cho tổ chức - công ty hợp lệ, khi mua hàng có hoá đơn trên 20 triệu đồng, quý khách vui lòng thực hiện việc thanh toán bằng hình thức CHUYỂN KHOẢN vào tài khoản công ty của CellphoneS theo thông tin dưới đây theo cú pháp:\r\n\r\nMã đơn hàng - SĐT người mua - Tên khách hàng', '', 'page', '', '2023-11-15 12:17:56', 14, '2023-11-15 12:17:56', 1, 1),
(46, 0, 'Chính sách đổi hàng', 'chinh-sach-doi-hang', 'Điều kiện đổi trả tại Cellphones:\r\nMáy: Như mới, không xước xát, không dán decal, hình trang trí.\r\nMáy cũ: Có tình trạng sản phẩm như lúc mới mua.\r\nHộp: Như mới, không móp méo, rách, vỡ, bị viết, vẽ, quấn băng dính, keo; có Serial/IMEI trên hộp trùng với thân máy.\r\nPhụ kiện và quà tặng: Còn đầy đủ, nguyên vẹn, không móp méo xước xát hoặc bị hư hại trong quá trình sử dụng.\r\nTài khoản: Máy đã đã được đăng xuất khỏi tất cả các tài khoản như: iCloud, Google Account, Mi Account,…\r\n(*) Lỗi từ phía Nhà sản xuất là các lỗi bao gồm: Lỗi nguồn, lỗi trên mainboard, ổ cứng, màn hình và các linh kiện phần cứng bên trong.\r\nVí dụ: Sọc màn hình, tràn màu, loa rè, màn hình có từ 3 điểm chết trở lên hoặc 1 điểm chết có kích thước lớn hơn 1mm.', '', 'page', '', '2023-11-15 12:22:35', 14, '2023-11-15 12:22:35', 1, 1),
(47, 0, 'Chính sách bảo hành', 'chinh-sach-bao-hanh', 'Đổi mới 30 ngày miễn phí tại CellPhoneS\r\nSản phẩm tại CellPhoneS được khẳng định thời gian đổi mới miễn phí lên đến 30 ngày\r\n\r\nMáy công ty, Macbook đổi mới miễn phí trong 30 ngày:\r\n\r\nTrong 30 ngày trả hoàn tiền trừ phí 15% trên giá hiện tại\r\nSau 30 ngày nhập lại máy theo giá thoả thuận\r\nMáy Android nhập khẩu/ Máy iPhone/ iPad nhập khẩu /Máy cũ, Macbook cũ  miễn phí đổi mới trong 15 ngày:\r\n\r\nTrong 15 ngày nhập lại máy trừ phí 15% trên giá hiện tại\r\nSau 15 ngày nhập lại máy theo giá thoả thuận\r\nMáy cũ được đổi miễn phí trong 3 ngày đầu\r\nNếu không còn máy để đổi trong thời gian này, khách hàng có thể đổi sang sản phẩm khác (bù/ trừ chênh lệch) hoặc hoàn lại tiền\r\nPhụ kiện cao cấp (> 1,000,000đ) đổi mới miễn phí trong 15 ngày\r\n\r\nBảo hành mở rộng 15 ngày Trong 7 ngày đầu, Máy không lỗi và khách hàng trả thì Trừ phí 50%', '', 'page', '', '2023-11-15 12:23:50', 14, '2023-11-15 12:23:50', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `0066_product`
--

CREATE TABLE `0066_product` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã sản phẩm',
  `category_id` int(10) UNSIGNED NOT NULL COMMENT 'Mã loại sản phẩm',
  `brand_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(1000) NOT NULL COMMENT 'Tên sản phẩm',
  `slug` varchar(1000) NOT NULL COMMENT 'Slug tên sản phẩm',
  `image` varchar(255) NOT NULL COMMENT 'Hình ảnh',
  `detail` mediumtext NOT NULL COMMENT 'Chi tiết',
  `qty` smallint(5) UNSIGNED NOT NULL COMMENT 'Số lượng',
  `price` float(12,2) NOT NULL COMMENT 'Giá',
  `pricesale` float(12,3) NOT NULL COMMENT 'Giá khuyến mãi',
  `description` varchar(255) NOT NULL COMMENT 'Từ khóa SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0066_product`
--

INSERT INTO `0066_product` (`id`, `category_id`, `brand_id`, `name`, `slug`, `image`, `detail`, `qty`, `price`, `pricesale`, `description`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(1, 2, 0, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook', 'macbook23.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 3, 378000.00, 378000.000, 'ÁO LEN NAM - TOTODAY - ÁO LEN SỌC LỚN MÀU', '2022-11-22 04:40:37', 1, '2022-11-22 04:40:37', 1, 1),
(2, 2, 1, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook', 'macbook22.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 378000.00, 378000.000, 'ÁO LEN NAM - TOTODAY - ÁO LEN SỌC PHỐI MÀU', '2022-11-22 04:42:49', 1, '2022-11-22 04:42:49', 1, 1),
(3, 2, 1, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook-m4', 'macbook21.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 378000.00, 378000.000, 'ÁO LEN NAM - TOTODAY - ÁO LEN TRAFFIC', '2022-11-22 04:48:35', 1, '2022-11-22 04:48:35', 1, 1),
(4, 2, 1, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook-m5', 'macbook20.webp', '<h1>&Aacute;O LEN NAM - TOTODAY - &Aacute;O LEN NHIỀU M&Agrave;U</h1>\nMacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 10000.00, 10000.000, 'ÁO LEN NAM - TOTODAY - ÁO LEN NHIỀU MÀU', '2022-11-22 04:49:40', 1, '2022-11-22 04:49:40', 1, 1),
(5, 2, 1, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook-16pro14', 'macbook20.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 10000.00, 10000.000, 'ÁO SƠ MI NAM - TOTODAY - THE BASIC', '2022-11-22 05:11:51', 1, '2022-11-22 05:15:16', 1, 1),
(6, 2, 1, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook-16pro15', 'macbook20.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 10000.00, 10000.000, 'ÁO SƠ MI NAM - TOTODAY - COOL SHIRT', '2022-11-22 05:11:51', 1, '2022-11-22 05:14:52', 1, 1),
(7, 2, 1, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook-16pro16', 'macbook20.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 10000.00, 10000.000, 'ÁO SƠ MI NAM - TOTODAY - SIMPLE SHIRT', '2022-11-22 05:16:17', 1, '2022-11-22 05:16:17', 1, 1),
(8, 2, 2, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook-16pro17', 'macbook20.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 10000.00, 10000.000, 'ÁO SƠ MI NAM - TOTODAY - FORMAT', '2022-11-22 05:16:51', 1, '2022-11-22 05:16:51', 1, 1),
(9, 1, 1, 'iPhone 15 Plus 512GB - Chính hãng VN/A\n', 'iphone-15pl', 'iphone7.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'SHORTS JEAN NAM - TOTODAY - 11203', '2022-11-22 05:17:53', 1, '2022-11-22 05:17:53', 1, 1),
(10, 1, 1, 'iPhone 15 Plus 512GB - Chính hãng VN/A\n', 'iphone-14pro', 'iphone6.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'SHORTS JEAN NAM - TOTODAY - 11202', '2022-11-22 05:19:09', 1, '2022-11-22 05:19:09', 1, 1),
(11, 1, 1, 'iPhone 15 Plus 512GB - Chính hãng VN/A\n', 'iphone15-pl', 'wwebp.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'SHORTS JEAN NAM - TOTODAY - 11201', '2022-11-22 05:19:43', 1, '2022-11-22 05:19:43', 1, 1),
(12, 1, 1, 'iPhone 15 Plus 512GB - Chính hãng VN/A\n', 'iphone-11', 'iphone4.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'SHORTS THUN NAM - TOTODAY - FREEDOM TOTODAY', '2022-11-22 05:20:53', 1, '2022-11-22 05:20:53', 1, 1),
(13, 1, 1, 'iPhone 15 Plus 512GB - Chính hãng VN/A\n', 'iphone-15plus', 'iphone5.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10206', '2022-11-22 05:21:58', 1, '2022-11-22 05:21:58', 1, 1),
(14, 1, 1, 'iPhone 15 Plus 512GB - Chính hãng VN/A\n', 'iphone-15plvna', 'iphone3.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10205', '2022-11-22 05:22:27', 1, '2022-11-22 05:22:27', 1, 1),
(15, 1, 1, 'iPhone 15 Pro Max 512GB - Chính hãng VN/A', 'iphone-15prm', 'iphone1.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10204', '2022-11-22 05:22:56', 1, '2022-11-22 05:22:56', 1, 1),
(16, 1, 1, 'iPhone 15 Plus 512GB - Chính hãng VN/A\n', 'iphone15', 'iphone2.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'QUẦN JEAN NAM - SLIMFIT - TOTODAY - 10203', '2022-11-22 05:23:18', 1, '2022-11-22 05:23:18', 1, 1),
(17, 1, 1, 'iPhone 15 Plus 512GB - Chính hãng VN/A\n', 'iphone-15pr256', 'iphone20.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'ÁO THUN W2ATN09203FOSHT', '2022-11-22 05:24:58', 1, '2022-11-22 05:24:58', 1, 1),
(18, 1, 1, 'iPhone 15 Plus 512GB - Chính hãng VN/A\n', 'iphone-15pr2561', 'iphone21.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'ÁO THUN W2ATN09201FOSHT', '2022-11-22 05:26:02', 1, '2022-11-22 05:26:02', 1, 1),
(19, 1, 1, 'iPhone 15 Plus 512GB - Chính hãng VN/A\n', 'iphone-15pr2562', 'iphone6.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'ÁO THUN W2ATN08213BOSHT', '2022-11-22 05:26:25', 1, '2022-11-22 05:26:25', 1, 1),
(20, 1, 1, 'iPhone 15 Plus 512GB - Chính hãng VN/A\n', 'iphone-15pr3', 'iphone23.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'ÁO THUN W2ATN08210BOSBA', '2022-11-22 05:26:44', 1, '2022-11-22 05:26:44', 1, 1),
(21, 1, 1, 'iPhone 15 Plus 512GB - Chính hãng VN/A\n', 'ao-somi-w2smd05204bostr', 'iphone23.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'ÁO SƠMI W2SMD05204BOSTR', '2022-11-22 05:29:53', 1, '2022-11-22 05:29:53', 1, 1),
(22, 1, 1, 'iPhone 15 Plus 512GB - Chính hãng VN/A\n', 'ao-somi-w2smn05201bostr', 'iphone23.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'ÁO SƠMI W2SMN05201BOSTR', '2022-11-22 05:30:23', 1, '2022-11-22 05:30:23', 1, 1),
(23, 1, 1, 'iPhone 15 Plus 512GB - Chính hãng VN/A\n', 'ao-somi-w2smd05203bostr', 'iphone23.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'ÁO SƠMI W2SMD05203BOSTR', '2022-11-22 05:30:45', 1, '2022-11-22 05:30:45', 1, 1),
(24, 1, 1, 'iPhone 15 Plus 512GB - Chính hãng VN/A\n', 'set-somi-w2set05201foscr', 'iphone23.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'SET SƠMI W2SET05201FOSCR', '2022-11-22 05:31:09', 1, '2022-11-22 05:31:09', 1, 1),
(25, 1, 1, 'iPhone 15 Plus 512GB - Chính hãng VN/A\n', 'shorts-jean-nu-wash-totoday-10205', 'iphone23.webp', 'iPhone 15 Plus 512GB - Chính hãng VN/A', 1, 10000.00, 10000.000, 'SHORTS JEAN NỮ WASH - TOTODAY - 10205', '2022-11-22 05:34:00', 1, '2022-11-22 05:34:00', 1, 1),
(26, 2, 1, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook-16pro9', 'laptop8.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NỮ - TOTODAY - 10205', '2022-11-22 05:34:21', 1, '2022-11-22 05:34:21', 1, 1),
(27, 2, 1, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook-16pro10', 'laptop8.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NỮ - TOTODAY - 10203', '2022-11-22 05:34:52', 1, '2022-11-22 05:34:52', 1, 1),
(28, 2, 1, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook-16pro11', 'laptop8.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 10000.00, 10000.000, 'SHORTS JEAN NỮ RÁCH - TOTODAY - 10202', '2022-11-22 05:35:13', 1, '2022-11-22 05:35:13', 1, 1),
(30, 2, 2, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook-16pro12', 'laptop6.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 10000.00, 10000.000, 'QUẦN JEAN W2QJN05202FBGTR', '2022-11-22 05:38:39', 1, '2022-11-22 05:38:39', 1, 1),
(31, 2, 2, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD', 'macbook-16pro2', 'laptop5.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 10000.00, 10000.000, '', '2022-11-22 05:38:59', 1, '2023-11-04 12:32:59', 7, 1),
(32, 2, 2, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook-pro163', 'laptop4.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 10000.00, 10000.000, 'QUẦN JEAN W2QJN04208FBGTR', '2022-11-22 05:39:47', 1, '2023-11-04 12:41:11', 7, 1),
(33, 2, 2, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook-16pro4', 'laptop3.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 10000.00, 10000.000, 'CHÂN VÁY JEAN NỮ - TOTODAY - 10201', '2022-11-22 05:41:15', 1, '2023-11-04 12:41:08', 7, 1),
(34, 2, 2, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook-16pro5', 'laptop2.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 10000.00, 10000.000, 'CHÂN VÁY W2CNV06203FOSXL', '2022-11-22 05:41:36', 1, '2023-11-04 12:41:05', 7, 1),
(35, 2, 2, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook-16pro6', 'laptop1.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 10000.00, 10000.000, 'CHÂN VÁY W2CNV06202FOSXL', '2022-11-22 05:41:58', 1, '2023-11-04 12:41:01', 7, 1),
(36, 2, 2, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\n', 'macbook-16pri7', 'laptop8.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)', 1, 0.00, 0.000, 'CHÂN VÁY W2CNV06201FOSCR', '2022-11-22 05:42:21', 1, '2023-11-04 21:45:31', 7, 1),
(37, 2, 2, 'MacBook Pro 16 inch 2023 M2 Pro 19GPU 12CPU 16GB 1TB SSD\r\n', 'macbook-16pro8', 'laptop7.webp', 'MacBook Air M2 13\" 2022 8CPU 10GPU 512GB| RAM 8GB Chính hãng VN (MLY03SA/A - MLY23SA/A - MLY43SA/A - MLXX3SA/A)\n', 1, 10000.00, 10000.000, 'QUẦN JEAN W2QJN05203FBGTR', '2022-11-22 05:38:39', 1, '2022-11-22 05:38:39', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `0066_topic`
--

CREATE TABLE `0066_topic` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã chủ đề',
  `name` varchar(255) NOT NULL COMMENT 'Tên chủ đề',
  `slug` varchar(255) NOT NULL COMMENT 'Slug tên chủ đề',
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Mã cấp cha',
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Sắp xếp',
  `metakey` varchar(255) NOT NULL COMMENT 'Từ khóa SEO',
  `metadesc` varchar(255) NOT NULL COMMENT 'Mô tả SEO',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0066_topic`
--

INSERT INTO `0066_topic` (`id`, `name`, `slug`, `parent_id`, `sort_order`, `metakey`, `metadesc`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(4, 'test csdl', 'test-csdl', 0, 1, 'mmmmm', 'fffff', '2023-11-13 18:12:41', 1, '2023-11-13 18:12:41', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `0066_user`
--

CREATE TABLE `0066_user` (
  `id` int(10) UNSIGNED NOT NULL COMMENT 'Mã tài khoản',
  `name` varchar(100) NOT NULL COMMENT 'Họ và tên',
  `username` varchar(100) NOT NULL COMMENT 'Tên đăng nhâp',
  `password` varchar(64) NOT NULL COMMENT 'Mật khẩu',
  `email` varchar(100) NOT NULL COMMENT 'Email',
  `gender` tinyint(3) UNSIGNED NOT NULL COMMENT 'Giới tính',
  `phone` varchar(11) NOT NULL COMMENT 'Điện thoại',
  `image` varchar(100) NOT NULL COMMENT 'Hình',
  `roles` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Quyền truy cập',
  `address` varchar(255) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày tạo',
  `created_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người tạo',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Ngày sửa',
  `updated_by` tinyint(3) UNSIGNED NOT NULL DEFAULT 1 COMMENT 'Người sửa',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 2 COMMENT 'Trạng thái'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `0066_user`
--

INSERT INTO `0066_user` (`id`, `name`, `username`, `password`, `email`, `gender`, `phone`, `image`, `roles`, `address`, `created_at`, `created_by`, `updated_at`, `updated_by`, `status`) VALUES
(6, 'Hồ Diên Lợi', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'hodienloi@gmail.com', 1, '098888', 'hodienloi.jpg', 1, 'Bình Dương', '2023-10-13 10:34:44', 1, '2023-10-13 10:34:44', 1, 1),
(7, 'Duy Thời', 'nguyenduythoi', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'duythoi@gmail.com', 1, '123456789', 'logone.png', 1, 'Gia Lai', '2023-10-21 06:10:09', 1, '2023-11-15 20:45:41', 7, 1),
(14, 'Ng Duy Thời', 'dthoi2004', '123', 'dtmd@gmail.com', 1, '123', '.webp', 2, 'gia lai', '2023-11-14 12:24:11', 1, '2023-11-15 21:53:01', 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `0066_banner`
--
ALTER TABLE `0066_banner`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0066_brand`
--
ALTER TABLE `0066_brand`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0066_category`
--
ALTER TABLE `0066_category`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0066_contact`
--
ALTER TABLE `0066_contact`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0066_menu`
--
ALTER TABLE `0066_menu`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0066_order`
--
ALTER TABLE `0066_order`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0066_orderdetail`
--
ALTER TABLE `0066_orderdetail`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0066_page`
--
ALTER TABLE `0066_page`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0066_post`
--
ALTER TABLE `0066_post`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0066_product`
--
ALTER TABLE `0066_product`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0066_topic`
--
ALTER TABLE `0066_topic`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `0066_user`
--
ALTER TABLE `0066_user`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `0066_banner`
--
ALTER TABLE `0066_banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã Slider', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `0066_brand`
--
ALTER TABLE `0066_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã Loại', AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `0066_category`
--
ALTER TABLE `0066_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã Loại', AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `0066_contact`
--
ALTER TABLE `0066_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã liên hệ', AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `0066_menu`
--
ALTER TABLE `0066_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã Menu', AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `0066_order`
--
ALTER TABLE `0066_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã đơn hàng', AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `0066_orderdetail`
--
ALTER TABLE `0066_orderdetail`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã CT Đơn hàng', AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `0066_page`
--
ALTER TABLE `0066_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã bài viết', AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `0066_post`
--
ALTER TABLE `0066_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã bài viết', AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `0066_product`
--
ALTER TABLE `0066_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã sản phẩm', AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `0066_topic`
--
ALTER TABLE `0066_topic`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã chủ đề', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `0066_user`
--
ALTER TABLE `0066_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'Mã tài khoản', AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
