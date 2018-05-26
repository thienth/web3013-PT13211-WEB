-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 26, 2018 at 05:42 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oop`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_desc` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `short_desc`, `content`, `image`, `slug`) VALUES
(3, 'Sinh viên nói về đề xuất phạt chủ nhà trọ 10 triệu đồng nếu thu tiền điện giá cao: \"Họ sẽ tăng tiền nhà, tiền nước lên thôi\"', 'Với chính sách mới, chủ trọ có thể bị phạt đến 10 triệu đồng nếu thu tiền điện giá cao, nhiều sinh viên vẫn lo ngại vì chủ trọ có thể tăng tiền nhà, tiền nước, thậm chí là những khoản phụ phí chẳng mấy liên quan khi giữ mức điện giá nhà nước.', 'Ngày 20/5, Thủ tướng Chính phủ Nguyễn Xuân Phúc đã có buổi gặp gỡ công nhân các khu công nghiệp vùng Đồng bằng sông Hồng năm 2018. Tại buổi gặp gỡ, Thủ tướng Chính phủ đã yêu cầu Bộ Công Thương, Tập đoàn Điện lực Việt Nam cũng như các địa phương khác, phối hợp tiến hành kiểm tra việc các nhà trọ cho công nhân thuê. \r\n\r\nTheo đó, tại Điều 10 của Thông tư số 16/2014/TT-BCT ngày 29/5/2014 của Bộ Công Thương về việc hướng dẫn thực hiện giá bán điện đã quy định, trường hợp chủ nhà trọ đứng tên ký hợp đồng mua bán điện sẽ được cấp định mức hoặc áp 1 giá theo mức giá bán lẻ điện sinh hoạt của bậc 3 (nếu không xác định được số hộ). Chủ nhà trọ nào mà thu tiền điện của người thuê trọ cao hơn giá quy định sẽ bị xử phạt từ 7 - 10 triệu đồng.\r\n\r\nTheo quy định về giá điện hiện nay, đối với một hộ gia đình thông thường, nếu chỉ sử dụng ít hơn hoặc bằng 100 kWh/tháng, giá điện sẽ là 1.600 đồng/kWh. Từ 101 - 400kWh, giá điện là 2.615 đồng/kWh. Sử dụng trên 400kWh sẽ có giá gần 2.702 đồng/kWh.\r\n\r\n', 'https://kenh14cdn.com/2018/5/24/1-15271790205421323964598.jpg', 'sinh-vien-noi-ve-de-xuat-phat-chu-nha-tro-10-trieu-dong-neu-thu-tien-dien-gia-cao-ho-se-tang-tien-nha-tien-nuoc-len-thoi'),
(4, 'Phát hiện gần 100 nữ tiếp viên ăn mặc hở hang đang phục vụ khách trong nhà hàng, khách sạn ở trung tâm Sài Gòn', 'Tiến hành kiểm tra khách sạn Du Lịch Sài Gòn và nhà hàng Phoenix nằm ở trung tâm TP.HCM, công an phát hiện gần 100 nữ tiếp viên ăn mặc hở hang đang tiếp khách ngoại quốc. Lực lượng đã đưa 30 người nghi sử dụng ma tuý về trụ sở làm việc.', 'Phát hiện đoàn liên ngành ập vào, nhân viên bảo vệ tìm cách bấm chuông báo động nhưng bị khống chế. Vừa thấy bóng dáng công an, các nữ tiếp viên ăn mặc hở hang trong các phòng VIP cùng khách ngoại quốc tìm cách tháo chạy nhưng công an chốt chặn.\r\n\r\nQua kiểm tra, công an phát hiện có khoảng 30 nữ tiếp viên ăn mặc hở hang. Tại phòng VIP 3 của nhà hàng, có gần 10 nữ nhân viên ăn mặc hở hang đang tiếp 1 nhóm thanh niên có biểu hiện nghi phê ma tuý.\r\n\r\nQua kiểm tra, công an phát hiện nhiều túi nilon chứa tinh thể màu trắng nghi là ma tuý và nhiều viên nén nghi là thuốc lắc được vứt xuống sàn, bàn, ghế. Bên cạnh đó, Công an còn thu giữ 1 con dao trên người 1 nam thanh niên trong phòng.', 'https://kenh14cdn.com/2018/5/26/photo-1-152729566402553069840.jpg', 'phat-hien-gan-100-nu-tiep-vien-an-mac-ho-hang-dang-phuc-vu-khach-trong-nha-hang-khach-san-o-trung-tam-sai-gon'),
(5, 'Tròn 10 năm tủi hờn vì scandal ảnh sex, Chung Hân Đồng khóc như mưa trong hôn lễ đẹp như cổ tích của mình', '10 năm với nhiều hối hận và nước mắt, Chung Hân Đồng giờ đây đã có trong tay hạnh phúc tuyệt vời nhất của cuộc đời mình.', 'Cách đây chỉ vài giờ, những hình ảnh về đám cưới được mong chờ nhất làng giải trí Hồng Kông của Chung Hân Đồng và bạn trai Lại Hoằng Quốc đã được diễn ra tại Los Angeles (vào ngày 25/5 theo giờ Mỹ) đã được chia sẻ. Chỉ có bạn bè, người thân được tham dự đám cưới tại đây, chứng kiến những khoảnh khắc hạnh phúc nhất suốt 37 năm qua của cô. Tròn 10 năm sau scandal ảnh sex, giờ đây Chung Hân Đồng đã có được hạnh phúc cô hằng ao ước. \r\n', 'https://kenh14cdn.com/2018/5/26/61e7f4aaly1froefoa0lfj20gw0c2mz8-15273021904531235059519.jpg', 'tron-10-nam-tui-hon-vi-scandal-anh-sex-chung-han-dong-khoc-nhu-mua-trong-hon-le-dep-nhu-co-tich-cua-minh');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `avatar`) VALUES
(1, 'abc@gmail.com', '123466', '123123123123'),
(2, 'def@gmail.com', '123123', '123123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
