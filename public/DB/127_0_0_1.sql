-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2017 at 12:00 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm`
--
CREATE DATABASE IF NOT EXISTS `hrm` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hrm`;

-- --------------------------------------------------------

--
-- Table structure for table `allowance`
--

CREATE TABLE `allowance` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `allowance`
--

INSERT INTO `allowance` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Ăn trưa', '0', NULL, NULL),
(2, 'Điện thoại', '1', NULL, NULL),
(3, 'Xăng xe', '0', NULL, NULL),
(4, 'Nhà ở', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `business_trip`
--

CREATE TABLE `business_trip` (
  `id` int(10) UNSIGNED NOT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allowance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_trip`
--

INSERT INTO `business_trip` (`id`, `reason`, `place`, `allowance`, `from`, `to`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Gặp khách hàng', 'Bình Dương', '1000000', '2017-06-20', '2017-06-23', 8, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contract`
--

CREATE TABLE `contract` (
  `id` int(10) UNSIGNED NOT NULL,
  `create_by` int(10) UNSIGNED NOT NULL,
  `employee` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_description` text COLLATE utf8mb4_unicode_ci,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contract`
--

INSERT INTO `contract` (`id`, `create_by`, `employee`, `code`, `name`, `type`, `work_description`, `from`, `to`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '3', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(2, 1, 4, '4', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(3, 1, 5, '5', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(4, 1, 6, '6', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(5, 1, 7, '7', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(6, 1, 8, '8', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(7, 1, 9, '9', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(8, 1, 10, '10', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(9, 1, 11, '11', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(10, 1, 12, '12', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(11, 1, 13, '13', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(12, 1, 14, '14', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(13, 1, 15, '15', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(14, 1, 16, '16', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(15, 1, 17, '17', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(16, 1, 18, '18', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(17, 1, 19, '19', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(18, 1, 20, '20', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(19, 1, 21, '21', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(20, 1, 22, '22', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(21, 1, 23, '23', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(22, 1, 24, '24', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(23, 1, 25, '25', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(24, 1, 26, '26', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(25, 1, 27, '27', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(26, 1, 28, '28', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL),
(27, 1, 29, '29', 'Hợp Đồng Lao Động', '12', 'Xây dựng các kế hạch kinh doanh', '2017-03-20', '2018-03-20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Phòng nhân sự', 'PNS', NULL, NULL),
(2, 'Phòng tài chính', 'PTC', NULL, NULL),
(3, 'Phòng kỹ thuật', 'PKT', NULL, NULL),
(4, 'Phòng kinh doanh', 'PKD', NULL, NULL),
(5, 'Phòng dự án', 'PDA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_relatives`
--

CREATE TABLE `employee_relatives` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_relatives` int(11) DEFAULT NULL,
  `is_dependent` int(11) DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_relatives`
--

INSERT INTO `employee_relatives` (`id`, `full_name`, `address`, `phone_number`, `relation`, `number_relatives`, `is_dependent`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Phạm Thành Bằng', 'Số 988 Đường Vĩnh Lộc, Xã Vĩnh Lộc B, Huyện Bình Chánh, TP Hồ Chí Minh', '0979748494', 'cha con', 3, NULL, 1, NULL, NULL),
(2, 'Phạm Viết Hà', 'Số 988 Đường Vĩnh Lộc, Xã Vĩnh Lộc B, Huyện Bình Chánh, TP Hồ Chí Minh', '0939166160', 'cha con', 2, NULL, 2, NULL, NULL),
(3, 'Nguyễn Thành Hòa', '606A Võ Văn Kiệt, Phường Cầu Kho, Quận 1, TP Hồ Chí Minh', '0914409356', 'cha con', 3, NULL, 3, NULL, NULL),
(4, 'Phạm Đình Hòa', '635/13 Hương lộ 2, Phường Bình Trị Đông, Quận Bình Tân, TP Hồ Chí Minh', '0913199757', 'cha con', 1, NULL, 4, NULL, NULL),
(5, 'Trần Hoài Ban', '635/13 Hương lộ 2, Phường Bình Trị Đông, Quận Bình Tân, TP Hồ Chí Minh', '0907000350', 'cha con', 3, NULL, 5, NULL, NULL),
(6, 'Trần Viết Bằng', '652 âu Cơ, Phường 10, Quận Tân Bình, TP Hồ Chí Minh', '0939166160', 'cha con', 3, NULL, 6, NULL, NULL),
(7, 'Trần Viết Bằng', '606A Võ Văn Kiệt, Phường Cầu Kho, Quận 1, TP Hồ Chí Minh', '0979748494', 'cha con', 2, NULL, 7, NULL, NULL),
(8, 'Phạm Thành Trí', '151/4 Gò Xoài, Phường Bình Hưng Hòa A, Quận Bình Tân, TP Hồ Chí Minh', '0907000350', 'cha con', 2, NULL, 8, NULL, NULL),
(9, 'Lê Hoài Nhật', '652 âu Cơ, Phường 10, Quận Tân Bình, TP Hồ Chí Minh', '0979748494', 'cha con', 3, NULL, 9, NULL, NULL),
(10, 'Phạm Đình Hải', '652 âu Cơ, Phường 10, Quận Tân Bình, TP Hồ Chí Minh', '0989420655', 'cha con', 3, NULL, 10, NULL, NULL),
(11, 'Lý Văn Hà', 'Số 1 Đường số 354, Xã Nhuận Đức, Huyện Củ Chi, TP Hồ Chí Minh', '0979748494', 'cha con', 3, NULL, 11, NULL, NULL),
(12, 'Phạm Đình Hà', '377/1 Cách Mạng Tháng 8, Phường 12, Quận 10, TP Hồ Chí Minh', '0913199757', 'cha con', 3, NULL, 12, NULL, NULL),
(13, 'Lê Viết Bằng', '608 Quốc Lộ 1A, phường An Phú Đông, Quận 12, TP Hồ Chí Minh', '0989420655', 'cha con', 3, NULL, 13, NULL, NULL),
(14, 'Lê Viết Nhật', '652 âu Cơ, Phường 10, Quận Tân Bình, TP Hồ Chí Minh', '01688883627', 'cha con', 3, NULL, 14, NULL, NULL),
(15, 'Phạm Đình Hải', '652 âu Cơ, Phường 10, Quận Tân Bình, TP Hồ Chí Minh', '0989420655', 'cha con', 2, NULL, 15, NULL, NULL),
(16, 'Lê Trọng Ban', '606A Võ Văn Kiệt, Phường Cầu Kho, Quận 1, TP Hồ Chí Minh', '0988992518', 'cha con', 2, NULL, 16, NULL, NULL),
(17, 'Lê Hoài Hải', '608 Quốc Lộ 1A, phường An Phú Đông, Quận 12, TP Hồ Chí Minh', '01688883627', 'cha con', 2, NULL, 17, NULL, NULL),
(18, 'Phạm Trọng Hà', '151/4 Gò Xoài, Phường Bình Hưng Hòa A, Quận Bình Tân, TP Hồ Chí Minh', '01688883627', 'cha con', 1, NULL, 18, NULL, NULL),
(19, 'Nguyễn Trọng Bằng', '635/13 Hương lộ 2, Phường Bình Trị Đông, Quận Bình Tân, TP Hồ Chí Minh', '01688883627', 'cha con', 1, NULL, 19, NULL, NULL),
(20, 'Trần Trọng Bằng', 'Số 988 Đường Vĩnh Lộc, Xã Vĩnh Lộc B, Huyện Bình Chánh, TP Hồ Chí Minh', '0907000350', 'cha con', 1, NULL, 20, NULL, NULL),
(21, 'Lý Thành Trí', '635/13 Hương lộ 2, Phường Bình Trị Đông, Quận Bình Tân, TP Hồ Chí Minh', '0988992518', 'cha con', 3, NULL, 21, NULL, NULL),
(22, 'Lê Hoài Nhật', '608 Quốc Lộ 1A, phường An Phú Đông, Quận 12, TP Hồ Chí Minh', '0939166160', 'cha con', 3, NULL, 22, NULL, NULL),
(23, 'Lý Đình Hòa', '377/1 Cách Mạng Tháng 8, Phường 12, Quận 10, TP Hồ Chí Minh', '0914409356', 'cha con', 2, NULL, 23, NULL, NULL),
(24, 'Trần Thành Ban', '608 Quốc Lộ 1A, phường An Phú Đông, Quận 12, TP Hồ Chí Minh', '0979748494', 'cha con', 3, NULL, 24, NULL, NULL),
(25, 'Lý Công Nhật', '635/13 Hương lộ 2, Phường Bình Trị Đông, Quận Bình Tân, TP Hồ Chí Minh', '0914409356', 'cha con', 3, NULL, 25, NULL, NULL),
(26, 'Nguyễn Văn Bằng', '608 Quốc Lộ 1A, phường An Phú Đông, Quận 12, TP Hồ Chí Minh', '01699118349', 'cha con', 1, NULL, 26, NULL, NULL),
(27, 'Phạm Hoài Hải', 'Số 1 Đường số 354, Xã Nhuận Đức, Huyện Củ Chi, TP Hồ Chí Minh', '01688883627', 'cha con', 3, NULL, 27, NULL, NULL),
(28, 'Trần Viết Hà', '608 Quốc Lộ 1A, phường An Phú Đông, Quận 12, TP Hồ Chí Minh', '0939166160', 'cha con', 2, NULL, 28, NULL, NULL),
(29, 'Lý Viết Hà', 'Số 988 Đường Vĩnh Lộc, Xã Vĩnh Lộc B, Huyện Bình Chánh, TP Hồ Chí Minh', '0939166160', 'cha con', 3, NULL, 29, NULL, NULL),
(30, 'Phạm Hoài Ban', '652 âu Cơ, Phường 10, Quận Tân Bình, TP Hồ Chí Minh', '0988992518', 'cha con', 1, NULL, 30, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `director` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `name`, `director`, `address`, `phone_number`, `email`, `logo`) VALUES
(1, 'BEESIGHT SOFT', 'Nguyễn Huy', '320/12 Truong Chinh, 13th ward, Tan Binh District\n								Ho Chi Minh City, Vietnam', '(+84) 908 558 815', 'info@beesightsoft.com', 'besignsoft.png');

-- --------------------------------------------------------

--
-- Table structure for table `job_type`
--

CREATE TABLE `job_type` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_type`
--

INSERT INTO `job_type` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Kế toán', 'manager', NULL, NULL),
(2, 'Marketting', 'employee', NULL, NULL),
(3, 'Công nghệ thông tin', 'it', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from` date DEFAULT NULL,
  `to` date DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `accepter_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `description`, `type`, `from`, `to`, `user_id`, `accepter_id`, `created_at`, `updated_at`) VALUES
(1, 'Bị bệnh', 'chapnhan', '2017-06-19', '2017-06-20', 8, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_05_07_021112_create_departments_table', 1),
(4, '2017_05_07_024246_create_job_type_table', 1),
(5, '2017_05_07_024432_create_employee_relatives_table', 1),
(6, '2017_05_07_024549_create_leaves_table', 1),
(7, '2017_05_07_025858_create_position_table', 1),
(8, '2017_05_07_030505_create_business_trip_table', 1),
(9, '2017_05_07_031128_create_retribution_table', 1),
(10, '2017_05_07_033417_create_users_department_table', 1),
(11, '2017_05_24_151432_create_user_position_jobtype', 1),
(12, '2017_05_29_075436_entrust_setup_tables', 1),
(13, '2017_05_30_014206_create_notification_table', 1),
(14, '2017_06_01_152013_create_contract_table', 1),
(15, '2017_06_04_110437_create_Salary_table', 1),
(16, '2017_06_04_145705_create_allowance_table', 1),
(17, '2017_06_04_152131_create_Timekeeping_table', 1),
(18, '2017_06_04_152132_create_salary_allowance_table', 1),
(19, '2017_06_12_203454_create_home_table', 1),
(20, '2017_06_17_164332_create_noti_system_table', 1),
(21, '2017_06_17_164417_create_noti_user_table', 1),
(23, '2017_12_15_110603_create_timesheet_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `noti`
--

CREATE TABLE `noti` (
  `id` int(10) UNSIGNED NOT NULL,
  `rec_list` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noti_user`
--

CREATE TABLE `noti_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `noti_id` int(10) UNSIGNED NOT NULL,
  `isRead` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `create_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `title`, `content`, `create_by`, `created_at`, `updated_at`) VALUES
(1, 'Họp Phòng', 'Toàn thể công ty chiều nay họp lúc 14h00', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 1),
(2, 2),
(2, 3),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(5, 2),
(5, 4),
(6, 1),
(6, 2),
(6, 4),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(10, 2),
(11, 1),
(11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'user_show', 'Quản lý nhân viên', NULL, NULL, NULL),
(2, 'contract_show', 'Quản lý hợp đồng', NULL, NULL, NULL),
(3, 'position_show', 'Chức vụ', NULL, NULL, NULL),
(4, 'jobtype_show', 'Chuyên môn', NULL, NULL, NULL),
(5, 'salary_show', 'Danh sách lương', NULL, NULL, NULL),
(6, 'timekeeping_show', 'Chấm công', NULL, NULL, NULL),
(7, 'department', 'Quản lý phòng ban', NULL, NULL, NULL),
(8, 'retribution', 'Quản lý khen thưởng', NULL, NULL, NULL),
(9, 'business_trip', 'Quản lý công tác', NULL, NULL, NULL),
(10, 'manage_access', 'Quản lý truy cập', NULL, NULL, NULL),
(11, 'ACL', 'Quản lý phân quyền', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Trưởng phòng', 'manager', NULL, NULL),
(2, 'Nhân viên', 'employee', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `retribution`
--

CREATE TABLE `retribution` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decide` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_date` date DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `create_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `retribution`
--

INSERT INTO `retribution` (`id`, `code`, `decide`, `reason`, `description`, `create_date`, `user_id`, `create_by`, `created_at`, `updated_at`) VALUES
(1, 'QDKT1', 'khenthuong', 'Làm việc tốt', 'Thưởng 500k', NULL, 8, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 5),
(7, 5),
(8, 5),
(9, 5),
(10, 5),
(11, 5),
(12, 5),
(13, 5),
(14, 5),
(15, 5),
(16, 5),
(17, 5),
(18, 5),
(19, 5),
(20, 5),
(21, 5),
(22, 5),
(23, 5),
(24, 5),
(25, 5),
(26, 5),
(27, 5),
(28, 5),
(29, 5),
(30, 5);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'supper_admin', 'Quản trị viên cấp cao', NULL, NULL, NULL),
(2, 'admin', 'Quản trị viên', NULL, NULL, NULL),
(3, 'nhansu', 'Nhân sự', NULL, NULL, NULL),
(4, 'ketoan', 'Kế toán', NULL, NULL, NULL),
(5, 'nhanvien', 'Nhân viên', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `base_salary` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`id`, `user_id`, `base_salary`, `created_at`, `updated_at`) VALUES
(1, 3, '10000000', NULL, NULL),
(2, 4, '10000000', NULL, NULL),
(3, 5, '10000000', NULL, NULL),
(4, 6, '10000000', NULL, NULL),
(5, 7, '10000000', NULL, NULL),
(6, 8, '10000000', NULL, NULL),
(7, 9, '10000000', NULL, NULL),
(8, 10, '10000000', NULL, NULL),
(9, 11, '10000000', NULL, NULL),
(10, 12, '10000000', NULL, NULL),
(11, 13, '10000000', NULL, NULL),
(12, 14, '10000000', NULL, NULL),
(13, 15, '10000000', NULL, NULL),
(14, 16, '10000000', NULL, NULL),
(15, 17, '10000000', NULL, NULL),
(16, 18, '10000000', NULL, NULL),
(17, 19, '10000000', NULL, NULL),
(18, 20, '10000000', NULL, NULL),
(19, 21, '10000000', NULL, NULL),
(20, 22, '10000000', NULL, NULL),
(21, 23, '10000000', NULL, NULL),
(22, 24, '10000000', NULL, NULL),
(23, 25, '10000000', NULL, NULL),
(24, 26, '10000000', NULL, NULL),
(25, 27, '10000000', NULL, NULL),
(26, 28, '10000000', NULL, NULL),
(27, 29, '10000000', NULL, NULL),
(28, 2, '10000000', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `salary_allowance`
--

CREATE TABLE `salary_allowance` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `allowance_id` int(10) UNSIGNED NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary_allowance`
--

INSERT INTO `salary_allowance` (`user_id`, `allowance_id`, `value`) VALUES
(3, 1, '1000000'),
(3, 2, '500000'),
(3, 3, '500000'),
(3, 4, '1000000'),
(4, 1, '1000000'),
(4, 2, '500000'),
(4, 3, '500000'),
(4, 4, '1000000'),
(5, 1, '1000000'),
(5, 2, '500000'),
(5, 3, '500000'),
(5, 4, '1000000'),
(6, 1, '1000000'),
(6, 2, '500000'),
(6, 3, '500000'),
(6, 4, '1000000'),
(7, 1, '1000000'),
(7, 2, '500000'),
(7, 3, '500000'),
(7, 4, '1000000'),
(8, 1, '1000000'),
(8, 2, '500000'),
(8, 3, '500000'),
(8, 4, '1000000'),
(9, 1, '1000000'),
(9, 2, '500000'),
(9, 3, '500000'),
(9, 4, '1000000'),
(10, 1, '1000000'),
(10, 2, '500000'),
(10, 3, '500000'),
(10, 4, '1000000'),
(11, 1, '1000000'),
(11, 2, '500000'),
(11, 3, '500000'),
(11, 4, '1000000'),
(12, 1, '1000000'),
(12, 2, '500000'),
(12, 3, '500000'),
(12, 4, '1000000'),
(13, 1, '1000000'),
(13, 2, '500000'),
(13, 3, '500000'),
(13, 4, '1000000'),
(14, 1, '1000000'),
(14, 2, '500000'),
(14, 3, '500000'),
(14, 4, '1000000'),
(15, 1, '1000000'),
(15, 2, '500000'),
(15, 3, '500000'),
(15, 4, '1000000'),
(16, 1, '1000000'),
(16, 2, '500000'),
(16, 3, '500000'),
(16, 4, '1000000'),
(17, 1, '1000000'),
(17, 2, '500000'),
(17, 3, '500000'),
(17, 4, '1000000'),
(18, 1, '1000000'),
(18, 2, '500000'),
(18, 3, '500000'),
(18, 4, '1000000'),
(19, 1, '1000000'),
(19, 2, '500000'),
(19, 3, '500000'),
(19, 4, '1000000'),
(20, 1, '1000000'),
(20, 2, '500000'),
(20, 3, '500000'),
(20, 4, '1000000'),
(21, 1, '1000000'),
(21, 2, '500000'),
(21, 3, '500000'),
(21, 4, '1000000'),
(22, 1, '1000000'),
(22, 2, '500000'),
(22, 3, '500000'),
(22, 4, '1000000'),
(23, 1, '1000000'),
(23, 2, '500000'),
(23, 3, '500000'),
(23, 4, '1000000'),
(24, 1, '1000000'),
(24, 2, '500000'),
(24, 3, '500000'),
(24, 4, '1000000'),
(25, 1, '1000000'),
(25, 2, '500000'),
(25, 3, '500000'),
(25, 4, '1000000'),
(26, 1, '1000000'),
(26, 2, '500000'),
(26, 3, '500000'),
(26, 4, '1000000'),
(27, 1, '1000000'),
(27, 2, '500000'),
(27, 3, '500000'),
(27, 4, '1000000'),
(28, 1, '1000000'),
(28, 2, '500000'),
(28, 3, '500000'),
(28, 4, '1000000'),
(29, 1, '1000000'),
(29, 2, '500000'),
(29, 3, '500000'),
(29, 4, '1000000');

-- --------------------------------------------------------

--
-- Table structure for table `timekeeping`
--

CREATE TABLE `timekeeping` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `user_ids` text COLLATE utf8mb4_unicode_ci,
  `date` text COLLATE utf8mb4_unicode_ci,
  `date_work` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timekeeping`
--

INSERT INTO `timekeeping` (`id`, `name`, `content`, `user_ids`, `date`, `date_work`, `created_at`, `updated_at`) VALUES
(2, '122017', '[\"cn\",\"cn\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\",\"k\"]', '[\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"1\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"2\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"3\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"4\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"5\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"6\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"7\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"8\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"9\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"10\",\"11\",\"11\",\"11\",\"11\",\"11\",\"11\",\"11\",\"11\",\"11\",\"11\",\"11\",\"11\",\"11\",\"11\",\"11\",\"11\",\"11\",\"11\",\"11\",\"11\"]', '[\"01-12-2017\",\"02-12-2017\",\"03-12-2017\",\"04-12-2017\",\"05-12-2017\",\"06-12-2017\",\"07-12-2017\",\"08-12-2017\",\"09-12-2017\",\"10-12-2017\",\"11-12-2017\",\"12-12-2017\",\"13-12-2017\",\"14-12-2017\",\"15-12-2017\",\"16-12-2017\",\"17-12-2017\",\"18-12-2017\",\"19-12-2017\",\"20-12-2017\",\"21-12-2017\",\"22-12-2017\",\"23-12-2017\",\"24-12-2017\",\"25-12-2017\",\"26-12-2017\",\"27-12-2017\",\"28-12-2017\",\"29-12-2017\",\"30-12-2017\",\"31-12-2017\",\"01-12-2017\",\"02-12-2017\",\"03-12-2017\",\"04-12-2017\",\"05-12-2017\",\"06-12-2017\",\"07-12-2017\",\"08-12-2017\",\"09-12-2017\",\"10-12-2017\",\"11-12-2017\",\"12-12-2017\",\"13-12-2017\",\"14-12-2017\",\"15-12-2017\",\"16-12-2017\",\"17-12-2017\",\"18-12-2017\",\"19-12-2017\",\"20-12-2017\",\"21-12-2017\",\"22-12-2017\",\"23-12-2017\",\"24-12-2017\",\"25-12-2017\",\"26-12-2017\",\"27-12-2017\",\"28-12-2017\",\"29-12-2017\",\"30-12-2017\",\"31-12-2017\",\"01-12-2017\",\"02-12-2017\",\"03-12-2017\",\"04-12-2017\",\"05-12-2017\",\"06-12-2017\",\"07-12-2017\",\"08-12-2017\",\"09-12-2017\",\"10-12-2017\",\"11-12-2017\",\"12-12-2017\",\"13-12-2017\",\"14-12-2017\",\"15-12-2017\",\"16-12-2017\",\"17-12-2017\",\"18-12-2017\",\"19-12-2017\",\"20-12-2017\",\"21-12-2017\",\"22-12-2017\",\"23-12-2017\",\"24-12-2017\",\"25-12-2017\",\"26-12-2017\",\"27-12-2017\",\"28-12-2017\",\"29-12-2017\",\"30-12-2017\",\"31-12-2017\",\"01-12-2017\",\"02-12-2017\",\"03-12-2017\",\"04-12-2017\",\"05-12-2017\",\"06-12-2017\",\"07-12-2017\",\"08-12-2017\",\"09-12-2017\",\"10-12-2017\",\"11-12-2017\",\"12-12-2017\",\"13-12-2017\",\"14-12-2017\",\"15-12-2017\",\"16-12-2017\",\"17-12-2017\",\"18-12-2017\",\"19-12-2017\",\"20-12-2017\",\"21-12-2017\",\"22-12-2017\",\"23-12-2017\",\"24-12-2017\",\"25-12-2017\",\"26-12-2017\",\"27-12-2017\",\"28-12-2017\",\"29-12-2017\",\"30-12-2017\",\"31-12-2017\",\"01-12-2017\",\"02-12-2017\",\"03-12-2017\",\"04-12-2017\",\"05-12-2017\",\"06-12-2017\",\"07-12-2017\",\"08-12-2017\",\"09-12-2017\",\"10-12-2017\",\"11-12-2017\",\"12-12-2017\",\"13-12-2017\",\"14-12-2017\",\"15-12-2017\",\"16-12-2017\",\"17-12-2017\",\"18-12-2017\",\"19-12-2017\",\"20-12-2017\",\"21-12-2017\",\"22-12-2017\",\"23-12-2017\",\"24-12-2017\",\"25-12-2017\",\"26-12-2017\",\"27-12-2017\",\"28-12-2017\",\"29-12-2017\",\"30-12-2017\",\"31-12-2017\",\"01-12-2017\",\"02-12-2017\",\"03-12-2017\",\"04-12-2017\",\"05-12-2017\",\"06-12-2017\",\"07-12-2017\",\"08-12-2017\",\"09-12-2017\",\"10-12-2017\",\"11-12-2017\",\"12-12-2017\",\"13-12-2017\",\"14-12-2017\",\"15-12-2017\",\"16-12-2017\",\"17-12-2017\",\"18-12-2017\",\"19-12-2017\",\"20-12-2017\",\"21-12-2017\",\"22-12-2017\",\"23-12-2017\",\"24-12-2017\",\"25-12-2017\",\"26-12-2017\",\"27-12-2017\",\"28-12-2017\",\"29-12-2017\",\"30-12-2017\",\"31-12-2017\",\"01-12-2017\",\"02-12-2017\",\"03-12-2017\",\"04-12-2017\",\"05-12-2017\",\"06-12-2017\",\"07-12-2017\",\"08-12-2017\",\"09-12-2017\",\"10-12-2017\",\"11-12-2017\",\"12-12-2017\",\"13-12-2017\",\"14-12-2017\",\"15-12-2017\",\"16-12-2017\",\"17-12-2017\",\"18-12-2017\",\"19-12-2017\",\"20-12-2017\",\"21-12-2017\",\"22-12-2017\",\"23-12-2017\",\"24-12-2017\",\"25-12-2017\",\"26-12-2017\",\"27-12-2017\",\"28-12-2017\",\"29-12-2017\",\"30-12-2017\",\"31-12-2017\",\"01-12-2017\",\"02-12-2017\",\"03-12-2017\",\"04-12-2017\",\"05-12-2017\",\"06-12-2017\",\"07-12-2017\",\"08-12-2017\",\"09-12-2017\",\"10-12-2017\",\"11-12-2017\",\"12-12-2017\",\"13-12-2017\",\"14-12-2017\",\"15-12-2017\",\"16-12-2017\",\"17-12-2017\",\"18-12-2017\",\"19-12-2017\",\"20-12-2017\",\"21-12-2017\",\"22-12-2017\",\"23-12-2017\",\"24-12-2017\",\"25-12-2017\",\"26-12-2017\",\"27-12-2017\",\"28-12-2017\",\"29-12-2017\",\"30-12-2017\",\"31-12-2017\",\"01-12-2017\",\"02-12-2017\",\"03-12-2017\",\"04-12-2017\",\"05-12-2017\",\"06-12-2017\",\"07-12-2017\",\"08-12-2017\",\"09-12-2017\",\"10-12-2017\",\"11-12-2017\",\"12-12-2017\",\"13-12-2017\",\"14-12-2017\",\"15-12-2017\",\"16-12-2017\",\"17-12-2017\",\"18-12-2017\",\"19-12-2017\",\"20-12-2017\",\"21-12-2017\",\"22-12-2017\",\"23-12-2017\",\"24-12-2017\",\"25-12-2017\",\"26-12-2017\",\"27-12-2017\",\"28-12-2017\",\"29-12-2017\",\"30-12-2017\",\"31-12-2017\",\"01-12-2017\",\"02-12-2017\",\"03-12-2017\",\"04-12-2017\",\"05-12-2017\",\"06-12-2017\",\"07-12-2017\",\"08-12-2017\",\"09-12-2017\",\"10-12-2017\",\"11-12-2017\",\"12-12-2017\",\"13-12-2017\",\"14-12-2017\",\"15-12-2017\",\"16-12-2017\",\"17-12-2017\",\"18-12-2017\",\"19-12-2017\",\"20-12-2017\",\"21-12-2017\",\"22-12-2017\",\"23-12-2017\",\"24-12-2017\",\"25-12-2017\",\"26-12-2017\",\"27-12-2017\",\"28-12-2017\",\"29-12-2017\",\"30-12-2017\",\"31-12-2017\",\"01-12-2017\",\"02-12-2017\",\"03-12-2017\",\"04-12-2017\",\"05-12-2017\",\"06-12-2017\",\"07-12-2017\",\"08-12-2017\",\"09-12-2017\",\"10-12-2017\",\"11-12-2017\",\"12-12-2017\",\"13-12-2017\",\"14-12-2017\",\"15-12-2017\",\"16-12-2017\",\"17-12-2017\",\"18-12-2017\",\"19-12-2017\",\"20-12-2017\"]', '[\"1_0\",\"2_0\",\"3_0\",\"4_0\",\"5_0\",\"6_0\",\"7_0\",\"8_0\",\"9_0\",\"10_0\"]', '2017-12-18 02:58:43', '2017-12-18 02:58:43');

-- --------------------------------------------------------

--
-- Table structure for table `timesheet`
--

CREATE TABLE `timesheet` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `punch_in` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `punch_out` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `week` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timesheet`
--

INSERT INTO `timesheet` (`id`, `user_id`, `punch_in`, `punch_out`, `year`, `week`, `date`, `created_at`, `updated_at`) VALUES
(2, 2, '10:00', '23:02', '2017', '51', '1', '2017-12-18 10:00:56', '2017-12-19 06:01:45'),
(3, 2, '07:03', '18:01', '2017', '51', '2', '2017-12-19 05:03:24', '2017-12-19 05:03:24'),
(5, 2, '07:01', '18:14', '2017', '50', '5', '2017-12-19 09:50:59', '2017-12-19 09:50:59'),
(6, 2, '08:02', '19:03', '2017', '50', '2', '2017-12-19 10:23:42', '2017-12-19 10:23:42'),
(7, 2, '07:01', '18:15', '2017', '50', '1', '2017-12-19 10:23:59', '2017-12-19 10:24:10'),
(8, 2, '07:06', '20:46', '2017', '50', '3', '2017-12-19 10:49:13', '2017-12-19 10:49:13'),
(9, 2, '09:50', '18:44', '2017', '50', '4', '2017-12-19 10:49:36', '2017-12-19 10:49:36'),
(10, 2, '08:30', '19:04', '2017', '50', '6', '2017-12-19 10:51:26', '2017-12-19 10:55:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_position_jobtype`
--

CREATE TABLE `user_position_jobtype` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `position_id` int(10) UNSIGNED NOT NULL,
  `jobtype_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_position_jobtype`
--

INSERT INTO `user_position_jobtype` (`id`, `user_id`, `position_id`, `jobtype_id`) VALUES
(1, 3, 1, 3),
(2, 4, 1, 1),
(3, 5, 1, 3),
(4, 6, 1, 2),
(5, 7, 1, 2),
(6, 8, 2, 3),
(7, 9, 2, 3),
(8, 10, 2, 3),
(9, 11, 2, 3),
(10, 12, 2, 3),
(11, 13, 2, 3),
(12, 14, 2, 3),
(13, 15, 2, 3),
(14, 16, 2, 3),
(15, 17, 2, 3),
(16, 18, 2, 3),
(17, 19, 2, 3),
(18, 20, 2, 3),
(19, 21, 2, 3),
(20, 22, 2, 3),
(21, 23, 2, 3),
(22, 24, 2, 3),
(23, 25, 2, 3),
(24, 26, 2, 3),
(25, 27, 2, 3),
(26, 28, 2, 3),
(27, 29, 2, 3),
(28, 30, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `gender` tinyint(1) NOT NULL DEFAULT '1',
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '/images/user_default.png',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `nationality` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ethnic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CMND` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_CMND` date DEFAULT NULL,
  `address_CMND` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `active`, `gender`, `avatar`, `name`, `permanent_address`, `present_address`, `date_of_birth`, `joining_date`, `nationality`, `ethnic`, `phone_number`, `bank_account_name`, `bank_name`, `CMND`, `date_CMND`, `address_CMND`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'binhpc', 'congbinh@gmail.com', '$2y$10$qkU9pjyO//hO67oof0FDXOJPmcXyfHeMy2aqBYAr6W2O7z5AOPetC', '1', 0, '1.jpg', 'Phạm Công Bình', 'Số 7 đường Cách Mạng Tháng 8, phường 3, TP. Bến Tre, tỉnh Bến Tre', '26A NGUYỄN VĂN CỪ, P.CK, Q.1, TP. HCM', '1992-04-06', '2014-03-16', 'Việt Nam', 'Kinh', '0907000350', '0071004445089', 'Ngân hàng NN&PTNT - Agibank', '233028784', '2008-03-16', 'Số 7 đường Cách Mạng Tháng 8, phường 3, TP. Bến Tre, tỉnh Bến Tre', NULL, NULL, NULL),
(2, 'ducnv', 'vanduc@gmail.com', '$2y$10$xciUFE3oGKLLy08g0u3KcOkionV/mqLTDLuJOVe86tiSUzdbeC6A6', '1', 0, '2.jpg', 'Nguyễn Văn Đức', 'Số 10  đường Phù Đổng Thiên Vươn, phường Suối Hoa, TP.Bắc Ninh, tỉnh Bắc Ninh', '635/13 Hương lộ 2, Phường Bình Trị Đông, Quận Bình Tân, TP Hồ Chí Minh', '1995-02-26', '2014-03-16', 'Việt Nam', 'Kinh', '01214907840', '158602829', 'Ngân hàng Vietcombank', '233032569', '2010-08-20', 'Số 01 Trần Phú, TP.Quy Nhơn, tỉnh Bình Định', NULL, NULL, NULL),
(3, 'binhtt', 'cbinh951@gmail.com', '$2y$10$yCwwuNAZYRQ/F6HZcY.Fiel/Dlzlq09wyqu70gXT9ZrLFA.Hkft1y', '1', 1, '3.jpg', 'Trần Trọng Bình', 'Số 04 đường Phan Đình Phùng, phường 3, TP.Bạc Liêu, tỉnh Bạc Liêu', '81 Đường TA 21, phường Thới An, Quận 12, TP Hồ Chí Minh', '1994-09-10', '2015-05-05', 'Việt Nam', 'Kinh', '01699118349', '10621511216012', 'Ngân hàng Techcombank', '233031256', '2011-04-10', 'Số 04 Hải Thượng Lãn Ông, TP.Phan Thiết, tỉnh Bình Thuận', NULL, NULL, NULL),
(4, 'phutd', 'dinhphu@gmail.com', '$2y$10$vKjfuJJTDKZGHUnaM3C8ce6kruoTY9VZ5GpuZTkjXC.C1RZfRBdMi', '1', 1, '4.jpg', 'Trần Đình Phú', 'Số 82  đường Hùng Vương, TP. Bắc Giang, tỉnh Bắc Gian', '606A Võ Văn Kiệt, Phường Cầu Kho, Quận 1, TP Hồ Chí Minh', '1994-08-20', '2013-02-10', 'Việt Nam', 'Kinh', '0907467077', '10621511216012', 'Ngân hàng NN&PTNT - Agibank', '233016918', '2005-05-17', 'Số 02, đường Hùng Vương, phường 5, TP.Cà Mau, tỉnh Cà Mau', NULL, NULL, NULL),
(5, 'tientq', 'quangtien@gmail.com', '$2y$10$bMTvDNJw0vcQ5djT0qtbe.XoHFKMLNyer/te.3GCKsNCs0Jf9Igfm', '1', 1, '5.jpg', 'Trần Quang Tiến', 'Số 02, đường Hùng Vương, phường 5, TP.Cà Mau, tỉnh Cà Mau', 'Số 988 Đường Vĩnh Lộc, Xã Vĩnh Lộc B, Huyện Bình Chánh, TP Hồ Chí Minh', '1994-09-10', '2014-03-16', 'Việt Nam', 'Kinh', '0979748494', '0107271365', 'Ngân hàng ACB', '233016918', '2009-05-10', 'Số 02, đường Hùng Vương, phường 5, TP.Cà Mau, tỉnh Cà Mau', NULL, NULL, NULL),
(6, 'namnh', 'hoainam@gmail.com', '$2y$10$lqjRZIWlK02tWXadX8z2QOWGzg19wLrySS2PtSOl6HLBWDJ2GTFuC', '1', 0, '6.jpg', 'Nguyễn Hoài Nam', 'Số 16C Tôn Đức Thắng, phường Mỹ Bình, TP. Long Xuyên, tỉnh An Giang', 'Số 8 Đường số 9, Phường Tân Thuận Đông, Quận 7, TP Hồ Chí Minh', '1994-08-20', '2016-05-20', 'Việt Nam', 'Kinh', '0989420655', '0071004445089', 'Ngân hàng Techcombank', '273028784', '2010-08-20', 'Xuân Sơn, Châu Đức, Bà Rịa Vũng Tàu', NULL, NULL, NULL),
(7, 'hwingyt', 'hwing@gmail.com', '$2y$10$0UBGqCcaDg0D1bCzaH7E3.cojX6YBY4z3QUP495M0ldJvTScgFzR2', '1', 1, '7.jpg', 'Y Tuấn Hwing', 'Số 02, đường Hùng Vương, phường 5, TP.Cà Mau, tỉnh Cà Mau', '606A Võ Văn Kiệt, Phường Cầu Kho, Quận 1, TP Hồ Chí Minh', '1991-10-03', '2014-05-17', 'Việt Nam', 'Kinh', '0988992518', '10621511216012', 'Ngân hàng ACB', '233033589', '2010-02-10', 'Số 82  đường Hùng Vương, TP. Bắc Giang, tỉnh Bắc Gian', NULL, NULL, NULL),
(8, 'cuongnd', 'duccuong@gmail.com', '$2y$10$mtYNYodBvEqmPpVutvKCmODEi44e/Qjeynr1g09fTopHvtjwUvMRi', '1', 0, '8.jpg', 'Nguyễn Đức Cường', 'Xuân Sơn, Châu Đức, Bà Rịa Vũng Tàu', 'C3/28 Lê Đình Chi, ấp 3, Xã Lê Minh Xuân, Huyện Bình Chánh, TP Hồ Chí Minh', '1990-10-02', '2015-04-10', 'Việt Nam', 'Kinh', '0906919522', '0071004445089', 'Ngân hàng ACB', '273028784', '2013-05-20', 'Tổ 1A, phường Phùng Chí Kiên, TX.Bắc Kạn, tỉnh Bắc Kạn', NULL, NULL, NULL),
(9, 'dunglvh', 'hoangdung@gmail.com', '$2y$10$FRDahZB1vV/cEvh7m2Z9xe9WPrmoiRYNYA4xnBhmwZ0lqq9ZRfyxS', '1', 1, '9.jpg', 'Lê Viết Hoàng Dũng', 'Số 04 đường Phan Đình Phùng, phường 3, TP.Bạc Liêu, tỉnh Bạc Liêu', 'C3/28 Lê Đình Chi, ấp 3, Xã Lê Minh Xuân, Huyện Bình Chánh, TP Hồ Chí Minh', '1995-02-26', '2015-05-05', 'Việt Nam', 'Kinh', '01699118349', '0107271365', 'Ngân hàng Vietcombank', '233028784', '2009-05-10', 'Số 01 Trần Phú, TP.Quy Nhơn, tỉnh Bình Định', NULL, NULL, NULL),
(10, 'khuongnt', 'trongkhuong@gmail.com', '$2y$10$T5cS.uYCBPblXyKgKLGxF.tsDKyGEh89gU3U2Rsd3w.HGpRUUyq8a', '1', 1, '10.jpg', 'Nguyễn Trọng Khương', 'Số 16C Tôn Đức Thắng, phường Mỹ Bình, TP. Long Xuyên, tỉnh An Giang', '7F Nguyễn Thị Minh Khai, Phường Bến Nghé, Quận 1, TP Hồ Chí Minh', '1994-09-10', '2014-03-16', 'Việt Nam', 'Kinh', '0939166160', '0107271365', 'Ngân hàng Techcombank', '233031256', '2008-05-05', 'Số 04 Hải Thượng Lãn Ông, TP.Phan Thiết, tỉnh Bình Thuận', NULL, NULL, NULL),
(11, 'vunc', 'congvu@gmail.com', '$2y$10$G2EXd6..vM5xEq.ghoSIaOQm8EPT6ta5Kdg4WG4eF7sXom1uX1VPa', '1', 0, '11.jpg', 'Nguyễn Công Vũ', 'Số 04 đường Phan Đình Phùng, phường 3, TP.Bạc Liêu, tỉnh Bạc Liêu', '606A Võ Văn Kiệt, Phường Cầu Kho, Quận 1, TP Hồ Chí Minh', '1992-04-25', '2015-06-15', 'Việt Nam', 'Kinh', '0907467077', '1606205061263', 'Ngân hàng Đông Á', '233031256', '2012-06-15', 'Số 02, đường Hùng Vương, phường 5, TP.Cà Mau, tỉnh Cà Mau', NULL, NULL, NULL),
(12, 'tailh', 'huutai@gmail.com', '$2y$10$n/n4Q8cLParVIIqKUSHMSuiT5IddPCnMVy4.O1DQcDRLQoDXFISlG', '1', 0, '12.jpg', 'Lê Hửu Tài', 'Số 01 Trần Phú, TP.Quy Nhơn, tỉnh Bình Định', '31/40/8 Ung Văn Khiêm, Phường 25, Quận Bình Thạnh, TP Hồ Chí Minh', '1990-10-02', '2016-05-20', 'Việt Nam', 'Kinh', '0939945565', '0071004445089', 'Ngân hàng ACB', '233032569', '2013-05-20', 'Số 04 Hải Thượng Lãn Ông, TP.Phan Thiết, tỉnh Bình Thuận', NULL, NULL, NULL),
(13, 'nhannt', 'thanhnhanh@gmail.com', '$2y$10$r1O.CucFgO9v.JbL/vlVpu1aBv0Pw7R0Vm2SS8FQ012bd1T1v4xJ6', '1', 0, '13.jpg', 'Nguyễn Thành Nhân', 'Số 7 đường Cách Mạng Tháng 8, phường 3, TP. Bến Tre, tỉnh Bến Tre', 'C3/28 Lê Đình Chi, ấp 3, Xã Lê Minh Xuân, Huyện Bình Chánh, TP Hồ Chí Minh', '1991-10-03', '2014-05-17', 'Việt Nam', 'Kinh', '0907000350', '0071004445089', 'Ngân hàng ACB', '233033589', '2008-05-05', 'Số 10  đường Phù Đổng Thiên Vươn, phường Suối Hoa, TP.Bắc Ninh, tỉnh Bắc Ninh', NULL, NULL, NULL),
(14, 'minhpq', 'quangminh@gmail.com', '$2y$10$Ay3MZotNsQX.zu9clEUeQeJJFVOvsCDrnKCDlOsjJ8dX9mTYxNMAy', '1', 0, '14.jpg', 'Phạm Quang Minh', 'Số 01 Trần Phú, TP.Quy Nhơn, tỉnh Bình Định', '26A NGUYỄN VĂN CỪ, P.CK, Q.1, TP. HCM', '1991-05-04', '2013-02-10', 'Việt Nam', 'Kinh', '0907467077', '0107271365', 'Ngân hàng NN&PTNT - Agibank', '273032569', '2005-05-17', 'Số 02, đường Hùng Vương, phường 5, TP.Cà Mau, tỉnh Cà Mau', NULL, NULL, NULL),
(15, 'congnt', 'thanhcong@gmail.com', '$2y$10$k4DQpeJ4a6SiA4k40Nc5TuySOwasp.jNcHEAYyKVf3151MaHygPBC', '1', 1, '15.jpg', 'Nguyễn Thành Công', 'Số 7 đường Cách Mạng Tháng 8, phường 3, TP. Bến Tre, tỉnh Bến Tre', '606A Võ Văn Kiệt, Phường Cầu Kho, Quận 1, TP Hồ Chí Minh', '1994-08-20', '2014-08-20', 'Việt Nam', 'Kinh', '0988992518', '1606205061263', 'Ngân hàng ACB', '273016918', '2012-06-15', 'Số 16C Tôn Đức Thắng, phường Mỹ Bình, TP. Long Xuyên, tỉnh An Giang', NULL, NULL, NULL),
(16, 'thanhnn', 'ngocthanh@gmail.com', '$2y$10$i0zLUVZSc/T70TT0evjn2eYkBIgL0acJGTZs7qIq.o7V3lbYkRLqO', '1', 1, '16.jpg', 'Nguyễn Ngọc Thành', 'Số 10  đường Phù Đổng Thiên Vươn, phường Suối Hoa, TP.Bắc Ninh, tỉnh Bắc Ninh', 'Số 8 Đường số 9, Phường Tân Thuận Đông, Quận 7, TP Hồ Chí Minh', '1991-10-03', '2013-05-10', 'Việt Nam', 'Kinh', '0914409356', '0107271365', 'Ngân hàng NN&PTNT - Agibank', '273031256', '2008-03-16', 'Số 82  đường Hùng Vương, TP. Bắc Giang, tỉnh Bắc Gian', NULL, NULL, NULL),
(17, 'trann', 'ngoctra@gmail.com', '$2y$10$wT83Uu5wWCoy.XmNewLFmOC0gkUojzZ1pom/gJ1NB26Ftu99zVUFW', '1', 1, '17.jpg', 'Nguyễn Ngọc Trà', 'Xuân Sơn, Châu Đức, Bà Rịa Vũng Tàu', '38 Võ Văn Tần, Phường 06, Quận 3, TP Hồ Chí Minh', '1993-04-23', '2013-02-10', 'Việt Nam', 'Kinh', '0907000350', '158602829', 'Ngân hàng Vietinbank', '233032569', '2005-05-17', 'Số 04 Hải Thượng Lãn Ông, TP.Phan Thiết, tỉnh Bình Thuận', NULL, NULL, NULL),
(18, 'namtd', 'dangnam@gmail.com', '$2y$10$1tmuMHLiTbznZDGsCwCrFOx3LWJeT39NxwfuDHMeCCffeFeHZG9By', '1', 1, '18.jpg', 'Trần Đăng Nam', 'Số 02, đường Hùng Vương, phường 5, TP.Cà Mau, tỉnh Cà Mau', '23-25 NGUYỄN HUY TỰ, P.ĐK, Q.1, TP. HCM', '1995-02-26', '2015-04-10', 'Việt Nam', 'Kinh', '0907467077', '158602829', 'Ngân hàng Techcombank', '273033589', '2010-08-20', 'Số 16C Tôn Đức Thắng, phường Mỹ Bình, TP. Long Xuyên, tỉnh An Giang', NULL, NULL, NULL),
(19, 'nhunq', 'quynhnhu@gmail.com', '$2y$10$eG/0yK5Ee84gmnpo6j4QV.pfzRVTgMXPgOAJhAFi5ajHSaXhwJs36', '1', 1, '19.jpg', 'Nguyễn Quỳnh Như', 'Số 82  đường Hùng Vương, TP. Bắc Giang, tỉnh Bắc Gian', '31/40/8 Ung Văn Khiêm, Phường 25, Quận Bình Thạnh, TP Hồ Chí Minh', '1992-04-25', '2013-05-10', 'Việt Nam', 'Kinh', '0907000350', '0107271365', 'Ngân hàng Đông Á', '273033589', '2005-05-17', 'Số 7 đường Cách Mạng Tháng 8, phường 3, TP. Bến Tre, tỉnh Bến Tre', NULL, NULL, NULL),
(20, 'tranglth', 'hoaitrang@gmail.com', '$2y$10$dM4i2WvueaZKy4lPq9VADOqF6oZCCz1a7K1L687ZQEVCUw5SiEiI.', '1', 0, '20.jpg', 'Lê Thu Hoài Trang', 'Số 16C Tôn Đức Thắng, phường Mỹ Bình, TP. Long Xuyên, tỉnh An Giang', '81 Đường TA 21, phường Thới An, Quận 12, TP Hồ Chí Minh', '1994-08-20', '2013-02-10', 'Việt Nam', 'Kinh', '01235099415', '1606205061263', 'Ngân hàng Vietcombank', '273016918', '2009-05-10', 'Số 7 đường Cách Mạng Tháng 8, phường 3, TP. Bến Tre, tỉnh Bến Tre', NULL, NULL, NULL),
(21, 'anhntv', 'vananh@gmail.com', '$2y$10$fjlDpmF2DwvqIwai66kKlupp8Z5jUz4DXZ.tZcU6yqMAmRDX4x2.G', '1', 0, '21.jpg', 'Nguyễn Thị Vân Anh', 'Số 04 Hải Thượng Lãn Ông, TP.Phan Thiết, tỉnh Bình Thuận', 'C3/28 Lê Đình Chi, ấp 3, Xã Lê Minh Xuân, Huyện Bình Chánh, TP Hồ Chí Minh', '1992-04-25', '2015-05-05', 'Việt Nam', 'Kinh', '01689525898', '0107271365', 'Ngân hàng Techcombank', '233032569', '2010-02-10', 'Số 02, đường Hùng Vương, phường 5, TP.Cà Mau, tỉnh Cà Mau', NULL, NULL, NULL),
(22, 'huyenpn', 'ngochuyen@gmail.com', '$2y$10$lpJPQwlARhfYbkTHJJfEseAg4GVkZ8pF4sZ1YCZPUVigFqCdkzuzi', '1', 0, '22.jpg', 'Phạm Ngọc Huyền', 'Số 16C Tôn Đức Thắng, phường Mỹ Bình, TP. Long Xuyên, tỉnh An Giang', '26A NGUYỄN VĂN CỪ, P.CK, Q.1, TP. HCM', '1992-04-25', '2013-05-10', 'Việt Nam', 'Kinh', '0988992518', '0071004445089', 'Ngân hàng Vietinbank', '233031256', '2008-05-05', 'Số 7 đường Cách Mạng Tháng 8, phường 3, TP. Bến Tre, tỉnh Bến Tre', NULL, NULL, NULL),
(23, 'tungtt', 'thanhtung@gmail.com', '$2y$10$mh5hPq1BaxNPp/MAKq50iOeb52JbG/jQfr/EbO0Tl432L8geAukha', '1', 1, '23.jpg', 'Trần Thanh Tùng', 'Tổ 1A, phường Phùng Chí Kiên, TX.Bắc Kạn, tỉnh Bắc Kạn', '31/40/8 Ung Văn Khiêm, Phường 25, Quận Bình Thạnh, TP Hồ Chí Minh', '1992-04-06', '2016-05-20', 'Việt Nam', 'Kinh', '0913199757', '0107271365', 'Ngân hàng ACB', '273016918', '2010-08-20', 'Số 10  đường Phù Đổng Thiên Vươn, phường Suối Hoa, TP.Bắc Ninh, tỉnh Bắc Ninh', NULL, NULL, NULL),
(24, 'tripqm', 'minhtri@gmail.com', '$2y$10$rusCgRrwPvgDQ/gRZvnY/exYMHlGLUZu.7Lt48a22lkOGzEgNObm.', '1', 0, '24.jpg', 'Phùng Quang Minh Trí', 'Số 02, đường Hùng Vương, phường 5, TP.Cà Mau, tỉnh Cà Mau', '23-25 NGUYỄN HUY TỰ, P.ĐK, Q.1, TP. HCM', '1992-04-25', '2014-08-20', 'Việt Nam', 'Kinh', '0939945565', '100000761789', 'Ngân hàng Vietinbank', '233032569', '2010-02-10', 'Số 04 Hải Thượng Lãn Ông, TP.Phan Thiết, tỉnh Bình Thuận', NULL, NULL, NULL),
(25, 'dieund', 'dinhdieu@gmail.com', '$2y$10$IZdAzDAXOIw8osDM.o.8ZOn3qwxQlEzVJA/UABqYiaoXahgWG9eri', '1', 0, '25.jpg', 'Nguyễn Đình Diệu', 'Số 04 đường Phan Đình Phùng, phường 3, TP.Bạc Liêu, tỉnh Bạc Liêu', '151/4 Gò Xoài, Phường Bình Hưng Hòa A, Quận Bình Tân, TP Hồ Chí Minh', '1995-02-26', '2015-06-15', 'Việt Nam', 'Kinh', '0989420655', '0071004445089', 'Ngân hàng ACB', '273033589', '2008-03-16', 'Số 02, đường Hùng Vương, phường 5, TP.Cà Mau, tỉnh Cà Mau', NULL, NULL, NULL),
(26, 'huytn', 'ngochuy@gmail.com', '$2y$10$T0to7UIth.RoZUES1CMJj.AQet4GIHAFYK785m5uodnSIY.HUW4NO', '1', 0, '26.jpg', 'Trần Ngọc Huy', 'Số 01 Trần Phú, TP.Quy Nhơn, tỉnh Bình Định', '38 Võ Văn Tần, Phường 06, Quận 3, TP Hồ Chí Minh', '1992-04-06', '2014-08-20', 'Việt Nam', 'Kinh', '0939945565', '1606205061263', 'Ngân hàng Vietcombank', '233033589', '2010-03-10', 'Số 04 đường Phan Đình Phùng, phường 3, TP.Bạc Liêu, tỉnh Bạc Liêu', NULL, NULL, NULL),
(27, 'nhiny', 'yennhi@gmail.com', '$2y$10$SV53flr9.YDM.s2Cj2f52eRcQHFMh0XyZLTx9ST9ofzOms2ASLEXe', '1', 0, '27.jpg', 'Nguyễn Yến Nhi', 'Số 01 Trần Phú, TP.Quy Nhơn, tỉnh Bình Định', '652 âu Cơ, Phường 10, Quận Tân Bình, TP Hồ Chí Minh', '1992-04-25', '2015-06-15', 'Việt Nam', 'Kinh', '0907000350', '0107271365', 'Ngân hàng Vietcombank', '273031256', '2008-03-16', 'Tổ 1A, phường Phùng Chí Kiên, TX.Bắc Kạn, tỉnh Bắc Kạn', NULL, NULL, NULL),
(28, 'lamln', 'ngoclam@gmail.com', '$2y$10$HkvgL018Xo4tBb9nJSavXeAizqEN.6rjFbabC2kzvXaSpriKU5mEy', '1', 0, '28.jpg', 'Lê Ngọc Lâm', 'Số 10  đường Phù Đổng Thiên Vươn, phường Suối Hoa, TP.Bắc Ninh, tỉnh Bắc Ninh', '7F Nguyễn Thị Minh Khai, Phường Bến Nghé, Quận 1, TP Hồ Chí Minh', '1995-02-26', '2015-06-15', 'Việt Nam', 'Kinh', '01689525898', '1606205061263', 'Ngân hàng Đông Á', '273031256', '2008-05-05', 'Số 04 đường Phan Đình Phùng, phường 3, TP.Bạc Liêu, tỉnh Bạc Liêu', NULL, NULL, NULL),
(29, 'hapv', 'vanha@gmail.com', '$2y$10$PYfoeo141wvZ2.dFaWlnTO5Ilm14PGo0P55y7X/KhVniy6by37.9S', '1', 1, '29.jpg', 'Phạm Văn Hà', 'Tổ 1A, phường Phùng Chí Kiên, TX.Bắc Kạn, tỉnh Bắc Kạn', 'Số 988 Đường Vĩnh Lộc, Xã Vĩnh Lộc B, Huyện Bình Chánh, TP Hồ Chí Minh', '1994-09-10', '2013-02-10', 'Việt Nam', 'Kinh', '0907000350', '0071004445089', 'Ngân hàng ACB', '273028784', '2010-02-10', 'Số 01 Trần Phú, TP.Quy Nhơn, tỉnh Bình Định', NULL, NULL, NULL),
(30, 'duynv', 'vanduy@gmail.com', '$2y$10$5iDvQSKgDJsT4ioJehG45OBtn12VxSv6J9tAM9P5pDp/E78fj2hiu', '1', 0, '30.jpg', 'Nguyễn Văn Duy', 'Xuân Sơn, Châu Đức, Bà Rịa Vũng Tàu', 'C3/28 Lê Đình Chi, ấp 3, Xã Lê Minh Xuân, Huyện Bình Chánh, TP Hồ Chí Minh', '1992-04-25', '2014-05-17', 'Việt Nam', 'Kinh', '0979748494', '0107271365', 'Ngân hàng Techcombank', '233031256', '2012-06-15', 'Số 02, đường Hùng Vương, phường 5, TP.Cà Mau, tỉnh Cà Mau', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_department`
--

CREATE TABLE `users_department` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `manager` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_department`
--

INSERT INTO `users_department` (`id`, `user_id`, `department_id`, `manager`) VALUES
(1, 3, 1, 1),
(2, 4, 2, 1),
(3, 5, 3, 1),
(4, 6, 4, 1),
(5, 7, 5, 1),
(6, 8, 1, NULL),
(7, 9, 1, NULL),
(8, 10, 1, NULL),
(9, 11, 1, NULL),
(10, 12, 2, NULL),
(11, 13, 2, NULL),
(12, 14, 2, NULL),
(13, 15, 2, NULL),
(14, 16, 2, NULL),
(15, 17, 3, NULL),
(16, 18, 3, NULL),
(17, 19, 3, NULL),
(18, 20, 3, NULL),
(19, 21, 3, NULL),
(20, 21, 4, NULL),
(21, 22, 4, NULL),
(22, 23, 4, NULL),
(23, 24, 4, NULL),
(24, 24, 5, NULL),
(25, 25, 5, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `allowance`
--
ALTER TABLE `allowance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_trip`
--
ALTER TABLE `business_trip`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_trip_user_id_foreign` (`user_id`);

--
-- Indexes for table `contract`
--
ALTER TABLE `contract`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contract_create_by_foreign` (`create_by`),
  ADD KEY `contract_employee_foreign` (`employee`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_relatives`
--
ALTER TABLE `employee_relatives`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_relatives_user_id_foreign` (`user_id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_type`
--
ALTER TABLE `job_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_user_id_foreign` (`user_id`),
  ADD KEY `leaves_accepter_id_foreign` (`accepter_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noti`
--
ALTER TABLE `noti`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `noti_user`
--
ALTER TABLE `noti_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `noti_user_user_id_foreign` (`user_id`),
  ADD KEY `noti_user_noti_id_foreign` (`noti_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notification_create_by_foreign` (`create_by`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `retribution`
--
ALTER TABLE `retribution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `retribution_user_id_foreign` (`user_id`),
  ADD KEY `retribution_create_by_foreign` (`create_by`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_user_id_foreign` (`user_id`);

--
-- Indexes for table `salary_allowance`
--
ALTER TABLE `salary_allowance`
  ADD PRIMARY KEY (`user_id`,`allowance_id`),
  ADD KEY `salary_allowance_allowance_id_foreign` (`allowance_id`);

--
-- Indexes for table `timekeeping`
--
ALTER TABLE `timekeeping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timesheet`
--
ALTER TABLE `timesheet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_position_jobtype`
--
ALTER TABLE `user_position_jobtype`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_position_jobtype_user_id_foreign` (`user_id`),
  ADD KEY `user_position_jobtype_position_id_foreign` (`position_id`),
  ADD KEY `user_position_jobtype_jobtype_id_foreign` (`jobtype_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `users_department`
--
ALTER TABLE `users_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_department_user_id_foreign` (`user_id`),
  ADD KEY `users_department_department_id_foreign` (`department_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `allowance`
--
ALTER TABLE `allowance`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `business_trip`
--
ALTER TABLE `business_trip`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `contract`
--
ALTER TABLE `contract`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `employee_relatives`
--
ALTER TABLE `employee_relatives`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `job_type`
--
ALTER TABLE `job_type`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `noti`
--
ALTER TABLE `noti`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `noti_user`
--
ALTER TABLE `noti_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `position`
--
ALTER TABLE `position`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `retribution`
--
ALTER TABLE `retribution`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `timekeeping`
--
ALTER TABLE `timekeeping`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `timesheet`
--
ALTER TABLE `timesheet`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_position_jobtype`
--
ALTER TABLE `user_position_jobtype`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users_department`
--
ALTER TABLE `users_department`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `business_trip`
--
ALTER TABLE `business_trip`
  ADD CONSTRAINT `business_trip_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contract`
--
ALTER TABLE `contract`
  ADD CONSTRAINT `contract_create_by_foreign` FOREIGN KEY (`create_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contract_employee_foreign` FOREIGN KEY (`employee`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_relatives`
--
ALTER TABLE `employee_relatives`
  ADD CONSTRAINT `employee_relatives_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_accepter_id_foreign` FOREIGN KEY (`accepter_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leaves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `noti_user`
--
ALTER TABLE `noti_user`
  ADD CONSTRAINT `noti_user_noti_id_foreign` FOREIGN KEY (`noti_id`) REFERENCES `noti` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noti_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_create_by_foreign` FOREIGN KEY (`create_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `retribution`
--
ALTER TABLE `retribution`
  ADD CONSTRAINT `retribution_create_by_foreign` FOREIGN KEY (`create_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `retribution_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_allowance`
--
ALTER TABLE `salary_allowance`
  ADD CONSTRAINT `salary_allowance_allowance_id_foreign` FOREIGN KEY (`allowance_id`) REFERENCES `allowance` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `salary_allowance_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `user_position_jobtype`
--
ALTER TABLE `user_position_jobtype`
  ADD CONSTRAINT `user_position_jobtype_jobtype_id_foreign` FOREIGN KEY (`jobtype_id`) REFERENCES `job_type` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_position_jobtype_position_id_foreign` FOREIGN KEY (`position_id`) REFERENCES `position` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_position_jobtype_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users_department`
--
ALTER TABLE `users_department`
  ADD CONSTRAINT `users_department_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_department_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `java_training`
--
CREATE DATABASE IF NOT EXISTS `java_training` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `java_training`;

-- --------------------------------------------------------

--
-- Table structure for table `annual_employee`
--

CREATE TABLE `annual_employee` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `salary` double NOT NULL,
  `date_work` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `annual_employee`
--

INSERT INTO `annual_employee` (`id`, `employee_id`, `salary`, `date_work`) VALUES
(1, 1, 7000000, 20),
(2, 4, 9200000, 21),
(3, 5, 8450000, 22),
(4, 9, 12425000, 25);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `phone`, `email`) VALUES
(1, 'Nguyen Van Duc', '01698712430', 'ducnv@gmail.com'),
(2, 'Tran Quoc Thong', '0169852564', 'thongtq@gmail.com'),
(3, 'Phan Van Nghi', '0985258695', 'nghipv@gmail.com'),
(4, 'Tran Dinh Phu', '0987552584', 'phutd@gmail.com'),
(5, 'Hoang Thai Minh', '0123562223', 'minhht@gmail.com'),
(6, 'Nguyen Van Duc', '0169872430', 'anhducmata@gmail.com'),
(7, 'Nguyen Gia Bao', '0252526666', 'baong@gmail.com'),
(8, 'Nguyen Van Duc', '0169872430', 'anhducmata@gmail.com'),
(10, 'Nguyen Van Duc', '0169872430', 'anhducmata@gmail.com'),
(11, 'Nguyen Van Duc', '0169872430', 'anhducmata@gmail.com'),
(12, 'Nguyen Van Duc', '0169872430', 'anhducmata@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `hours_employee`
--

CREATE TABLE `hours_employee` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `hours` int(11) NOT NULL,
  `hourly_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hours_employee`
--

INSERT INTO `hours_employee` (`id`, `employee_id`, `hours`, `hourly_price`) VALUES
(1, 2, 21, 30000),
(2, 6, 30, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `intern`
--

CREATE TABLE `intern` (
  `id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `datework` int(11) NOT NULL,
  `allowance` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `intern`
--

INSERT INTO `intern` (`id`, `employee_id`, `datework`, `allowance`) VALUES
(1, 3, 12, 3000000),
(2, 7, 10, 3000000),
(3, 8, 20, 3000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `annual_employee`
--
ALTER TABLE `annual_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hours_employee`
--
ALTER TABLE `hours_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intern`
--
ALTER TABLE `intern`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `annual_employee`
--
ALTER TABLE `annual_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `hours_employee`
--
ALTER TABLE `hours_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `intern`
--
ALTER TABLE `intern`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `new`
--
CREATE DATABASE IF NOT EXISTS `new` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `new`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`) VALUES
(1, 'Thể thao'),
(2, 'Sự kiện'),
(3, 'Giải trí'),
(4, 'Đời sống xã hội'),
(5, 'Xe máy - otô'),
(6, 'Sức khỏe'),
(7, 'Pháp luật'),
(8, 'Tin tức thế giới'),
(9, 'Thời trang Hi-Tech'),
(10, 'Pháp luật');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `comment_date` datetime DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `comment_date`, `content`, `post_id`, `user_name`) VALUES
(1, '2017-09-07 14:51:32', 'Liên quan quá :D', 1, 'admin'),
(2, '2017-09-07 14:51:43', 'sao post kỳ vậy má', 1, 'admin'),
(3, '2017-09-07 16:17:21', 'to test comment', 4, 'user1'),
(4, '2017-09-07 16:18:24', 'alert(\"You false\");/script', 4, 'user1'),
(5, '2017-09-07 16:20:12', 'alert(\"You false\");/script', 4, 'user1');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(11) NOT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `link`, `menu_name`, `parent_id`) VALUES
(14, '/home/category/1', 'Tin Tức', 0),
(15, '/home/category/6', 'Sức Khỏe', 14),
(16, '/home/category/5', 'Xe Cộ', 0),
(17, '/home/category/9', 'Game', 14);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `author_username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `date_create` datetime DEFAULT NULL,
  `date_update` datetime DEFAULT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `tag` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `author_username`, `category_id`, `content`, `date_create`, `date_update`, `image`, `status`, `tag`, `title`) VALUES
(4, 'manager', 7, '<p>Hamza Bendelladj sinh năm 1988 tại Tizi-Ouzou, một tỉnh nằm ở ph&iacute;a Bắc Algeria (một đất nước được xem l&agrave; c&oacute; nhiều bất ổn về ch&iacute;nh trị).</p>\r\n\r\n<p>Tuy lớn l&ecirc;n trong điều kiện c&ograve;n nhiều hạn chế thế ngay từ nhỏ, cậu b&eacute; Hamza đ&atilde; c&oacute; một niềm đam m&ecirc; rất lớn với m&aacute;y t&iacute;nh, đặc biệt l&agrave; t&igrave;m t&ograve;i v&agrave; m&atilde; h&oacute;a c&aacute;c d&ograve;ng lệnh. Lớn l&ecirc;n, Hamza theo đuổi chuy&ecirc;n ng&agrave;nh Khoa học m&aacute;y t&iacute;nh v&agrave; trở th&agrave;nh một sinh vi&ecirc;n xuất sắc của trường.</p>\r\n\r\n<p>Ngo&agrave;i kỹ thuật m&atilde; h&oacute;a đ&atilde; đến mức &ldquo;bậc thầy&rdquo;, Hamza c&ograve;n c&oacute; thể sử dụng th&agrave;nh thạo 5 ngoại ngữ kh&aacute;c nhau. Ai cũng nghĩ rằng tương lai Hamza sẽ l&agrave; một lập tr&igrave;nh vi&ecirc;n h&agrave;ng đầu, tuy nhi&ecirc;n, ch&agrave;ng thanh ni&ecirc;n n&agrave;y lại sử dụng t&agrave;i năng cho mục đ&iacute;ch kh&aacute;c khi trở th&agrave;nh hacker &ldquo;mũ đen&rdquo;.</p>\r\n\r\n<p>Hamza l&agrave; một hacker rất c&oacute; tiếng tăm với mật danh &quot;Bx1&quot; ở thế giới ngầm. Anh v&agrave; nh&oacute;m bạn của anh đ&atilde; tạo n&ecirc;n một phần mềm độc hại v&agrave;o năm 2009 với t&ecirc;n l&agrave; SpyEye.</p>\r\n\r\n<p>Trước khi SpyEye được ra đời th&igrave; cả thế giới đang đau đầu với phần mềm độc hại Zeus. Sau khi Zeus im hơi lặng tiếng một thời gian th&igrave; SpyEye đ&atilde; xuất hiện. Điều đặc biệt v&agrave; khiến c&aacute;c nh&agrave; bảo mật th&ecirc;m một phen lo sợ ch&iacute;nh v&igrave; SpyEye l&agrave; bản n&acirc;ng cấp của Zeus.</p>\r\n\r\n<p>Ước t&iacute;nh 1,4 triệu m&aacute;y t&iacute;nh ở Mỹ v&agrave; những nơi kh&aacute;c đ&atilde; nhiễm SpyEye. Người sử dụng phần mềm v&ocirc; t&igrave;nh k&iacute;ch hoạt SpyEye sẽ bị ăn cắp c&aacute;c th&ocirc;ng tin đăng nhập t&agrave;i khoản trực tuyến, những th&ocirc;ng tin về thẻ t&iacute;n dụng, mật m&atilde;, t&agrave;i khoản kể cả địa chỉ của từng nạn nh&acirc;n c&oacute; li&ecirc;n kết với ng&acirc;n h&agrave;ng sẽ được chuyển về m&aacute;y t&iacute;nh c&aacute; nh&acirc;n của anh ta.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ lấy tiền từ c&aacute;c ng&acirc;n h&agrave;ng, Hamza c&ograve;n b&aacute;n c&aacute;c th&ocirc;ng tin người d&ugrave;ng với gi&aacute; từ 1.000 USD đến 8.000 USD/t&agrave;i khoản.</p>\r\n\r\n<p>B&ocirc;̣ Tư pháp Hoa Kỳ m&ocirc; tả SpyEye là m&ocirc;̣t mã đ&ocirc;̣c ng&acirc;n hàng ưu vi&ecirc;̣t đã l&acirc;y nhi&ecirc;̃m vào 50 tri&ecirc;̣u máy tính tr&ecirc;n toàn c&acirc;̀u từ năm 2010 tới 2012, g&acirc;y thi&ecirc;̣t hại g&acirc;̀n 1 tỷ USD cho các cá nh&acirc;n và các t&ocirc;̉ chức tài chính toàn c&acirc;̀u.</p>\r\n\r\n<p>Hamza sau đ&oacute; nhanh ch&oacute;ng nằm trong top đầu những tội phạm c&ocirc;ng nghệ bị FBI truy n&atilde; tr&ecirc;n khắp thế giới c&ugrave;ng với những người bạn của m&igrave;nh, do đ&atilde; d&ugrave;ng c&aacute;c m&atilde; độc để tấn c&ocirc;ng hơn 200 ng&acirc;n h&agrave;ng v&agrave; lấy đi hơn 280 triệu USD.</p>\r\n\r\n<p>Sau 3 năm bị truy n&atilde; gắt gao, ng&agrave;y 6/1/2013, Hamza đ&atilde; bị bắt tại Th&aacute;i Lan khi đang đi du lịch c&ugrave;ng vợ con.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, trong khi với phương T&acirc;y, Hamza kh&ocirc;ng kh&aacute;c g&igrave; một t&ecirc;n tội phạm đặc biệt nguy hiểm v&agrave; cần bắt giữ ngay lập tức th&igrave; ở qu&ecirc; nh&agrave;, Hamza Bendelladj l&agrave; tin tặc được h&agrave;ng triệu người Algeria thần tượng.</p>\r\n\r\n<p>L&yacute; do l&agrave; bởi trong số hơn 280 triệu USD lấy được, Hamza d&agrave;nh phần lớn để quy&ecirc;n g&oacute;p cho c&aacute;c tổ chức từ thiện tại Palestine v&agrave; ch&acirc;u Phi để gi&uacute;p đỡ người ngh&egrave;o v&agrave; trẻ em lang thang cơ nhỡ. Đ&oacute; l&agrave; l&yacute; do tại sao nhiều người gọi Hamza l&agrave; &ldquo;Robin Hood thời hiện đại&rdquo;.</p>\r\n\r\n<p>Sau khi bị bắt, rất nhiều người ủng hộ anh đ&atilde; bắt đầu một chiến dịch bảo vệ Hamza. Kết quả Hamza đ&atilde; bị kết &aacute;n 15 năm t&ugrave; giam, &aacute;n phạt được coi l&agrave; kh&aacute; nhẹ so với những g&igrave; m&agrave; hacker n&agrave;y g&acirc;y ra.</p>\r\n', '2017-09-07 00:00:00', '2017-09-07 00:00:00', NULL, 1, 'Kỳ án thế giới', '“Robin Hood của giới hacker”: “Cướp” hơn 200 ngân hàng để… giúp người nghèo'),
(5, 'manager', 6, '<p>Hoạt động của b&uacute;t kh&aacute; đơn giản. C&aacute;c b&aacute;c sĩ sẽ chạm b&uacute;t v&agrave;o khối u m&agrave; họ cần x&aacute;c định l&agrave; l&agrave;nh t&iacute;nh hay &aacute;c t&iacute;nh. Một giọt dung dịch nhỏ sẽ được bơm ra từ b&uacute;t. C&aacute;c h&oacute;a chất b&ecirc;n trong tế b&agrave;o sống sẽ tự di chuyển v&agrave;o giọt n&agrave;y, sau đ&oacute; b&uacute;t sẽ h&uacute;t lại giọt dung dịch v&agrave; tiến h&agrave;nh ph&acirc;n t&iacute;ch.</p>\r\n\r\n<p>Sau đ&oacute;, b&uacute;t được cắm v&agrave;o một m&aacute;y quang phổi khối &ndash; một dụng cụ c&oacute; khả năng ph&acirc;n t&iacute;ch h&agrave;ng ng&agrave;n h&oacute;a chất mỗi gi&acirc;y. N&oacute; tạo ra một dấu t&iacute;ch h&oacute;a học c&oacute; thể n&oacute;i l&ecirc;n c&aacute;c m&ocirc; được thử l&agrave; l&agrave;nh t&iacute;nh hay m&ocirc; ung thư.</p>\r\n\r\n<p>Theo c&aacute;c b&aacute;o c&aacute;o vừa được c&ocirc;ng bố tr&ecirc;n tạp ch&iacute; khoa học Science Translational Medicine, c&ocirc;ng nghệ n&agrave;y đ&atilde; x&aacute;c định đ&uacute;ng 96% trong số 253 mẫu thử nghiệm, v&agrave; chỉ mất khoảng 10 gi&acirc;y cho một lần thử.</p>\r\n\r\n<p>C&ocirc;ng nghệ mới được kỳ vọng sẽ gi&uacute;p c&aacute;c b&aacute;c sĩ phẫu thuật giải quyết rắc rối mu&ocirc;n thuở: ph&acirc;n biệt rạch r&ograve;i giữa m&ocirc; bệnh v&agrave; m&ocirc; l&agrave;nh khi mổ. Trong phẫu trị ung thư, ranh giới giữa c&aacute;c m&ocirc; l&agrave;nh v&agrave; m&ocirc; bệnh đ&ocirc;i khi kh&aacute; mờ nhạt. Nếu loại bỏ qu&aacute; &iacute;t m&ocirc;, bất cứ tế b&agrave;o ung thư n&agrave;o c&ograve;n s&oacute;t lại cũng c&oacute; thể ph&aacute;t triển th&agrave;nh khối u mới. Ngược lại, cắt lọc qu&aacute; nhiều sẽ g&acirc;y thiệt hại cho cơ quan đang được phẫu thuật, khiến&nbsp;<a href=\"http://www.24h.com.vn/suc-khoe-doi-song-c62.html\" title=\"sức khỏe\">sức khỏe</a>&nbsp;bệnh nh&acirc;n xấu đi v&agrave; c&agrave;ng kh&oacute; khăn trong việc phục hồi.</p>\r\n\r\n<p>Tiến sĩ James Suliburk, th&agrave;nh vi&ecirc;n nh&oacute;m nghi&ecirc;n cứu, người đứng đầu nh&oacute;m phẫu thuật nội tiết Đại học y Baylor, cho biết: &quot;Điều ch&uacute;ng t&ocirc;i muốn l&agrave; đem đến cho bệnh nh&acirc;n một cuộc phẫu thuật ch&iacute;nh x&aacute;c hơn, nhanh hơn v&agrave; an to&agrave;n hơn&quot;.</p>\r\n\r\n<p>Hiện b&uacute;t MasSpec vẫn đang được tiếp tục nghi&ecirc;n cứu v&agrave; cải tiến để độ ch&iacute;nh x&aacute;c cao hơn, tiện dụng hơn v&agrave; c&oacute; gi&aacute; th&agrave;nh thấp hơn.</p>\r\n', '2017-09-07 00:00:00', '2017-09-07 00:00:00', 'fgfgd', 0, 'Ung thư', 'Bút thử… ung thư, phát hiện bệnh trong 10 giây!'),
(6, 'admin', 9, '<p>Trở lại c&acirc;u chuyện v&agrave;o th&aacute;ng 2, Tổng thống Mỹ Donald Trump được bắt gặp đang tr&ograve; chuyện bằng một chiếc điện thoại chạy hệ điều h&agrave;nh Android cũ kỹ trong một cuộc họp về khủng hoảng ở Bắc Triều Ti&ecirc;n. Chiếc điện thoại n&agrave;y ch&iacute;nh l&agrave; Galaxy S3 với vỏ d&agrave;y v&agrave; được Tổng thống Trump sử dụng từ trước khi nhậm chức. Một nh&oacute;m thượng nghị sĩ sau đ&oacute; đ&atilde; viết thư cho Bộ Quốc ph&ograve;ng Mỹ cho biết, điện thoại Android cũ kỹ n&agrave;y của Tổng thống Trump kh&ocirc;ng an to&agrave;n v&agrave; c&oacute; nguy cơ sẽ bị tin tặc tấn c&ocirc;ng.</p>\r\n\r\n<p>Ch&iacute;nh v&igrave; thế sau đ&oacute; Tổng thống Trump đ&atilde; được chuyển sang d&ugrave;ng một thiết bị di động an to&agrave;n hơn. Đ&oacute; ch&iacute;nh l&agrave; một chiếc iPhone. Thế nhưng chiếc điện thoại n&agrave;y, cũng giống như c&aacute;c điện thoại kh&aacute;c d&agrave;nh cho tổng thống, của Tổng thống Trump lại c&oacute; rất &iacute;t chức năng. Thậm ch&iacute; ngay cả tr&igrave;nh duyệt Safari cũng kh&ocirc;ng c&oacute; m&agrave; chỉ c&oacute; một ứng dụng duy nhất l&agrave; Twitter.</p>\r\n\r\n<p>Nh&acirc;n vi&ecirc;n Nh&agrave; Trắng cho biết, họ đang cố gắng giữ Tổng thống tập trung v&agrave;o c&aacute;c cuộc họp v&agrave; chương tr&igrave;nh nghị sự bận rộn, để &ocirc;ng kh&ocirc;ng c&ograve;n thời gian theo d&otilde;i c&aacute;c tin tức truyền th&ocirc;ng v&agrave; thường đưa ra những b&igrave;nh luận chưa chọn lọc. Nhưng những lời b&igrave;nh luận đ&oacute; khi được đưa ra lại l&agrave; một nguồn thảo luận v&ocirc; tận tr&ecirc;n c&aacute;c phương tiện truyền th&ocirc;ng.</p>\r\n\r\n<p>Steve Bannon, cựu cố vấn của Tổng thống, thậm ch&iacute; trước đ&acirc;y c&ograve;n phải sử dụng c&aacute;c bản in giấy từ c&aacute;c b&agrave;i viết, v&igrave; Tổng thống Trump kh&ocirc;ng sử dụng m&aacute;y t&iacute;nh x&aacute;ch tay v&agrave; kh&ocirc;ng c&oacute; ứng dụng Safari tr&ecirc;n iPhone. Điện thoại n&agrave;y cũng kh&ocirc;ng giống với bất kỳ bộ nhớ của điện thoại n&agrave;o kh&aacute;c, để đảm bảo iPhone của Tổng thống c&oacute; thể kết th&uacute;c chạy ứng dụng Twitter. C&aacute;c chức năng c&ograve;n lại được thiết lập cấu h&igrave;nh điều khiển từ xa với phần mềm quản l&yacute; thiết bị di động của Apple do nh&acirc;n vi&ecirc;n Mật Vụ thực hiện. Nhưng điểm lạ l&agrave; ứng dụng Twitter th&igrave; kh&ocirc;ng bị c&aacute;c giới hạn.</p>\r\n', '2017-09-07 00:00:00', '2017-09-07 00:00:00', NULL, 1, 'Hi-Tech', 'LẠ: iPhone của Tổng thống Trump chỉ có duy nhất một ứng dụng'),
(7, 'author', 2, '<p><strong><span style=\"background-color:#c0392b\">Cuối phi&ecirc;n x&eacute;t xử s&aacute;ng 7/9, chủ tọa Trần Nam H&agrave; bất ngờ cắt lời c&aacute;c luật sư để x&eacute;t hỏi Nguyễn Xu&acirc;n Sơn li&ecirc;n quan đến số tiền cựu Tổng gi&aacute;m đốc Oceanbank chuyển cho &ocirc;ng Ninh Văn Quỳnh để gửi cho l&atilde;nh đạo tập đo&agrave;n PVN d&ugrave;ng v&agrave;o việc đối ngoại.</span></strong></p>\r\n', '2017-09-07 00:00:00', '2017-09-07 00:00:00', 'https://yt3.ggpht.com/-PYu3m-iQg98/AAAAAAAAAAI/AAAAAAAAAAA/kGUTQwiGFrc/s900-c-k-no-mo-rj-c0xffffff/photo.jpg', 0, 'dsfdsf', 'dfgsfdsfds');

-- --------------------------------------------------------

--
-- Table structure for table `post_like`
--

CREATE TABLE `post_like` (
  `id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `post_like`
--

INSERT INTO `post_like` (`id`, `post_id`, `username`) VALUES
(1, 1, 'admin'),
(2, 4, 'manager');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `role_name`, `role_status`) VALUES
(1, 'ROLE_ADMIN', 1),
(2, 'ROLE_MANAGER', 1),
(3, 'ROLE_USER', 1),
(4, 'ROLE_AUTHOR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `role_role_id` int(11) NOT NULL,
  `userList_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL,
  `role` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `username` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `enabled` bit(1) NOT NULL DEFAULT b'0',
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `enabled`, `password`, `username`, `role_id`) VALUES
(3, b'1111111111111111111111111111111', '$2a$10$xBenU9F3UskR./LYhsMvG.EYWmzr5.zuSG4/jrEHWTVdzmMg.akTy', 'ldt', 1),
(4, b'1111111111111111111111111111111', '$2a$10$bsoeFCugaeQZEXddiI/oZOUiG50Ijl4XAVdaEds0A.a2164KOB6gG', 'admin', 1),
(5, b'1111111111111111111111111111111', '$2a$10$f02Omzw4kogv60l2IoLAEevnVWfDdSR4Io2SnNtOCb.X7spKiW6gO', 'author1', 4),
(6, b'1111111111111111111111111111111', '$2a$10$jaaDncJ20m22dLjm66NF3OHv7A76w2E4wMrT.MCjr.EBcMbpYZBBa', 'manager1', 1),
(7, b'1111111111111111111111111111111', '$2a$10$1jfwyT3HcC5YV2pfUSBxs.dxyWGEoO6PLkwzzCmYGHI2/DCzlesEW', 'user1', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_like`
--
ALTER TABLE `post_like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD UNIQUE KEY `UK_2crvn1u6d0n6bogvvch7vv1gt` (`userList_id`),
  ADD KEY `FK_4os0eh9iulec3le9w6cng7qjc` (`role_role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`),
  ADD UNIQUE KEY `UK_stlxfukw77ov5w1wo1tm3omca` (`role`,`username`),
  ADD KEY `FK_9ry105icat2dux14oyixybw9l` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_r43af9ap4edm43mmtq01oddj6` (`username`),
  ADD KEY `FK_krvotbtiqhudlkamvlpaqus0t` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `post_like`
--
ALTER TABLE `post_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `FK_2crvn1u6d0n6bogvvch7vv1gt` FOREIGN KEY (`userList_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `FK_4os0eh9iulec3le9w6cng7qjc` FOREIGN KEY (`role_role_id`) REFERENCES `role` (`role_id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FK_9ry105icat2dux14oyixybw9l` FOREIGN KEY (`username`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_krvotbtiqhudlkamvlpaqus0t` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`);
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Dumping data for table `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"relation_lines\":\"true\",\"snap_to_grid\":\"off\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Dumping data for table `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'hrmdb', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"hrm\",\"java_training\",\"new\",\"phpmyadmin\",\"t1\",\"test\",\"testdb\"],\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"json_structure_or_data\":\"data\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Structure of table @TABLE@\",\"latex_structure_continued_caption\":\"Structure of table @TABLE@ (continued)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Content of table @TABLE@\",\"latex_data_continued_caption\":\"Content of table @TABLE@ (continued)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"htmlword_columns\":null,\"json_pretty_print\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"hrm\",\"table\":\"timesheet\"},{\"db\":\"hrm\",\"table\":\"salary\"},{\"db\":\"hrm\",\"table\":\"users\"},{\"db\":\"hrm\",\"table\":\"timekeeping\"},{\"db\":\"hrm\",\"table\":\"employee_relatives\"},{\"db\":\"hrm\",\"table\":\"noti\"},{\"db\":\"hrm\",\"table\":\"noti_user\"},{\"db\":\"hrm\",\"table\":\"notification\"},{\"db\":\"hrm\",\"table\":\"role_user\"},{\"db\":\"hrm\",\"table\":\"roles\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Dumping data for table `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'java_training', 'annual_employee', '{\"sorted_col\":\"`date_work`  DESC\"}', '2017-08-18 10:51:23'),
('root', 'java_training', 'hours_employee', '{\"sorted_col\":\"`hourly_price` ASC\"}', '2017-08-18 10:51:26'),
('root', 'java_training', 'intern', '[]', '2017-08-16 02:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-08-14 04:26:05', '{\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `t1`
--
CREATE DATABASE IF NOT EXISTS `t1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `t1`;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_role_id`, `username`, `role`) VALUES
(2, 'mkyong', 'ROLE_ADMIN'),
(3, 'alex', 'ROLE_USER'),
(1, 'mkyong', 'ROLE_USER');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `enabled`) VALUES
('alex', '123456', 1),
('mkyong', '123456', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`),
  ADD UNIQUE KEY `uni_username_role` (`role`,`username`),
  ADD KEY `fk_username_idx` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `fk_username` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `AVG_SALARY` int(11) DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `DEPARTMENT_ID` int(11) DEFAULT NULL,
  `FIRST_NAME` varchar(255) DEFAULT NULL,
  `LAST_NAME` varchar(255) DEFAULT NULL,
  `SALARY` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `PROJECT_INFO` varchar(255) DEFAULT NULL,
  `PROJECT_NAME` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_role_id` int(11) NOT NULL,
  `role` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(45) NOT NULL,
  `enabled` bit(1) NOT NULL,
  `password` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tkrpjy48htun8k01qpsyy5hco` (`DEPARTMENT_ID`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_one67esaj26eqd9liqd1utb9r` (`EMPLOYEE_ID`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_role_id`),
  ADD UNIQUE KEY `UK_stlxfukw77ov5w1wo1tm3omca` (`role`,`username`),
  ADD KEY `FK_9ry105icat2dux14oyixybw9l` (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `user_role_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FK_tkrpjy48htun8k01qpsyy5hco` FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `department` (`id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `FK_one67esaj26eqd9liqd1utb9r` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employee` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `FK_9ry105icat2dux14oyixybw9l` FOREIGN KEY (`username`) REFERENCES `users` (`username`);
--
-- Database: `testdb`
--
CREATE DATABASE IF NOT EXISTS `testdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `testdb`;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department_employee`
--

CREATE TABLE `department_employee` (
  `department_id` int(11) NOT NULL,
  `employees_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `month_salary` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `department` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `employee_project`
--

CREATE TABLE `employee_project` (
  `employee_id` int(11) NOT NULL,
  `projects_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(11) NOT NULL,
  `project_name` varchar(255) DEFAULT NULL,
  `project_manager` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department_employee`
--
ALTER TABLE `department_employee`
  ADD UNIQUE KEY `UK_es9e7d9auia6ay3aowsebjluj` (`employees_id`),
  ADD KEY `FK_e8un9ahx1am1s7m83uqhco234` (`department_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_7n66rge4v2cl78jahuxce9erw` (`department`);

--
-- Indexes for table `employee_project`
--
ALTER TABLE `employee_project`
  ADD UNIQUE KEY `UK_45jsbbckcygjh5svgdfs35o8c` (`projects_id`),
  ADD KEY `FK_36ry5bdvacuwaem8s42wdvdai` (`employee_id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_5oroo4shbdhxls3l1eumkqk50` (`project_manager`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `department_employee`
--
ALTER TABLE `department_employee`
  ADD CONSTRAINT `FK_e8un9ahx1am1s7m83uqhco234` FOREIGN KEY (`department_id`) REFERENCES `department` (`id`),
  ADD CONSTRAINT `FK_es9e7d9auia6ay3aowsebjluj` FOREIGN KEY (`employees_id`) REFERENCES `employee` (`id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `FK_7n66rge4v2cl78jahuxce9erw` FOREIGN KEY (`department`) REFERENCES `department` (`id`);

--
-- Constraints for table `employee_project`
--
ALTER TABLE `employee_project`
  ADD CONSTRAINT `FK_36ry5bdvacuwaem8s42wdvdai` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`),
  ADD CONSTRAINT `FK_45jsbbckcygjh5svgdfs35o8c` FOREIGN KEY (`projects_id`) REFERENCES `project` (`id`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `FK_5oroo4shbdhxls3l1eumkqk50` FOREIGN KEY (`project_manager`) REFERENCES `employee` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
