/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50640
 Source Host           : localhost:3306
 Source Schema         : oop

 Target Server Type    : MySQL
 Target Server Version : 50640
 File Encoding         : 65001

 Date: 29/05/2018 10:54:58
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `short_desc` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT '1',
  `slug` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of posts
-- ----------------------------
BEGIN;
INSERT INTO `posts` VALUES (3, 'Sinh viên nói về đề xuất phạt chủ nhà trọ 10 triệu đồng nếu thu tiền điện giá cao: \"Họ sẽ tăng tiền nhà, tiền nước lên thôi\"', 'Với chính sách mới, chủ trọ có thể bị phạt đến 10 triệu đồng nếu thu tiền điện giá cao, nhiều sinh viên vẫn lo ngại vì chủ trọ có thể tăng tiền nhà, tiền nước, thậm chí là những khoản phụ phí chẳng mấy liên quan khi giữ mức điện giá nhà nước.', 'Ngày 20/5, Thủ tướng Chính phủ Nguyễn Xuân Phúc đã có buổi gặp gỡ công nhân các khu công nghiệp vùng Đồng bằng sông Hồng năm 2018. Tại buổi gặp gỡ, Thủ tướng Chính phủ đã yêu cầu Bộ Công Thương, Tập đoàn Điện lực Việt Nam cũng như các địa phương khác, phối hợp tiến hành kiểm tra việc các nhà trọ cho công nhân thuê. \r\n\r\nTheo đó, tại Điều 10 của Thông tư số 16/2014/TT-BCT ngày 29/5/2014 của Bộ Công Thương về việc hướng dẫn thực hiện giá bán điện đã quy định, trường hợp chủ nhà trọ đứng tên ký hợp đồng mua bán điện sẽ được cấp định mức hoặc áp 1 giá theo mức giá bán lẻ điện sinh hoạt của bậc 3 (nếu không xác định được số hộ). Chủ nhà trọ nào mà thu tiền điện của người thuê trọ cao hơn giá quy định sẽ bị xử phạt từ 7 - 10 triệu đồng.\r\n\r\nTheo quy định về giá điện hiện nay, đối với một hộ gia đình thông thường, nếu chỉ sử dụng ít hơn hoặc bằng 100 kWh/tháng, giá điện sẽ là 1.600 đồng/kWh. Từ 101 - 400kWh, giá điện là 2.615 đồng/kWh. Sử dụng trên 400kWh sẽ có giá gần 2.702 đồng/kWh.\r\n\r\n', 'https://kenh14cdn.com/2018/5/24/1-15271790205421323964598.jpg', 1, 'sinh-vien-noi-ve-de-xuat-phat-chu-nha-tro-10-trieu-dong-neu-thu-tien-dien-gia-cao-ho-se-tang-tien-nha-tien-nuoc-len-thoi');
INSERT INTO `posts` VALUES (4, 'Phát hiện gần 100 nữ tiếp viên ăn mặc hở hang đang phục vụ khách trong nhà hàng, khách sạn ở trung tâm Sài Gòn', 'Tiến hành kiểm tra khách sạn Du Lịch Sài Gòn và nhà hàng Phoenix nằm ở trung tâm TP.HCM, công an phát hiện gần 100 nữ tiếp viên ăn mặc hở hang đang tiếp khách ngoại quốc. Lực lượng đã đưa 30 người nghi sử dụng ma tuý về trụ sở làm việc.', 'Phát hiện đoàn sinh viên liên ngành ập vào, nhân viên bảo vệ tìm cách bấm chuông báo động nhưng bị khống chế. Vừa thấy bóng dáng công an, các nữ tiếp viên ăn mặc hở hang trong các phòng VIP cùng khách ngoại quốc tìm cách tháo chạy nhưng công an chốt chặn.\r\n\r\nQua kiểm tra, công an phát hiện có khoảng 30 nữ tiếp viên ăn mặc hở hang. Tại phòng VIP 3 của nhà hàng, có gần 10 nữ nhân viên ăn mặc hở hang đang tiếp 1 nhóm thanh niên có biểu hiện nghi phê ma tuý.\r\n\r\nQua kiểm tra, công an phát hiện nhiều túi nilon chứa tinh thể màu trắng nghi là ma tuý và nhiều viên nén nghi là thuốc lắc được vứt xuống sàn, bàn, ghế. Bên cạnh đó, Công an còn thu giữ 1 con dao trên người 1 nam thanh niên trong phòng.', 'https://kenh14cdn.com/2018/5/26/photo-1-152729566402553069840.jpg', 2, 'phat-hien-gan-100-nu-tiep-vien-an-mac-ho-hang-dang-phuc-vu-khach-trong-nha-hang-khach-san-o-trung-tam-sai-gon');
INSERT INTO `posts` VALUES (5, 'Tròn 10 năm tủi hờn vì scandal ảnh sex, Chung Hân Đồng khóc như mưa trong hôn lễ đẹp như cổ tích của mình', '10 năm với nhiều hối hận và nước mắt, Chung Hân Đồng giờ đây đã có trong tay hạnh phúc tuyệt vời nhất của cuộc đời mình.', 'Cách đây chỉ vài giờ, những hình ảnh về đám cưới được mong chờ nhất làng giải trí Hồng Kông của Chung Hân Đồng và bạn trai Lại Hoằng Quốc đã được diễn ra tại Los Angeles (vào ngày 25/5 theo giờ Mỹ) đã được chia sẻ. Chỉ có bạn bè, người thân được tham dự đám cưới tại đây, chứng kiến những khoảnh khắc hạnh phúc nhất suốt 37 năm qua của cô. Tròn 10 năm sau scandal ảnh sex, giờ đây Chung Hân Đồng đã có được hạnh phúc cô hằng ao ước. \r\n', 'https://kenh14cdn.com/2018/5/26/61e7f4aaly1froefoa0lfj20gw0c2mz8-15273021904531235059519.jpg', 1, 'tron-10-nam-tui-hon-vi-scandal-anh-sex-chung-han-dong-khoc-nhu-mua-trong-hon-le-dep-nhu-co-tich-cua-minh');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'tacgia@gmail.com', '123466', '123123123123');
INSERT INTO `users` VALUES (2, 'def@gmail.com', '123123', '123123');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
