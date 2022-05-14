-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2021 at 05:42 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppro1.1.3`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_notify` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `start_date`, `end_date`, `summary`, `description`, `company_id`, `department_id`, `added_by`, `is_notify`, `created_at`, `updated_at`) VALUES
(2, 'New Announcement', '2021-03-30', '2021-04-01', 'New announcement of happiness', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 1, NULL, 'ash', 1, '2021-03-30 05:00:13', '2021-03-30 05:00:13'),
(5, 'Hello', '2020-10-13', '2021-03-30', '2021-03-30', 'dasda', 1, 1, 'ash', 1, '2021-03-30 05:00:13', '2021-03-30 05:00:13');

-- --------------------------------------------------------

--
-- Table structure for table `appraisals`
--

CREATE TABLE `appraisals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `designation_id` bigint(20) UNSIGNED NOT NULL,
  `customer_experience` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marketing` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `administration` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `professionalism` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `integrity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appraisals`
--

INSERT INTO `appraisals` (`id`, `company_id`, `employee_id`, `department_id`, `designation_id`, `customer_experience`, `marketing`, `administration`, `professionalism`, `integrity`, `attendance`, `remarks`, `date`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 1, 2, 'Beginner', 'Beginner', 'Intermidiate', 'Advanced', 'None', 'None', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '01/17/2021', '2021-01-17 06:36:09', '2021-01-17 06:43:12'),
(2, 1, 10, 2, 3, 'Advanced', 'Beginner', 'Advanced', 'Intermidiate', 'Expert/Leader', 'Beginner', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '01/18/2021', '2021-01-17 06:36:58', '2021-01-17 06:42:56'),
(4, 1, 12, 3, 5, 'Beginner', 'None', 'None', 'Intermidiate', 'None', 'None', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '01/19/2021', '2021-01-17 06:37:53', '2021-01-17 06:37:53'),
(5, 2, 14, 4, 6, 'Intermidiate', 'None', 'None', 'Intermidiate', 'None', 'None', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.', '01/20/2021', '2021-01-17 06:38:20', '2021-01-17 06:38:20');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `asset_code` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assets_category_id` bigint(20) UNSIGNED NOT NULL,
  `Asset_note` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serial_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_date` date NOT NULL,
  `warranty_date` date NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `asset_name`, `company_id`, `employee_id`, `asset_code`, `assets_category_id`, `Asset_note`, `manufacturer`, `serial_number`, `invoice_number`, `asset_image`, `purchase_date`, `warranty_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 1, 9, 'lap-01', 1, NULL, 'Asus', '637256', 'Inv-090', NULL, '2020-10-25', '2021-05-30', 'yes', '2020-07-29 06:16:05', '2020-07-29 06:16:05');

-- --------------------------------------------------------

--
-- Table structure for table `asset_categories`
--

CREATE TABLE `asset_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `asset_categories`
--

INSERT INTO `asset_categories` (`id`, `company_id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, NULL, 'laptop', '2020-07-29 06:15:07', '2020-07-29 06:15:07');

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `clock_in` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clock_in_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clock_out` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clock_out_ip` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clock_in_out` tinyint(4) NOT NULL,
  `time_late` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00:00',
  `early_leaving` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00:00',
  `overtime` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00:00',
  `total_work` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00:00',
  `total_rest` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '00:00',
  `attendance_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'present'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `employee_id`, `attendance_date`, `clock_in`, `clock_in_ip`, `clock_out`, `clock_out_ip`, `clock_in_out`, `time_late`, `early_leaving`, `overtime`, `total_work`, `total_rest`, `attendance_status`) VALUES
(3, 9, '2021-03-30', '10:00', '::1', '11:14', '::1', 0, '00:00', '02:45', '00:00', '01:14', '00:00', 'present'),
(5, 10, '2021-03-30', '10:00', '', '14:00', '', 0, '00:00', '00:00', '00:00', '04:00', '00:00', 'present'),
(6, 11, '2021-03-30', '10:05', '', '14:05', '', 0, '00:05', '00:00', '00:05', '04:00', '00:00', 'present'),
(7, 12, '2021-03-30', '10:20', '', '14:50', '', 0, '00:20', '00:00', '00:50', '04:30', '00:00', 'present'),
(9, 9, '2021-03-30', '11:25', '::1', '14:40', '::1', 0, '00:00', '00:00', '00:40', '03:15', '00:11', 'present'),
(10, 9, '2021-03-29', '10:00', '::1', '14:00', '::1', 0, '00:00', '00:00', '00:00', '04:00', '00:00', 'present'),
(11, 9, '2021-03-29', '10:00', '::1', '14:20', '::1', 0, '00:00', '00:00', '00:20', '04:20', '00:00', 'present'),
(12, 9, '2021-03-29', '10:00', '::1', '13:20', '::1', 0, '00:00', '40:00', '00:00', '03:20', '00:00', 'present'),
(15, 12, '2021-03-29', '12:00', '', '17:00', '', 0, '00:00', '00:00', '00:00', '05:00', '00:00', 'present'),
(16, 11, '2021-03-29', '10:00', '', '17:00', '', 0, '00:00', '00:00', '03:00', '08:00', '00:00', 'present'),
(17, 11, '2021-03-29', '09:00', '', '15:00', '', 0, '00:00', '00:00', '00:00', '06:00', '00:00', 'present'),
(18, 9, '2021-03-29', '11:24', '127.0.0.1', '11:29', '127.0.0.1', 0, '01:24', '05:30', '00:00', '00:05', '00:00', 'present'),
(19, 9, '2021-03-29', '10:00', '127.0.0.1', '00:28', '127.0.0.1', 0, '00:00', '16:31', '00:00', '09:31', '00:00', 'present'),
(23, 38, '2021-03-29', '19:00', '', '15:00', '', 0, '09:00', '02:00', '00:00', '04:00', '00:00', 'present'),
(24, 43, '2021-03-29', '10:00', '', '17:00', '', 0, '00:00', '00:00', '00:00', '07:00', '00:00', 'present'),
(25, 11, '2021-06-30', '10:00', '', '17:00', '', 0, '00:00', '00:00', '00:00', '08:00', '00:00', 'present'),
(26, 11, '2021-07-01', '22:00', '', '17:00', '', 0, '12:00', '00:00', '03:00', '05:00', '00:00', 'present'),
(27, 9, '2021-07-04', '20:32', '::1', '20:32', '::1', 0, '00:00', '00:00', '00:00', '00:00', '00:00', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `award_information` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `award_date` date NOT NULL,
  `gift` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cash` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `award_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `award_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `award_information`, `award_date`, `gift`, `cash`, `company_id`, `department_id`, `employee_id`, `award_type_id`, `award_photo`, `created_at`, `updated_at`) VALUES
(1, '\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system,', '2021-03-25', 'Flower', '500', 1, 2, 10, 2, 'award_1595848708.jpg', '2020-07-27 11:18:28', '2020-07-27 11:19:55'),
(2, 'dfsdf', '2021-03-17', 'watch', '100', 1, 1, 9, 1, NULL, '2020-08-18 06:46:49', '2020-08-18 06:46:49');

-- --------------------------------------------------------

--
-- Table structure for table `award_types`
--

CREATE TABLE `award_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `award_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `award_types`
--

INSERT INTO `award_types` (`id`, `award_name`, `created_at`, `updated_at`) VALUES
(1, 'Performer Of The Year', '2020-07-26 20:19:34', '2020-07-26 20:19:34'),
(2, 'Best Salesman', '2020-07-26 20:19:47', '2020-07-26 20:19:47');

-- --------------------------------------------------------

--
-- Table structure for table `calendarables`
--

CREATE TABLE `calendarables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_interview`
--

CREATE TABLE `candidate_interview` (
  `interview_id` bigint(20) UNSIGNED NOT NULL,
  `candidate_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` tinyint(4) DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `first_name`, `last_name`, `email`, `contact_no`, `username`, `profile`, `company_name`, `gender`, `website`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `is_active`, `created_at`, `updated_at`) VALUES
(16, 'Shadat', 'Ashraf', 'shahadatashraf10@gmail.com', '67651', 'client', NULL, 'Pearls', '', 'www.xyz.com', '564,Jamhan street', '', 'Norwich', 'Wales', '6756', 127, 1, '2020-07-28 14:41:31', '2021-06-15 05:58:52'),
(39, 'Kaden', 'Porter', 'kaden@mailinator.com', '441234874', 'kaden95', 'kaden95_1623747054.jpg', 'HR2', '', 'https://www.lyraw.mobi', '930 Cowley Court', 'Tempora quia et aut', 'Sed dolorem consecte', 'Quibusdam commodo do', '40065', 127, 1, '2021-03-30 01:42:31', '2021-06-15 05:50:54');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `trading_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `company_type`, `trading_name`, `registration_no`, `contact_no`, `email`, `website`, `tax_no`, `location_id`, `company_logo`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'HR1', 'corporation', 'omega', '5654335', '54324', 'omega@gmail.com', 'hr1.com', '675436', 1, '2019008832_1595789616.png', NULL, '2020-07-26 18:53:37', '2020-07-26 18:53:37'),
(2, 'HR2', 'partnership', 'LLC', '764892', '728923', 'llc@hr2.com', 'llc.com', '4677672', 2, NULL, NULL, '2020-07-26 19:15:00', '2020-07-26 19:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `complaint_title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `complaint_from` bigint(20) UNSIGNED NOT NULL,
  `complaint_against` bigint(20) UNSIGNED NOT NULL,
  `complaint_date` date NOT NULL,
  `status` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `complaint_title`, `description`, `company_id`, `complaint_from`, `complaint_against`, `complaint_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Irritating', 'Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur', 1, 13, 11, '2021-03-25', 'Yes', '2020-07-27 17:24:57', '2020-07-27 17:24:57');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `code`, `name`) VALUES
(1, 'US', 'United States'),
(2, 'CA', 'Canada'),
(3, 'AF', 'Afghanistan'),
(4, 'AL', 'Albania'),
(5, 'DZ', 'Algeria'),
(6, 'DS', 'American Samoa'),
(7, 'AD', 'Andorra'),
(8, 'AO', 'Angola'),
(9, 'AI', 'Anguilla'),
(10, 'AQ', 'Antarctica'),
(11, 'AG', 'Antigua and/or Barbuda'),
(12, 'AR', 'Argentina'),
(13, 'AM', 'Armenia'),
(14, 'AW', 'Aruba'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia and Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BV', 'Bouvet Island'),
(32, 'BR', 'Brazil'),
(33, 'IO', 'British lndian Ocean Territory'),
(34, 'BN', 'Brunei Darussalam'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CV', 'Cape Verde'),
(41, 'KY', 'Cayman Islands'),
(42, 'CF', 'Central African Republic'),
(43, 'TD', 'Chad'),
(44, 'CL', 'Chile'),
(45, 'CN', 'China'),
(46, 'CX', 'Christmas Island'),
(47, 'CC', 'Cocos (Keeling) Islands'),
(48, 'CO', 'Colombia'),
(49, 'KM', 'Comoros'),
(50, 'CG', 'Congo'),
(51, 'CK', 'Cook Islands'),
(52, 'CR', 'Costa Rica'),
(53, 'HR', 'Croatia (Hrvatska)'),
(54, 'CU', 'Cuba'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DK', 'Denmark'),
(58, 'DJ', 'Djibouti'),
(59, 'DM', 'Dominica'),
(60, 'DO', 'Dominican Republic'),
(61, 'TP', 'East Timor'),
(62, 'EC', 'Ecudaor'),
(63, 'EG', 'Egypt'),
(64, 'SV', 'El Salvador'),
(65, 'GQ', 'Equatorial Guinea'),
(66, 'ER', 'Eritrea'),
(67, 'EE', 'Estonia'),
(68, 'ET', 'Ethiopia'),
(69, 'FK', 'Falkland Islands (Malvinas)'),
(70, 'FO', 'Faroe Islands'),
(71, 'FJ', 'Fiji'),
(72, 'FI', 'Finland'),
(73, 'FR', 'France'),
(74, 'FX', 'France, Metropolitan'),
(75, 'GF', 'French Guiana'),
(76, 'PF', 'French Polynesia'),
(77, 'TF', 'French Southern Territories'),
(78, 'GA', 'Gabon'),
(79, 'GM', 'Gambia'),
(80, 'GE', 'Georgia'),
(81, 'DE', 'Germany'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'ID', 'Indonesia'),
(101, 'IR', 'Iran (Islamic Republic of)'),
(102, 'IQ', 'Iraq'),
(103, 'IE', 'Ireland'),
(104, 'IL', 'Israel'),
(105, 'IT', 'Italy'),
(106, 'CI', 'Ivory Coast'),
(107, 'JM', 'Jamaica'),
(108, 'JP', 'Japan'),
(109, 'JO', 'Jordan'),
(110, 'KZ', 'Kazakhstan'),
(111, 'KE', 'Kenya'),
(112, 'KI', 'Kiribati'),
(113, 'KP', 'Korea, Democratic People\'s Republic of'),
(114, 'KR', 'Korea, Republic of'),
(115, 'KW', 'Kuwait'),
(116, 'KG', 'Kyrgyzstan'),
(117, 'LA', 'Lao People\'s Democratic Republic'),
(118, 'LV', 'Latvia'),
(119, 'LB', 'Lebanon'),
(120, 'LS', 'Lesotho'),
(121, 'LR', 'Liberia'),
(122, 'LY', 'Libyan Arab Jamahiriya'),
(123, 'LI', 'Liechtenstein'),
(124, 'LT', 'Lithuania'),
(125, 'LU', 'Luxembourg'),
(126, 'MO', 'Macau'),
(127, 'MK', 'Macedonia'),
(128, 'MG', 'Madagascar'),
(129, 'MW', 'Malawi'),
(130, 'MY', 'Malaysia'),
(131, 'MV', 'Maldives'),
(132, 'ML', 'Mali'),
(133, 'MT', 'Malta'),
(134, 'MH', 'Marshall Islands'),
(135, 'MQ', 'Martinique'),
(136, 'MR', 'Mauritania'),
(137, 'MU', 'Mauritius'),
(138, 'TY', 'Mayotte'),
(139, 'MX', 'Mexico'),
(140, 'FM', 'Micronesia, Federated States of'),
(141, 'MD', 'Moldova, Republic of'),
(142, 'MC', 'Monaco'),
(143, 'MN', 'Mongolia'),
(144, 'MS', 'Montserrat'),
(145, 'MA', 'Morocco'),
(146, 'MZ', 'Mozambique'),
(147, 'MM', 'Myanmar'),
(148, 'NA', 'Namibia'),
(149, 'NR', 'Nauru'),
(150, 'NP', 'Nepal'),
(151, 'NL', 'Netherlands'),
(152, 'AN', 'Netherlands Antilles'),
(153, 'NC', 'New Caledonia'),
(154, 'NZ', 'New Zealand'),
(155, 'NI', 'Nicaragua'),
(156, 'NE', 'Niger'),
(157, 'NG', 'Nigeria'),
(158, 'NU', 'Niue'),
(159, 'NF', 'Norfork Island'),
(160, 'MP', 'Northern Mariana Islands'),
(161, 'NO', 'Norway'),
(162, 'OM', 'Oman'),
(163, 'PK', 'Pakistan'),
(164, 'PW', 'Palau'),
(165, 'PA', 'Panama'),
(166, 'PG', 'Papua New Guinea'),
(167, 'PY', 'Paraguay'),
(168, 'PE', 'Peru'),
(169, 'PH', 'Philippines'),
(170, 'PN', 'Pitcairn'),
(171, 'PL', 'Poland'),
(172, 'PT', 'Portugal'),
(173, 'PR', 'Puerto Rico'),
(174, 'QA', 'Qatar'),
(175, 'RE', 'Reunion'),
(176, 'RO', 'Romania'),
(177, 'RU', 'Russian Federation'),
(178, 'RW', 'Rwanda'),
(179, 'KN', 'Saint Kitts and Nevis'),
(180, 'LC', 'Saint Lucia'),
(181, 'VC', 'Saint Vincent and the Grenadines'),
(182, 'WS', 'Samoa'),
(183, 'SM', 'San Marino'),
(184, 'ST', 'Sao Tome and Principe'),
(185, 'SA', 'Saudi Arabia'),
(186, 'SN', 'Senegal'),
(187, 'SC', 'Seychelles'),
(188, 'SL', 'Sierra Leone'),
(189, 'SG', 'Singapore'),
(190, 'SK', 'Slovakia'),
(191, 'SI', 'Slovenia'),
(192, 'SB', 'Solomon Islands'),
(193, 'SO', 'Somalia'),
(194, 'ZA', 'South Africa'),
(195, 'GS', 'South Georgia South Sandwich Islands'),
(196, 'ES', 'Spain'),
(197, 'LK', 'Sri Lanka'),
(198, 'SH', 'St. Helena'),
(199, 'PM', 'St. Pierre and Miquelon'),
(200, 'SD', 'Sudan'),
(201, 'SR', 'Suriname'),
(202, 'SJ', 'Svalbarn and Jan Mayen Islands'),
(203, 'SZ', 'Swaziland'),
(204, 'SE', 'Sweden'),
(205, 'CH', 'Switzerland'),
(206, 'SY', 'Syrian Arab Republic'),
(207, 'TW', 'Taiwan'),
(208, 'TJ', 'Tajikistan'),
(209, 'TZ', 'Tanzania, United Republic of'),
(210, 'TH', 'Thailand'),
(211, 'TG', 'Togo'),
(212, 'TK', 'Tokelau'),
(213, 'TO', 'Tonga'),
(214, 'TT', 'Trinidad and Tobago'),
(215, 'TN', 'Tunisia'),
(216, 'TR', 'Turkey'),
(217, 'TM', 'Turkmenistan'),
(218, 'TC', 'Turks and Caicos Islands'),
(219, 'TV', 'Tuvalu'),
(220, 'UG', 'Uganda'),
(221, 'UA', 'Ukraine'),
(222, 'AE', 'United Arab Emirates'),
(223, 'GB', 'United Kingdom'),
(224, 'UM', 'United States minor outlying islands'),
(225, 'UY', 'Uruguay'),
(226, 'UZ', 'Uzbekistan'),
(227, 'VU', 'Vanuatu'),
(228, 'VA', 'Vatican City State'),
(229, 'VE', 'Venezuela'),
(230, 'VN', 'Vietnam'),
(231, 'VG', 'Virigan Islands (British)'),
(232, 'VI', 'Virgin Islands (U.S.)'),
(233, 'WF', 'Wallis and Futuna Islands'),
(234, 'EH', 'Western Sahara'),
(235, 'YE', 'Yemen'),
(236, 'YU', 'Yugoslavia'),
(237, 'ZR', 'Zaire'),
(238, 'ZM', 'Zambia'),
(239, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `c_m_s`
--

CREATE TABLE `c_m_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `home` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `c_m_s`
--

INSERT INTO `c_m_s` (`id`, `home`, `about`, `contact`, `created_at`, `updated_at`) VALUES
(1, '&lt;p&gt;Home Page, You can add your page design here&amp;nbsp;&lt;/p&gt;', '&lt;p&gt;About Page, You can add your page design here&lt;/p&gt;', '&lt;p&gt;Hello world&lt;/p&gt;', '2020-07-27 09:19:39', '2021-07-23 23:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_head` bigint(20) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `department_name`, `company_id`, `department_head`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'CSE', 1, 11, NULL, '2020-07-27 04:44:20', '2020-07-27 04:44:20'),
(2, 'Analyst', 1, 13, NULL, '2020-07-27 04:51:45', '2020-07-27 09:06:12'),
(3, 'Finance', 1, 9, NULL, '2020-07-27 09:16:38', '2020-07-27 09:16:56'),
(4, 'R&D', 2, 15, NULL, '2020-07-27 09:18:38', '2020-07-27 09:19:10'),
(5, 'HR', 2, NULL, NULL, '2020-07-27 09:19:39', '2020-07-27 09:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `designation_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `designation_name`, `company_id`, `department_id`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Senior Programmer', 1, 1, NULL, '2020-07-27 09:21:30', '2020-07-27 09:21:30'),
(2, 'Android Developer', 1, 1, NULL, '2020-07-27 09:28:30', '2020-07-27 09:28:52'),
(3, 'Data Analyst', 1, 2, NULL, '2020-07-27 09:29:37', '2020-07-27 09:29:37'),
(4, 'Marketing Analyst', 1, 2, NULL, '2020-07-27 09:30:02', '2020-07-27 09:30:02'),
(5, 'Finance Manager', 1, 3, NULL, '2020-07-27 09:30:17', '2020-07-27 09:30:17'),
(6, 'Trend Researcher', 2, 4, NULL, '2020-07-27 09:30:52', '2020-07-27 09:30:52'),
(7, 'HR manager', 2, 5, NULL, '2020-07-27 09:31:05', '2020-07-27 09:31:05');

-- --------------------------------------------------------

--
-- Table structure for table `document_types`
--

CREATE TABLE `document_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `document_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `document_types`
--

INSERT INTO `document_types` (`id`, `company_id`, `document_type`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Driving Licesnse', '2020-07-26 20:27:04', '2020-07-26 20:27:04'),
(2, NULL, 'Passport', '2020-07-26 20:27:16', '2020-07-26 20:27:16'),
(3, NULL, 'National Id', '2020-07-26 20:27:40', '2020-07-26 20:27:40');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `office_shift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `location_id` bigint(20) UNSIGNED DEFAULT NULL,
  `role_users_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `exit_date` date DEFAULT NULL,
  `marital_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(24) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedIn_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp_id` varchar(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `basic_salary` double NOT NULL DEFAULT 0,
  `payslip_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_leave` int(14) DEFAULT 0,
  `remaining_leave` int(14) DEFAULT 0,
  `pension_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pension_amount` double(8,2) NOT NULL DEFAULT 0.00,
  `is_active` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `first_name`, `last_name`, `email`, `contact_no`, `date_of_birth`, `gender`, `office_shift_id`, `company_id`, `department_id`, `designation_id`, `location_id`, `role_users_id`, `status_id`, `joining_date`, `exit_date`, `marital_status`, `address`, `city`, `state`, `country`, `zip_code`, `cv`, `skype_id`, `fb_id`, `twitter_id`, `linkedIn_id`, `whatsapp_id`, `basic_salary`, `payslip_type`, `attendance_type`, `total_leave`, `remaining_leave`, `pension_type`, `pension_amount`, `is_active`, `created_at`, `updated_at`) VALUES
(9, 'sahiba', 'khatun', 'sahibakhatun@gmail.com', '387292822', '1990-09-25', 'Female', 1, 1, 1, 2, NULL, 5, 1, '2020-01-02', NULL, 'single', '22,new street', 'Sharjha', 'UAE', '222', '6753', NULL, 'Sabiha95', '', '', '', '123456789', 999999.99, 'Monthly', 'ip_based', 26, 14, 'percentage', 50.00, 1, '2020-07-26 19:51:54', '2021-07-26 10:13:54'),
(10, 'John', 'Cena', 'johncena@hotmail.com', '456372794', '1991-03-09', 'Male', 1, 1, 2, 3, NULL, 2, 2, '2019-04-16', NULL, 'married', 'New South Wales', 'Sydney', NULL, '15', '78765', NULL, 'Jhon123', '', '', '', '12354698', 150, 'Monthly', 'general', 0, 0, NULL, 0.00, 1, '2020-07-26 20:01:39', '2021-07-17 04:06:05'),
(11, 'Neo', 'Dezhi', 'neo22@boston.ac.uk', '67278232', '1991-03-29', 'Male', 1, 1, 3, 5, NULL, 4, NULL, '2020-07-01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Deshi321', NULL, NULL, NULL, '987456', 100, 'Hourly', 'general', 0, 0, NULL, 0.00, 1, '2020-07-26 20:03:25', '2021-07-04 19:40:30'),
(12, 'Bob', 'Hobart', 'bob@ymail.com', '4678292', '1993-05-18', 'Male', 1, 1, 3, 5, NULL, 2, 1, '2018-12-13', NULL, 'single', '3527  Horseshoe Lane', 'Norristown', 'Pennsylvania', '1', '19403', NULL, 'bobhober05', 'bob.05@facebook.com', '', '', '12354698', 100, 'Monthly', 'general', 0, 0, NULL, 0.00, 1, '2020-07-27 04:26:35', '2021-03-23 18:01:54'),
(13, 'Alice', 'Patrica', 'alicehh4@newmail.com', '8765445698', '1991-07-25', 'Male', 1, 1, 1, 1, NULL, 2, 1, '2021-04-13', NULL, '', '', '', '', '', '', NULL, 'Alica123', '', '', '', '96548789', 100, 'Monthly', 'general', 0, 0, NULL, 0.00, 1, '2020-07-27 04:28:16', '2021-06-24 16:06:50'),
(14, 'Mayank', 'Agarwal', 'mayank@gmail.com', '746389982', '1989-06-03', 'Male', 1, 1, 2, 3, NULL, 2, 3, '2020-07-02', NULL, 'divorced', '', '', '', '', '', NULL, 'mayank23', '', '', '', '465467767', 100, 'Monthly', 'general', 0, 0, NULL, 0.00, 1, '2020-07-27 04:31:24', '2021-04-15 09:19:08'),
(15, 'Mansoor', 'Ahmed', 'mansoor@yahoo.com', '67638299', '1998-08-18', 'Male', 1, 1, 3, 5, NULL, 2, 1, '2019-05-22', NULL, 'single', '', '', '', '', '', NULL, 'Moonsoor', '', '', '', '48787564', 200, 'Monthly', 'general', 0, 0, NULL, 0.00, 1, '2020-07-27 04:33:54', '2021-04-15 09:20:00'),
(27, 'Junayet', 'Istius', 'junayet@gmail.com', '01829496534', '2021-03-01', 'Male', 1, 1, 1, 1, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'junayet67', '', '', '', '66456798', 100, 'Monthly', 'general', 0, 0, NULL, 0.00, 1, '2021-03-12 10:47:48', '2021-04-08 15:15:53'),
(34, 'Amzad', 'Hossain', 'amzad@gmail.com', '01521225124', '2021-03-01', 'Male', 1, 1, 1, 2, NULL, 2, 1, '2021-01-30', NULL, '', '', '', '', '', '', NULL, 'amjad95', NULL, NULL, NULL, '65412254', 100, 'Monthly', 'general', 0, 0, NULL, 0.00, 1, '2021-03-28 05:53:57', '2021-04-08 15:16:21'),
(38, 'Anisul', 'Islam', 'nasrinchowdhury198@gmail.com', '01521222842', '2021-03-01', 'Male', 1, 1, 1, 2, NULL, 2, 1, '2021-01-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'anis95', NULL, NULL, NULL, '48754121', 100, 'Monthly', 'general', 0, 0, NULL, 0.00, 1, '2021-03-28 17:35:27', '2021-04-08 15:16:38'),
(40, 'ABC', 'Test', 'abc@gmail.com', '12348751', '2021-04-01', 'Male', 1, 1, 1, 1, NULL, 1, 1, '2021-03-10', NULL, '', '', '', '', '', '', NULL, 'abc123', '', '', '', '23145687', 30, 'Hourly', 'general', 20, 20, 'fixed', 25.00, 1, '2021-04-13 04:31:13', '2021-06-30 00:55:15'),
(43, 'XYZ', 'Test', 'xyz@gmail.com', '2354136', '2021-04-06', 'Male', 1, 1, 1, 1, NULL, 2, 1, '2021-01-01', NULL, '', '', '', '', '', '', NULL, 'xyz231', '', '', '', '65486541', 20, 'Hourly', 'general', 0, 0, 'percentage', 5.00, 1, '2021-04-13 22:34:27', '2021-04-15 16:30:07'),
(45, 'Promi', 'Chy', 'promi98@gmail.com', '423213234', '2021-06-29', 'Female', 2, 1, 1, 2, NULL, 4, 1, '2021-06-29', NULL, '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'general', 0, 0, NULL, 0.00, 1, '2021-06-29 17:16:33', '2021-06-30 00:26:55');

-- --------------------------------------------------------

--
-- Table structure for table `employee_bank_accounts`
--

CREATE TABLE `employee_bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `account_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_branch` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_bank_accounts`
--

INSERT INTO `employee_bank_accounts` (`id`, `employee_id`, `account_title`, `account_number`, `bank_name`, `bank_code`, `bank_branch`, `created_at`, `updated_at`) VALUES
(1, 12, 'Bob638', '674638', 'Standard Charterd', '6738', 'GEC', '2020-10-20 03:45:31', '2020-10-20 03:45:31'),
(2, 11, 'Nei-Dezhi', 'P-123', 'Prime Bank', 'P-987', 'Muradpur', '2021-01-25 21:12:02', '2021-01-25 21:18:32'),
(3, 14, 'Mayanak Agarwal', 'SE-123456', 'South-East Bank', 'SE-123', 'GEC', '2021-01-25 18:18:10', '2021-01-25 18:18:10'),
(4, 15, 'Mansoor-Ahmed', 'D-123456', 'Dutch Bangla', 'D-987', 'Agrabad', '2021-01-25 18:22:58', '2021-01-25 18:22:58'),
(5, 9, 'Sabiha', 'M-123456', 'Mutual Trust Bank', 'MTB-123', 'Dhaka', '2021-01-25 18:25:10', '2021-01-25 18:25:10'),
(6, 10, 'Jhon-Chena', 'IB-1234567', 'Islami Bank', 'IB-4567', 'Chawkbazar', '2021-01-25 18:28:46', '2021-01-25 18:28:46'),
(8, 13, 'Alice B', '1564788541', 'Sonali Bank', 'Sonali Bank-156', 'Agrabad', '2021-01-27 01:09:26', '2021-01-27 01:09:26'),
(9, 40, 'ABC-123', '1235412', 'IFIC', 'IFIC235', 'Chitagong', '2021-04-15 09:24:14', '2021-04-15 09:24:14'),
(10, 43, 'Self', 'Ja-63214', 'Jamuna-123', '2314566', 'Dhaka', '2021-04-15 09:26:28', '2021-04-15 09:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `employee_contacts`
--

CREATE TABLE `employee_contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `relation` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(4) DEFAULT 0,
  `is_dependent` tinyint(4) DEFAULT 0,
  `contact_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_phone_ext` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `work_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personal_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_contacts`
--

INSERT INTO `employee_contacts` (`id`, `employee_id`, `relation`, `is_primary`, `is_dependent`, `contact_name`, `work_phone`, `work_phone_ext`, `personal_phone`, `home_phone`, `work_email`, `personal_email`, `address1`, `address2`, `city`, `state`, `zip`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 12, 'parent', 1, NULL, 'Hogg Hobert', NULL, NULL, '67869689', NULL, NULL, 'Hogg34@gmail.com', '2869  University Street', NULL, 'Seattle', 'Washington', '98155', 1, '2020-10-20 03:09:31', '2020-10-20 03:09:31');

-- --------------------------------------------------------

--
-- Table structure for table `employee_documents`
--

CREATE TABLE `employee_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `document_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `document_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` date NOT NULL,
  `is_notify` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_documents`
--

INSERT INTO `employee_documents` (`id`, `employee_id`, `document_type_id`, `document_title`, `description`, `document_file`, `expiry_date`, `is_notify`, `created_at`, `updated_at`) VALUES
(3, 12, 1, 'My driving licence', 'driving licesnse for review', 'My driving licence.1603175008.png', '2023-03-30', NULL, '2020-10-20 03:23:28', '2020-10-20 03:23:28'),
(4, 38, 2, 'Testing', 'This is Testing', 'Testing.1618469061.png', '2021-04-16', 1, '2021-04-15 06:44:22', '2021-04-15 06:44:22');

-- --------------------------------------------------------

--
-- Table structure for table `employee_immigrations`
--

CREATE TABLE `employee_immigrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `document_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `document_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `document_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue_date` date NOT NULL,
  `expiry_date` date DEFAULT NULL,
  `eligible_review_date` date DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_immigrations`
--

INSERT INTO `employee_immigrations` (`id`, `employee_id`, `document_type_id`, `document_number`, `document_file`, `issue_date`, `expiry_date`, `eligible_review_date`, `country_id`, `created_at`, `updated_at`) VALUES
(2, 12, 3, '673627839', 'immigration_673627839.png', '2015-08-14', '2023-05-19', '2023-03-30', 1, '2020-10-20 02:51:16', '2020-10-20 02:51:16');

-- --------------------------------------------------------

--
-- Table structure for table `employee_interview`
--

CREATE TABLE `employee_interview` (
  `interview_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_meeting`
--

CREATE TABLE `employee_meeting` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_meeting`
--

INSERT INTO `employee_meeting` (`employee_id`, `meeting_id`) VALUES
(9, 1),
(10, 1),
(11, 1),
(12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_project`
--

CREATE TABLE `employee_project` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_project`
--

INSERT INTO `employee_project` (`employee_id`, `project_id`) VALUES
(9, 1),
(9, 3),
(11, 1),
(12, 1),
(13, 1),
(14, 2),
(15, 2);

-- --------------------------------------------------------

--
-- Table structure for table `employee_qualificaitons`
--

CREATE TABLE `employee_qualificaitons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `education_level_id` bigint(20) UNSIGNED DEFAULT NULL,
  `institution_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_year` date DEFAULT NULL,
  `to_year` date DEFAULT NULL,
  `language_skill_id` bigint(20) UNSIGNED DEFAULT NULL,
  `general_skill_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_qualificaitons`
--

INSERT INTO `employee_qualificaitons` (`id`, `employee_id`, `education_level_id`, `institution_name`, `from_year`, `to_year`, `language_skill_id`, `general_skill_id`, `description`, `created_at`, `updated_at`) VALUES
(1, 12, 1, 'Boston University', '2014-07-09', '2018-10-01', 1, 2, NULL, '2020-10-20 03:34:11', '2020-10-20 03:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `employee_support_ticket`
--

CREATE TABLE `employee_support_ticket` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `support_ticket_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_support_ticket`
--

INSERT INTO `employee_support_ticket` (`employee_id`, `support_ticket_id`) VALUES
(9, 1),
(10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_task`
--

CREATE TABLE `employee_task` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_task`
--

INSERT INTO `employee_task` (`employee_id`, `task_id`) VALUES
(11, 1),
(14, 2);

-- --------------------------------------------------------

--
-- Table structure for table `employee_training_list`
--

CREATE TABLE `employee_training_list` (
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `training_list_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_training_list`
--

INSERT INTO `employee_training_list` (`employee_id`, `training_list_id`) VALUES
(9, 1),
(10, 1),
(12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_work_experience`
--

CREATE TABLE `employee_work_experience` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_year` date DEFAULT NULL,
  `to_year` date DEFAULT NULL,
  `post` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_work_experience`
--

INSERT INTO `employee_work_experience` (`id`, `employee_id`, `company_name`, `from_year`, `to_year`, `post`, `description`, `created_at`, `updated_at`) VALUES
(1, 12, 'RanksFc', '2017-08-05', '2019-01-29', 'Junior Executive', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English', '2020-10-20 03:42:50', '2020-10-20 03:42:50');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `event_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_note` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `event_date` date NOT NULL,
  `event_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_notify` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `company_id`, `department_id`, `event_title`, `event_note`, `event_date`, `event_time`, `status`, `is_notify`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Birthday Party', 'Today is the birthday of our honourable HR', '2021-04-03', '04:20PM', 'approved', 1, '2020-07-28 14:18:56', '2020-07-28 14:24:17'),
(2, 1, 3, 'test', 'dacd', '2021-02-28', '07:40PM', 'approved', NULL, '2020-10-27 01:29:18', '2020-10-27 01:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `expense_types`
--

CREATE TABLE `expense_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_types`
--

INSERT INTO `expense_types` (`id`, `company_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 1, 'utility', '2020-07-26 20:22:56', '2020-07-26 20:22:56'),
(2, 1, 'supplies', '2020-07-26 20:23:10', '2020-07-26 20:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `file_managers`
--

CREATE TABLE `file_managers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_extension` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_managers`
--

INSERT INTO `file_managers` (`id`, `department_id`, `added_by`, `file_name`, `file_size`, `file_extension`, `external_link`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'New', '185.04 KB', 'pdf', NULL, '2020-07-29 06:01:33', '2020-07-29 06:01:33');

-- --------------------------------------------------------

--
-- Table structure for table `file_manager_settings`
--

CREATE TABLE `file_manager_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `allowed_extensions` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_file_size` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `file_manager_settings`
--

INSERT INTO `file_manager_settings` (`id`, `allowed_extensions`, `max_file_size`, `created_at`, `updated_at`) VALUES
(1, 'jpg,png,doc,docx,pdf,csv,xls,jpeg', 20, '2020-07-29 05:59:20', '2020-07-29 05:59:20');

-- --------------------------------------------------------

--
-- Table structure for table `finance_bank_cashes`
--

CREATE TABLE `finance_bank_cashes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_balance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initial_balance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_branch` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_bank_cashes`
--

INSERT INTO `finance_bank_cashes` (`id`, `account_name`, `account_balance`, `initial_balance`, `account_number`, `branch_code`, `bank_branch`, `created_at`, `updated_at`) VALUES
(1, 'Central Bank', '22724', '50000', '5635636', '676', 'Ethopia', '2020-07-28 17:17:21', '2021-07-03 13:48:19'),
(2, 'New Horizon', '144500', '35000', '5534677', '453', 'Orchestra', '2020-07-28 17:18:15', '2020-07-29 05:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `finance_deposits`
--

CREATE TABLE `finance_deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deposit_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deposit_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_deposits`
--

INSERT INTO `finance_deposits` (`id`, `company_id`, `account_id`, `amount`, `category`, `description`, `payment_method_id`, `payer_id`, `deposit_reference`, `deposit_file`, `deposit_date`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, '110500', 'interest income', 'gfddds', 3, 1, '564534', NULL, '2021-03-28', '2020-07-28 17:24:20', '2020-07-28 17:26:37'),
(5, NULL, 2, '110500', 'interest income', NULL, 1, 2, '37763', NULL, '2021-03-27', '2020-07-28 18:12:31', '2020-07-29 05:28:25');

-- --------------------------------------------------------

--
-- Table structure for table `finance_expenses`
--

CREATE TABLE `finance_expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expense_reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expense_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_expenses`
--

INSERT INTO `finance_expenses` (`id`, `company_id`, `account_id`, `amount`, `category_id`, `description`, `payment_method_id`, `payee_id`, `expense_reference`, `expense_file`, `expense_date`, `created_at`, `updated_at`) VALUES
(3, NULL, 2, '3000', 1, NULL, 2, 1, '455343', NULL, '2021-03-29', '2020-07-28 17:45:41', '2020-07-28 17:45:41'),
(9, NULL, 1, '20000', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-26', '2020-07-29 07:20:58', '2020-07-29 07:20:58'),
(10, NULL, 1, '1000', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-26', '2020-07-29 07:38:34', '2020-07-29 07:38:34'),
(11, NULL, 1, '1500', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-26', '2020-07-29 09:11:51', '2020-07-29 09:11:51'),
(12, NULL, 1, '1500', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-26', '2020-07-29 09:33:49', '2020-07-29 09:33:49'),
(13, NULL, 1, '2190', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-26', '2020-07-29 18:25:19', '2020-07-29 18:25:19'),
(14, NULL, 1, '1500', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-26', '2020-07-29 19:08:48', '2020-07-29 19:08:48'),
(16, NULL, 1, '310', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-26', '2020-07-29 20:32:34', '2020-07-29 20:32:34'),
(19, NULL, 1, '965', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-02-28', '2020-10-15 06:27:00', '2020-10-15 06:27:00'),
(20, NULL, 1, '310', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-02-28', '2020-10-19 11:54:47', '2020-10-19 11:54:47'),
(21, NULL, 1, '3690', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-01-24', '2020-10-19 11:57:30', '2020-10-19 11:57:30'),
(22, NULL, 1, '310', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-05', '2021-03-05 12:49:44', '2021-03-05 12:49:44'),
(23, NULL, 1, '49800', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 06:18:02', '2021-03-12 06:18:02'),
(24, NULL, 1, '110', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 06:40:21', '2021-03-12 06:40:21'),
(25, NULL, 1, '1705', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 06:52:46', '2021-03-12 06:52:46'),
(26, NULL, 1, '3880', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 07:20:57', '2021-03-12 07:20:57'),
(27, NULL, 1, '3880', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 07:27:15', '2021-03-12 07:27:15'),
(28, NULL, 1, '1110', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 07:31:31', '2021-03-12 07:31:31'),
(29, NULL, 1, '2590', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 10:24:41', '2021-03-12 10:24:41'),
(30, NULL, 1, '175', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 10:26:26', '2021-03-12 10:26:26'),
(31, NULL, 1, '110', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 10:34:06', '2021-03-12 10:34:06'),
(32, NULL, 1, '310', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 11:03:09', '2021-03-12 11:03:09'),
(33, NULL, 1, '2590', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 11:27:41', '2021-03-12 11:27:41'),
(34, NULL, 1, '0', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 11:40:29', '2021-03-12 11:40:29'),
(35, NULL, 1, '2305', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 11:46:25', '2021-03-12 11:46:25'),
(36, NULL, 1, '110', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 13:03:55', '2021-03-12 13:03:55'),
(37, NULL, 1, '660', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 13:07:59', '2021-03-12 13:07:59'),
(38, NULL, 1, '660', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 13:08:48', '2021-03-12 13:08:48'),
(39, NULL, 1, '420', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 13:12:40', '2021-03-12 13:12:40'),
(40, NULL, 1, '650', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 13:16:06', '2021-03-12 13:16:06'),
(41, NULL, 1, '310', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', '2021-03-12 13:17:02', '2021-03-12 13:17:02'),
(42, NULL, 1, '660', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-13', '2021-03-13 10:07:03', '2021-03-13 10:07:03'),
(43, NULL, 1, '0', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-13', '2021-03-13 10:07:25', '2021-03-13 10:07:25'),
(44, NULL, 1, '1490', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-20', '2021-03-20 14:25:41', '2021-03-20 14:25:41'),
(45, NULL, 1, '2090', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-20', '2021-03-20 14:37:54', '2021-03-20 14:37:54'),
(46, NULL, 1, '2090', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-22', '2021-03-22 13:44:20', '2021-03-22 13:44:20'),
(47, NULL, 1, '340', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-22', '2021-03-22 14:30:06', '2021-03-22 14:30:06'),
(48, NULL, 1, '175', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-22', '2021-03-22 14:36:02', '2021-03-22 14:36:02'),
(49, NULL, 1, '375', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-06', '2021-04-06 03:31:41', '2021-04-06 03:31:41'),
(50, NULL, 1, '110', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-06', '2021-04-06 03:36:28', '2021-04-06 03:36:28'),
(51, NULL, 1, '200', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-06', '2021-04-06 05:07:42', '2021-04-06 05:07:42'),
(52, NULL, 1, '775', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-08', '2021-04-08 17:35:48', '2021-04-08 17:35:48'),
(53, NULL, 1, '675', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-08', '2021-04-08 17:36:12', '2021-04-08 17:36:12'),
(54, NULL, 1, '675', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-09', '2021-04-09 07:27:31', '2021-04-09 07:27:31'),
(55, NULL, 1, '800', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-09', '2021-04-09 07:29:25', '2021-04-09 07:29:25'),
(56, NULL, 1, '1050', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-09', '2021-04-09 16:48:46', '2021-04-09 16:48:46'),
(57, NULL, 1, '950', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-10', '2021-04-10 13:45:13', '2021-04-10 13:45:13'),
(58, NULL, 1, '1050', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-10', '2021-04-10 16:01:21', '2021-04-10 16:01:21'),
(59, NULL, 1, '905', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-10', '2021-04-10 17:06:06', '2021-04-10 17:06:06'),
(60, NULL, 1, '1090', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-10', '2021-04-10 17:07:24', '2021-04-10 17:07:24'),
(61, NULL, 1, '990', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-11', '2021-04-11 02:29:36', '2021-04-11 02:29:36'),
(62, NULL, 1, '950', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-11', '2021-04-11 02:49:48', '2021-04-11 02:49:48'),
(63, NULL, 1, '83.333', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-11', '2021-04-11 04:01:42', '2021-04-11 04:01:42'),
(64, NULL, 1, '83.333', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-11', '2021-04-11 04:03:00', '2021-04-11 04:03:00'),
(65, NULL, 1, '83.333', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-11', '2021-04-11 04:03:57', '2021-04-11 04:03:57'),
(66, NULL, 1, '83.333', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-11', '2021-04-11 04:11:40', '2021-04-11 04:11:40'),
(67, NULL, 1, '715', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-11', '2021-04-11 17:40:48', '2021-04-11 17:40:48'),
(68, NULL, 1, '715', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-11', '2021-04-11 17:52:03', '2021-04-11 17:52:03'),
(69, NULL, 1, '605', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-12', '2021-04-12 01:16:42', '2021-04-12 01:16:42'),
(70, NULL, 1, '605', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-12', '2021-04-12 01:19:09', '2021-04-12 01:19:09'),
(71, NULL, 1, '1615', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-12', '2021-04-12 17:33:37', '2021-04-12 17:33:37'),
(72, NULL, 1, '215', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-12', '2021-04-12 17:34:45', '2021-04-12 17:34:45'),
(73, NULL, 1, '215', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-12', '2021-04-12 17:35:23', '2021-04-12 17:35:23'),
(74, NULL, 1, '215', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-12', '2021-04-12 17:36:32', '2021-04-12 17:36:32'),
(75, NULL, 1, '215', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-12', '2021-04-12 17:36:32', '2021-04-12 17:36:32'),
(76, NULL, 1, '85', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-13', '2021-04-13 05:06:17', '2021-04-13 05:06:17'),
(77, NULL, 1, '4055', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-13', '2021-04-13 15:28:42', '2021-04-13 15:28:42'),
(78, NULL, 1, '165', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-13', '2021-04-13 15:36:59', '2021-04-13 15:36:59'),
(79, NULL, 1, '410', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-14', '2021-04-13 21:41:16', '2021-04-13 21:41:16'),
(82, NULL, 1, '165', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-14', '2021-04-14 16:15:33', '2021-04-14 16:15:33'),
(83, NULL, 1, '75', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-14', '2021-04-14 16:17:30', '2021-04-14 16:17:30'),
(84, NULL, 1, '200', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-14', '2021-04-14 16:37:09', '2021-04-14 16:37:09'),
(85, NULL, 1, '275', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-15', '2021-04-14 20:39:45', '2021-04-14 20:39:45'),
(86, NULL, 1, '139', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-15', '2021-04-14 21:07:53', '2021-04-14 21:07:53'),
(87, NULL, 1, '740', NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-07-03', '2021-07-03 13:48:19', '2021-07-03 13:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `finance_payees`
--

CREATE TABLE `finance_payees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payee_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_payees`
--

INSERT INTO `finance_payees` (`id`, `payee_name`, `contact_no`, `created_at`, `updated_at`) VALUES
(1, 'Mr. A', '563345', '2020-07-28 17:22:13', '2020-07-28 17:22:13'),
(2, 'Mr. B', '5656353', '2020-07-28 17:22:31', '2020-07-28 17:22:31');

-- --------------------------------------------------------

--
-- Table structure for table `finance_payers`
--

CREATE TABLE `finance_payers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payer_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_payers`
--

INSERT INTO `finance_payers` (`id`, `payer_name`, `contact_no`, `created_at`, `updated_at`) VALUES
(1, 'Mr. X', '34242', '2020-07-28 17:23:01', '2020-07-28 17:23:01'),
(2, 'Mr. Z', '54563', '2020-07-28 17:23:19', '2020-07-28 17:23:19');

-- --------------------------------------------------------

--
-- Table structure for table `finance_transactions`
--

CREATE TABLE `finance_transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `expense_reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_date` date DEFAULT NULL,
  `deposit_reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_transactions`
--

INSERT INTO `finance_transactions` (`id`, `company_id`, `account_id`, `amount`, `category`, `category_id`, `description`, `payment_method_id`, `payee_id`, `payer_id`, `expense_reference`, `expense_file`, `expense_date`, `deposit_reference`, `deposit_file`, `deposit_date`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, '110500', 'interest income', NULL, 'gfddds', 3, NULL, 1, NULL, NULL, NULL, '564534', NULL, '2021-03-28', '2020-07-28 17:24:20', '2020-07-28 17:26:37'),
(3, NULL, 2, '3000', '', 1, NULL, 2, 1, NULL, '455343', NULL, '2021-03-29', NULL, NULL, NULL, '2020-07-28 17:45:41', '2020-07-28 17:45:41'),
(5, NULL, 2, '110500', 'interest income', NULL, NULL, 1, NULL, 2, NULL, NULL, NULL, '37763', NULL, '2021-03-27', '2020-07-28 18:12:31', '2020-07-29 05:28:25'),
(6, NULL, 2, '2000', 'transfer', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, '6736', NULL, '2021-03-30', '2020-07-29 05:36:41', '2020-07-29 05:36:41'),
(7, NULL, 1, '2000', 'transfer', NULL, NULL, 1, NULL, NULL, '6736', NULL, '2021-03-30', NULL, NULL, NULL, '2020-07-29 05:36:41', '2020-07-29 05:36:41'),
(9, NULL, 1, '20000', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-26', NULL, NULL, NULL, '2020-07-29 07:20:58', '2020-07-29 07:20:58'),
(10, NULL, 1, '1000', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-26', NULL, NULL, NULL, '2020-07-29 07:38:34', '2020-07-29 07:38:34'),
(11, NULL, 1, '1500', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-26', NULL, NULL, NULL, '2020-07-29 09:11:51', '2020-07-29 09:11:51'),
(12, NULL, 1, '1500', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-26', NULL, NULL, NULL, '2020-07-29 09:33:49', '2020-07-29 09:33:49'),
(13, NULL, 1, '2190', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-26', NULL, NULL, NULL, '2020-07-29 18:25:19', '2020-07-29 18:25:19'),
(14, NULL, 1, '1500', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-26', NULL, NULL, NULL, '2020-07-29 19:08:47', '2020-07-29 19:08:47'),
(16, NULL, 1, '310', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-26', NULL, NULL, NULL, '2020-07-29 20:32:34', '2020-07-29 20:32:34'),
(19, NULL, 1, '965', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-02-28', NULL, NULL, NULL, '2020-10-15 06:27:00', '2020-10-15 06:27:00'),
(20, NULL, 1, '310', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-02-28', NULL, NULL, NULL, '2020-10-19 11:54:47', '2020-10-19 11:54:47'),
(21, NULL, 1, '3690', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-01-24', NULL, NULL, NULL, '2020-10-19 11:57:30', '2020-10-19 11:57:30'),
(22, NULL, 1, '310', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-05', NULL, NULL, NULL, '2021-03-05 12:49:44', '2021-03-05 12:49:44'),
(23, NULL, 1, '49800', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 06:18:02', '2021-03-12 06:18:02'),
(24, NULL, 1, '110', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 06:40:21', '2021-03-12 06:40:21'),
(25, NULL, 1, '1705', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 06:52:46', '2021-03-12 06:52:46'),
(26, NULL, 1, '3880', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 07:20:57', '2021-03-12 07:20:57'),
(27, NULL, 1, '3880', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 07:27:15', '2021-03-12 07:27:15'),
(28, NULL, 1, '1110', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 07:31:31', '2021-03-12 07:31:31'),
(29, NULL, 1, '2590', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 10:24:41', '2021-03-12 10:24:41'),
(30, NULL, 1, '175', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 10:26:26', '2021-03-12 10:26:26'),
(31, NULL, 1, '110', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 10:34:06', '2021-03-12 10:34:06'),
(32, NULL, 1, '310', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 11:03:09', '2021-03-12 11:03:09'),
(33, NULL, 1, '2590', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 11:27:41', '2021-03-12 11:27:41'),
(34, NULL, 1, '0', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 11:40:29', '2021-03-12 11:40:29'),
(35, NULL, 1, '2305', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 11:46:24', '2021-03-12 11:46:24'),
(36, NULL, 1, '110', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 13:03:55', '2021-03-12 13:03:55'),
(37, NULL, 1, '660', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 13:07:59', '2021-03-12 13:07:59'),
(38, NULL, 1, '660', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 13:08:48', '2021-03-12 13:08:48'),
(39, NULL, 1, '420', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 13:12:40', '2021-03-12 13:12:40'),
(40, NULL, 1, '650', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 13:16:06', '2021-03-12 13:16:06'),
(41, NULL, 1, '310', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-12', NULL, NULL, NULL, '2021-03-12 13:17:02', '2021-03-12 13:17:02'),
(42, NULL, 1, '660', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-13', NULL, NULL, NULL, '2021-03-13 10:07:03', '2021-03-13 10:07:03'),
(43, NULL, 1, '0', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-13', NULL, NULL, NULL, '2021-03-13 10:07:25', '2021-03-13 10:07:25'),
(44, NULL, 1, '1490', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-20', NULL, NULL, NULL, '2021-03-20 14:25:41', '2021-03-20 14:25:41'),
(45, NULL, 1, '2090', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-20', NULL, NULL, NULL, '2021-03-20 14:37:54', '2021-03-20 14:37:54'),
(46, NULL, 1, '2090', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-22', NULL, NULL, NULL, '2021-03-22 13:44:20', '2021-03-22 13:44:20'),
(47, NULL, 1, '340', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-22', NULL, NULL, NULL, '2021-03-22 14:30:06', '2021-03-22 14:30:06'),
(48, NULL, 1, '175', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-03-22', NULL, NULL, NULL, '2021-03-22 14:36:02', '2021-03-22 14:36:02'),
(49, NULL, 1, '375', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-06', NULL, NULL, NULL, '2021-04-06 03:31:41', '2021-04-06 03:31:41'),
(50, NULL, 1, '110', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-06', NULL, NULL, NULL, '2021-04-06 03:36:28', '2021-04-06 03:36:28'),
(51, NULL, 1, '200', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-06', NULL, NULL, NULL, '2021-04-06 05:07:42', '2021-04-06 05:07:42'),
(52, NULL, 1, '775', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-08', NULL, NULL, NULL, '2021-04-08 17:35:47', '2021-04-08 17:35:47'),
(53, NULL, 1, '675', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-08', NULL, NULL, NULL, '2021-04-08 17:36:12', '2021-04-08 17:36:12'),
(54, NULL, 1, '675', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-09', NULL, NULL, NULL, '2021-04-09 07:27:31', '2021-04-09 07:27:31'),
(55, NULL, 1, '800', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-09', NULL, NULL, NULL, '2021-04-09 07:29:25', '2021-04-09 07:29:25'),
(56, NULL, 1, '1050', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-09', NULL, NULL, NULL, '2021-04-09 16:48:46', '2021-04-09 16:48:46'),
(57, NULL, 1, '950', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-10', NULL, NULL, NULL, '2021-04-10 13:45:13', '2021-04-10 13:45:13'),
(58, NULL, 1, '1050', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-10', NULL, NULL, NULL, '2021-04-10 16:01:21', '2021-04-10 16:01:21'),
(59, NULL, 1, '905', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-10', NULL, NULL, NULL, '2021-04-10 17:06:06', '2021-04-10 17:06:06'),
(60, NULL, 1, '1090', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-10', NULL, NULL, NULL, '2021-04-10 17:07:24', '2021-04-10 17:07:24'),
(61, NULL, 1, '990', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-11', NULL, NULL, NULL, '2021-04-11 02:29:36', '2021-04-11 02:29:36'),
(62, NULL, 1, '950', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-11', NULL, NULL, NULL, '2021-04-11 02:49:48', '2021-04-11 02:49:48'),
(63, NULL, 1, '83.333', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-11', NULL, NULL, NULL, '2021-04-11 04:01:42', '2021-04-11 04:01:42'),
(64, NULL, 1, '83.333', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-11', NULL, NULL, NULL, '2021-04-11 04:03:00', '2021-04-11 04:03:00'),
(65, NULL, 1, '83.333', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-11', NULL, NULL, NULL, '2021-04-11 04:03:57', '2021-04-11 04:03:57'),
(66, NULL, 1, '83.333', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-11', NULL, NULL, NULL, '2021-04-11 04:11:40', '2021-04-11 04:11:40'),
(67, NULL, 1, '715', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-11', NULL, NULL, NULL, '2021-04-11 17:40:47', '2021-04-11 17:40:47'),
(68, NULL, 1, '715', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-11', NULL, NULL, NULL, '2021-04-11 17:52:03', '2021-04-11 17:52:03'),
(69, NULL, 1, '605', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-12', NULL, NULL, NULL, '2021-04-12 01:16:41', '2021-04-12 01:16:41'),
(70, NULL, 1, '605', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-12', NULL, NULL, NULL, '2021-04-12 01:19:09', '2021-04-12 01:19:09'),
(71, NULL, 1, '1615', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-12', NULL, NULL, NULL, '2021-04-12 17:33:37', '2021-04-12 17:33:37'),
(72, NULL, 1, '215', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-12', NULL, NULL, NULL, '2021-04-12 17:34:45', '2021-04-12 17:34:45'),
(73, NULL, 1, '215', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-12', NULL, NULL, NULL, '2021-04-12 17:35:23', '2021-04-12 17:35:23'),
(74, NULL, 1, '215', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-12', NULL, NULL, NULL, '2021-04-12 17:36:32', '2021-04-12 17:36:32'),
(75, NULL, 1, '215', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-12', NULL, NULL, NULL, '2021-04-12 17:36:32', '2021-04-12 17:36:32'),
(76, NULL, 1, '85', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-13', NULL, NULL, NULL, '2021-04-13 05:06:17', '2021-04-13 05:06:17'),
(77, NULL, 1, '4055', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-13', NULL, NULL, NULL, '2021-04-13 15:28:42', '2021-04-13 15:28:42'),
(78, NULL, 1, '165', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-13', NULL, NULL, NULL, '2021-04-13 15:36:59', '2021-04-13 15:36:59'),
(79, NULL, 1, '410', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-14', NULL, NULL, NULL, '2021-04-13 21:41:16', '2021-04-13 21:41:16'),
(82, NULL, 1, '165', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-14', NULL, NULL, NULL, '2021-04-14 16:15:33', '2021-04-14 16:15:33'),
(83, NULL, 1, '75', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-14', NULL, NULL, NULL, '2021-04-14 16:17:30', '2021-04-14 16:17:30'),
(84, NULL, 1, '200', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-14', NULL, NULL, NULL, '2021-04-14 16:37:09', '2021-04-14 16:37:09'),
(85, NULL, 1, '275', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-15', NULL, NULL, NULL, '2021-04-14 20:39:45', '2021-04-14 20:39:45'),
(86, NULL, 1, '139', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-04-15', NULL, NULL, NULL, '2021-04-14 21:07:53', '2021-04-14 21:07:53'),
(87, NULL, 1, '740', '', NULL, NULL, NULL, NULL, NULL, 'Payroll', NULL, '2021-07-03', NULL, NULL, NULL, '2021-07-03 13:48:19', '2021-07-03 13:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `finance_transfers`
--

CREATE TABLE `finance_transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `from_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `to_account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `amount` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance_transfers`
--

INSERT INTO `finance_transfers` (`id`, `company_id`, `from_account_id`, `to_account_id`, `amount`, `reference`, `description`, `payment_method_id`, `date`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 2, '2000', '6736', NULL, 1, '2021-03-30', '2020-07-29 05:36:41', '2020-07-29 05:36:41');

-- --------------------------------------------------------

--
-- Table structure for table `general_settings`
--

CREATE TABLE `general_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_payment_bank` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `general_settings`
--

INSERT INTO `general_settings` (`id`, `site_title`, `site_logo`, `time_zone`, `currency`, `currency_format`, `default_payment_bank`, `date_format`, `theme`, `footer`, `footer_link`, `created_at`, `updated_at`) VALUES
(1, 'PeoplePro', 'logo.png', 'Europe/Kirov', '$', 'prefix', '1', 'Y/m/d', 'default.css', 'LionCoders', 'https://www.lion-coders.com', '2020-07-25 19:00:00', '2021-07-26 07:51:54');

-- --------------------------------------------------------

--
-- Table structure for table `goal_trackings`
--

CREATE TABLE `goal_trackings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `goal_type_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target_achievement` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `progress` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goal_trackings`
--

INSERT INTO `goal_trackings` (`id`, `company_id`, `goal_type_id`, `subject`, `target_achievement`, `description`, `start_date`, `end_date`, `progress`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Testing-1 Subject', 'Testing-1 Achievement', 'Testing-1 Description', '01/17/2021', '01/18/2021', 38, 'In Progress', '2021-01-17 05:14:15', '2021-01-17 05:14:39'),
(2, 2, 2, 'Testing-2 Subject', 'Testing-2 Achievement', 'Testing-2 Description', '01/19/2021', '01/20/2021', 52, 'In Progress', '2021-01-17 05:15:33', '2021-01-17 05:18:11'),
(4, 1, 3, 'Testing-3 Subject', 'Testing-3 Achievement', 'Testing 3 Description', '01/21/2021', '01/22/2021', 90, 'Completed', '2021-01-17 05:16:28', '2021-01-17 05:18:21');

-- --------------------------------------------------------

--
-- Table structure for table `goal_types`
--

CREATE TABLE `goal_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `goal_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goal_types`
--

INSERT INTO `goal_types` (`id`, `goal_type`, `created_at`, `updated_at`) VALUES
(1, 'Event Goal', '2021-01-17 04:14:44', '2021-01-17 04:14:44'),
(2, 'Success Goal', '2021-01-17 04:14:58', '2021-01-17 04:14:58'),
(3, 'Complete', '2021-01-17 04:40:18', '2021-01-17 04:40:18');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `event_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `is_publish` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `event_name`, `description`, `company_id`, `department_id`, `start_date`, `end_date`, `is_publish`, `created_at`, `updated_at`) VALUES
(1, 'Eid Ul Adha', 'ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum q', 1, NULL, '2021-03-30', '2021-04-01', 1, '2020-07-27 18:07:35', '2020-07-27 18:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `indicators`
--

CREATE TABLE `indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `designation_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `customer_experience` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `marketing` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `administrator` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `professionalism` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `integrity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attendance` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `indicators`
--

INSERT INTO `indicators` (`id`, `company_id`, `designation_id`, `department_id`, `customer_experience`, `marketing`, `administrator`, `professionalism`, `integrity`, `attendance`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 1, 'None', 'Beginner', 'Intermidiate', 'Expert/Leader', 'Advanced', 'Advanced', 'admin', '2021-01-17 06:16:32', '2021-01-17 06:16:32'),
(2, 1, 3, 2, 'None', 'Beginner', 'Intermidiate', 'Advanced', 'Advanced', 'Expert/Leader', 'admin', '2021-01-17 06:17:10', '2021-01-17 06:17:10'),
(3, 2, 7, 5, 'Advanced', 'Advanced', 'Beginner', 'Beginner', 'Intermidiate', 'Advanced', 'admin', '2021-01-17 06:17:54', '2021-01-17 06:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_date` date NOT NULL,
  `invoice_due_date` date NOT NULL,
  `sub_total` double NOT NULL,
  `discount_type` tinyint(4) DEFAULT NULL,
  `discount_figure` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_discount` double NOT NULL,
  `grand_total` double NOT NULL,
  `invoice_note` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_number`, `client_id`, `project_id`, `invoice_date`, `invoice_due_date`, `sub_total`, `discount_type`, `discount_figure`, `total_tax`, `total_discount`, `grand_total`, `invoice_note`, `status`, `created_at`, `updated_at`) VALUES
(1, 'INV-xnL5K2', 16, 1, '2021-03-29', '2021-04-09', 225, 0, 10, 5, 10, 215, 'Thanks', 1, '2020-07-28 16:37:47', '2021-06-17 04:22:01'),
(2, 'INV-NleUqw', 16, 2, '2021-03-26', '2021-04-05', 10, 0, 0, 0, 0, 10, 'Thanks', 2, '2020-07-28 16:48:59', '2020-10-18 03:32:59'),
(5, 'INV-IjAIYl', 16, 3, '2021-03-29', '2021-04-03', 240, 1, 20, 0, 48, 192, '', 1, '2020-10-12 07:49:25', '2021-06-17 04:35:42'),
(6, 'INV-jbd7aR', 16, 2, '2021-06-01', '2021-06-30', 10, 0, 0, 0, 0, 10, '', 0, '2021-06-17 03:06:33', '2021-06-17 04:33:45'),
(7, 'INV-GVnNa4', 16, 2, '2021-06-10', '2021-06-22', 0, 0, 0, 0, 0, 0, '', 0, '2021-06-17 04:32:20', '2021-06-17 04:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_tax_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_tax_rate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_qty` bigint(20) NOT NULL DEFAULT 0,
  `item_unit_price` bigint(20) NOT NULL,
  `item_sub_total` double NOT NULL,
  `sub_total` double NOT NULL,
  `discount_type` tinyint(4) DEFAULT NULL,
  `discount_figure` double NOT NULL,
  `total_tax` double NOT NULL,
  `total_discount` double NOT NULL,
  `grand_total` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `project_id`, `item_name`, `item_tax_type`, `item_tax_rate`, `item_qty`, `item_unit_price`, `item_sub_total`, `sub_total`, `discount_type`, `discount_figure`, `total_tax`, `total_discount`, `grand_total`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'a', '$0', '0', 4, 30, 120, 225, 0, 10, 5, 10, 215, NULL, '2020-07-28 16:43:24'),
(2, 1, 1, 'b', '5', '5', 2, 50, 105, 225, 0, 10, 5, 10, 215, '2020-07-28 16:43:24', '2020-07-28 16:43:24'),
(3, 2, 2, 'z', '$0', '0', 1, 10, 10, 10, 0, 0, 0, 0, 10, NULL, '2020-07-28 16:52:54'),
(7, 5, 3, 'aa', '$0', '0', 12, 20, 240, 240, 1, 20, 0, 48, 192, NULL, '2021-06-17 04:35:42'),
(8, 6, 2, 'item1', '$0', '0', 1, 10, 10, 10, 0, 0, 0, 0, 10, NULL, '2021-06-17 04:33:45'),
(9, 6, 2, 'item2', '$0', '0', 1, 0, 0, 10, 0, 0, 0, 0, 10, NULL, '2021-06-17 04:33:45'),
(10, 7, 2, 'amarnam', '$0', '0', 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL),
(11, 6, 2, 'item3', '$0', '0', 1, 0, 0, 10, 0, 0, 0, 0, 10, '2021-06-17 04:34:12', '2021-06-17 04:34:12');

-- --------------------------------------------------------

--
-- Table structure for table `ip_settings`
--

CREATE TABLE `ip_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ip_settings`
--

INSERT INTO `ip_settings` (`id`, `name`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 'FNF', '103.120.140.1', '2021-03-28 14:34:42', '2021-03-28 16:57:27'),
(14, 'Lion-Coders', '127.54.03.1', '2021-03-28 16:58:02', '2021-03-28 16:58:02'),
(15, 'Local', '127.0.0.2', '2021-03-28 17:26:13', '2021-03-29 05:39:40'),
(16, 'XYZ', '103.161.152.4', '2021-07-05 03:36:35', '2021-07-05 03:37:12');

-- --------------------------------------------------------

--
-- Table structure for table `job_candidates`
--

CREATE TABLE `job_candidates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover_letter` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `fb_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cv` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_candidates`
--

INSERT INTO `job_candidates` (`id`, `job_id`, `full_name`, `email`, `phone`, `address`, `cover_letter`, `fb_id`, `linkedin_id`, `cv`, `status`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 1, 'John Stones', 'john_stones@gmail.com', '', NULL, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin rhoncus, quam et ultricies vulputate, mauris arcu viverra ipsum, nec interdum dui ipsum id elit. Vivamus vehicula posuere commodo. Curabitur consectetur lacus nisi. Mauris vitae pulvinar lacus. Vestibulum malesuada felis magna, in convallis tortor lobortis ac.', 'jonh@fb.com', 'john_stones', 'JohnStones_1603445937.pdf', 'applied', '', '2020-10-23 06:38:57', '2020-10-23 06:38:57');

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_category` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` char(36) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `job_category`, `url`) VALUES
(2, 'PHP', 'xdBCMHJABdhRlMqXkA0G'),
(3, 'Seo', 'YoHOIZmN5jdNLG6gMp3x'),
(5, 'Analyst', 'gDCJcrUn9M7tt5xVK3wh');

-- --------------------------------------------------------

--
-- Table structure for table `job_interviews`
--

CREATE TABLE `job_interviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `job_id` bigint(20) UNSIGNED NOT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `interview_place` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `interview_date` date NOT NULL,
  `interview_time` time NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_posts`
--

CREATE TABLE `job_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `job_category_id` bigint(20) UNSIGNED NOT NULL,
  `job_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_vacancy` int(11) NOT NULL,
  `job_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_experience` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `closing_date` date NOT NULL,
  `status` tinyint(4) NOT NULL,
  `is_featured` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_posts`
--

INSERT INTO `job_posts` (`id`, `company_id`, `job_category_id`, `job_title`, `job_type`, `no_of_vacancy`, `job_url`, `gender`, `min_experience`, `short_description`, `long_description`, `closing_date`, `status`, `is_featured`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 'Laravel Developer', 'full_time', 2, 'qPnZoMWx83Qb0YnTVl5F', 'No Preference', '2 Years', 'Lion-Coders is looking for Intermediate level Software Developers (3) for its Laravel based software developments. The primary role of these developers will be to develop/debug new desktop/xamarin/web applications for its overseas clients.', '&lt;p&gt;&amp;bull; Should have experience in working on framework such as Laravel,&lt;br /&gt;Symphony etc&lt;br /&gt;&amp;bull; Excellent working knowledge of Web application development&lt;br /&gt;&amp;bull; Advance coding Skills in PHP, HTML, CSS, JavaScript, and scripting&lt;br /&gt;languages desirable&lt;br /&gt;&amp;bull; Excellent working knowledge of MySQL database&lt;br /&gt;&amp;bull; Good understanding of database performance tuning and sql queries&lt;br /&gt;&amp;bull; Experience working with a PHP framework such as CodeIgniter/Laravel&lt;br /&gt;&amp;bull; Experience in both Front End / Back End Developer.&lt;br /&gt;&amp;bull; Good Knowledge and understanding of CRM, CMS, SHOPPING-CART,&lt;br /&gt;PAYMENT GATEWAY &amp;amp; other API INTEGRATION&lt;/p&gt;', '2021-03-06', 1, 1, '2021-02-22 00:00:00', '2021-03-24 01:46:04'),
(2, 1, 5, 'Business Analyst', 'part_time', 3, 'OhBIUt70qzUGfzfWifEI', 'Male', '5 Years', 'Business analysts work with organizations to help them improve their processes and systems. They conduct research and analysis in order to come up with solutions to business problems and help to introduce these systems to businesses and their clients.', '&lt;p&gt;Important skills needed :&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;Oral and written communication skills&lt;/li&gt;\r\n&lt;li&gt;nterpersonal and consultative skills&lt;/li&gt;\r\n&lt;li&gt;Facilitation skills&lt;/li&gt;\r\n&lt;li&gt;Analytical thinking and problem solving&lt;/li&gt;\r\n&lt;li&gt;Being detail-oriented and capable of delivering a high level of accuracy&lt;/li&gt;\r\n&lt;li&gt;Organizational skills&lt;/li&gt;\r\n&lt;/ul&gt;', '2021-03-03', 1, 1, '2021-02-23 00:00:00', '2021-03-24 01:46:46'),
(3, 2, 3, 'SEO Specialist', 'full_time', 5, 'nPJh3pew9HpyzdRlGDj2', 'Other', 'Fresh', 'A Search Engine Optimization Specialist is responsible for analyzing, reviewing and implementing websites that are optimized to be picked up by search engines. An SEO specialist will develop content to include keywords or phrases in order to increase traffic to the website.', '&lt;p&gt;The job of an &lt;strong&gt;SEO&lt;/strong&gt; specialist doesn&amp;rsquo;t stop with a couple of website tweaks and a few links scattered around the internet. Instead, the &lt;span style=&quot;background-color: #e03e2d;&quot;&gt;&lt;strong&gt;specialist&lt;/strong&gt;&lt;/span&gt; has to be on the ball, constantly looking for trends like those noted above and finding new ways to maximize &lt;em&gt;website&lt;/em&gt; traffic.&lt;/p&gt;', '2021-03-06', 1, 1, '2021-02-23 00:00:00', '2021-03-24 01:47:51');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leave_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `total_days` int(11) NOT NULL,
  `leave_reason` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_half` tinyint(4) DEFAULT 0,
  `is_notify` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `leave_type_id`, `company_id`, `department_id`, `employee_id`, `start_date`, `end_date`, `total_days`, `leave_reason`, `remarks`, `status`, `is_half`, `is_notify`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, 9, '2021-02-14', '2021-02-15', 2, 'tem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatu', 'tem vel eum iure reprehenderit qui in ea', 'approved', NULL, 1, '2020-07-27 18:40:11', '2020-07-27 18:40:11'),
(4, 3, 1, 1, 9, '2021-04-08', '2021-04-10', 3, 'Sick', '', 'approved', NULL, NULL, '2021-04-07 10:32:57', '2021-04-07 13:19:53'),
(6, 3, 1, 1, 9, '2021-04-11', '2021-04-14', 4, '', '', 'approved', NULL, NULL, '2021-04-07 14:45:38', '2021-04-07 14:45:38');

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `leave_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allocated_day` int(11) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `leave_type`, `allocated_day`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'Medical', 5, NULL, '2020-07-26 20:18:04', '2020-07-26 20:18:04'),
(2, 'Casual', 3, NULL, '2020-07-26 20:18:39', '2020-07-26 20:18:39'),
(3, 'Manual', NULL, NULL, '2020-07-26 20:18:48', '2020-07-26 20:18:48');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_head` bigint(20) UNSIGNED DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` int(10) UNSIGNED DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_name`, `location_head`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `created_at`, `updated_at`) VALUES
(1, 'Boston', NULL, '22,westwood', NULL, 'Boston', 'New Boston', 2, 7678, '2020-07-26 18:12:19', '2020-07-26 18:12:19'),
(2, 'sydney ranger', 11, 'Waca,22 bekar street', NULL, 'sydney', 'West Australia', 15, 9890, '2020-07-26 18:21:12', '2020-07-27 09:14:58');

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `meeting_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_note` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_date` date NOT NULL,
  `meeting_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_notify` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `company_id`, `meeting_title`, `meeting_note`, `meeting_date`, `meeting_time`, `status`, `is_notify`, `created_at`, `updated_at`) VALUES
(1, 1, 'Project Vision', 'm et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod', '2021-04-01', '03:20PM', 'pending', 1, '2020-07-28 14:31:11', '2020-07-28 14:31:11');

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_02_09_103616_create_role_users_table', 1),
(4, '2020_02_10_00000_create_users_table', 1),
(5, '2020_02_12_091317_create_locations_table', 1),
(6, '2020_02_12_091344_create_companies_table', 1),
(7, '2020_02_12_091353_create_departments_table', 1),
(8, '2020_02_12_091742_create_statuses_table', 1),
(9, '2020_02_12_091824_create_office_shifts_table', 1),
(10, '2020_02_12_091936_create_designations_table', 1),
(11, '2020_02_12_092121_create_leave_types_table', 1),
(12, '2020_02_13_100750_create_employees_table', 1),
(13, '2020_02_14_092309_create_leaves_table', 1),
(14, '2020_02_20_115449_create_general_settings_table', 1),
(15, '2020_02_23_054028_create_permission_tables', 1),
(16, '2020_02_23_184712_add_columns_to_permission_table', 1),
(17, '2020_03_19_132718_add_employee_id_on_locations_table', 2),
(18, '2020_03_20_162201_create_announcements_table', 2),
(19, '2020_03_20_201357_create_policies_table', 2),
(20, '2020_03_22_113701_create_holidays_table', 2),
(21, '2020_03_23_100213_create_award_types_table', 3),
(22, '2020_03_23_100248_create_awards_table', 3),
(23, '2020_03_23_123604_create_transfers_table', 3),
(24, '2020_03_23_144135_create_resignations_table', 3),
(25, '2020_03_23_150510_create_travel_types_table', 3),
(26, '2020_03_23_152610_create_travels_table', 3),
(27, '2020_03_23_154228_create_promotions_table', 3),
(28, '2020_03_23_194844_create_complaints_table', 3),
(29, '2020_03_24_134301_create_warnings_type_table', 3),
(30, '2020_03_24_134304_create_warnings_table', 3),
(31, '2020_03_24_143012_create_termination_types_table', 3),
(32, '2020_03_24_143038_create_terminations_table', 3),
(33, '2020_04_06_185530_create_training_types_table', 3),
(34, '2020_04_06_190352_create_trainers_table', 3),
(35, '2020_04_07_083717_create_training_lists_table', 3),
(36, '2020_04_07_103503_create_employee_training_list_table', 3),
(37, '2020_04_08_095050_create_events_table', 3),
(38, '2020_04_08_163144_create_meetings_table', 3),
(39, '2020_04_08_163906_create_employee_meeting_table', 3),
(40, '2020_05_05_212429_create_document_types_table', 3),
(41, '2020_04_09_063646_create_finance_bank_cashes_table', 4),
(42, '2020_04_09_154642_create_finance_payees_table', 4),
(43, '2020_04_09_201357_create_finance_payers_table', 4),
(44, '2020_04_10_064405_create_payment_methods_table', 4),
(45, '2020_04_10_094429_create_expense_types_table', 4),
(46, '2020_04_10_121829_create_finance_deposits_table', 4),
(47, '2020_04_11_084040_create_finance_expenses_table', 4),
(48, '2020_04_11_164442_create_finance_transactions_table', 4),
(49, '2020_04_13_071336_create_finance_transfers_table', 4),
(50, '2020_04_13_135659_create_asset_categories_table', 5),
(51, '2020_04_13_160310_create_assets_table', 5),
(52, '2020_04_15_103730_create_file_manager_settings_table', 5),
(53, '2020_04_15_193003_create_file_managers_table', 5),
(54, '2020_04_18_094856_create_support_tickets_table', 5),
(55, '2020_04_21_052227_create_ticket_comments_table', 5),
(56, '2020_04_21_172758_create_employee_support_ticket_table', 5),
(57, '2020_04_24_070148_create_countries_table', 5),
(58, '2020_04_24_071350_create_clients_table', 5),
(59, '2020_04_25_083125_create_projects_table', 5),
(60, '2020_04_25_092544_create_employee_project_table', 5),
(61, '2020_04_27_132031_create_project_discussions_table', 5),
(62, '2020_04_27_202219_create_project_bugs_table', 5),
(63, '2020_04_28_095459_create_project_files_table', 5),
(64, '2020_04_28_172850_create_tasks_table', 5),
(65, '2020_04_28_183034_create_employee_task_table', 5),
(66, '2020_04_29_164820_create_task_discussions_table', 5),
(67, '2020_04_29_185015_create_task_files_table', 5),
(68, '2020_05_01_093124_create_tax_types_table', 5),
(69, '2020_05_02_100902_create_invoices_table', 5),
(70, '2020_05_02_110310_create_invoice_items_table', 5),
(71, '2020_05_06_085438_create_employee_immigrations_table', 6),
(72, '2020_05_07_191655_create_employee_contacts_table', 6),
(73, '2020_05_08_181821_create_employee_documents_table', 6),
(74, '2020_05_12_200437_create_qualification_education_levels_table', 6),
(75, '2020_05_16_204859_create_qualification_languages_table', 6),
(76, '2020_05_17_181817_create_qualification_skills_table', 6),
(77, '2020_05_17_191414_create_employee_qualificaitons_table', 6),
(78, '2020_05_18_191844_create_employee_work_experience_table', 6),
(79, '2020_05_19_170527_create_employee_bank_accounts_table', 6),
(80, '2020_05_22_201218_create_salary_allowances_table', 6),
(81, '2020_05_23_184036_create_salary_commissions_table', 6),
(82, '2020_05_24_085740_create_salary_deductions_table', 6),
(83, '2020_05_24_103950_create_salary_other_payments_table', 6),
(84, '2020_05_24_163618_create_salary_overtimes_table', 6),
(85, '2020_05_26_134431_create_salary_loans_table', 6),
(86, '2020_06_11_104501_create_payslips_table', 7),
(87, '2020_06_17_055449_create_calendarables_table', 7),
(88, '2020_06_19_083329_create_job_categories_table', 7),
(89, '2020_06_19_152528_create_job_employers_table', 7),
(90, '2020_06_22_052056_create_attendances_table', 7),
(91, '2020_07_05_010713_create_job_posts_table', 7),
(92, '2020_07_06_162706_create_job_candidates_table', 7),
(93, '2020_07_07_144320_create_job_interviews_table', 7),
(94, '2020_07_07_160007_create_candidate_interview_table', 7),
(95, '2020_07_07_160428_create_employee_interview_table', 7),
(96, '2020_07_25_003500_create_official_documents_table', 7),
(97, '2020_04_18_203257_create_notifications_table', 8),
(98, '2020_10_16_202848_create_c_m_s_table', 9),
(99, '2018_08_29_200844_create_languages_table', 10),
(100, '2018_08_29_205156_create_translations_table', 10),
(101, '2021_01_08_072901_create_goal_types_table', 10),
(102, '2021_01_08_165133_create_indicators_table', 10),
(103, '2021_01_09_081319_create_appraisals_table', 10),
(104, '2021_01_10_080158_create_goal_trackings_table', 10),
(105, '2021_03_28_184255_create_ip_settings_table', 11),
(106, '2021_04_05_103029_create_salary_basics_table', 12);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(1, 'App\\User', 8),
(1, 'App\\User', 28),
(1, 'App\\User', 29),
(1, 'App\\User', 30),
(1, 'App\\User', 31),
(1, 'App\\User', 36),
(1, 'App\\User', 40),
(1, 'App\\User', 44),
(1, 'App\\User', 46),
(1, 'App\\User', 47),
(2, 'App\\User', 10),
(2, 'App\\User', 12),
(2, 'App\\User', 13),
(2, 'App\\User', 14),
(2, 'App\\User', 15),
(2, 'App\\User', 24),
(2, 'App\\User', 25),
(2, 'App\\User', 27),
(2, 'App\\User', 32),
(2, 'App\\User', 33),
(2, 'App\\User', 34),
(2, 'App\\User', 37),
(2, 'App\\User', 38),
(2, 'App\\User', 41),
(2, 'App\\User', 42),
(2, 'App\\User', 43),
(3, 'App\\User', 39),
(4, 'App\\User', 11),
(4, 'App\\User', 23),
(4, 'App\\User', 26),
(4, 'App\\User', 45),
(5, 'App\\User', 9),
(5, 'App\\User', 21),
(5, 'App\\User', 22);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('0ac4b300-c8ef-4fd5-9f38-a0eb71e05d6f', 'App\\Notifications\\ProjectUpdatedNotification', 'App\\User', 8, '{\"data\":\"Test1 has been updated\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/projects\\/1\"}', NULL, '2020-10-18 11:21:13', '2020-10-18 11:21:13'),
('0b6fad58-df06-4c09-a154-bb5e3f767530', 'App\\Notifications\\TicketUpdatedNotification', 'App\\User', 1, '{\"data\":\"Issued ticket for Bob Hobart has been updated\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/tickets\\/Kkqx8gSB\"}', '2020-07-28 17:06:15', '2020-07-28 17:06:02', '2020-07-28 17:06:15'),
('0c7b565d-2342-4937-8628-1db54d9a0642', 'App\\Notifications\\ProjectUpdatedNotification', 'App\\User', 15, '{\"data\":\"Test2 has been updated\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/projects\\/2\"}', NULL, '2020-10-25 17:12:46', '2020-10-25 17:12:46'),
('1140572c-13d0-456b-b58e-01df812d21b6', 'App\\Notifications\\InvoicePaidNotification', 'App\\User', 16, '{\"data\":\"Payment of Project : Test2 has been paid\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/invoices\\/INV-NleUqw\"}', NULL, '2020-10-18 03:13:41', '2020-10-18 03:13:41'),
('144c0b47-e39d-4bb2-9742-0a1519d2a8b5', 'App\\Notifications\\InvoicePaidNotification', 'App\\User', 16, '{\"data\":\"Payment of Project : test3 has been paid\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/invoices\\/INV-IjAIYl\"}', NULL, '2020-10-12 07:50:56', '2020-10-12 07:50:56'),
('1fb3f81d-3bb5-4c24-94db-44e0cdda1072', 'App\\Notifications\\ProjectUpdatedNotification', 'App\\User', 1, '{\"data\":\"test3 has been updated\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/projects\\/3\"}', '2021-06-17 03:14:26', '2020-10-25 17:16:16', '2021-06-17 03:14:26'),
('232dbdbd-f4fc-4c6f-93ba-58d5f854e6b2', 'App\\Notifications\\TicketAssignedNotification', 'App\\User', 12, '{\"data\":\"2 Employees has been assigned for Bob Hobart ticket\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/tickets\\/Kkqx8gSB\"}', NULL, '2020-07-28 17:05:30', '2020-07-28 17:05:30'),
('26fd9a32-861a-414f-bed9-656b04743199', 'App\\Notifications\\EmployeeTravelStatus', 'App\\User', 9, '{\"data\":\"Your travel request status is --- approved\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/profile#Employee_travel\"}', '2021-07-05 15:53:34', '2020-08-18 07:13:03', '2021-07-05 15:53:34'),
('2d9f84f7-b18c-4d81-87e3-40ba55ed3ee1', 'App\\Notifications\\InvoiceReceivedNotification', 'App\\User', 16, '{\"data\":\"Invoice of Project : test3 has been received\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/invoices\\/INV-IjAIYl\"}', NULL, '2020-10-12 07:50:00', '2020-10-12 07:50:00'),
('4c9b05be-02ef-45eb-b8a6-d6cb4e1ac890', 'App\\Notifications\\ProjectUpdatedNotification', 'App\\User', 9, '{\"data\":\"Test1 has been updated\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/projects\\/1\"}', '2021-07-05 15:53:34', '2020-10-18 11:21:13', '2021-07-05 15:53:34'),
('5bcad5db-10b0-4864-93b3-239c540a0238', 'App\\Notifications\\ProjectUpdatedNotification', 'App\\User', 12, '{\"data\":\"Test1 has been updated\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/projects\\/1\"}', NULL, '2020-10-18 11:21:13', '2020-10-18 11:21:13'),
('641c1c91-d33c-451b-836f-c421e15912f7', 'App\\Notifications\\ClientTaskCreated', 'App\\User', 8, '{\"data\":\"A task has been created of Test2 by a client named maria_g\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/tasks\\/6\"}', NULL, '2020-10-12 01:53:23', '2020-10-12 01:53:23'),
('69319850-8ca7-4734-8cd6-871d976077f1', 'App\\Notifications\\ProjectUpdatedNotification', 'App\\User', 8, '{\"data\":\"Test2 has been updated\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/projects\\/2\"}', NULL, '2020-10-25 17:12:46', '2020-10-25 17:12:46'),
('70aafa4e-434f-4ba2-8aea-ee754cce75c7', 'App\\Notifications\\TicketCreatedNotification', 'App\\User', 1, '{\"data\":\"A ticket has been issued for Bob Hobart\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/tickets\\/Kkqx8gSB\"}', '2020-07-28 17:05:45', '2020-07-28 16:59:09', '2020-07-28 17:05:45'),
('75865d0f-944d-43e2-aa43-ab1ad12a6e92', 'App\\Notifications\\TicketCreatedNotification', 'App\\User', 12, '{\"data\":\"A ticket has been issued for Bob Hobart\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/tickets\\/Kkqx8gSB\"}', NULL, '2020-07-28 16:59:09', '2020-07-28 16:59:09'),
('7d2802a2-6c28-480f-8ab9-69b1b8e48a20', 'App\\Notifications\\ProjectUpdatedNotification', 'App\\User', 1, '{\"data\":\"test3 has been updated\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/projects\\/3\"}', '2021-06-17 03:14:26', '2020-10-25 17:14:23', '2021-06-17 03:14:26'),
('7fbad02a-1fb1-485d-a451-6c5c8be10824', 'App\\Notifications\\ClientTaskCreated', 'App\\User', 1, '{\"data\":\"A task has been created of Test2 by a client named maria_g\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/tasks\\/6\"}', '2021-06-17 03:14:26', '2020-10-12 01:53:23', '2021-06-17 03:14:26'),
('8e9054a1-fe5d-4a8b-8b33-40655f1306bf', 'App\\Notifications\\EmployeeAwardNotify', 'App\\User', 9, '{\"data\":\"Congratulation! An Award has been given to you\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/profile#Employee_Core_hr\"}', '2021-07-05 15:53:34', '2020-08-18 06:55:40', '2021-07-05 15:53:34'),
('9a2c3218-774f-4990-b41b-f5ba0d5dad5a', 'App\\Notifications\\TicketUpdatedNotification', 'App\\User', 8, '{\"data\":\"Issued ticket for Bob Hobart has been updated\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/tickets\\/Kkqx8gSB\"}', NULL, '2020-07-28 17:06:02', '2020-07-28 17:06:02'),
('9b2fa86f-db94-4694-84be-2c033bbb450d', 'App\\Notifications\\TicketAssignedNotification', 'App\\User', 8, '{\"data\":\"2 Employees has been assigned for Bob Hobart ticket\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/tickets\\/Kkqx8gSB\"}', NULL, '2020-07-28 17:05:30', '2020-07-28 17:05:30'),
('9e5de11c-c9fd-4b3d-acd5-dc2208b46682', 'App\\Notifications\\EmployeeTravelStatus', 'App\\User', 9, '{\"data\":\"Your travel request status is --- first level approval\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/profile#Employee_travel\"}', '2021-07-05 15:53:34', '2020-08-18 07:11:23', '2021-07-05 15:53:34'),
('9fe492ca-7b37-4419-935d-31cd42d3af77', 'App\\Notifications\\ClientTaskCreated', 'App\\User', 8, '{\"data\":\"new2222 has been updated by a client named maria_g\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/tasks\\/6\"}', NULL, '2020-10-12 02:00:20', '2020-10-12 02:00:20'),
('a92e54de-6aa5-4f9e-84ff-db58c857ce6e', 'App\\Notifications\\ProjectUpdatedNotification', 'App\\User', 11, '{\"data\":\"Test1 has been updated\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/projects\\/1\"}', NULL, '2020-10-18 11:21:13', '2020-10-18 11:21:13'),
('b0e5a738-ff48-4c14-a02a-2ad571ce0fa6', 'App\\Notifications\\InvoiceReceivedNotification', 'App\\User', 16, '{\"data\":\"Invoice of Project : Test2 has been received\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/invoices\\/INV-NleUqw\"}', NULL, '2020-10-18 03:18:53', '2020-10-18 03:18:53'),
('b8f87453-1177-4edf-8fc4-4969e2a8d122', 'App\\Notifications\\ProjectUpdatedNotification', 'App\\User', 14, '{\"data\":\"Test2 has been updated\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/projects\\/2\"}', NULL, '2020-10-25 17:12:46', '2020-10-25 17:12:46'),
('baed268a-08f6-4c19-a19a-2e3805ca16d6', 'App\\Notifications\\InvoiceReceivedNotification', 'App\\User', 16, '{\"data\":\"Invoice of Project : Test2 has been received\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/invoices\\/INV-NleUqw\"}', NULL, '2020-10-18 03:33:04', '2020-10-18 03:33:04'),
('c14d50a8-90b3-42fc-ace1-41c73b16489c', 'App\\Notifications\\TicketAssignedNotification', 'App\\User', 10, '{\"data\":\"2 Employees has been assigned for Bob Hobart ticket\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/tickets\\/Kkqx8gSB\"}', NULL, '2020-07-28 17:05:30', '2020-07-28 17:05:30'),
('cf7d4b40-9d91-4431-a780-0abe6abd13ae', 'App\\Notifications\\InvoicePaidNotification', 'App\\User', 16, '{\"data\":\"Test1 has been paid\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/invoices\\/1\"}', '2020-10-12 05:08:12', '2020-10-12 05:05:30', '2020-10-12 05:08:12'),
('d0b5259d-71ec-4937-8e6d-50d217491718', 'App\\Notifications\\TicketAssignedNotification', 'App\\User', 9, '{\"data\":\"2 Employees has been assigned for Bob Hobart ticket\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/tickets\\/Kkqx8gSB\"}', '2021-07-05 15:53:34', '2020-07-28 17:05:30', '2021-07-05 15:53:34'),
('d45ac590-d192-442b-afa3-66117f4bb2ec', 'App\\Notifications\\InvoiceReceivedNotification', 'App\\User', 16, '{\"data\":\"Invoice of Project : test3 has been received\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/invoices\\/4\"}', NULL, '2020-10-12 07:28:36', '2020-10-12 07:28:36'),
('e3b8524c-573e-4b8e-9465-7789189c5224', 'App\\Notifications\\EmployeePromotion', 'App\\User', 9, '{\"data\":\" Congratulation!You have been promoted to  Senior Executive 1\",\"link\":\"\"}', '2021-07-05 15:53:34', '2020-08-18 06:45:52', '2021-07-05 15:53:34'),
('e7faff2c-21f2-49a4-917a-b7c4f0c41b85', 'App\\Notifications\\EmployeeTransferNotify', 'App\\User', 9, '{\"data\":\"You have been transferred To\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/profile#Employee_transfer\"}', '2021-07-05 15:53:34', '2020-08-18 07:44:56', '2021-07-05 15:53:34'),
('e82fc7b5-2ab7-4799-af55-204684deb53f', 'App\\Notifications\\ProjectUpdatedNotification', 'App\\User', 8, '{\"data\":\"test3 has been updated\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/projects\\/3\"}', NULL, '2020-10-25 17:16:16', '2020-10-25 17:16:16'),
('ec32bc86-7300-4509-b28a-1b91e2e99711', 'App\\Notifications\\ProjectUpdatedNotification', 'App\\User', 8, '{\"data\":\"test3 has been updated\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/projects\\/3\"}', NULL, '2020-10-25 17:14:23', '2020-10-25 17:14:23'),
('ec517324-8a08-46cd-8bcc-e381809474b5', 'App\\Notifications\\ClientTaskCreated', 'App\\User', 1, '{\"data\":\"new2222 has been updated by a client named maria_g\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/tasks\\/6\"}', '2021-06-17 03:14:26', '2020-10-12 02:00:20', '2021-06-17 03:14:26'),
('ecc3dc35-43c0-4f70-9704-c6abf6300464', 'App\\Notifications\\ProjectUpdatedNotification', 'App\\User', 1, '{\"data\":\"Test2 has been updated\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/projects\\/2\"}', '2021-06-17 03:14:26', '2020-10-25 17:12:46', '2021-06-17 03:14:26'),
('ed994f46-e157-4ed1-8a8a-1f15120c7845', 'App\\Notifications\\TicketAssignedNotification', 'App\\User', 1, '{\"data\":\"2 Employees has been assigned for Bob Hobart ticket\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/tickets\\/Kkqx8gSB\"}', '2020-07-28 17:05:45', '2020-07-28 17:05:30', '2020-07-28 17:05:45'),
('f7b7f0bc-87c5-47de-815c-0da9d6912884', 'App\\Notifications\\ProjectUpdatedNotification', 'App\\User', 1, '{\"data\":\"Test1 has been updated\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/project-management\\/projects\\/1\"}', '2021-06-17 03:14:26', '2020-10-18 11:21:13', '2021-06-17 03:14:26'),
('fa1c5825-43e9-4ee9-a48d-792f43b0d79d', 'App\\Notifications\\TicketUpdatedNotification', 'App\\User', 12, '{\"data\":\"Issued ticket for Bob Hobart has been updated\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/tickets\\/Kkqx8gSB\"}', NULL, '2020-07-28 17:06:02', '2020-07-28 17:06:02'),
('fea68d3b-bf7b-452f-b3de-d41d30a787ec', 'App\\Notifications\\TicketCreatedNotification', 'App\\User', 8, '{\"data\":\"A ticket has been issued for Bob Hobart\",\"link\":\"http:\\/\\/peopleprohrm.com\\/demo\\/tickets\\/Kkqx8gSB\"}', NULL, '2020-07-28 16:59:09', '2020-07-28 16:59:09');

-- --------------------------------------------------------

--
-- Table structure for table `office_shifts`
--

CREATE TABLE `office_shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shift_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_shift` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `sunday_in` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sunday_out` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday_in` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saturday_out` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_in` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friday_out` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_in` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thursday_out` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_in` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wednesday_out` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_in` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tuesday_out` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_in` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monday_out` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `office_shifts`
--

INSERT INTO `office_shifts` (`id`, `shift_name`, `default_shift`, `company_id`, `sunday_in`, `sunday_out`, `saturday_in`, `saturday_out`, `friday_in`, `friday_out`, `thursday_in`, `thursday_out`, `wednesday_in`, `wednesday_out`, `tuesday_in`, `tuesday_out`, `monday_in`, `monday_out`, `created_at`, `updated_at`) VALUES
(1, 'Morning Shift', NULL, 1, NULL, NULL, '', '', '', '', '10:00AM', '02:00PM', '10:00AM', '05:00PM', '10:00AM', '05:00PM', '10:00AM', '05:00PM', '2020-07-27 04:06:46', '2020-07-27 04:06:46'),
(2, 'MidDay', NULL, 1, '', '', '04:00PM', '09:00PM', '12:00PM', '09:00PM', '12:00PM', '09:00PM', '', '', '12:00PM', '09:00PM', '12:00PM', '09:00PM', '2020-07-27 04:22:37', '2021-06-30 00:20:24');

-- --------------------------------------------------------

--
-- Table structure for table `official_documents`
--

CREATE TABLE `official_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `document_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `document_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `identification_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expiry_date` date NOT NULL,
  `is_notify` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `official_documents`
--

INSERT INTO `official_documents` (`id`, `company_id`, `document_type_id`, `added_by`, `document_title`, `identification_number`, `description`, `document_file`, `expiry_date`, `is_notify`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 1, 'Bay Project Info', '8739320', NULL, 'Bay Project Info.1603366355.pdf', '2021-05-30', 7, '2020-10-22 08:32:35', '2020-10-22 08:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('new@gmail.com', '$2y$10$day4AQ4g8sFvMwhMrTxpJuLXZCpVF2IK9kVS.6qZxeR6b7CVt2eGy', '2020-10-06 04:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `method_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_percentage` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `company_id`, `method_name`, `payment_percentage`, `account_number`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Paypal', '10%', '123', '2020-07-27 03:52:20', '2020-07-27 03:53:03'),
(2, NULL, 'Bank', '5%', '786', '2020-07-27 03:53:17', '2020-07-27 03:53:17'),
(3, NULL, 'Cash', '%', '999', '2020-07-27 03:53:29', '2020-07-27 03:53:29');

-- --------------------------------------------------------

--
-- Table structure for table `payslips`
--

CREATE TABLE `payslips` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `payslip_key` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payslip_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_salary` double NOT NULL,
  `net_salary` double NOT NULL,
  `allowances` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `commissions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `loans` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deductions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `overtimes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_payments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pension_type` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pension_amount` double NOT NULL,
  `hours_worked` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `month_year` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payslips`
--

INSERT INTO `payslips` (`id`, `payslip_key`, `payslip_number`, `employee_id`, `company_id`, `payment_type`, `basic_salary`, `net_salary`, `allowances`, `commissions`, `loans`, `deductions`, `overtimes`, `other_payments`, `pension_type`, `pension_amount`, `hours_worked`, `status`, `month_year`, `created_at`, `updated_at`) VALUES
(23, 'Heizf4TsdYLCOgt8GBOQ', '1685181828', 12, 1, 'Monthly', 1500, 1705, '[{\"id\":3,\"employee_id\":12,\"allowance_title\":\"Snacks\",\"allowance_amount\":\"50\"},{\"id\":4,\"employee_id\":12,\"allowance_title\":\"Transport\",\"allowance_amount\":\"60\"}]', '[{\"id\":2,\"employee_id\":12,\"commission_title\":\"Sale Increase\",\"commission_amount\":\"15\"},{\"id\":13,\"employee_id\":12,\"commission_title\":\"Work Rate\",\"commission_amount\":\"10\"}]', '[]', '[{\"id\":2,\"employee_id\":12,\"deduction_title\":\"Development tax\",\"deduction_amount\":\"5\"}]', '[{\"id\":3,\"employee_id\":12,\"overtime_title\":\"Night Shift\",\"no_of_days\":\"5\",\"overtime_hours\":\"10\",\"overtime_rate\":\"5\",\"overtime_amount\":\"50\"},{\"id\":4,\"employee_id\":12,\"overtime_title\":\"Production Hour\",\"no_of_days\":\"2\",\"overtime_hours\":\"2\",\"overtime_rate\":\"5\",\"overtime_amount\":\"10\"}]', '[]', NULL, 0, 0, 1, 'January-2021', '2021-01-27 01:22:07', '2021-01-27 01:22:07'),
(24, 'JlvmZMOa5lI5jLCjiJhG', '4271987981', 14, 2, 'Monthly', 200, 310, '[{\"id\":12,\"employee_id\":14,\"allowance_title\":\"Tea\",\"allowance_amount\":\"10\"}]', '[{\"id\":19,\"employee_id\":14,\"commission_title\":\"Sale\",\"commission_amount\":\"10\"}]', '[]', '[{\"id\":7,\"employee_id\":14,\"deduction_title\":\"Health\",\"deduction_amount\":\"10\"}]', '[{\"id\":10,\"employee_id\":14,\"overtime_title\":\"Advance Work\",\"no_of_days\":\"7\",\"overtime_hours\":\"10\",\"overtime_rate\":\"10\",\"overtime_amount\":\"100\"}]', '[]', NULL, 0, 0, 1, 'January-2021', '2021-01-27 01:36:45', '2021-01-27 01:36:45'),
(35, 'qaFrFw7u42ttOPtdUg3X', '1470327139', 14, 2, 'Monthly', 200, 310, '[{\"id\":12,\"employee_id\":14,\"allowance_title\":\"Tea\",\"allowance_amount\":\"10\"}]', '[{\"id\":19,\"employee_id\":14,\"commission_title\":\"Sale\",\"commission_amount\":\"10\"}]', '[]', '[{\"id\":7,\"employee_id\":14,\"deduction_title\":\"Health\",\"deduction_amount\":\"10\"}]', '[{\"id\":10,\"employee_id\":14,\"overtime_title\":\"Advance Work\",\"no_of_days\":\"7\",\"overtime_hours\":\"10\",\"overtime_rate\":\"10\",\"overtime_amount\":\"100\"}]', '[]', NULL, 0, 0, 1, 'February-2021', '2021-03-05 12:49:44', '2021-03-05 12:49:44'),
(64, '5egHnALK1DikDtw3qpC9', '9276867492', 15, 2, 'Monthly', 110, 110, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0, 0, 1, 'February-2021', '2021-03-12 06:40:21', '2021-03-12 06:40:21'),
(65, 'rqKgatx6fEzWtiITw81J', '7754626331', 12, 1, 'Monthly', 1500, 1705, '[{\"id\":3,\"employee_id\":12,\"allowance_title\":\"Snacks\",\"allowance_amount\":\"50\"},{\"id\":4,\"employee_id\":12,\"allowance_title\":\"Transport\",\"allowance_amount\":\"60\"}]', '[{\"id\":2,\"employee_id\":12,\"commission_title\":\"Sale Increase\",\"commission_amount\":\"15\"},{\"id\":13,\"employee_id\":12,\"commission_title\":\"Work Rate\",\"commission_amount\":\"10\"}]', '[]', '[{\"id\":2,\"employee_id\":12,\"deduction_title\":\"Development tax\",\"deduction_amount\":\"5\"}]', '[{\"id\":3,\"employee_id\":12,\"overtime_title\":\"Night Shift\",\"no_of_days\":\"5\",\"overtime_hours\":\"10\",\"overtime_rate\":\"5\",\"overtime_amount\":\"50\"},{\"id\":4,\"employee_id\":12,\"overtime_title\":\"Production Hour\",\"no_of_days\":\"2\",\"overtime_hours\":\"2\",\"overtime_rate\":\"5\",\"overtime_amount\":\"10\"}]', '[{\"id\":1,\"employee_id\":12,\"other_payment_title\":\"Pefomance Bonus\",\"other_payment_amount\":\"15\"}]', NULL, 0, 0, 1, 'February-2021', '2021-03-12 06:52:46', '2021-03-12 06:52:46'),
(146, 'ix7eieBNAuWw5hU3wVWp', '8080407568', 14, 2, 'Monthly', 200, 310, '[{\"id\":12,\"employee_id\":14,\"allowance_title\":\"Tea\",\"allowance_amount\":\"10\"}]', '[{\"id\":19,\"employee_id\":14,\"commission_title\":\"Sale\",\"commission_amount\":\"10\"}]', '[]', '[{\"id\":7,\"employee_id\":14,\"deduction_title\":\"Health\",\"deduction_amount\":\"10\"}]', '[{\"id\":10,\"employee_id\":14,\"overtime_title\":\"Advance Work\",\"no_of_days\":\"7\",\"overtime_hours\":\"10\",\"overtime_rate\":\"10\",\"overtime_amount\":\"100\"}]', '[]', NULL, 0, 0, 1, 'March-2021', '2021-03-12 13:17:02', '2021-03-12 13:17:02'),
(147, 'ET6AArlpGdCmexpWMeLi', '2925821330', 10, 1, 'Monthly', 100, 660, '[{\"id\":8,\"employee_id\":10,\"allowance_title\":\"Tea\",\"allowance_amount\":\"10\"},{\"id\":9,\"employee_id\":10,\"allowance_title\":\"Snacks\",\"allowance_amount\":\"50\"}]', '[{\"id\":17,\"employee_id\":10,\"commission_title\":\"Sale\",\"commission_amount\":\"50\"}]', '[]', '[{\"id\":5,\"employee_id\":10,\"deduction_title\":\"Testing\",\"deduction_amount\":\"50\"}]', '[{\"id\":8,\"employee_id\":10,\"overtime_title\":\"Advance Work\",\"no_of_days\":\"5\",\"overtime_hours\":\"25\",\"overtime_rate\":\"20\",\"overtime_amount\":\"500\"}]', '[]', NULL, 0, 0, 1, 'March-2021', '2021-03-13 10:07:03', '2021-03-13 10:07:03'),
(152, 'Y8QZy53anJrYBSQDIrvS', '4959778575', 13, 1, 'Monthly', 300, 375, '[{\"id\":5,\"employee_id\":9,\"allowance_title\":\"xyz\",\"allowance_amount\":\"100\"}]', '[{\"id\":14,\"employee_id\":9,\"commission_title\":\"Cofee\",\"commission_amount\":\"15\"},{\"id\":15,\"employee_id\":9,\"commission_title\":\"Tea\",\"commission_amount\":\"10\"}]', '[]', '[{\"id\":3,\"employee_id\":9,\"deduction_title\":\"Test Deduction\",\"deduction_amount\":\"50\"}]', '[]', '[]', NULL, 0, 0, 1, 'April-2021', '2021-04-06 03:31:41', '2021-04-06 03:31:41'),
(153, 'MojiX0BrB2nPkGB8GLEo', '9462137854', 11, 1, 'Hourly', 100, 1615, '[{\"id\":1,\"employee_id\":11,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"allowance_title\":\"Home\",\"allowance_amount\":\"200\",\"is_taxable\":0,\"created_at\":\"2020-07-29 22:10:53\",\"updated_at\":\"2020-07-29 22:10:53\"},{\"id\":2,\"employee_id\":11,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"allowance_title\":\"Tea\",\"allowance_amount\":\"50\",\"is_taxable\":0,\"created_at\":\"2020-07-30 00:08:42\",\"updated_at\":\"2020-07-30 00:08:42\"}]', '[]', '[{\"id\":8,\"employee_id\":11,\"loan_title\":\"Home\",\"loan_amount\":\"100\",\"time_remaining\":\"3\",\"amount_remaining\":\"75\",\"monthly_payable\":\"25.000\"}]', '[{\"id\":1,\"employee_id\":11,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"deduction_title\":\"Test\",\"deduction_amount\":\"10\",\"deduction_type\":\"Health Insurance Corporation\",\"created_at\":\"2020-07-30 00:21:22\",\"updated_at\":\"2020-07-30 00:21:22\"}]', '[]', '[]', NULL, 0, 14, 1, 'March-2021', '2021-04-12 17:33:37', '2021-04-12 17:33:37'),
(154, 'tSGyONwrlCeMjeWOemTl', '5146547430', 11, 1, 'Hourly', 100, 215, '[{\"id\":1,\"employee_id\":11,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"allowance_title\":\"Home\",\"allowance_amount\":\"200\",\"is_taxable\":0,\"created_at\":\"2020-07-29 22:10:53\",\"updated_at\":\"2020-07-29 22:10:53\"},{\"id\":2,\"employee_id\":11,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"allowance_title\":\"Tea\",\"allowance_amount\":\"50\",\"is_taxable\":0,\"created_at\":\"2020-07-30 00:08:42\",\"updated_at\":\"2020-07-30 00:08:42\"}]', '[]', '[{\"id\":8,\"employee_id\":11,\"loan_title\":\"Home\",\"loan_amount\":\"100\",\"time_remaining\":\"2\",\"amount_remaining\":\"50\",\"monthly_payable\":\"25.000\"}]', '[{\"id\":1,\"employee_id\":11,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"deduction_title\":\"Test\",\"deduction_amount\":\"10\",\"deduction_type\":\"Health Insurance Corporation\",\"created_at\":\"2020-07-30 00:21:22\",\"updated_at\":\"2020-07-30 00:21:22\"}]', '[]', '[]', NULL, 0, 0, 1, 'April-2021', '2021-04-12 17:34:45', '2021-04-12 17:34:45'),
(155, '02fZCnP2WZPMvoAe03C7', '3205941835', 11, 1, 'Hourly', 100, 215, '[{\"id\":1,\"employee_id\":11,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"allowance_title\":\"Home\",\"allowance_amount\":\"200\",\"is_taxable\":0,\"created_at\":\"2020-07-29 22:10:53\",\"updated_at\":\"2020-07-29 22:10:53\"},{\"id\":2,\"employee_id\":11,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"allowance_title\":\"Tea\",\"allowance_amount\":\"50\",\"is_taxable\":0,\"created_at\":\"2020-07-30 00:08:42\",\"updated_at\":\"2020-07-30 00:08:42\"}]', '[]', '[{\"id\":8,\"employee_id\":11,\"loan_title\":\"Home\",\"loan_amount\":\"100\",\"time_remaining\":\"1\",\"amount_remaining\":\"25\",\"monthly_payable\":\"25.000\"}]', '[{\"id\":1,\"employee_id\":11,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"deduction_title\":\"Test\",\"deduction_amount\":\"10\",\"deduction_type\":\"Health Insurance Corporation\",\"created_at\":\"2020-07-30 00:21:22\",\"updated_at\":\"2020-07-30 00:21:22\"}]', '[]', '[]', NULL, 0, 0, 1, 'May-2021', '2021-04-12 17:35:23', '2021-04-12 17:35:23'),
(156, 'VIM8lgr0qjgan1fJyOZJ', '5926261822', 11, 1, 'Hourly', 100, 215, '[{\"id\":1,\"employee_id\":11,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"allowance_title\":\"Home\",\"allowance_amount\":\"200\",\"is_taxable\":0,\"created_at\":\"2020-07-29 22:10:53\",\"updated_at\":\"2020-07-29 22:10:53\"},{\"id\":2,\"employee_id\":11,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"allowance_title\":\"Tea\",\"allowance_amount\":\"50\",\"is_taxable\":0,\"created_at\":\"2020-07-30 00:08:42\",\"updated_at\":\"2020-07-30 00:08:42\"}]', '[]', '[{\"id\":8,\"employee_id\":11,\"loan_title\":\"Home\",\"loan_amount\":\"100\",\"time_remaining\":\"0\",\"amount_remaining\":\"0\",\"monthly_payable\":\"25.000\"}]', '[{\"id\":1,\"employee_id\":11,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"deduction_title\":\"Test\",\"deduction_amount\":\"10\",\"deduction_type\":\"Health Insurance Corporation\",\"created_at\":\"2020-07-30 00:21:22\",\"updated_at\":\"2020-07-30 00:21:22\"}]', '[]', '[]', NULL, 0, 0, 1, 'June-2021', '2021-04-12 17:36:32', '2021-04-12 17:36:32'),
(161, 'LS7MGRErf9Q5bqPHCOvi', '8082493584', 40, 1, 'Monthly', 100, 140, '[{\"id\":16,\"employee_id\":40,\"month_year\":\"April-2021\",\"first_date\":\"2021-04-01\",\"allowance_title\":\"Cofee\",\"allowance_amount\":\"10\",\"is_taxable\":0,\"created_at\":\"2021-04-13 10:50:07\",\"updated_at\":\"2021-04-13 10:50:07\"}]', '[{\"id\":23,\"employee_id\":40,\"month_year\":\"April-2021\",\"commission_title\":\"Performance\",\"first_date\":\"2021-04-01\",\"commission_amount\":\"10\",\"created_at\":\"2021-04-13 10:51:09\",\"updated_at\":\"2021-04-13 10:51:09\"}]', '[{\"id\":9,\"employee_id\":40,\"loan_title\":\"Building\",\"loan_amount\":\"15\",\"time_remaining\":\"0\",\"amount_remaining\":\"0\",\"monthly_payable\":\"0\"}]', '[{\"id\":11,\"employee_id\":40,\"month_year\":\"April-2021\",\"first_date\":\"2021-04-01\",\"deduction_title\":\"Vehicles\",\"deduction_amount\":\"10\",\"deduction_type\":\"Health Insurance Corporation\",\"created_at\":\"2021-04-13 10:53:21\",\"updated_at\":\"2021-04-13 10:53:53\"}]', '[{\"id\":14,\"employee_id\":40,\"month_year\":\"April-2021\",\"first_date\":\"2021-04-01\",\"overtime_title\":\"Test\",\"no_of_days\":\"2\",\"overtime_hours\":\"5\",\"overtime_rate\":\"10\",\"overtime_amount\":\"50\",\"created_at\":\"2021-04-13 10:55:49\",\"updated_at\":\"2021-04-13 10:55:49\"}]', '[{\"id\":5,\"employee_id\":40,\"month_year\":\"April-2021\",\"first_date\":\"2021-04-01\",\"other_payment_title\":\"Tea\",\"other_payment_amount\":\"10\",\"created_at\":\"2021-04-13 10:54:36\",\"updated_at\":\"2021-04-13 10:54:36\"}]', 'fixed', 25, 0, 1, 'April-2021', '2021-04-14 20:39:45', '2021-04-14 20:39:45'),
(163, 'VTvN9PH0UCGq0zSaLlTQ', '8259269518', 43, 1, 'Hourly', 20, 139, '[]', '[]', '[]', '[]', '[]', '[]', 'percentage', 1, 7, 1, 'April-2021', '2021-04-14 21:07:53', '2021-04-14 21:07:53'),
(164, 'wyJzh8L8YlJjstjyczbA', '3637185451', 12, 1, 'Monthly', 100, 205, '[{\"id\":3,\"employee_id\":12,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"allowance_title\":\"Snacks\",\"allowance_amount\":\"50\",\"is_taxable\":0,\"created_at\":\"2020-10-20 10:01:55\",\"updated_at\":\"2020-10-20 10:01:55\"},{\"id\":4,\"employee_id\":12,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"allowance_title\":\"Transport\",\"allowance_amount\":\"60\",\"is_taxable\":0,\"created_at\":\"2020-10-20 10:02:25\",\"updated_at\":\"2020-10-20 10:02:25\"}]', '[]', '[]', '[{\"id\":2,\"employee_id\":12,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"deduction_title\":\"Development tax\",\"deduction_amount\":\"5\",\"deduction_type\":\"Home Development Mutual Fund\",\"created_at\":\"2020-10-20 10:50:01\",\"updated_at\":\"2020-10-20 10:50:01\"}]', '[]', '[]', NULL, 0, 0, 1, 'May-2021', '2021-05-01 23:15:07', '2021-05-01 23:15:07'),
(165, 'pww8lAyuz98inC21rMpA', '5538729615', 27, 1, 'Monthly', 100, 100, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0, 0, 1, 'May-2021', '2021-05-01 23:15:22', '2021-05-01 23:15:22'),
(166, 'v3n2tmqTTSAz5GqS13LR', '5542732803', 15, 1, 'Monthly', 200, 200, '[]', '[]', '[]', '[]', '[]', '[]', NULL, 0, 0, 1, 'May-2021', '2021-05-01 23:15:33', '2021-05-01 23:15:33'),
(167, 'tHhQ0sudoHhVhDRfIpya', '4457156927', 11, 1, 'Hourly', 100, 740, '[{\"id\":1,\"employee_id\":11,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"allowance_title\":\"Home\",\"allowance_amount\":\"200\",\"is_taxable\":0,\"created_at\":\"2020-07-29 09:10:53\",\"updated_at\":\"2020-07-29 09:10:53\"},{\"id\":2,\"employee_id\":11,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"allowance_title\":\"Tea\",\"allowance_amount\":\"50\",\"is_taxable\":0,\"created_at\":\"2020-07-29 11:08:42\",\"updated_at\":\"2020-07-29 11:08:42\"}]', '[]', '[{\"id\":8,\"employee_id\":11,\"loan_title\":\"Home\",\"loan_amount\":\"100\",\"time_remaining\":\"0\",\"amount_remaining\":\"0\",\"monthly_payable\":\"0\"}]', '[{\"id\":1,\"employee_id\":11,\"month_year\":\"January-2021\",\"first_date\":\"2021-01-01\",\"deduction_title\":\"Test\",\"deduction_amount\":\"10\",\"deduction_type\":\"Health Insurance Corporation\",\"created_at\":\"2020-07-29 11:21:22\",\"updated_at\":\"2020-07-29 11:21:22\"}]', '[]', '[]', NULL, 0, 5, 1, 'July-2021', '2021-07-03 13:48:19', '2021-07-03 13:48:19');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'user', 'web', NULL, NULL),
(2, 'view-user', 'web', NULL, NULL),
(3, 'edit-user', 'web', NULL, NULL),
(4, 'delete-user', 'web', NULL, NULL),
(5, 'last-login-user', 'web', NULL, NULL),
(6, 'role-access-user', 'web', NULL, NULL),
(7, 'details-employee', 'web', NULL, NULL),
(8, 'view-details-employee', 'web', NULL, NULL),
(9, 'store-details-employee', 'web', NULL, NULL),
(10, 'modify-details-employee', 'web', NULL, NULL),
(11, 'customize-setting', 'web', NULL, NULL),
(12, 'role-access', 'web', NULL, NULL),
(13, 'general-setting', 'web', NULL, NULL),
(14, 'view-general-setting', 'web', NULL, NULL),
(15, 'store-general-setting', 'web', NULL, NULL),
(16, 'mail-setting', 'web', NULL, NULL),
(17, 'view-mail-setting', 'web', NULL, NULL),
(18, 'store-mail-setting', 'web', NULL, NULL),
(19, 'language-setting', 'web', NULL, NULL),
(20, 'core_hr', 'web', NULL, NULL),
(21, 'view-calendar', 'web', NULL, NULL),
(22, 'promotion', 'web', NULL, NULL),
(23, 'view-promotion', 'web', NULL, NULL),
(24, 'store-promotion', 'web', NULL, NULL),
(25, 'edit-promotion', 'web', NULL, NULL),
(26, 'delete-promotion', 'web', NULL, NULL),
(27, 'award', 'web', NULL, NULL),
(28, 'view-award', 'web', NULL, NULL),
(29, 'store-award', 'web', NULL, NULL),
(30, 'edit-award', 'web', NULL, NULL),
(31, 'delete-award', 'web', NULL, NULL),
(32, 'transfer', 'web', NULL, NULL),
(33, 'view-transfer', 'web', NULL, NULL),
(34, 'store-transfer', 'web', NULL, NULL),
(35, 'edit-transfer', 'web', NULL, NULL),
(36, 'delete-transfer', 'web', NULL, NULL),
(37, 'travel', 'web', NULL, NULL),
(38, 'view-travel', 'web', NULL, NULL),
(39, 'store-travel', 'web', NULL, NULL),
(40, 'edit-travel', 'web', NULL, NULL),
(41, 'delete-travel', 'web', NULL, NULL),
(42, 'resignation', 'web', NULL, NULL),
(43, 'view-resignation', 'web', NULL, NULL),
(44, 'store-resignation', 'web', NULL, NULL),
(45, 'edit-resignation', 'web', NULL, NULL),
(46, 'delete-resignation', 'web', NULL, NULL),
(47, 'complaint', 'web', NULL, NULL),
(48, 'view-complaint', 'web', NULL, NULL),
(49, 'store-complaint', 'web', NULL, NULL),
(50, 'edit-complaint', 'web', NULL, NULL),
(51, 'delete-complaint', 'web', NULL, NULL),
(52, 'warning', 'web', NULL, NULL),
(53, 'view-warning', 'web', NULL, NULL),
(54, 'store-warning', 'web', NULL, NULL),
(55, 'edit-warning', 'web', NULL, NULL),
(56, 'delete-warning', 'web', NULL, NULL),
(57, 'termination', 'web', NULL, NULL),
(58, 'view-termination', 'web', NULL, NULL),
(59, 'store-termination', 'web', NULL, NULL),
(60, 'edit-termination', 'web', NULL, NULL),
(61, 'delete-termination', 'web', NULL, NULL),
(62, 'timesheet', 'web', NULL, NULL),
(63, 'attendance', 'web', NULL, NULL),
(64, 'view-attendance', 'web', NULL, NULL),
(65, 'edit-attendance', 'web', NULL, NULL),
(66, 'office_shift', 'web', NULL, NULL),
(67, 'view-office_shift', 'web', NULL, NULL),
(68, 'store-office_shift', 'web', NULL, NULL),
(69, 'edit-office_shift', 'web', NULL, NULL),
(70, 'delete-office_shift', 'web', NULL, NULL),
(71, 'holiday', 'web', NULL, NULL),
(72, 'view-holiday', 'web', NULL, NULL),
(73, 'store-holiday', 'web', NULL, NULL),
(74, 'edit-holiday', 'web', NULL, NULL),
(75, 'delete-holiday', 'web', NULL, NULL),
(76, 'leave', 'web', NULL, NULL),
(77, 'view-holiday', 'web', NULL, NULL),
(78, 'store-holiday', 'web', NULL, NULL),
(79, 'edit-holiday', 'web', NULL, NULL),
(80, 'delete-holiday', 'web', NULL, NULL),
(81, 'payment-module', 'web', NULL, NULL),
(82, 'view-payslip', 'web', NULL, NULL),
(83, 'make-payment', 'web', NULL, NULL),
(84, 'make-bulk_payment', 'web', NULL, NULL),
(85, 'view-paylist', 'web', NULL, NULL),
(86, 'set-salary', 'web', NULL, NULL),
(87, 'hr_report', 'web', NULL, NULL),
(88, 'report-payslip', 'web', NULL, NULL),
(89, 'report-attendance', 'web', NULL, NULL),
(90, 'report-training', 'web', NULL, NULL),
(91, 'report-project', 'web', NULL, NULL),
(92, 'report-task', 'web', NULL, NULL),
(93, 'report-employee', 'web', NULL, NULL),
(94, 'report-account', 'web', NULL, NULL),
(95, 'report-deposit', 'web', NULL, NULL),
(96, 'report-expense', 'web', NULL, NULL),
(97, 'report-transaction', 'web', NULL, NULL),
(98, 'recruitment', 'web', NULL, NULL),
(99, 'job_employer', 'web', NULL, NULL),
(100, 'view-job_employer', 'web', NULL, NULL),
(101, 'store-job_employer', 'web', NULL, NULL),
(102, 'edit-job_employer', 'web', NULL, NULL),
(103, 'delete-job_employer', 'web', NULL, NULL),
(104, 'job_post', 'web', NULL, NULL),
(105, 'view-job_post', 'web', NULL, NULL),
(106, 'store-job_post', 'web', NULL, NULL),
(107, 'edit-job_post', 'web', NULL, NULL),
(108, 'delete-job_post', 'web', NULL, NULL),
(109, 'job_candidate', 'web', NULL, NULL),
(110, 'view-job_candidate', 'web', NULL, NULL),
(111, 'store-job_candidate', 'web', NULL, NULL),
(112, 'delete-job_candidate', 'web', NULL, NULL),
(113, 'job_interview', 'web', NULL, NULL),
(114, 'view-job_interview', 'web', NULL, NULL),
(115, 'store-job_interview', 'web', NULL, NULL),
(116, 'delete-job_interview', 'web', NULL, NULL),
(117, 'project-management', 'web', NULL, NULL),
(118, 'project', 'web', NULL, NULL),
(119, 'view-project', 'web', NULL, NULL),
(120, 'store-project', 'web', NULL, NULL),
(121, 'edit-project', 'web', NULL, NULL),
(122, 'delete-project', 'web', NULL, NULL),
(123, 'task', 'web', NULL, NULL),
(124, 'view-task', 'web', NULL, NULL),
(125, 'store-task', 'web', NULL, NULL),
(126, 'edit-task', 'web', NULL, NULL),
(127, 'delete-task', 'web', NULL, NULL),
(128, 'client', 'web', NULL, NULL),
(129, 'view-client', 'web', NULL, NULL),
(130, 'store-client', 'web', NULL, NULL),
(131, 'edit-client', 'web', NULL, NULL),
(132, 'delete-client', 'web', NULL, NULL),
(133, 'invoice', 'web', NULL, NULL),
(134, 'view-invoice', 'web', NULL, NULL),
(135, 'store-invoice', 'web', NULL, NULL),
(136, 'edit-invoice', 'web', NULL, NULL),
(137, 'delete-invoice', 'web', NULL, NULL),
(138, 'ticket', 'web', NULL, NULL),
(139, 'view-ticket', 'web', NULL, NULL),
(140, 'store-ticket', 'web', NULL, NULL),
(141, 'edit-ticket', 'web', NULL, NULL),
(142, 'delete-ticket', 'web', NULL, NULL),
(143, 'import-module', 'web', NULL, NULL),
(144, 'import-attendance', 'web', NULL, NULL),
(145, 'import-employee', 'web', NULL, NULL),
(146, 'file_module', 'web', NULL, NULL),
(147, 'file_manager', 'web', NULL, NULL),
(148, 'view-file_manager', 'web', NULL, NULL),
(149, 'store-file_manager', 'web', NULL, NULL),
(150, 'edit-file_manager', 'web', NULL, NULL),
(151, 'delete-file_manager', 'web', NULL, NULL),
(152, 'view-file_config', 'web', NULL, NULL),
(153, 'official_document', 'web', NULL, NULL),
(154, 'view-official_document', 'web', NULL, NULL),
(155, 'store-official_document', 'web', NULL, NULL),
(156, 'edit-official_document', 'web', NULL, NULL),
(157, 'delete-official_document', 'web', NULL, NULL),
(158, 'event-meeting', 'web', NULL, NULL),
(159, 'meeting', 'web', NULL, NULL),
(160, 'view-meeting', 'web', NULL, NULL),
(161, 'store-meeting', 'web', NULL, NULL),
(162, 'edit-meeting', 'web', NULL, NULL),
(163, 'delete-meeting', 'web', NULL, NULL),
(164, 'event', 'web', NULL, NULL),
(165, 'view-event', 'web', NULL, NULL),
(166, 'store-event', 'web', NULL, NULL),
(167, 'edit-event', 'web', NULL, NULL),
(168, 'delete-event', 'web', NULL, NULL),
(169, 'role', 'web', NULL, NULL),
(170, 'view-role', 'web', NULL, NULL),
(171, 'store-role', 'web', NULL, NULL),
(172, 'edit-role', 'web', NULL, NULL),
(173, 'delete-role', 'web', NULL, NULL),
(174, 'assign-module', 'web', NULL, NULL),
(175, 'assign-role', 'web', NULL, NULL),
(176, 'assign-ticket', 'web', NULL, NULL),
(177, 'assign-project', 'web', NULL, NULL),
(178, 'assign-task', 'web', NULL, NULL),
(179, 'finance', 'web', NULL, NULL),
(180, 'account', 'web', NULL, NULL),
(181, 'view-account', 'web', NULL, NULL),
(182, 'store-account', 'web', NULL, NULL),
(183, 'edit-account', 'web', NULL, NULL),
(184, 'delete-account', 'web', NULL, NULL),
(185, 'view-transaction', 'web', NULL, NULL),
(186, 'view-balance_transfer', 'web', NULL, NULL),
(187, 'store-balance_transfer', 'web', NULL, NULL),
(188, 'expense', 'web', NULL, NULL),
(189, 'view-expense', 'web', NULL, NULL),
(190, 'store-expense', 'web', NULL, NULL),
(191, 'edit-expense', 'web', NULL, NULL),
(192, 'delete-expense', 'web', NULL, NULL),
(193, 'deposit', 'web', NULL, NULL),
(194, 'view-deposit', 'web', NULL, NULL),
(195, 'store-deposit', 'web', NULL, NULL),
(196, 'edit-deposit', 'web', NULL, NULL),
(197, 'delete-deposit', 'web', NULL, NULL),
(198, 'payer', 'web', NULL, NULL),
(199, 'view-payer', 'web', NULL, NULL),
(200, 'store-payer', 'web', NULL, NULL),
(201, 'edit-payer', 'web', NULL, NULL),
(202, 'delete-payer', 'web', NULL, NULL),
(203, 'payee', 'web', NULL, NULL),
(204, 'view-payee', 'web', NULL, NULL),
(205, 'store-payee', 'web', NULL, NULL),
(206, 'edit-payee', 'web', NULL, NULL),
(207, 'delete-payee', 'web', NULL, NULL),
(208, 'training_module', 'web', NULL, NULL),
(209, 'trainer', 'web', NULL, NULL),
(210, 'view-trainer', 'web', NULL, NULL),
(211, 'store-trainer', 'web', NULL, NULL),
(212, 'edit-trainer', 'web', NULL, NULL),
(213, 'delete-trainer', 'web', NULL, NULL),
(214, 'training', 'web', NULL, NULL),
(215, 'view-training', 'web', NULL, NULL),
(216, 'store-training', 'web', NULL, NULL),
(217, 'edit-training', 'web', NULL, NULL),
(218, 'delete-training', 'web', NULL, NULL),
(219, 'access-module', 'web', NULL, NULL),
(220, 'access-variable_type', 'web', NULL, NULL),
(221, 'access-variable_method', 'web', NULL, NULL),
(222, 'access-language', 'web', NULL, NULL),
(223, 'announcement', 'web', NULL, NULL),
(224, 'store-announcement', 'web', NULL, NULL),
(225, 'edit-announcement', 'web', NULL, NULL),
(226, 'delete-announcement', 'web', NULL, NULL),
(227, 'company', 'web', NULL, NULL),
(228, 'view-company', 'web', NULL, NULL),
(229, 'store-company', 'web', NULL, NULL),
(230, 'edit-company', 'web', NULL, NULL),
(231, 'delete-company', 'web', NULL, NULL),
(232, 'department', 'web', NULL, NULL),
(233, 'view-department', 'web', NULL, NULL),
(234, 'store-department', 'web', NULL, NULL),
(235, 'edit-department', 'web', NULL, NULL),
(236, 'delete-department', 'web', NULL, NULL),
(237, 'designation', 'web', NULL, NULL),
(238, 'view-designation', 'web', NULL, NULL),
(239, 'store-designation', 'web', NULL, NULL),
(240, 'edit-designation', 'web', NULL, NULL),
(241, 'delete-designation', 'web', NULL, NULL),
(242, 'location', 'web', NULL, NULL),
(243, 'view-location', 'web', NULL, NULL),
(244, 'store-location', 'web', NULL, NULL),
(245, 'edit-location', 'web', NULL, NULL),
(246, 'delete-location', 'web', NULL, NULL),
(247, 'policy', 'web', NULL, NULL),
(248, 'store-policy', 'web', NULL, NULL),
(249, 'edit-policy', 'web', NULL, NULL),
(250, 'delete-policy', 'web', NULL, NULL),
(251, 'view-cms', 'web', NULL, NULL),
(252, 'store-cms', 'web', NULL, NULL),
(253, 'store-user', 'web', NULL, NULL),
(254, 'delete-attendance', 'web', NULL, NULL),
(255, 'view-leave', 'web', NULL, NULL),
(256, 'store-leave', 'web', NULL, NULL),
(257, 'edit-leave', 'web', NULL, NULL),
(258, 'delete-leave', 'web', NULL, NULL),
(259, 'cms', 'web', NULL, NULL),
(260, 'performance', 'web', NULL, NULL),
(261, 'goal-type', 'web', NULL, NULL),
(262, 'view-goal-type', 'web', NULL, NULL),
(263, 'store-goal-type', 'web', NULL, NULL),
(264, 'edit-goal-type', 'web', NULL, NULL),
(265, 'delete-goal-type', 'web', NULL, NULL),
(266, 'goal-tracking', 'web', NULL, NULL),
(267, 'view-goal-tracking', 'web', NULL, NULL),
(268, 'store-goal-tracking', 'web', NULL, NULL),
(269, 'edit-goal-tracking', 'web', NULL, NULL),
(270, 'delete-goal-tracking', 'web', NULL, NULL),
(271, 'indicator', 'web', NULL, NULL),
(272, 'view-indicator', 'web', NULL, NULL),
(273, 'store-indicator', 'web', NULL, NULL),
(274, 'edit-indicator', 'web', NULL, NULL),
(275, 'delete-indicator', 'web', NULL, NULL),
(276, 'appraisal', 'web', NULL, NULL),
(277, 'view-appraisal', 'web', NULL, NULL),
(278, 'store-appraisal', 'web', NULL, NULL),
(279, 'edit-appraisal', 'web', NULL, NULL),
(280, 'delete-appraisal', 'web', NULL, NULL),
(281, 'assets-and-category', 'web', NULL, NULL),
(282, 'category', 'web', NULL, NULL),
(283, 'view-assets-category', 'web', NULL, NULL),
(284, 'store-assets-category', 'web', NULL, NULL),
(285, 'edit-assets-category', 'web', NULL, NULL),
(286, 'delete-assets-category', 'web', NULL, NULL),
(287, 'assets', 'web', NULL, NULL),
(288, 'view-assets', 'web', NULL, NULL),
(289, 'store-assets', 'web', NULL, NULL),
(290, 'edit-assets', 'web', NULL, NULL),
(291, 'delete-assets', 'web', NULL, NULL),
(292, 'set-permission', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `added_by` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `title`, `description`, `company_id`, `added_by`, `created_at`, `updated_at`) VALUES
(2, 'No smoking', 'No smoking during the office hours.Smoke in the smoking zone if you really have to', 1, 'ash', '2020-07-27 09:56:24', '2020-07-27 09:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `project_priority` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_status` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not started',
  `project_note` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_progress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_notify` tinyint(4) DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `client_id`, `company_id`, `start_date`, `end_date`, `project_priority`, `description`, `summary`, `project_status`, `project_note`, `project_progress`, `is_notify`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'Test1', 16, 1, '2021-03-29', '2021-04-02', 'medium', '&lt;ul&gt;\r\n&lt;li&gt;Section 2: Functional Objectives&lt;br /&gt;Each objective gives a desired behavior for the system, a business justification, and a measure to determine if the final system has successfully met the objective. These objectives are organized by priority. In order for the new system to be considered successful, all high priority objectives must be met.&lt;/li&gt;\r\n&lt;li&gt;Section 3: Non-Functional Objectives&lt;br /&gt;This section is organized by category. Each objective specifies a technical requirement or constraint on the overall characteristics of the system. Each objective is measurable.&lt;/li&gt;\r\n&lt;li&gt;Section 4: Context Model&lt;br /&gt;This section gives a text description of the goal of the system, and a pictorial description of the scope of the system in a context diagram. Those entities outside the system that interact with the system are described.&lt;/li&gt;\r\n&lt;/ul&gt;', 'tinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will', 'in_progress', 'Note', '36', NULL, NULL, '2020-07-28 14:58:29', '2020-11-02 02:47:03'),
(2, 'Test2', 16, 2, '2021-03-30', '2021-03-31', 'highest', '&lt;ul style=&quot;list-style-type: square;&quot;&gt;\r\n&lt;li&gt;The system shall allow for on-line product ordering by either the customer or the sales agent. For customers, this will eliminate the current delay between their decision to buy and the placement of the order. This will reduce the time a sales agent spends on an order by x%. The cost to process an order will be reduced to $y.&lt;/li&gt;\r\n&lt;li&gt;The system shall reflect a new and changed product description within x minutes of the database being updated by the product owner. This will reduce the number of incidents of incorrectly displayed information by x%. This eliminates the current redundant update of information, saving $y dollars annually.&lt;/li&gt;\r\n&lt;/ul&gt;', 'in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis', 'not_started', NULL, '83', NULL, NULL, '2020-07-28 15:36:47', '2020-11-02 02:47:59'),
(3, 'test3', 16, 1, '2021-03-31', '2021-04-04', 'high', '&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li&gt;&lt;strong&gt;A sales agent should be able to use the system in his job after x days of training.&lt;/strong&gt;&lt;/li&gt;\r\n&lt;li&gt;&lt;strong&gt;A user who already knows what product he is interested in should be able to locate and view that page in x seconds.&lt;/strong&gt;&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;', '', 'not_started', NULL, '55', NULL, NULL, '2020-08-03 09:26:42', '2020-11-02 02:51:05');

-- --------------------------------------------------------

--
-- Table structure for table `project_bugs`
--

CREATE TABLE `project_bugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `bug_attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_discussions`
--

CREATE TABLE `project_discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `project_discussion` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `discussion_attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_discussions`
--

INSERT INTO `project_discussions` (`id`, `project_id`, `user_id`, `project_discussion`, `discussion_attachment`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Hola', '', '2020-07-28 15:12:38', '2020-07-28 15:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `project_files`
--

CREATE TABLE `project_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `promotion_title` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `promotion_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `promotion_title`, `description`, `company_id`, `employee_id`, `promotion_date`, `created_at`, `updated_at`) VALUES
(1, 'Senior Executive 1', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s', 1, 9, '2021-03-07', '2020-07-27 10:04:35', '2020-08-18 06:45:52');

-- --------------------------------------------------------

--
-- Table structure for table `qualification_education_levels`
--

CREATE TABLE `qualification_education_levels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualification_education_levels`
--

INSERT INTO `qualification_education_levels` (`id`, `company_id`, `name`, `created_at`, `updated_at`) VALUES
(1, NULL, 'BSC', '2020-07-27 03:54:02', '2020-07-27 03:54:02'),
(2, NULL, 'Diploma', '2020-07-27 03:54:06', '2020-07-27 03:54:06'),
(3, NULL, 'BBA', '2020-07-27 03:54:14', '2020-07-27 03:54:14');

-- --------------------------------------------------------

--
-- Table structure for table `qualification_languages`
--

CREATE TABLE `qualification_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualification_languages`
--

INSERT INTO `qualification_languages` (`id`, `company_id`, `name`, `created_at`, `updated_at`) VALUES
(1, NULL, 'English', '2020-10-20 03:32:36', '2020-10-20 03:32:36'),
(2, NULL, 'Arabic', '2020-10-20 03:32:44', '2020-10-20 03:32:44');

-- --------------------------------------------------------

--
-- Table structure for table `qualification_skills`
--

CREATE TABLE `qualification_skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qualification_skills`
--

INSERT INTO `qualification_skills` (`id`, `company_id`, `name`, `created_at`, `updated_at`) VALUES
(1, NULL, 'MS Word', '2020-10-20 03:32:54', '2020-10-20 03:32:54'),
(2, NULL, 'Photoshop', '2020-10-20 03:33:02', '2020-10-20 03:33:02');

-- --------------------------------------------------------

--
-- Table structure for table `resignations`
--

CREATE TABLE `resignations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `notice_date` date DEFAULT NULL,
  `resignation_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resignations`
--

INSERT INTO `resignations` (`id`, `description`, `company_id`, `department_id`, `employee_id`, `notice_date`, `resignation_date`, `created_at`, `updated_at`) VALUES
(1, 'Sed ut cc unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo', 1, 3, 12, '2021-04-01', '2021-04-08', '2020-07-27 16:54:41', '2020-07-27 17:13:23');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `description`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', 'Can access and change everything', 1, NULL, NULL),
(2, 'employee', 'web', 'Default access', 1, '2020-07-26 13:50:45', '2020-07-26 13:50:45'),
(3, 'client', 'web', 'When you create a client, this role and associated.', 1, '2020-10-08 03:10:23', '2020-10-08 03:10:23'),
(4, 'Manager', 'web', 'Can Manage', 1, '2021-02-24 10:24:58', '2021-02-24 10:24:58'),
(5, 'Editor', 'web', 'Custom access', 1, '2021-02-24 10:24:58', '2021-02-24 10:24:58');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(11, 4),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(38, 2),
(39, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(169, 4),
(170, 4);

-- --------------------------------------------------------

--
-- Table structure for table `salary_allowances`
--

CREATE TABLE `salary_allowances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `month_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_date` date DEFAULT NULL,
  `allowance_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allowance_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_taxable` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary_allowances`
--

INSERT INTO `salary_allowances` (`id`, `employee_id`, `month_year`, `first_date`, `allowance_title`, `allowance_amount`, `is_taxable`, `created_at`, `updated_at`) VALUES
(1, 11, 'January-2021', '2021-01-01', 'Home', '200', 0, '2020-07-29 16:10:53', '2020-07-29 16:10:53'),
(2, 11, 'January-2021', '2021-01-01', 'Tea', '50', 0, '2020-07-29 18:08:42', '2020-07-29 18:08:42'),
(3, 12, 'January-2021', '2021-01-01', 'Snacks', '50', 0, '2020-10-20 04:01:55', '2020-10-20 04:01:55'),
(4, 12, 'January-2021', '2021-01-01', 'Transport', '60', 0, '2020-10-20 04:02:25', '2020-10-20 04:02:25'),
(5, 9, 'January-2021', '2021-01-01', 'xyz', '75', 1, '2021-01-25 19:01:56', '2021-04-09 01:37:55'),
(8, 10, 'January-2021', '2021-01-01', 'Tea', '10', 0, '2021-01-27 00:40:48', '2021-01-27 00:40:48'),
(9, 10, 'January-2021', '2021-01-01', 'Snacks', '50', 0, '2021-01-27 00:40:58', '2021-01-27 00:40:58'),
(10, 13, 'January-2021', '2021-01-01', 'Home', '100', 0, '2021-01-27 01:11:57', '2021-01-27 01:11:57'),
(11, 13, 'January-2021', '2021-01-01', 'Tea', '20', 0, '2021-01-27 01:12:09', '2021-01-27 01:12:09'),
(12, 14, 'January-2021', '2021-01-01', 'Tea', '10', 0, '2021-01-27 01:34:45', '2021-01-27 01:34:45'),
(13, 9, 'April-2021', '2021-04-01', 'Tea', '50', 0, '2021-04-09 00:35:35', '2021-04-09 01:47:08'),
(14, 9, 'April-2021', '2021-04-01', 'Coffee', '50', 0, '2021-04-09 01:39:02', '2021-04-09 01:47:22'),
(15, 9, 'August-2021', '2021-08-01', 'Milk', '200', 0, '2021-04-09 05:38:21', '2021-04-09 05:38:21'),
(16, 40, 'April-2021', '2021-04-01', 'Cofee', '10', 0, '2021-04-13 04:50:07', '2021-04-13 04:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `salary_basics`
--

CREATE TABLE `salary_basics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `month_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_date` date DEFAULT NULL,
  `payslip_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `basic_salary` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary_basics`
--

INSERT INTO `salary_basics` (`id`, `employee_id`, `month_year`, `first_date`, `payslip_type`, `basic_salary`, `created_at`, `updated_at`) VALUES
(1, 9, 'January-2021', '2021-01-01', 'Monthly', 500, NULL, '2021-04-12 01:18:28'),
(2, 9, 'April-2021', '2021-04-01', 'Monthly', 700, NULL, '2021-04-07 15:51:35'),
(3, 9, 'February-2021', '2021-02-01', 'Monthly', 600, '2021-04-06 01:29:14', '2021-04-06 01:29:14'),
(4, 15, 'March-2021', '2021-03-01', 'Monthly', 100, '2021-04-06 03:58:59', '2021-04-06 04:36:34'),
(6, 15, 'April-2021', '2021-04-01', 'Monthly', 200, '2021-04-06 04:17:33', '2021-04-06 05:06:44'),
(8, 10, 'March-2021', '2021-03-01', 'Monthly', 200, '2021-04-08 15:10:23', '2021-04-08 15:10:42'),
(9, 10, 'February-2021', '2021-02-01', 'Monthly', 150, '2021-04-08 15:12:21', '2021-04-08 15:12:21'),
(10, 11, 'January-2021', '2021-01-01', 'Hourly', 100, '2021-04-08 15:14:20', '2021-04-08 15:14:20'),
(11, 12, 'January-2021', '2021-01-01', 'Monthly', 100, '2021-04-08 15:14:48', '2021-04-08 15:14:48'),
(12, 13, 'January-2021', '2021-01-01', 'Monthly', 100, '2021-04-08 15:15:05', '2021-04-08 15:15:05'),
(13, 14, 'January-2021', '2021-01-01', 'Monthly', 100, '2021-04-08 15:15:23', '2021-04-08 15:15:23'),
(14, 27, 'January-2021', '2021-01-01', 'Monthly', 100, '2021-04-08 15:15:53', '2021-04-08 15:15:53'),
(15, 34, 'January-2021', '2021-01-01', 'Monthly', 100, '2021-04-08 15:16:21', '2021-04-08 15:16:21'),
(16, 38, 'January-2021', '2021-01-01', 'Monthly', 100, '2021-04-08 15:16:38', '2021-04-08 15:16:38'),
(17, 40, 'April-2021', '2021-04-01', 'Monthly', 100, '2021-04-13 04:49:46', '2021-04-13 04:49:46'),
(19, 40, 'May-2021', '2021-05-01', 'Hourly', 10, '2021-04-13 23:28:31', '2021-04-13 23:29:28'),
(20, 40, 'June-2021', '2021-06-01', 'Hourly', 30, '2021-04-13 23:31:25', '2021-04-13 23:31:25'),
(21, 43, 'February-2021', '2021-02-01', 'Monthly', 200, '2021-04-14 05:09:56', '2021-04-14 05:09:56'),
(22, 43, 'March-2021', '2021-03-01', 'Hourly', 20, '2021-04-14 05:11:11', '2021-04-14 20:23:22'),
(23, 9, 'July-2021', '2021-07-01', 'Monthly', 20000000, '2021-07-17 01:16:42', '2021-07-17 01:16:42');

-- --------------------------------------------------------

--
-- Table structure for table `salary_commissions`
--

CREATE TABLE `salary_commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `month_year` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commission_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_date` date DEFAULT NULL,
  `commission_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary_commissions`
--

INSERT INTO `salary_commissions` (`id`, `employee_id`, `month_year`, `commission_title`, `first_date`, `commission_amount`, `created_at`, `updated_at`) VALUES
(1, 11, 'January-2021', 'Sale', '2021-01-01', '20', '2020-07-29 18:13:30', '2020-07-29 18:13:30'),
(2, 12, 'January-2021', 'Sale Increase', '2021-01-01', '15', '2020-10-20 04:04:58', '2020-10-20 04:04:58'),
(13, 12, 'January-2021', 'Work Rate', '2021-01-01', '10', '2020-10-20 04:39:15', '2020-10-20 04:39:15'),
(17, 10, 'January-2021', 'Sale', '2021-01-01', '50', '2021-01-27 01:04:32', '2021-01-27 01:04:32'),
(18, 13, 'January-2021', 'Sale', '2021-01-01', '20', '2021-01-27 01:12:55', '2021-01-27 01:12:55'),
(19, 14, 'January-2021', 'Sale', '2021-01-01', '10', '2021-01-27 01:35:16', '2021-01-27 01:35:16'),
(20, 9, 'January-2021', 'Sale', '2021-01-01', '100', '2021-04-09 15:36:18', '2021-04-09 15:44:58'),
(21, 9, 'April-2021', 'Performance', '2021-04-01', '200', '2021-04-09 15:42:48', '2021-04-09 15:42:48'),
(22, 9, 'April-2021', 'XYZ', '2021-04-01', '50', '2021-04-09 16:01:54', '2021-04-09 16:01:54'),
(23, 40, 'April-2021', 'Performance', '2021-04-01', '10', '2021-04-13 04:51:09', '2021-04-13 04:51:09');

-- --------------------------------------------------------

--
-- Table structure for table `salary_deductions`
--

CREATE TABLE `salary_deductions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `month_year` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_date` date DEFAULT NULL,
  `deduction_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deduction_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deduction_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary_deductions`
--

INSERT INTO `salary_deductions` (`id`, `employee_id`, `month_year`, `first_date`, `deduction_title`, `deduction_amount`, `deduction_type`, `created_at`, `updated_at`) VALUES
(1, 11, 'January-2021', '2021-01-01', 'Test', '10', 'Health Insurance Corporation', '2020-07-29 18:21:22', '2020-07-29 18:21:22'),
(2, 12, 'January-2021', '2021-01-01', 'Development tax', '5', 'Home Development Mutual Fund', '2020-10-20 04:50:01', '2020-10-20 04:50:01'),
(5, 10, 'January-2021', '2021-01-01', 'Testing', '50', 'Other Statutory Deduction', '2021-01-27 00:43:37', '2021-01-27 00:43:37'),
(6, 13, 'January-2021', '2021-01-01', 'Health', '100', 'Health Insurance Corporation', '2021-01-27 01:13:31', '2021-01-27 01:13:31'),
(7, 14, 'January-2021', '2021-01-01', 'Health', '10', 'Health Insurance Corporation', '2021-01-27 01:35:37', '2021-01-27 01:35:37'),
(8, 9, 'January-2021', '2021-01-01', 'Tax', '20', 'Social Security System', '2021-04-10 12:55:34', '2021-04-10 12:55:34'),
(10, 9, 'April-2021', '2021-04-01', 'Fever', '100', 'Health Insurance Corporation', '2021-04-10 13:16:30', '2021-04-10 13:16:30'),
(11, 40, 'April-2021', '2021-04-01', 'Vehicles', '10', 'Health Insurance Corporation', '2021-04-13 04:53:21', '2021-04-13 04:53:53');

-- --------------------------------------------------------

--
-- Table structure for table `salary_loans`
--

CREATE TABLE `salary_loans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `month_year` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_date` date DEFAULT NULL,
  `loan_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loan_time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_remaining` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_remaining` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `monthly_payable` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reason` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary_loans`
--

INSERT INTO `salary_loans` (`id`, `employee_id`, `month_year`, `first_date`, `loan_title`, `loan_amount`, `loan_type`, `loan_time`, `amount_remaining`, `time_remaining`, `monthly_payable`, `reason`, `created_at`, `updated_at`) VALUES
(7, 38, 'February-2021', '2021-02-01', 'Health', '100', 'Social Security System Loan', '4', '50', '2', '25.000', 'Health', '2021-04-11 04:50:18', '2021-04-14 16:17:30'),
(8, 11, 'March-2021', '2021-03-01', 'Home', '100', 'Home Development Mutual Fund Loan', '4', '0', '0', '0', 'Make House', '2021-04-11 12:43:20', '2021-07-03 13:48:19'),
(9, 40, 'April-2021', '2021-04-01', 'Building', '15', 'Social Security System Loan', '3', '0', '0', '0', 'Test', '2021-04-13 04:52:31', '2021-04-14 20:39:45');

-- --------------------------------------------------------

--
-- Table structure for table `salary_other_payments`
--

CREATE TABLE `salary_other_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `month_year` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_date` date DEFAULT NULL,
  `other_payment_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `other_payment_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary_other_payments`
--

INSERT INTO `salary_other_payments` (`id`, `employee_id`, `month_year`, `first_date`, `other_payment_title`, `other_payment_amount`, `created_at`, `updated_at`) VALUES
(1, 12, 'January-2021', '2021-01-01', 'Pefomance Bonus', '15', '2020-10-20 04:54:43', '2020-10-20 04:55:44'),
(2, 9, 'January-2021', '2021-01-01', 'Clean', '150', '2021-04-10 15:05:16', '2021-04-10 15:05:16'),
(3, 9, 'April-2021', '2021-04-01', 'abc', '50', '2021-04-10 15:06:18', '2021-04-10 15:06:18'),
(4, 9, 'April-2021', '2021-04-01', 'xyz', '50', '2021-04-10 15:22:47', '2021-04-10 15:22:47'),
(5, 40, 'April-2021', '2021-04-01', 'Tea', '10', '2021-04-13 04:54:36', '2021-04-13 04:54:36');

-- --------------------------------------------------------

--
-- Table structure for table `salary_overtimes`
--

CREATE TABLE `salary_overtimes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `month_year` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_date` date DEFAULT NULL,
  `overtime_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_days` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overtime_hours` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overtime_rate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `overtime_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salary_overtimes`
--

INSERT INTO `salary_overtimes` (`id`, `employee_id`, `month_year`, `first_date`, `overtime_title`, `no_of_days`, `overtime_hours`, `overtime_rate`, `overtime_amount`, `created_at`, `updated_at`) VALUES
(1, 11, '', NULL, 'Test Overtime', '2', '20', '20', '400', '2020-07-29 18:23:33', '2020-07-29 18:23:33'),
(2, 11, '', NULL, 'test overtime 2', '3', '10', '3', '30', '2020-07-29 18:24:20', '2020-07-29 18:24:20'),
(3, 12, '', NULL, 'Night Shift', '5', '10', '5', '50', '2020-10-20 05:00:15', '2020-10-20 05:00:15'),
(4, 12, '', NULL, 'Production Hour', '2', '2', '5', '10', '2020-10-20 05:00:47', '2020-10-20 05:00:47'),
(8, 10, '', NULL, 'Advance Work', '5', '25', '20', '500', '2021-01-27 00:45:01', '2021-01-27 00:45:01'),
(9, 13, '', NULL, 'Advance Work', '5', '20', '10', '200', '2021-01-27 01:14:09', '2021-01-27 01:14:09'),
(10, 14, '', NULL, 'Advance Work', '7', '10', '10', '100', '2021-01-27 01:36:03', '2021-01-27 01:36:03'),
(11, 9, 'January-2021', '2021-01-01', 'Project-1', '2', '10', '5', '50', '2021-04-10 16:47:20', '2021-04-10 16:47:37'),
(12, 9, 'April-2021', '2021-04-01', 'Project-2', '5', '10', '3', '30', '2021-04-10 16:52:35', '2021-04-10 17:08:14'),
(13, 9, 'April-2021', '2021-04-01', 'Project-3', '3', '5', '2', '10', '2021-04-10 16:53:13', '2021-04-10 16:53:13'),
(14, 40, 'April-2021', '2021-04-01', 'Test', '2', '5', '10', '50', '2021-04-13 04:55:49', '2021-04-13 04:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `status_title`, `created_at`, `updated_at`) VALUES
(1, 'full-time', '2020-07-26 20:24:16', '2020-07-26 20:24:16'),
(2, 'part-time', '2020-07-26 20:24:26', '2020-07-26 20:24:26'),
(3, 'internship', '2020-07-26 20:24:42', '2020-07-26 20:24:42'),
(4, 'terminated', '2020-07-26 20:24:49', '2020-07-26 20:24:49');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticket_code` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_priority` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_remarks` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ticket_status` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_notify` tinyint(4) DEFAULT NULL,
  `ticket_attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `company_id`, `department_id`, `employee_id`, `ticket_code`, `subject`, `ticket_priority`, `description`, `ticket_remarks`, `ticket_status`, `ticket_note`, `is_notify`, `ticket_attachment`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 12, 'Kkqx8gSB', 'Broadcast Issue', 'medium', NULL, 'ASAP', 'open', 'Fix Asap', NULL, 'ticket_Kkqx8gSB.png', '2020-07-28 16:59:08', '2020-07-28 17:06:02'),
(2, 1, 1, 9, 'BYrKY0X8', 'Screen Issue', 'medium', '&lt;p&gt;lorem ipsum&lt;strong&gt; lorem&lt;/strong&gt;&lt;/p&gt;', NULL, 'pending', 'fix this issue ASAP', NULL, 'ticket_BYrKY0X8.pdf', '2020-08-03 06:17:26', '2020-08-03 06:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `task_hour` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_status` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'not started',
  `task_note` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `task_progress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_notify` tinyint(4) DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `task_name`, `project_id`, `company_id`, `start_date`, `end_date`, `task_hour`, `description`, `task_status`, `task_note`, `task_progress`, `is_notify`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'Test1 Task', 1, 1, '2021-03-29', '2021-04-01', '20', '&lt;table style=&quot;border-collapse: collapse; width: 100%; height: 45px;&quot; border=&quot;1&quot;&gt;\r\n&lt;tbody&gt;\r\n&lt;tr style=&quot;height: 15px;&quot;&gt;\r\n&lt;td style=&quot;width: 20%; height: 15px;&quot;&gt;gsba&lt;/td&gt;\r\n&lt;td style=&quot;width: 20%; height: 15px;&quot;&gt;svnba&lt;/td&gt;\r\n&lt;td style=&quot;width: 20%; height: 15px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n&lt;td style=&quot;width: 20%; height: 15px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n&lt;td style=&quot;width: 20%; height: 15px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr style=&quot;height: 15px;&quot;&gt;\r\n&lt;td style=&quot;width: 20%; height: 15px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n&lt;td style=&quot;width: 20%; height: 15px;&quot;&gt;dfsd&lt;/td&gt;\r\n&lt;td style=&quot;width: 20%; height: 15px;&quot;&gt;dfsf&lt;/td&gt;\r\n&lt;td style=&quot;width: 20%; height: 15px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n&lt;td style=&quot;width: 20%; height: 15px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;tr style=&quot;height: 15px;&quot;&gt;\r\n&lt;td style=&quot;width: 20%; height: 15px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n&lt;td style=&quot;width: 20%; height: 15px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n&lt;td style=&quot;width: 20%; height: 15px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n&lt;td style=&quot;width: 20%; height: 15px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n&lt;td style=&quot;width: 20%; height: 15px;&quot;&gt;&amp;nbsp;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n&lt;/tbody&gt;\r\n&lt;/table&gt;', '', NULL, '9', NULL, 1, '2020-07-28 15:14:01', '2020-11-02 01:42:14'),
(2, 'Task222', 2, 2, '2021-03-30', '2021-03-30', '12', '&lt;p&gt;fdsafa gs&lt;/p&gt;', 'not started', NULL, NULL, NULL, 1, '2020-07-28 16:26:49', '2020-11-02 01:47:42'),
(3, 'aa', 1, 1, '2021-03-31', '2021-04-02', '16', '&lt;p&gt;new&lt;/p&gt;', 'not started', NULL, NULL, NULL, 16, '2020-10-11 17:12:09', '2020-11-02 01:49:48'),
(6, 'new2222', 2, 1, '2021-03-30', '2021-03-31', '20', '&lt;p style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;fv fsdf&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n&lt;li style=&quot;text-align: center;&quot;&gt;&lt;strong&gt;dfds&lt;/strong&gt;&lt;/li&gt;\r\n&lt;li style=&quot;text-align: center;&quot;&gt;zczcz&lt;/li&gt;\r\n&lt;/ul&gt;', '', NULL, NULL, NULL, 16, '2020-10-12 01:53:22', '2020-11-02 00:44:07');

-- --------------------------------------------------------

--
-- Table structure for table `task_discussions`
--

CREATE TABLE `task_discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `task_discussion` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_files`
--

CREATE TABLE `task_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_attachment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_types`
--

CREATE TABLE `tax_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_types`
--

INSERT INTO `tax_types` (`id`, `name`, `rate`, `type`, `description`, `created_at`, `updated_at`) VALUES
(1, 'No tax', '0', 'fixed', 'zero tax', '2020-07-28 16:31:42', '2020-07-28 16:31:42'),
(2, 'Vat', '5', 'percentage', '5% vat for all item', '2020-07-28 16:32:12', '2020-07-28 16:32:12');

-- --------------------------------------------------------

--
-- Table structure for table `terminations`
--

CREATE TABLE `terminations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `terminated_employee` bigint(20) UNSIGNED NOT NULL,
  `termination_type` bigint(20) UNSIGNED DEFAULT NULL,
  `termination_date` date NOT NULL,
  `notice_date` date NOT NULL,
  `status` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `termination_types`
--

CREATE TABLE `termination_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `termination_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `termination_types`
--

INSERT INTO `termination_types` (`id`, `termination_title`, `created_at`, `updated_at`) VALUES
(1, 'voluntery termination', '2020-07-26 20:22:03', '2020-07-26 20:22:03'),
(2, 'Performance Termination', '2020-07-26 20:22:27', '2020-07-26 20:22:27');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_comments`
--

CREATE TABLE `ticket_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ticket_comments` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trainers`
--

CREATE TABLE `trainers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `address` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expertise` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainers`
--

INSERT INTO `trainers` (`id`, `first_name`, `last_name`, `email`, `contact_no`, `company_id`, `address`, `expertise`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pink', 'Floyd', 'floyd@pink.com', '76352839', 1, 'Backstreet 22,Austria', 'Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est', '', '2020-07-27 19:14:54', '2020-07-27 19:14:54');

-- --------------------------------------------------------

--
-- Table structure for table `training_lists`
--

CREATE TABLE `training_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `training_cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remarks` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `trainer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `training_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_lists`
--

INSERT INTO `training_lists` (`id`, `description`, `start_date`, `end_date`, `training_cost`, `status`, `remarks`, `company_id`, `trainer_id`, `training_type_id`, `created_at`, `updated_at`) VALUES
(1, 'Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est', '2021-04-01', '2021-04-02', '200', '', NULL, 1, 1, 1, '2020-07-27 19:17:38', '2020-07-27 19:17:38');

-- --------------------------------------------------------

--
-- Table structure for table `training_types`
--

CREATE TABLE `training_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_types`
--

INSERT INTO `training_types` (`id`, `company_id`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Job Training', '', '2020-07-27 19:10:52', '2020-07-27 19:10:52'),
(2, 0, 'Workshop', '', '2020-07-27 19:10:59', '2020-07-27 19:10:59'),
(3, 0, 'Mind Training', '', '2020-07-27 19:11:07', '2020-07-27 19:11:07');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `from_department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `to_department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transfer_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travels`
--

CREATE TABLE `travels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `employee_id` bigint(20) UNSIGNED NOT NULL,
  `travel_type` bigint(20) UNSIGNED DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `purpose_of_visit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `place_of_visit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expected_budget` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actual_budget` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `travel_mode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travels`
--

INSERT INTO `travels` (`id`, `description`, `company_id`, `employee_id`, `travel_type`, `start_date`, `end_date`, `purpose_of_visit`, `place_of_visit`, `expected_budget`, `actual_budget`, `travel_mode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud', 1, 12, 1, '2021-03-07', '2021-03-04', 'Product Analysis', 'New Delhi', '800', '750', 'By Train', 'first level approval', '2020-07-27 15:53:52', '2020-07-27 15:53:52'),
(2, 'bla bla bla', 1, 9, 3, '2021-03-18', '2021-03-15', 'Rome', 'Athens', '500', NULL, 'By Plane', 'approved', '2020-08-02 07:09:33', '2020-08-18 07:13:03');

-- --------------------------------------------------------

--
-- Table structure for table `travel_types`
--

CREATE TABLE `travel_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `arrangement_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_types`
--

INSERT INTO `travel_types` (`id`, `arrangement_type`, `company_id`, `created_at`, `updated_at`) VALUES
(1, 'Corporation', NULL, '2020-07-27 03:51:23', '2020-07-27 03:51:23'),
(2, 'Guest House', NULL, '2020-07-27 03:51:34', '2020-07-27 03:51:34'),
(3, 'Hotel', NULL, '2020-07-27 03:51:39', '2020-07-27 03:51:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_bg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_users_id` bigint(20) UNSIGNED NOT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `contact_no` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login_ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_date` timestamp(2) NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `email_verified_at`, `password`, `profile_photo`, `profile_bg`, `role_users_id`, `is_active`, `contact_no`, `last_login_ip`, `last_login_date`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ashraf', 'Shadat', 'admin', 'shadat@gmail.com', NULL, '$2y$10$Kvjut1QYWY9d3CabKzF71OWyGSgVLonc81k2JAzkXPxo6VsJzLNiK', 'ash_1595771188.jpg', NULL, 1, 1, '1234', '::1', '2021-07-26 10:08:54.00', 'tFBKHSyzvoNVL9IIrzaIv449vhbDUr1pTDmbSH0PrRJAoxiikAwlFErQJVFb', NULL, '2021-06-30 00:40:44', NULL),
(9, 'Sahiba', 'Khatun', 'staff', 'sahibakhatun@gmail.com', NULL, '$2y$10$SrbNlJzWXRlBDDqv4Abc9ef7XDeWKcJqwenTWQlkv2iWEPHvY1Jou', 'staff_1616582111.jpg', NULL, 5, 1, '387292822', '::1', '2021-07-26 10:14:17.00', NULL, '2020-07-26 19:51:54', '2021-07-26 10:13:54', NULL),
(10, 'Jhon', 'Chena', 'cena11', 'johncena@hotmail.com', NULL, '$2y$10$8dFCpYwVXgTo2/RFP4z3ZOV9HWygsx/wxLkqVKMgDaYVPXT2RPnSe', NULL, NULL, 2, 1, '456372794', '::1', '2021-07-17 04:06:22.00', NULL, '2020-07-26 20:01:39', '2021-07-17 04:06:05', NULL),
(11, 'Neo', 'Desi', 'neo22', 'neo22@boston.ac.uk', NULL, '$2y$10$7YXp/7yWhaNhdVulDbhSyOXSoqKk6sDjjru9TOe.WzbAt7sn6q8bu', NULL, NULL, 4, 1, '67278232', NULL, NULL, NULL, '2020-07-26 20:03:25', '2021-07-04 19:40:30', NULL),
(12, 'Bob', 'Hobart', 'bob05', 'bob@ymail.com', NULL, '$2y$10$hJA2MjGTk5JxYPEYg7guAuYLbNcRZK0zPsWlGXp7MomQfnb3Qwu0q', NULL, NULL, 2, 1, '4678292', NULL, NULL, NULL, '2020-07-27 04:26:35', '2021-03-23 18:01:54', NULL),
(13, 'Alice', 'Patrica', 'alicehh4', 'alicehh4@newmail.com', NULL, '$2y$10$etAwdCPWrPMv09LylKoLke5YxWZ4aIS9CgDW9Z8ZmL0Jr.TNcCFF.', NULL, NULL, 2, 1, '8765445698', '::1', '2021-06-24 16:07:06.00', NULL, '2020-07-27 04:28:16', '2021-06-24 16:06:50', NULL),
(14, 'Mayank', 'Agarwal', 'mayank06', 'mayank@gmail.com', NULL, '$2y$10$U2jCXdu6YztlaHf/./nbf.mPHDy7gYfK5bhAT8wfu4I7to3SKwX.e', NULL, NULL, 2, 1, '746389982', NULL, NULL, NULL, '2020-07-27 04:31:24', '2021-04-15 09:19:08', NULL),
(15, 'Mansoor', 'Ahmed', 'mansoor', 'mansoor@yahoo.com', NULL, '$2y$10$MyFyjN2K1QFL89eKuZQHF.xZ17vl0YviZ1q9d4eIORmMmS0gQs2IK', NULL, NULL, 2, 1, '67638299', NULL, NULL, NULL, '2020-07-27 04:33:54', '2021-04-15 09:20:00', NULL),
(16, 'Shadat', 'Ashraf', 'client', 'shahadatashraf10@gmail.com', NULL, '$2y$10$KvsR.SbDeGCWYKdOMtFhHOtgxJczVMXXlvDUfsc0S2caMqF2R3jQG', 'client_1623747532.png', NULL, 3, 1, '67651', '::1', '2021-06-17 04:43:22.00', NULL, '2020-07-28 14:41:31', '2021-06-15 05:58:52', NULL),
(27, 'Junayet ', 'Istius', 'junayet95', 'junayet@gmail.com', NULL, '$2y$10$Enzuol2OzlDVbP6qa9SMTuXFkQynA0lA0oBrtD0RaBnvwGoBPfZvG', NULL, NULL, 2, 1, '01829496534', NULL, NULL, NULL, '2021-03-12 10:47:47', '2021-03-12 10:47:47', NULL),
(31, 'Imran', 'Chowdhury', 'imran95', 'imran95@gmail.com', NULL, '$2y$10$wcKbAlCe.qrmpD1/uH/xPuTIeTG4iP5KU6sacYDgMBgE0NzmgLYnS', NULL, NULL, 1, 1, '01521226455', NULL, NULL, NULL, '2021-03-23 14:43:05', '2021-03-23 14:48:44', NULL),
(34, 'Amzad', 'Hossain', 'amzad95', 'amzad@gmail.com', NULL, '$2y$10$XwP9HJYYQCYqKZGgvGOH/.d6UjwnGE./LNxJmE8Iw9iynnhvwv67W', NULL, NULL, 2, 1, '01521225124', '127.0.0.1', '2021-03-28 06:28:36.00', NULL, '2021-03-28 05:53:57', '2021-03-28 17:29:20', NULL),
(36, 'Faisal Bin', 'Al Abid', 'faisal42', 'faisal42@gmail.com', NULL, '$2y$10$S6bNqrHDjjm89OCXEREAb.NaToxxXunrhI1y9Uut4zQjwhjyUHGVm', NULL, NULL, 1, 1, '0182946548', '127.0.0.1', '2021-03-28 06:36:03.00', NULL, '2021-03-28 06:35:37', '2021-03-28 06:35:37', NULL),
(38, 'Anisul', 'Islam', 'anis95', 'anis95@gmail.com', NULL, '$2y$10$L0rV6308zcY.h5hccqw1he3yhTCzXm9oxRtmKVpygk2XM3t1D0tHK', NULL, NULL, 2, 1, '01521222842', NULL, NULL, NULL, '2021-03-28 17:35:27', '2021-03-28 17:35:27', NULL),
(39, 'Kaden', 'Porter', 'kaden95', 'kaden@mailinator.com', NULL, '$2y$10$v0ppHd14bDVJKi1.Lgm5qes2H9XkkQEl5Lmdw/lRk.zNtKzYTZ4we', 'kaden95_1623747054.jpg', NULL, 3, 1, '441234874', '127.0.0.1', '2021-03-30 01:45:13.00', NULL, '2021-03-30 01:42:31', '2021-06-15 05:50:54', NULL),
(40, 'ABC', 'Test', 'abc123', 'abc@gmail.com', NULL, '$2y$10$J1CTdMP3HvvPXS1eCrd8kuTXaR.JCAHZGk5DXQPlNAdpAIMPQhF1W', NULL, NULL, 1, 1, '12348751', NULL, NULL, NULL, '2021-04-13 04:31:13', '2021-06-30 00:55:16', NULL),
(43, 'XYZ', 'Test', 'xyz123', 'xyz@gmail.com', NULL, '$2y$10$8Pxuy3DUOJXqTLpPs52NG.EVPRa2ajvnJeVIs9F0pGfNZrCPK3gv6', NULL, NULL, 2, 1, '2354136', '127.0.0.1', '2021-04-14 04:58:33.00', NULL, '2021-04-13 22:34:26', '2021-04-15 09:04:01', NULL),
(44, 'mai', '007', 'mi007', 'mi007@gmail.com', NULL, '$2y$10$nK3eNwRsulfAPKnqqSzBIOTNPzBT8Z1j6CxJI6vW38L.yZ.RrTOKe', NULL, NULL, 1, 1, '23131322', '::1', '2021-06-26 02:42:16.00', NULL, '2021-06-26 02:41:39', '2021-06-26 02:41:39', NULL),
(45, 'Promi', 'Chy', 'promi98', 'promi98@gmail.com', NULL, '$2y$10$x.6xRw4Tv7u6wezVJSWcPuUx7elTP1SSY1DbiBgsQ5DQxotMgO11K', NULL, NULL, 4, 1, '423213234', NULL, NULL, NULL, '2021-06-29 17:16:33', '2021-06-30 00:27:38', NULL),
(46, 'Rony', 'Khan', 'rony95', 'rony95@gmail.com', NULL, '$2y$10$qzyTmdbQcPO.f/Z2TLz0S.vPunn8CB3ZOUkUCqMrS1nVbdIP2dVwO', NULL, NULL, 1, 1, '12874849329', '127.0.0.1', '2021-07-06 07:37:02.00', NULL, '2021-06-30 00:58:38', '2021-06-30 00:58:38', NULL),
(47, 'ddgdd', 'ggdg', 'testtest', 'shaddsdat@gmail.com', NULL, '$2y$10$C1tmk3S4oaKxp08f/jgLiearK/sFPgKaN./f5jAQiahbalIdp2cjq', NULL, NULL, 1, 1, '67278232454545', NULL, NULL, NULL, '2021-07-04 19:41:25', '2021-07-04 19:41:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `warnings`
--

CREATE TABLE `warnings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `warning_to` bigint(20) UNSIGNED NOT NULL,
  `warning_type` bigint(20) UNSIGNED DEFAULT NULL,
  `warning_date` date NOT NULL,
  `status` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warnings`
--

INSERT INTO `warnings` (`id`, `subject`, `description`, `company_id`, `warning_to`, `warning_type`, `warning_date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Harassment', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1, 11, 1, '2021-04-06', 'unsolved', '2020-07-27 17:35:31', '2020-07-27 17:35:31');

-- --------------------------------------------------------

--
-- Table structure for table `warnings_type`
--

CREATE TABLE `warnings_type` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `warning_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warnings_type`
--

INSERT INTO `warnings_type` (`id`, `warning_title`, `created_at`, `updated_at`) VALUES
(1, 'First written warning', '2020-07-26 20:20:57', '2020-07-26 20:20:57'),
(2, 'Verbal Warning', '2020-07-26 20:21:17', '2020-07-26 20:21:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `announcements_company_id_foreign` (`company_id`),
  ADD KEY `announcements_department_id_foreign` (`department_id`),
  ADD KEY `announcements_added_by_foreign` (`added_by`);

--
-- Indexes for table `appraisals`
--
ALTER TABLE `appraisals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assets_company_id_foreign` (`company_id`),
  ADD KEY `assets_employee_id_foreign` (`employee_id`),
  ADD KEY `assets_assets_category_id_foreign` (`assets_category_id`);

--
-- Indexes for table `asset_categories`
--
ALTER TABLE `asset_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asset_categories_company_id_foreign` (`company_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `awards_company_id_foreign` (`company_id`),
  ADD KEY `awards_department_id_foreign` (`department_id`),
  ADD KEY `awards_employee_id_foreign` (`employee_id`),
  ADD KEY `awards_award_type_id_foreign` (`award_type_id`);

--
-- Indexes for table `award_types`
--
ALTER TABLE `award_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendarables`
--
ALTER TABLE `calendarables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `candidate_interview`
--
ALTER TABLE `candidate_interview`
  ADD PRIMARY KEY (`interview_id`,`candidate_id`),
  ADD KEY `candidate_interview_candidate_id_foreign` (`candidate_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companies_location_id_foreign` (`location_id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complaints_company_id_foreign` (`company_id`),
  ADD KEY `complaints_complaint_from_foreign` (`complaint_from`),
  ADD KEY `complaints_complaint_against_foreign` (`complaint_against`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `c_m_s`
--
ALTER TABLE `c_m_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_company_id_foreign` (`company_id`),
  ADD KEY `departments_department_head_foreign` (`department_head`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designations_company_id_foreign` (`company_id`),
  ADD KEY `designations_department_id_foreign` (`department_id`);

--
-- Indexes for table `document_types`
--
ALTER TABLE `document_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_types_company_id_foreign` (`company_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_office_shift_id_foreign` (`office_shift_id`),
  ADD KEY `employees_company_id_foreign` (`company_id`),
  ADD KEY `employees_department_id_foreign` (`department_id`),
  ADD KEY `employees_designation_id_foreign` (`designation_id`),
  ADD KEY `employees_location_id_foreign` (`location_id`),
  ADD KEY `employees_role_users_id_foreign` (`role_users_id`),
  ADD KEY `employees_status_id_foreign` (`status_id`);

--
-- Indexes for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_bank_accounts_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_contacts_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_documents_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_documents_document_type_id_foreign` (`document_type_id`);

--
-- Indexes for table `employee_immigrations`
--
ALTER TABLE `employee_immigrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_immigrations_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_immigrations_document_type_id_foreign` (`document_type_id`);

--
-- Indexes for table `employee_interview`
--
ALTER TABLE `employee_interview`
  ADD PRIMARY KEY (`interview_id`,`employee_id`),
  ADD KEY `employee_interview_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `employee_meeting`
--
ALTER TABLE `employee_meeting`
  ADD PRIMARY KEY (`employee_id`,`meeting_id`),
  ADD KEY `employee_meeting_meeting_id_foreign` (`meeting_id`);

--
-- Indexes for table `employee_project`
--
ALTER TABLE `employee_project`
  ADD PRIMARY KEY (`employee_id`,`project_id`),
  ADD KEY `employee_project_project_id_foreign` (`project_id`);

--
-- Indexes for table `employee_qualificaitons`
--
ALTER TABLE `employee_qualificaitons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_qualificaitons_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_qualificaitons_education_level_id_foreign` (`education_level_id`),
  ADD KEY `employee_qualificaitons_language_skill_id_foreign` (`language_skill_id`),
  ADD KEY `employee_qualificaitons_general_skill_id_foreign` (`general_skill_id`);

--
-- Indexes for table `employee_support_ticket`
--
ALTER TABLE `employee_support_ticket`
  ADD PRIMARY KEY (`employee_id`,`support_ticket_id`),
  ADD KEY `employee_support_ticket_support_ticket_id_foreign` (`support_ticket_id`);

--
-- Indexes for table `employee_task`
--
ALTER TABLE `employee_task`
  ADD PRIMARY KEY (`employee_id`,`task_id`),
  ADD KEY `employee_task_task_id_foreign` (`task_id`);

--
-- Indexes for table `employee_training_list`
--
ALTER TABLE `employee_training_list`
  ADD PRIMARY KEY (`employee_id`,`training_list_id`),
  ADD KEY `employee_training_list_training_list_id_foreign` (`training_list_id`);

--
-- Indexes for table `employee_work_experience`
--
ALTER TABLE `employee_work_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_work_experience_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_company_id_foreign` (`company_id`),
  ADD KEY `events_department_id_foreign` (`department_id`);

--
-- Indexes for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_types_company_id_foreign` (`company_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `file_managers`
--
ALTER TABLE `file_managers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_managers_department_id_foreign` (`department_id`),
  ADD KEY `file_managers_added_by_foreign` (`added_by`);

--
-- Indexes for table `file_manager_settings`
--
ALTER TABLE `file_manager_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance_bank_cashes`
--
ALTER TABLE `finance_bank_cashes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance_deposits`
--
ALTER TABLE `finance_deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finance_deposits_company_id_foreign` (`company_id`),
  ADD KEY `finance_deposits_account_id_foreign` (`account_id`),
  ADD KEY `finance_deposits_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `finance_deposits_payer_id_foreign` (`payer_id`);

--
-- Indexes for table `finance_expenses`
--
ALTER TABLE `finance_expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finance_expenses_company_id_foreign` (`company_id`),
  ADD KEY `finance_expenses_account_id_foreign` (`account_id`),
  ADD KEY `finance_expenses_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `finance_expenses_payee_id_foreign` (`payee_id`),
  ADD KEY `finance_expenses_category_id_foreign` (`category_id`);

--
-- Indexes for table `finance_payees`
--
ALTER TABLE `finance_payees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance_payers`
--
ALTER TABLE `finance_payers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance_transactions`
--
ALTER TABLE `finance_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finance_transactions_company_id_foreign` (`company_id`),
  ADD KEY `finance_transactions_account_id_foreign` (`account_id`),
  ADD KEY `finance_transactions_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `finance_transactions_payee_id_foreign` (`payee_id`),
  ADD KEY `finance_transactions_payer_id_foreign` (`payer_id`),
  ADD KEY `finance_transactions_category_id_foreign` (`category_id`);

--
-- Indexes for table `finance_transfers`
--
ALTER TABLE `finance_transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `finance_transfers_company_id_foreign` (`company_id`),
  ADD KEY `finance_transfers_from_account_id_foreign` (`from_account_id`),
  ADD KEY `finance_transfers_to_account_id_foreign` (`to_account_id`),
  ADD KEY `finance_transfers_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `general_settings`
--
ALTER TABLE `general_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal_trackings`
--
ALTER TABLE `goal_trackings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `goal_types`
--
ALTER TABLE `goal_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `holidays_company_id_foreign` (`company_id`),
  ADD KEY `holidays_department_id_foreign` (`department_id`);

--
-- Indexes for table `indicators`
--
ALTER TABLE `indicators`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_client_id_foreign` (`client_id`),
  ADD KEY `invoices_project_id_foreign` (`project_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_items_project_id_foreign` (`project_id`);

--
-- Indexes for table `ip_settings`
--
ALTER TABLE `ip_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_candidates`
--
ALTER TABLE `job_candidates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_candidates_job_id_foreign` (`job_id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_interviews`
--
ALTER TABLE `job_interviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_interviews_job_id_foreign` (`job_id`),
  ADD KEY `job_interviews_added_by_foreign` (`added_by`);

--
-- Indexes for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_posts_job_category_id_foreign` (`job_category_id`),
  ADD KEY `job_posts_company_id_foreign` (`company_id`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_company_id_foreign` (`company_id`),
  ADD KEY `leaves_employee_id_foreign` (`employee_id`),
  ADD KEY `leaves_leave_type_id_foreign` (`leave_type_id`),
  ADD KEY `leaves_department_id_foreign` (`department_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_types_company_id_foreign` (`company_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `locations_location_head_foreign` (`location_head`),
  ADD KEY `locations_country_foreign` (`country`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meetings_company_id_foreign` (`company_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `office_shifts`
--
ALTER TABLE `office_shifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `office_shifts_company_id_foreign` (`company_id`);

--
-- Indexes for table `official_documents`
--
ALTER TABLE `official_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `official_documents_company_id_foreign` (`company_id`),
  ADD KEY `official_documents_document_type_id_foreign` (`document_type_id`),
  ADD KEY `official_documents_added_by_foreign` (`added_by`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_methods_company_id_foreign` (`company_id`);

--
-- Indexes for table `payslips`
--
ALTER TABLE `payslips`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payslips_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `policies_company_id_foreign` (`company_id`),
  ADD KEY `policies_added_by_foreign` (`added_by`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_client_id_foreign` (`client_id`),
  ADD KEY `projects_company_id_foreign` (`company_id`),
  ADD KEY `projects_added_by_foreign` (`added_by`);

--
-- Indexes for table `project_bugs`
--
ALTER TABLE `project_bugs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_bugs_user_id_foreign` (`user_id`),
  ADD KEY `project_bugs_project_id_foreign` (`project_id`);

--
-- Indexes for table `project_discussions`
--
ALTER TABLE `project_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_discussions_user_id_foreign` (`user_id`),
  ADD KEY `project_discussions_project_id_foreign` (`project_id`);

--
-- Indexes for table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_files_user_id_foreign` (`user_id`),
  ADD KEY `project_files_project_id_foreign` (`project_id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promotions_company_id_foreign` (`company_id`),
  ADD KEY `promotions_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `qualification_education_levels`
--
ALTER TABLE `qualification_education_levels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qualification_education_levels_company_id_foreign` (`company_id`);

--
-- Indexes for table `qualification_languages`
--
ALTER TABLE `qualification_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qualification_languages_company_id_foreign` (`company_id`);

--
-- Indexes for table `qualification_skills`
--
ALTER TABLE `qualification_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `qualification_skills_company_id_foreign` (`company_id`);

--
-- Indexes for table `resignations`
--
ALTER TABLE `resignations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resignations_company_id_foreign` (`company_id`),
  ADD KEY `resignations_department_id_foreign` (`department_id`),
  ADD KEY `resignations_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `salary_allowances`
--
ALTER TABLE `salary_allowances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_allowances_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `salary_basics`
--
ALTER TABLE `salary_basics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_basics_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `salary_commissions`
--
ALTER TABLE `salary_commissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_commissions_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `salary_deductions`
--
ALTER TABLE `salary_deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_deductions_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `salary_loans`
--
ALTER TABLE `salary_loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_loans_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `salary_other_payments`
--
ALTER TABLE `salary_other_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_other_payments_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `salary_overtimes`
--
ALTER TABLE `salary_overtimes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_overtimes_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `support_tickets_ticket_code_unique` (`ticket_code`),
  ADD KEY `support_tickets_company_id_foreign` (`company_id`),
  ADD KEY `support_tickets_department_id_foreign` (`department_id`),
  ADD KEY `support_tickets_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_project_id_foreign` (`project_id`),
  ADD KEY `tasks_company_id_foreign` (`company_id`),
  ADD KEY `tasks_added_by_foreign` (`added_by`);

--
-- Indexes for table `task_discussions`
--
ALTER TABLE `task_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_discussions_user_id_foreign` (`user_id`),
  ADD KEY `task_discussions_task_id_foreign` (`task_id`);

--
-- Indexes for table `task_files`
--
ALTER TABLE `task_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_files_user_id_foreign` (`user_id`),
  ADD KEY `task_files_task_id_foreign` (`task_id`);

--
-- Indexes for table `tax_types`
--
ALTER TABLE `tax_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terminations`
--
ALTER TABLE `terminations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `terminations_company_id_foreign` (`company_id`),
  ADD KEY `terminations_terminated_employee_foreign` (`terminated_employee`),
  ADD KEY `terminations_termination_type_foreign` (`termination_type`);

--
-- Indexes for table `termination_types`
--
ALTER TABLE `termination_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_comments`
--
ALTER TABLE `ticket_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_comments_ticket_id_foreign` (`ticket_id`),
  ADD KEY `ticket_comments_user_id_foreign` (`user_id`);

--
-- Indexes for table `trainers`
--
ALTER TABLE `trainers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trainers_company_id_foreign` (`company_id`);

--
-- Indexes for table `training_lists`
--
ALTER TABLE `training_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `training_lists_company_id_foreign` (`company_id`),
  ADD KEY `training_lists_trainer_id_foreign` (`trainer_id`),
  ADD KEY `training_lists_training_type_id_foreign` (`training_type_id`);

--
-- Indexes for table `training_types`
--
ALTER TABLE `training_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_company_id_foreign` (`company_id`),
  ADD KEY `transfers_from_department_id_foreign` (`from_department_id`),
  ADD KEY `transfers_to_department_id_foreign` (`to_department_id`),
  ADD KEY `transfers_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `travels`
--
ALTER TABLE `travels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travels_company_id_foreign` (`company_id`),
  ADD KEY `travels_employee_id_foreign` (`employee_id`),
  ADD KEY `travels_travel_type_foreign` (`travel_type`);

--
-- Indexes for table `travel_types`
--
ALTER TABLE `travel_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travel_types_company_id_foreign` (`company_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_users_id_foreign` (`role_users_id`);

--
-- Indexes for table `warnings`
--
ALTER TABLE `warnings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warnings_company_id_foreign` (`company_id`),
  ADD KEY `warnings_warning_to_foreign` (`warning_to`),
  ADD KEY `warnings_warning_type_foreign` (`warning_type`);

--
-- Indexes for table `warnings_type`
--
ALTER TABLE `warnings_type`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `appraisals`
--
ALTER TABLE `appraisals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `asset_categories`
--
ALTER TABLE `asset_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `award_types`
--
ALTER TABLE `award_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `calendarables`
--
ALTER TABLE `calendarables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `c_m_s`
--
ALTER TABLE `c_m_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `document_types`
--
ALTER TABLE `document_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_documents`
--
ALTER TABLE `employee_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_immigrations`
--
ALTER TABLE `employee_immigrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_qualificaitons`
--
ALTER TABLE `employee_qualificaitons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_work_experience`
--
ALTER TABLE `employee_work_experience`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `expense_types`
--
ALTER TABLE `expense_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `file_managers`
--
ALTER TABLE `file_managers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `file_manager_settings`
--
ALTER TABLE `file_manager_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `finance_bank_cashes`
--
ALTER TABLE `finance_bank_cashes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `finance_deposits`
--
ALTER TABLE `finance_deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `finance_expenses`
--
ALTER TABLE `finance_expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `finance_payees`
--
ALTER TABLE `finance_payees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `finance_payers`
--
ALTER TABLE `finance_payers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `finance_transactions`
--
ALTER TABLE `finance_transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `finance_transfers`
--
ALTER TABLE `finance_transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `general_settings`
--
ALTER TABLE `general_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `goal_trackings`
--
ALTER TABLE `goal_trackings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `goal_types`
--
ALTER TABLE `goal_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ip_settings`
--
ALTER TABLE `ip_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `job_candidates`
--
ALTER TABLE `job_candidates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `job_interviews`
--
ALTER TABLE `job_interviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `job_posts`
--
ALTER TABLE `job_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `office_shifts`
--
ALTER TABLE `office_shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `official_documents`
--
ALTER TABLE `official_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payslips`
--
ALTER TABLE `payslips`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project_bugs`
--
ALTER TABLE `project_bugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_discussions`
--
ALTER TABLE `project_discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `qualification_education_levels`
--
ALTER TABLE `qualification_education_levels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `qualification_languages`
--
ALTER TABLE `qualification_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `qualification_skills`
--
ALTER TABLE `qualification_skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `resignations`
--
ALTER TABLE `resignations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salary_allowances`
--
ALTER TABLE `salary_allowances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `salary_basics`
--
ALTER TABLE `salary_basics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `salary_commissions`
--
ALTER TABLE `salary_commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `salary_deductions`
--
ALTER TABLE `salary_deductions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `salary_loans`
--
ALTER TABLE `salary_loans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `salary_other_payments`
--
ALTER TABLE `salary_other_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `salary_overtimes`
--
ALTER TABLE `salary_overtimes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `task_discussions`
--
ALTER TABLE `task_discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_files`
--
ALTER TABLE `task_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_types`
--
ALTER TABLE `tax_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `terminations`
--
ALTER TABLE `terminations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `termination_types`
--
ALTER TABLE `termination_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ticket_comments`
--
ALTER TABLE `ticket_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trainers`
--
ALTER TABLE `trainers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `training_lists`
--
ALTER TABLE `training_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `training_types`
--
ALTER TABLE `training_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travels`
--
ALTER TABLE `travels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `travel_types`
--
ALTER TABLE `travel_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `warnings`
--
ALTER TABLE `warnings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warnings_type`
--
ALTER TABLE `warnings_type`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `announcements_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `assets`
--
ALTER TABLE `assets`
  ADD CONSTRAINT `assets_assets_category_id_foreign` FOREIGN KEY (`assets_category_id`) REFERENCES `asset_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assets_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `asset_categories`
--
ALTER TABLE `asset_categories`
  ADD CONSTRAINT `asset_categories_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_award_type_id_foreign` FOREIGN KEY (`award_type_id`) REFERENCES `award_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `awards_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `awards_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `awards_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `candidate_interview`
--
ALTER TABLE `candidate_interview`
  ADD CONSTRAINT `candidate_interview_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `job_candidates` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `candidate_interview_interview_id_foreign` FOREIGN KEY (`interview_id`) REFERENCES `job_interviews` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `complaints`
--
ALTER TABLE `complaints`
  ADD CONSTRAINT `complaints_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `complaints_complaint_against_foreign` FOREIGN KEY (`complaint_against`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `complaints_complaint_from_foreign` FOREIGN KEY (`complaint_from`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `departments_department_head_foreign` FOREIGN KEY (`department_head`) REFERENCES `employees` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `designations`
--
ALTER TABLE `designations`
  ADD CONSTRAINT `designations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `designations_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `document_types`
--
ALTER TABLE `document_types`
  ADD CONSTRAINT `document_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_id_foreign` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employees_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_office_shift_id_foreign` FOREIGN KEY (`office_shift_id`) REFERENCES `office_shifts` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_role_users_id_foreign` FOREIGN KEY (`role_users_id`) REFERENCES `roles` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employees_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_bank_accounts`
--
ALTER TABLE `employee_bank_accounts`
  ADD CONSTRAINT `employee_bank_accounts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_contacts`
--
ALTER TABLE `employee_contacts`
  ADD CONSTRAINT `employee_contacts_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_documents`
--
ALTER TABLE `employee_documents`
  ADD CONSTRAINT `employee_documents_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employee_documents_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_immigrations`
--
ALTER TABLE `employee_immigrations`
  ADD CONSTRAINT `employee_immigrations_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employee_immigrations_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_interview`
--
ALTER TABLE `employee_interview`
  ADD CONSTRAINT `employee_interview_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `employee_interview_interview_id_foreign` FOREIGN KEY (`interview_id`) REFERENCES `job_interviews` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_meeting`
--
ALTER TABLE `employee_meeting`
  ADD CONSTRAINT `employee_meeting_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_meeting_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_project`
--
ALTER TABLE `employee_project`
  ADD CONSTRAINT `employee_project_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_project_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_qualificaitons`
--
ALTER TABLE `employee_qualificaitons`
  ADD CONSTRAINT `employee_qualificaitons_education_level_id_foreign` FOREIGN KEY (`education_level_id`) REFERENCES `qualification_education_levels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employee_qualificaitons_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_qualificaitons_general_skill_id_foreign` FOREIGN KEY (`general_skill_id`) REFERENCES `qualification_skills` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `employee_qualificaitons_language_skill_id_foreign` FOREIGN KEY (`language_skill_id`) REFERENCES `qualification_languages` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `employee_support_ticket`
--
ALTER TABLE `employee_support_ticket`
  ADD CONSTRAINT `employee_support_ticket_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_support_ticket_support_ticket_id_foreign` FOREIGN KEY (`support_ticket_id`) REFERENCES `support_tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_task`
--
ALTER TABLE `employee_task`
  ADD CONSTRAINT `employee_task_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_task_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_training_list`
--
ALTER TABLE `employee_training_list`
  ADD CONSTRAINT `employee_training_list_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_training_list_training_list_id_foreign` FOREIGN KEY (`training_list_id`) REFERENCES `training_lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_work_experience`
--
ALTER TABLE `employee_work_experience`
  ADD CONSTRAINT `employee_work_experience_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `events`
--
ALTER TABLE `events`
  ADD CONSTRAINT `events_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `events_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expense_types`
--
ALTER TABLE `expense_types`
  ADD CONSTRAINT `expense_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `file_managers`
--
ALTER TABLE `file_managers`
  ADD CONSTRAINT `file_managers_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `file_managers_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `finance_deposits`
--
ALTER TABLE `finance_deposits`
  ADD CONSTRAINT `finance_deposits_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `finance_bank_cashes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_deposits_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_deposits_payer_id_foreign` FOREIGN KEY (`payer_id`) REFERENCES `finance_payers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_deposits_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `finance_expenses`
--
ALTER TABLE `finance_expenses`
  ADD CONSTRAINT `finance_expenses_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `finance_bank_cashes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_expenses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `expense_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_expenses_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_expenses_payee_id_foreign` FOREIGN KEY (`payee_id`) REFERENCES `finance_payees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_expenses_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `finance_transactions`
--
ALTER TABLE `finance_transactions`
  ADD CONSTRAINT `finance_transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `finance_bank_cashes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_transactions_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `expense_types` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_transactions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_transactions_payee_id_foreign` FOREIGN KEY (`payee_id`) REFERENCES `finance_payees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_transactions_payer_id_foreign` FOREIGN KEY (`payer_id`) REFERENCES `finance_payers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `finance_transfers`
--
ALTER TABLE `finance_transfers`
  ADD CONSTRAINT `finance_transfers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_transfers_from_account_id_foreign` FOREIGN KEY (`from_account_id`) REFERENCES `finance_bank_cashes` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_transfers_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `finance_transfers_to_account_id_foreign` FOREIGN KEY (`to_account_id`) REFERENCES `finance_bank_cashes` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `holidays`
--
ALTER TABLE `holidays`
  ADD CONSTRAINT `holidays_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `holidays_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `invoices_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `job_candidates`
--
ALTER TABLE `job_candidates`
  ADD CONSTRAINT `job_candidates_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `job_posts` (`id`) ON DELETE NO ACTION;

--
-- Constraints for table `job_interviews`
--
ALTER TABLE `job_interviews`
  ADD CONSTRAINT `job_interviews_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `job_interviews_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `job_posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD CONSTRAINT `job_posts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `job_posts_job_category_id_foreign` FOREIGN KEY (`job_category_id`) REFERENCES `job_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leaves_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leaves_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `leaves_leave_type_id_foreign` FOREIGN KEY (`leave_type_id`) REFERENCES `leave_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD CONSTRAINT `leave_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `locations`
--
ALTER TABLE `locations`
  ADD CONSTRAINT `locations_country_foreign` FOREIGN KEY (`country`) REFERENCES `countries` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `locations_location_head_foreign` FOREIGN KEY (`location_head`) REFERENCES `employees` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `office_shifts`
--
ALTER TABLE `office_shifts`
  ADD CONSTRAINT `office_shifts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `official_documents`
--
ALTER TABLE `official_documents`
  ADD CONSTRAINT `official_documents_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `official_documents_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `official_documents_document_type_id_foreign` FOREIGN KEY (`document_type_id`) REFERENCES `document_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD CONSTRAINT `payment_methods_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `payslips`
--
ALTER TABLE `payslips`
  ADD CONSTRAINT `payslips_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `policies`
--
ALTER TABLE `policies`
  ADD CONSTRAINT `policies_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `projects_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `projects_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `project_bugs`
--
ALTER TABLE `project_bugs`
  ADD CONSTRAINT `project_bugs_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_bugs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `project_discussions`
--
ALTER TABLE `project_discussions`
  ADD CONSTRAINT `project_discussions_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `project_files`
--
ALTER TABLE `project_files`
  ADD CONSTRAINT `project_files_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `promotions`
--
ALTER TABLE `promotions`
  ADD CONSTRAINT `promotions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `promotions_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `qualification_education_levels`
--
ALTER TABLE `qualification_education_levels`
  ADD CONSTRAINT `qualification_education_levels_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `qualification_languages`
--
ALTER TABLE `qualification_languages`
  ADD CONSTRAINT `qualification_languages_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `qualification_skills`
--
ALTER TABLE `qualification_skills`
  ADD CONSTRAINT `qualification_skills_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resignations`
--
ALTER TABLE `resignations`
  ADD CONSTRAINT `resignations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `resignations_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `resignations_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_allowances`
--
ALTER TABLE `salary_allowances`
  ADD CONSTRAINT `salary_allowances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_basics`
--
ALTER TABLE `salary_basics`
  ADD CONSTRAINT `salary_basics_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_commissions`
--
ALTER TABLE `salary_commissions`
  ADD CONSTRAINT `salary_commissions_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_deductions`
--
ALTER TABLE `salary_deductions`
  ADD CONSTRAINT `salary_deductions_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_loans`
--
ALTER TABLE `salary_loans`
  ADD CONSTRAINT `salary_loans_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_other_payments`
--
ALTER TABLE `salary_other_payments`
  ADD CONSTRAINT `salary_other_payments_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_overtimes`
--
ALTER TABLE `salary_overtimes`
  ADD CONSTRAINT `salary_overtimes_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD CONSTRAINT `support_tickets_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `support_tickets_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `support_tickets_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tasks_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_discussions`
--
ALTER TABLE `task_discussions`
  ADD CONSTRAINT `task_discussions_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `task_files`
--
ALTER TABLE `task_files`
  ADD CONSTRAINT `task_files_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `terminations`
--
ALTER TABLE `terminations`
  ADD CONSTRAINT `terminations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `terminations_terminated_employee_foreign` FOREIGN KEY (`terminated_employee`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `terminations_termination_type_foreign` FOREIGN KEY (`termination_type`) REFERENCES `termination_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `ticket_comments`
--
ALTER TABLE `ticket_comments`
  ADD CONSTRAINT `ticket_comments_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `support_tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticket_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `trainers`
--
ALTER TABLE `trainers`
  ADD CONSTRAINT `trainers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `training_lists`
--
ALTER TABLE `training_lists`
  ADD CONSTRAINT `training_lists_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `training_lists_trainer_id_foreign` FOREIGN KEY (`trainer_id`) REFERENCES `trainers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `training_lists_training_type_id_foreign` FOREIGN KEY (`training_type_id`) REFERENCES `training_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_from_department_id_foreign` FOREIGN KEY (`from_department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_to_department_id_foreign` FOREIGN KEY (`to_department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `travels`
--
ALTER TABLE `travels`
  ADD CONSTRAINT `travels_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travels_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travels_travel_type_foreign` FOREIGN KEY (`travel_type`) REFERENCES `travel_types` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `travel_types`
--
ALTER TABLE `travel_types`
  ADD CONSTRAINT `travel_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_users_id_foreign` FOREIGN KEY (`role_users_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `warnings`
--
ALTER TABLE `warnings`
  ADD CONSTRAINT `warnings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `warnings_warning_to_foreign` FOREIGN KEY (`warning_to`) REFERENCES `employees` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `warnings_warning_type_foreign` FOREIGN KEY (`warning_type`) REFERENCES `warnings_type` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
