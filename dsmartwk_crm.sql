-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th4 06, 2021 lúc 09:08 PM
-- Phiên bản máy phục vụ: 5.7.30
-- Phiên bản PHP: 7.3.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dsmartwk_crm`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accres`
--

CREATE TABLE `accres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `equipment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `accres`
--

INSERT INTO `accres` (`id`, `equipment_id`, `provider`, `time`, `note`, `content`, `created_at`, `updated_at`) VALUES
(1, 257, '0', '2021-04-02', '10', '10', '2021-04-02 13:58:36', '2021-04-02 13:58:36'),
(2, 240, 'Drop-down', '2022-03-01', 'kiểm định lần 2', 'kiểm định định kỳ 12 tháng', '2021-04-06 07:19:48', '2021-04-06 07:19:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `actions`
--

CREATE TABLE `actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `equi_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reason` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `status` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `actions`
--

INSERT INTO `actions` (`id`, `code`, `type`, `user_id`, `equi_id`, `reason`, `content`, `status`, `image`, `created_at`, `updated_at`) VALUES
(2, NULL, 'equipment_repair', 28, NULL, '<p><span style=\"background-color: rgb(255, 0, 0);\">Bị hư</span></p>', '<p><span style=\"background-color: rgb(255, 0, 0);\">Bị bể&nbsp;</span><br></p>', NULL, NULL, '2021-02-03 09:13:10', '2021-02-25 12:28:07'),
(3, NULL, 'periodic_maintenance', 28, NULL, '<p><span style=\"background-color: rgb(66, 66, 66);\"><font color=\"#ffe79c\">Ngày 20/9/1997</font></span></p>', '<p><span style=\"color: rgb(255, 231, 156); background-color: rgb(66, 66, 66);\">Ngày 20/9/1997</span><br></p>', NULL, NULL, '2021-02-03 09:17:53', '2021-02-06 07:17:27'),
(6, NULL, 'liquidations', 27, NULL, '<p><span style=\"background-color: rgb(255, 0, 255);\">Đem đi bán cho bệnh viện</span></p>', '<p><span style=\"background-color: rgb(255, 0, 255);\">Đem đi bán cho bệnh viện</span><br></p>', NULL, NULL, '2021-02-03 12:19:23', '2021-02-03 12:19:44'),
(7, NULL, 'equipment_repair', NULL, NULL, '<p>dsad</p>', '<p>sadad</p>', NULL, NULL, '2021-02-25 14:18:15', '2021-02-25 14:18:15'),
(8, NULL, 'accreditation', 33, 223, '<p>x</p>', '<p>x</p>', NULL, NULL, '2021-03-26 18:43:58', '2021-03-26 18:43:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(2381, 'default', 'created', 'App\\Models\\EquipmentBallot', 37, 'App\\Models\\User', 32, '[]', '2021-04-01 18:44:15', '2021-04-01 18:44:15'),
(2382, 'default', 'updated', 'App\\Models\\EquipmentBallot', 37, 'App\\Models\\User', 32, '[]', '2021-04-01 18:44:29', '2021-04-01 18:44:29'),
(2383, 'default', 'deleted', 'App\\Models\\EquipmentBallot', 37, 'App\\Models\\User', 32, '[]', '2021-04-01 18:46:28', '2021-04-01 18:46:28'),
(2384, 'default', 'created', 'App\\Models\\EquipmentBallot', 38, 'App\\Models\\User', 32, '[]', '2021-04-01 18:52:48', '2021-04-01 18:52:48'),
(2385, 'default', 'created', 'App\\Models\\EquipmentBallot', 39, 'App\\Models\\User', 32, '[]', '2021-04-01 18:53:45', '2021-04-01 18:53:45'),
(2386, 'default', 'updated', 'App\\Models\\EquipmentBallot', 38, 'App\\Models\\User', 32, '[]', '2021-04-01 18:56:12', '2021-04-01 18:56:12'),
(2387, 'default', 'deleted', 'App\\Models\\EquipmentBallot', 39, 'App\\Models\\User', 32, '[]', '2021-04-01 18:56:40', '2021-04-01 18:56:40'),
(2388, 'default', 'deleted', 'App\\Models\\EquipmentBallot', 38, 'App\\Models\\User', 32, '[]', '2021-04-01 18:56:43', '2021-04-01 18:56:43'),
(2389, 'default', 'created', 'App\\Models\\EquipmentBallot', 40, 'App\\Models\\User', 32, '[]', '2021-04-01 18:56:59', '2021-04-01 18:56:59'),
(2390, 'default', 'created', 'App\\Models\\EquipmentBallot', 41, 'App\\Models\\User', 32, '[]', '2021-04-01 18:57:13', '2021-04-01 18:57:13'),
(2393, 'default', 'updated', 'App\\Models\\Equipment', 257, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30},\"old\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":30}}', '2021-04-01 19:06:46', '2021-04-01 19:06:46'),
(2394, 'default', 'updated', 'App\\Models\\Equipment', 252, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y Monitor theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":33},\"old\":{\"title\":\"M\\u00e1y Monitor theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":33}}', '2021-04-01 19:10:00', '2021-04-01 19:10:00'),
(2395, 'default', 'updated', 'App\\Models\\Equipment', 225, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":33},\"old\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":33}}', '2021-04-01 19:11:03', '2021-04-01 19:11:03'),
(2396, 'default', 'deleted', 'App\\Models\\EquipmentBallot', 40, 'App\\Models\\User', 32, '[]', '2021-04-01 19:11:49', '2021-04-01 19:11:49'),
(2397, 'default', 'deleted', 'App\\Models\\EquipmentBallot', 41, 'App\\Models\\User', 32, '[]', '2021-04-01 19:11:52', '2021-04-01 19:11:52'),
(2398, 'default', 'updated', 'App\\Models\\Equipment', 228, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32},\"old\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":32}}', '2021-04-01 19:14:27', '2021-04-01 19:14:27'),
(2399, 'default', 'updated', 'App\\Models\\Equipment', 238, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y Monitor theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30},\"old\":{\"title\":\"M\\u00e1y Monitor theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":32}}', '2021-04-01 19:18:21', '2021-04-01 19:18:21'),
(2400, 'login', 'login', NULL, NULL, 'App\\Models\\User', 37, '[]', '2021-04-01 19:30:35', '2021-04-01 19:30:35'),
(2401, 'default', 'created', 'App\\Models\\EquipmentBallot', 42, 'App\\Models\\User', 37, '[]', '2021-04-01 19:31:31', '2021-04-01 19:31:31'),
(2402, 'default', 'updated', 'App\\Models\\User', 44, 'App\\Models\\User', 37, '{\"attributes\":{\"name\":\"demo\"},\"old\":{\"name\":\"demo\"}}', '2021-04-01 19:33:45', '2021-04-01 19:33:45'),
(2403, 'default', 'updated', 'App\\Models\\User', 43, 'App\\Models\\User', 37, '{\"attributes\":{\"name\":\"huuduoc47\"},\"old\":{\"name\":\"huuduoc47\"}}', '2021-04-01 19:34:36', '2021-04-01 19:34:36'),
(2404, 'default', 'created', 'App\\Models\\EquipmentBallot', 43, 'App\\Models\\User', 32, '[]', '2021-04-01 19:35:37', '2021-04-01 19:35:37'),
(2405, 'default', 'updated', 'App\\Models\\User', 43, 'App\\Models\\User', 37, '{\"attributes\":{\"name\":\"huuduoc47\"},\"old\":{\"name\":\"huuduoc47\"}}', '2021-04-01 19:35:43', '2021-04-01 19:35:43'),
(2406, 'default', 'created', 'App\\Models\\EquipmentBallot', 44, 'App\\Models\\User', 37, '[]', '2021-04-01 19:39:01', '2021-04-01 19:39:01'),
(2407, 'default', 'updated', 'App\\Models\\EquipmentBallot', 44, 'App\\Models\\User', 37, '[]', '2021-04-01 19:39:34', '2021-04-01 19:39:34'),
(2408, 'default', 'deleted', 'App\\Models\\EquipmentBallot', 44, 'App\\Models\\User', 32, '[]', '2021-04-01 19:40:50', '2021-04-01 19:40:50'),
(2409, 'default', 'deleted', 'App\\Models\\EquipmentBallot', 43, 'App\\Models\\User', 32, '[]', '2021-04-01 19:40:53', '2021-04-01 19:40:53'),
(2410, 'default', 'deleted', 'App\\Models\\EquipmentBallot', 42, 'App\\Models\\User', 32, '[]', '2021-04-01 19:40:55', '2021-04-01 19:40:55'),
(2411, 'default', 'updated', 'App\\Models\\Equipment', 270, 'App\\Models\\User', 37, '{\"attributes\":{\"title\":\"M\\u00e1y Monitor theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N02-XXXXX3-31032021-XXX270\",\"department_id\":33},\"old\":{\"title\":\"M\\u00e1y Monitor theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N02-XXXXX3-31032021-XXX270\",\"department_id\":33}}', '2021-04-01 19:41:30', '2021-04-01 19:41:30'),
(2412, 'default', 'updated', 'App\\Models\\Equipment', 270, 'App\\Models\\User', 37, '{\"attributes\":{\"title\":\"M\\u00e1y Monitor theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N02-XXXXX3-01042021-XXX270\",\"department_id\":33},\"old\":{\"title\":\"M\\u00e1y Monitor theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N02-XXXXX3-31032021-XXX270\",\"department_id\":\"33\"}}', '2021-04-01 19:41:30', '2021-04-01 19:41:30'),
(2413, 'login', 'login', NULL, NULL, 'App\\Models\\User', 20, '[]', '2021-04-01 19:43:57', '2021-04-01 19:43:57'),
(2414, 'default', 'created', 'App\\Models\\EquipmentBallot', 45, 'App\\Models\\User', 32, '[]', '2021-04-01 19:47:04', '2021-04-01 19:47:04'),
(2415, 'default', 'created', 'App\\Models\\EquipmentBallot', 46, 'App\\Models\\User', 32, '[]', '2021-04-01 19:47:19', '2021-04-01 19:47:19'),
(2416, 'default', 'updated', 'App\\Models\\EquipmentBallot', 45, 'App\\Models\\User', 32, '[]', '2021-04-01 19:48:53', '2021-04-01 19:48:53'),
(2417, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-01 19:56:47', '2021-04-01 19:56:47'),
(2418, 'default', 'created', 'App\\Models\\EquipmentBallot', 47, 'App\\Models\\User', 32, '[]', '2021-04-01 19:57:28', '2021-04-01 19:57:28'),
(2419, 'default', 'updated', 'App\\Models\\User', 44, 'App\\Models\\User', 36, '{\"attributes\":{\"name\":\"demo\"},\"old\":{\"name\":\"demo\"}}', '2021-04-01 20:00:59', '2021-04-01 20:00:59'),
(2420, 'login', 'login', NULL, NULL, 'App\\Models\\User', 44, '[]', '2021-04-01 20:01:17', '2021-04-01 20:01:17'),
(2421, 'default', 'updated', 'App\\Models\\User', 44, 'App\\Models\\User', 44, '{\"attributes\":{\"name\":\"demo\"},\"old\":{\"name\":\"demo\"}}', '2021-04-01 20:02:32', '2021-04-01 20:02:32'),
(2422, 'login', 'login', NULL, NULL, 'App\\Models\\User', 37, '[]', '2021-04-01 20:08:32', '2021-04-01 20:08:32'),
(2423, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-01 20:10:10', '2021-04-01 20:10:10'),
(2424, 'default', 'updated', 'App\\Models\\Equipment', 250, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng MRI\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N01-XXXMRI-23032021-XXX250\",\"department_id\":34},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng MRI\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N01-XXXMRI-23032021-XXX250\",\"department_id\":null}}', '2021-04-01 20:13:43', '2021-04-01 20:13:43'),
(2425, 'default', 'created', 'App\\Models\\EquipmentBallot', 48, 'App\\Models\\User', 32, '[]', '2021-04-01 20:27:56', '2021-04-01 20:27:56'),
(2426, 'default', 'created', 'App\\Models\\EquipmentBallot', 49, 'App\\Models\\User', 32, '[]', '2021-04-01 20:29:45', '2021-04-01 20:29:45'),
(2427, 'default', 'updated', 'App\\Models\\EquipmentBallot', 49, 'App\\Models\\User', 32, '[]', '2021-04-01 20:32:31', '2021-04-01 20:32:31'),
(2428, 'default', 'updated', 'App\\Models\\User', 45, 'App\\Models\\User', 44, '{\"attributes\":{\"name\":\"truongkhoaxatri\"},\"old\":{\"name\":\"truongkhoaxatri\"}}', '2021-04-01 20:37:10', '2021-04-01 20:37:10'),
(2429, 'login', 'login', NULL, NULL, 'App\\Models\\User', 37, '[]', '2021-04-01 22:24:06', '2021-04-01 22:24:06'),
(2430, 'login', 'login', NULL, NULL, 'App\\Models\\User', 36, '[]', '2021-04-02 11:34:33', '2021-04-02 11:34:33'),
(2431, 'login', 'login', NULL, NULL, 'App\\Models\\User', 20, '[]', '2021-04-02 11:39:44', '2021-04-02 11:39:44'),
(2432, 'login', 'login', NULL, NULL, 'App\\Models\\User', 32, '[]', '2021-04-02 12:10:47', '2021-04-02 12:10:47'),
(2433, 'default', 'deleted', 'App\\Models\\Department', 43, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"email\":\"\",\"address\":\"\",\"user_id\":37,\"nursing_id\":null}}', '2021-04-02 12:21:48', '2021-04-02 12:21:48'),
(2434, 'default', 'deleted', 'App\\Models\\Department', 42, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"email\":\"\",\"address\":\"\",\"user_id\":37,\"nursing_id\":null}}', '2021-04-02 12:21:55', '2021-04-02 12:21:55'),
(2435, 'default', 'updated', 'App\\Models\\EquipmentBallot', 48, 'App\\Models\\User', 32, '[]', '2021-04-02 12:41:01', '2021-04-02 12:41:01'),
(2436, 'default', 'created', 'App\\Models\\EquipmentBallot', 50, 'App\\Models\\User', 32, '[]', '2021-04-02 12:43:22', '2021-04-02 12:43:22'),
(2437, 'default', 'deleted', 'App\\Models\\Equipment', 271, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y X quang cao t\\u1ea7n k\\u1ef9 thu\\u1eadt s\\u1ed1\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N01-XXXMXQ-31032021-XXX271\",\"department_id\":34}}', '2021-04-02 13:03:17', '2021-04-02 13:03:17'),
(2438, 'default', 'created', 'App\\Models\\Liquidation', 17, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":2,\"reason\":\"demo\",\"person_up\":null,\"updated_at\":\"2021-04-02T02:16:32.000000Z\"}}', '2021-04-02 13:16:32', '2021-04-02 13:16:32'),
(2439, 'default', 'created', 'App\\Models\\Liquidation', 18, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":2,\"reason\":\"123\",\"person_up\":null,\"updated_at\":\"2021-04-02T02:17:47.000000Z\"}}', '2021-04-02 13:17:47', '2021-04-02 13:17:47'),
(2440, 'default', 'deleted', 'App\\Models\\Liquidation', 18, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":2,\"reason\":\"123\",\"person_up\":null,\"updated_at\":\"2021-04-02T02:17:47.000000Z\"}}', '2021-04-02 13:20:11', '2021-04-02 13:20:11'),
(2441, 'default', 'created', 'App\\Models\\Liquidation', 19, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":2,\"reason\":\"demo\",\"person_up\":null,\"updated_at\":\"2021-04-02T02:28:31.000000Z\"}}', '2021-04-02 13:28:31', '2021-04-02 13:28:31'),
(2442, 'default', 'deleted', 'App\\Models\\Liquidation', 19, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":2,\"reason\":\"demo\",\"person_up\":null,\"updated_at\":\"2021-04-02T02:28:31.000000Z\"}}', '2021-04-02 13:42:48', '2021-04-02 13:42:48'),
(2443, 'default', 'created', 'App\\Models\\Liquidation', 20, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":9,\"reason\":\"h\\u1ebft h\\u1ea1n s\\u1eed d\\u1ee5ng\",\"person_up\":null,\"updated_at\":\"2021-04-02T02:52:27.000000Z\"}}', '2021-04-02 13:52:27', '2021-04-02 13:52:27'),
(2444, 'default', 'created', 'App\\Models\\Accre', 1, 'App\\Models\\User', 32, '{\"attributes\":{\"equipment_id\":257}}', '2021-04-02 13:58:36', '2021-04-02 13:58:36'),
(2445, 'default', 'created', 'App\\Models\\Guarantee', 13, 'App\\Models\\User', 32, '{\"attributes\":{\"equipment_id\":270}}', '2021-04-02 14:05:11', '2021-04-02 14:05:11'),
(2446, 'default', 'created', 'App\\Models\\Guarantee', 14, 'App\\Models\\User', 32, '{\"attributes\":{\"equipment_id\":270}}', '2021-04-02 14:05:25', '2021-04-02 14:05:25'),
(2447, 'default', 'created', 'App\\Models\\Liquidation', 21, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":10,\"reason\":\"h\\u01b0 h\\u1ecfng\",\"person_up\":null,\"updated_at\":\"2021-04-02T03:09:56.000000Z\"}}', '2021-04-02 14:09:56', '2021-04-02 14:09:56'),
(2448, 'default', 'created', 'App\\Models\\Equipment', 273, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"Fugit voluptas temp\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":32}}', '2021-04-02 14:10:32', '2021-04-02 14:10:32'),
(2449, 'default', 'updated', 'App\\Models\\Equipment', 273, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"Fugit voluptas temp\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N07-XXXXXX-02042021-XXX273\",\"department_id\":32},\"old\":{\"title\":\"Fugit voluptas temp\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":\"32\"}}', '2021-04-02 14:10:32', '2021-04-02 14:10:32'),
(2450, 'default', 'updated', 'App\\Models\\Equipment', 273, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"Fugit voluptas temp\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N07-XXXXXX-02042021-XXX273\",\"department_id\":30},\"old\":{\"title\":\"Fugit voluptas temp\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N07-XXXXXX-02042021-XXX273\",\"department_id\":32}}', '2021-04-02 14:10:44', '2021-04-02 14:10:44'),
(2451, 'default', 'deleted', 'App\\Models\\Liquidation', 21, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":10,\"reason\":\"h\\u01b0 h\\u1ecfng\",\"person_up\":null,\"updated_at\":\"2021-04-02T03:09:56.000000Z\"}}', '2021-04-02 14:16:30', '2021-04-02 14:16:30'),
(2452, 'default', 'created', 'App\\Models\\Liquidation', 22, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":1,\"reason\":\"demo\",\"person_up\":null,\"updated_at\":\"2021-04-02T03:17:45.000000Z\"}}', '2021-04-02 14:17:46', '2021-04-02 14:17:46'),
(2453, 'default', 'deleted', 'App\\Models\\Liquidation', 22, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":1,\"reason\":\"demo\",\"person_up\":null,\"updated_at\":\"2021-04-02T03:17:45.000000Z\"}}', '2021-04-02 14:27:32', '2021-04-02 14:27:32'),
(2454, 'default', 'created', 'App\\Models\\Liquidation', 23, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":1,\"reason\":\"2\",\"person_up\":null,\"updated_at\":\"2021-04-02T03:28:47.000000Z\"}}', '2021-04-02 14:28:47', '2021-04-02 14:28:47'),
(2455, 'default', 'deleted', 'App\\Models\\Liquidation', 23, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":1,\"reason\":\"2\",\"person_up\":null,\"updated_at\":\"2021-04-02T03:28:47.000000Z\"}}', '2021-04-02 14:29:42', '2021-04-02 14:29:42'),
(2456, 'default', 'created', 'App\\Models\\Liquidation', 24, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":10,\"reason\":\"demo\",\"person_up\":null,\"updated_at\":\"2021-04-02T03:29:58.000000Z\"}}', '2021-04-02 14:29:58', '2021-04-02 14:29:58'),
(2457, 'default', 'deleted', 'App\\Models\\Liquidation', 24, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":10,\"reason\":\"demo\",\"person_up\":null,\"updated_at\":\"2021-04-02T03:29:58.000000Z\"}}', '2021-04-02 14:45:37', '2021-04-02 14:45:37'),
(2458, 'default', 'created', 'App\\Models\\Liquidation', 25, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":10,\"reason\":\"demo\",\"person_up\":null,\"updated_at\":\"2021-04-02T03:46:06.000000Z\"}}', '2021-04-02 14:46:06', '2021-04-02 14:46:06'),
(2459, 'default', 'deleted', 'App\\Models\\Liquidation', 25, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":10,\"reason\":\"demo\",\"person_up\":null,\"updated_at\":\"2021-04-02T03:46:06.000000Z\"}}', '2021-04-02 14:49:36', '2021-04-02 14:49:36'),
(2460, 'default', 'created', 'App\\Models\\Liquidation', 26, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":10,\"reason\":\"1111\",\"person_up\":null,\"updated_at\":\"2021-04-02T03:50:43.000000Z\"}}', '2021-04-02 14:50:43', '2021-04-02 14:50:43'),
(2461, 'default', 'updated', 'App\\Models\\User', 32, 'App\\Models\\User', 32, '{\"attributes\":{\"name\":\"gohoang\"},\"old\":{\"name\":\"gohoang\"}}', '2021-04-02 14:55:07', '2021-04-02 14:55:07'),
(2462, 'default', 'updated', 'App\\Models\\Equipment', 237, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32},\"old\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":32}}', '2021-04-02 14:55:17', '2021-04-02 14:55:17'),
(2463, 'default', 'updated', 'App\\Models\\Equipment', 237, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"corrected\",\"type\":\"devices\",\"code\":null,\"department_id\":32},\"old\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32}}', '2021-04-02 14:55:45', '2021-04-02 14:55:45'),
(2464, 'login', 'login', NULL, NULL, 'App\\Models\\User', 37, '[]', '2021-04-02 16:36:59', '2021-04-02 16:36:59'),
(2465, 'default', 'updated', 'App\\Models\\EquipmentBallot', 50, 'App\\Models\\User', 37, '[]', '2021-04-02 16:39:38', '2021-04-02 16:39:38'),
(2466, 'default', 'updated', 'App\\Models\\EquipmentBallot', 50, 'App\\Models\\User', 37, '[]', '2021-04-02 16:39:56', '2021-04-02 16:39:56'),
(2467, 'default', 'updated', 'App\\Models\\Requests', 24, 'App\\Models\\User', 37, '{\"attributes\":{\"user_id\":37,\"department_id\":32,\"device_name\":\"T\\u1ee7 thu\\u1ed1c\",\"time\":\"2021-03-31\",\"serial\":null,\"model\":null,\"code\":null,\"note\":\"H\\u1ecfng kh\\u00f3a\",\"reply\":\"\\u0111\\u00e3 nh\\u1eadn y\\u00eau c\\u1ea7u, \\u0111\\u00e3 ph\\u1ea3n h\\u1ed3i\",\"status\":\"confirmed\"},\"old\":{\"user_id\":37,\"department_id\":32,\"device_name\":\"T\\u1ee7 thu\\u1ed1c\",\"time\":\"2021-03-31\",\"serial\":null,\"model\":null,\"code\":null,\"note\":\"H\\u1ecfng kh\\u00f3a\",\"reply\":null,\"status\":\"sent\"}}', '2021-04-02 16:41:13', '2021-04-02 16:41:13'),
(2468, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-02 16:58:31', '2021-04-02 16:58:31'),
(2469, 'default', 'updated', 'App\\Models\\Equipment', 230, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y th\\u1edf\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32},\"old\":{\"title\":\"M\\u00e1y th\\u1edf\",\"status\":\"inactive\",\"type\":\"devices\",\"code\":null,\"department_id\":32}}', '2021-04-02 16:59:33', '2021-04-02 16:59:33'),
(2470, 'login', 'login', NULL, NULL, 'App\\Models\\User', 32, '[]', '2021-04-02 17:43:41', '2021-04-02 17:43:41'),
(2471, 'login', 'login', NULL, NULL, 'App\\Models\\User', 32, '[]', '2021-04-02 18:21:51', '2021-04-02 18:21:51'),
(2472, 'login', 'login', NULL, NULL, 'App\\Models\\User', 20, '[]', '2021-04-02 18:30:51', '2021-04-02 18:30:51'),
(2473, 'login', 'login', NULL, NULL, 'App\\Models\\User', 32, '[]', '2021-04-02 18:53:38', '2021-04-02 18:53:38'),
(2474, 'default', 'created', 'App\\Models\\ScheduleRepair', 13, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":245,\"repair_date\":\"2021-04-17\",\"completed_repair\":\"2021-04-30\",\"provider_id\":76,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-02 18:59:03', '2021-04-02 18:59:03'),
(2475, 'default', 'created', 'App\\Models\\ScheduleRepair', 14, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":245,\"repair_date\":\"2021-04-17\",\"completed_repair\":\"2021-04-30\",\"provider_id\":76,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-02 18:59:42', '2021-04-02 18:59:42'),
(2476, 'default', 'deleted', 'App\\Models\\ScheduleRepair', 13, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":245,\"repair_date\":\"2021-04-17\",\"completed_repair\":\"2021-04-30\",\"provider_id\":76,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-02 19:01:24', '2021-04-02 19:01:24'),
(2477, 'default', 'deleted', 'App\\Models\\ScheduleRepair', 14, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":245,\"repair_date\":\"2021-04-17\",\"completed_repair\":\"2021-04-30\",\"provider_id\":76,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-02 19:03:11', '2021-04-02 19:03:11'),
(2478, 'default', 'created', 'App\\Models\\ScheduleRepair', 15, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":245,\"repair_date\":\"2021-04-16\",\"completed_repair\":\"2021-04-16\",\"provider_id\":76,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-02 19:04:53', '2021-04-02 19:04:53'),
(2479, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-02 19:17:22', '2021-04-02 19:17:22'),
(2480, 'default', 'updated', 'App\\Models\\Equipment', 235, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"MH001\",\"department_id\":34},\"old\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"MH001\",\"department_id\":34}}', '2021-04-02 19:22:22', '2021-04-02 19:22:22'),
(2481, 'default', 'created', 'App\\Models\\Equipment', 274, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null}}', '2021-04-02 19:36:10', '2021-04-02 19:36:10'),
(2482, 'default', 'updated', 'App\\Models\\Equipment', 274, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N04-XNGINX-02042021-XXX274\",\"department_id\":null},\"old\":{\"title\":\"test\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null}}', '2021-04-02 19:36:10', '2021-04-02 19:36:10'),
(2483, 'default', 'updated', 'App\\Models\\Equipment', 274, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N04-XNGINX-02042021-XXX274\",\"department_id\":30},\"old\":{\"title\":\"test\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N04-XNGINX-02042021-XXX274\",\"department_id\":null}}', '2021-04-02 19:36:47', '2021-04-02 19:36:47'),
(2484, 'default', 'updated', 'App\\Models\\Equipment', 274, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N04-XNGINX-02042021-XXX274\",\"department_id\":30},\"old\":{\"title\":\"test\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N04-XNGINX-02042021-XXX274\",\"department_id\":30}}', '2021-04-02 19:37:41', '2021-04-02 19:37:41'),
(2485, 'default', 'updated', 'App\\Models\\Equipment', 274, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"corrected\",\"type\":\"devices\",\"code\":\"N04-XNGINX-02042021-XXX274\",\"department_id\":30},\"old\":{\"title\":\"test\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N04-XNGINX-02042021-XXX274\",\"department_id\":30}}', '2021-04-02 19:46:40', '2021-04-02 19:46:40'),
(2486, 'default', 'updated', 'App\\Models\\Equipment', 274, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"inactive\",\"type\":\"devices\",\"code\":\"N04-XNGINX-02042021-XXX274\",\"department_id\":30},\"old\":{\"title\":\"test\",\"status\":\"corrected\",\"type\":\"devices\",\"code\":\"N04-XNGINX-02042021-XXX274\",\"department_id\":30}}', '2021-04-02 19:47:09', '2021-04-02 19:47:09'),
(2487, 'default', 'updated', 'App\\Models\\Equipment', 274, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"liquidated\",\"type\":\"devices\",\"code\":\"N04-XNGINX-02042021-XXX274\",\"department_id\":30},\"old\":{\"title\":\"test\",\"status\":\"inactive\",\"type\":\"devices\",\"code\":\"N04-XNGINX-02042021-XXX274\",\"department_id\":30}}', '2021-04-02 19:47:25', '2021-04-02 19:47:25'),
(2488, 'default', 'inactive', 'App\\Models\\Equipment', 274, 'App\\Models\\User', 20, '[]', '2021-04-02 19:47:25', '2021-04-02 19:47:25'),
(2489, 'default', 'updated', 'App\\Models\\Equipment', 254, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"inactive\",\"type\":\"devices\",\"code\":\"N01-XXXMXQ-24032021-XXX254\",\"department_id\":33},\"old\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"corrected\",\"type\":\"devices\",\"code\":\"N01-XXXMXQ-24032021-XXX254\",\"department_id\":33}}', '2021-04-02 19:48:43', '2021-04-02 19:48:43'),
(2490, 'default', 'deleted', 'App\\Models\\Equipment', 274, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"liquidated\",\"type\":\"devices\",\"code\":\"N04-XNGINX-02042021-XXX274\",\"department_id\":30}}', '2021-04-02 19:49:36', '2021-04-02 19:49:36'),
(2491, 'default', 'created', 'App\\Models\\Equipment', 275, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null}}', '2021-04-02 19:50:36', '2021-04-02 19:50:36'),
(2492, 'default', 'updated', 'App\\Models\\Equipment', 275, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N01-XXXMXQ-02042021-XXX275\",\"department_id\":null},\"old\":{\"title\":\"test\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null}}', '2021-04-02 19:50:36', '2021-04-02 19:50:36'),
(2493, 'default', 'updated', 'App\\Models\\Equipment', 275, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N01-XXXMXQ-02042021-XXX275\",\"department_id\":34},\"old\":{\"title\":\"test\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N01-XXXMXQ-02042021-XXX275\",\"department_id\":null}}', '2021-04-02 19:51:16', '2021-04-02 19:51:16'),
(2494, 'default', 'deleted', 'App\\Models\\Equipment', 275, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N01-XXXMXQ-02042021-XXX275\",\"department_id\":34}}', '2021-04-02 19:52:18', '2021-04-02 19:52:18'),
(2495, 'default', 'created', 'App\\Models\\Equipment', 276, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null}}', '2021-04-02 19:54:10', '2021-04-02 19:54:10'),
(2496, 'default', 'updated', 'App\\Models\\Equipment', 276, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N01-XXXMSA-02042021-XXX276\",\"department_id\":null},\"old\":{\"title\":\"test\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null}}', '2021-04-02 19:54:10', '2021-04-02 19:54:10'),
(2497, 'default', 'updated', 'App\\Models\\Equipment', 276, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N01-XXXMSA-02042021-XXX276\",\"department_id\":30},\"old\":{\"title\":\"test\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N01-XXXMSA-02042021-XXX276\",\"department_id\":null}}', '2021-04-02 19:54:25', '2021-04-02 19:54:25'),
(2498, 'default', 'updated', 'App\\Models\\Equipment', 276, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N01-XXXMSA-02042021-XXX276\",\"department_id\":30},\"old\":{\"title\":\"test\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N01-XXXMSA-02042021-XXX276\",\"department_id\":30}}', '2021-04-02 19:54:44', '2021-04-02 19:54:44'),
(2499, 'default', 'updated', 'App\\Models\\Equipment', 276, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":\"corrected\",\"type\":\"devices\",\"code\":\"N01-XXXMSA-02042021-XXX276\",\"department_id\":30},\"old\":{\"title\":\"test\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N01-XXXMSA-02042021-XXX276\",\"department_id\":30}}', '2021-04-02 19:57:52', '2021-04-02 19:57:52'),
(2500, 'default', 'updated', 'App\\Models\\Equipment', 242, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng ch\\u1ee5p c\\u1eaft l\\u1edbp vi t\\u00ednh v\\u00e0 ph\\u1ee5 ki\\u1ec7n(c\\u1ea5u h\\u00ecnh 16 d\\u00e3y \\u0111\\u1ea7u thu, 32 l\\u00e1t c\\u1eaft)\",\"status\":\"corrected\",\"type\":\"devices\",\"code\":\"N01-XXCTxx-13032021-XXX242\",\"department_id\":30},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng ch\\u1ee5p c\\u1eaft l\\u1edbp vi t\\u00ednh v\\u00e0 ph\\u1ee5 ki\\u1ec7n(c\\u1ea5u h\\u00ecnh 16 d\\u00e3y \\u0111\\u1ea7u thu, 32 l\\u00e1t c\\u1eaft)\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N01-XXCTxx-13032021-XXX242\",\"department_id\":30}}', '2021-04-02 20:15:43', '2021-04-02 20:15:43'),
(2501, 'default', 'updated', 'App\\Models\\ScheduleRepair', 15, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":245,\"repair_date\":\"2021-04-16\",\"completed_repair\":\"2021-04-16\",\"provider_id\":76,\"acceptance\":\"create\",\"representative\":20,\"update_date\":\"2021-04-02\",\"person_up\":36,\"approved\":22},\"old\":{\"equipment_id\":245,\"repair_date\":\"2021-04-16\",\"completed_repair\":\"2021-04-16\",\"provider_id\":76,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-02 21:15:29', '2021-04-02 21:15:29'),
(2502, 'default', 'updated', 'App\\Models\\ScheduleRepair', 15, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":245,\"repair_date\":\"2021-04-16\",\"completed_repair\":\"2021-04-16\",\"provider_id\":82,\"acceptance\":\"create\",\"representative\":20,\"update_date\":\"2021-04-02\",\"person_up\":36,\"approved\":22},\"old\":{\"equipment_id\":245,\"repair_date\":\"2021-04-16\",\"completed_repair\":\"2021-04-16\",\"provider_id\":76,\"acceptance\":\"create\",\"representative\":20,\"update_date\":\"2021-04-02\",\"person_up\":36,\"approved\":22}}', '2021-04-02 21:15:48', '2021-04-02 21:15:48'),
(2503, 'default', 'updated', 'App\\Models\\ScheduleRepair', 15, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":245,\"repair_date\":\"2021-04-16\",\"completed_repair\":\"2021-04-16\",\"provider_id\":82,\"acceptance\":\"accepted\",\"representative\":20,\"update_date\":\"2021-04-02\",\"person_up\":36,\"approved\":22},\"old\":{\"equipment_id\":245,\"repair_date\":\"2021-04-16\",\"completed_repair\":\"2021-04-16\",\"provider_id\":82,\"acceptance\":\"create\",\"representative\":20,\"update_date\":\"2021-04-02\",\"person_up\":36,\"approved\":22}}', '2021-04-02 21:16:00', '2021-04-02 21:16:00'),
(2504, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-03 00:38:07', '2021-04-03 00:38:07'),
(2505, 'login', 'login', NULL, NULL, 'App\\Models\\User', 32, '[]', '2021-04-03 01:06:54', '2021-04-03 01:06:54'),
(2506, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-03 08:55:45', '2021-04-03 08:55:45'),
(2507, 'login', 'login', NULL, NULL, 'App\\Models\\User', 33, '[]', '2021-04-03 10:11:12', '2021-04-03 10:11:12'),
(2508, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-03 10:12:09', '2021-04-03 10:12:09'),
(2509, 'login', 'login', NULL, NULL, 'App\\Models\\User', 37, '[]', '2021-04-03 13:40:29', '2021-04-03 13:40:29'),
(2510, 'default', 'created', 'App\\Models\\ScheduleRepair', 16, 'App\\Models\\User', 37, '{\"attributes\":{\"equipment_id\":242,\"repair_date\":\"2021-04-03\",\"completed_repair\":\"2021-04-05\",\"provider_id\":null,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-03 14:37:41', '2021-04-03 14:37:41'),
(2511, 'default', 'created', 'App\\Models\\ScheduleRepair', 17, 'App\\Models\\User', 37, '{\"attributes\":{\"equipment_id\":242,\"repair_date\":\"2021-04-03\",\"completed_repair\":\"2021-04-05\",\"provider_id\":null,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-03 14:38:38', '2021-04-03 14:38:38'),
(2512, 'login', 'login', NULL, NULL, 'App\\Models\\User', 27, '[]', '2021-04-03 14:45:53', '2021-04-03 14:45:53'),
(2513, 'default', 'created', 'App\\Models\\Device', 47, 'App\\Models\\User', 27, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng SPECT lo\\u1ea1i 2 \\u0111\\u1ea7u thu\"}}', '2021-04-03 14:46:48', '2021-04-03 14:46:48'),
(2514, 'default', 'created', 'App\\Models\\Equipment', 277, 'App\\Models\\User', 27, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng SPECT\\/CT 2 \\u0111\\u1ea7u thu c\\u00f3 ch\\u1ee9c n\\u0103ng \\u0111\\u1ecbnh l\\u01b0\\u1ee3ng\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null}}', '2021-04-03 14:49:55', '2021-04-03 14:49:55'),
(2515, 'default', 'updated', 'App\\Models\\Equipment', 277, 'App\\Models\\User', 27, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng SPECT\\/CT 2 \\u0111\\u1ea7u thu c\\u00f3 ch\\u1ee9c n\\u0103ng \\u0111\\u1ecbnh l\\u01b0\\u1ee3ng\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N05-XSPECT-03042021-XXX277\",\"department_id\":null},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng SPECT\\/CT 2 \\u0111\\u1ea7u thu c\\u00f3 ch\\u1ee9c n\\u0103ng \\u0111\\u1ecbnh l\\u01b0\\u1ee3ng\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null}}', '2021-04-03 14:49:55', '2021-04-03 14:49:55'),
(2516, 'default', 'updated', 'App\\Models\\Equipment', 277, 'App\\Models\\User', 27, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng SPECT\\/CT 2 \\u0111\\u1ea7u thu c\\u00f3 ch\\u1ee9c n\\u0103ng \\u0111\\u1ecbnh l\\u01b0\\u1ee3ng\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N05-XSPECT-03042021-XXX277\",\"department_id\":41},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng SPECT\\/CT 2 \\u0111\\u1ea7u thu c\\u00f3 ch\\u1ee9c n\\u0103ng \\u0111\\u1ecbnh l\\u01b0\\u1ee3ng\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N05-XSPECT-03042021-XXX277\",\"department_id\":null}}', '2021-04-03 14:50:34', '2021-04-03 14:50:34'),
(2517, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-03 14:52:06', '2021-04-03 14:52:06'),
(2518, 'login', 'login', NULL, NULL, 'App\\Models\\User', 27, '[]', '2021-04-03 15:12:04', '2021-04-03 15:12:04'),
(2519, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-03 18:57:41', '2021-04-03 18:57:41'),
(2520, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-03 22:41:51', '2021-04-03 22:41:51'),
(2521, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-04 00:27:31', '2021-04-04 00:27:31'),
(2522, 'login', 'login', NULL, NULL, 'App\\Models\\User', 32, '[]', '2021-04-04 18:06:24', '2021-04-04 18:06:24'),
(2523, 'default', 'created', 'App\\Models\\EquipmentBallot', 51, 'App\\Models\\User', 32, '[]', '2021-04-04 18:34:51', '2021-04-04 18:34:51'),
(2524, 'login', 'login', NULL, NULL, 'App\\Models\\User', 36, '[]', '2021-04-05 11:34:14', '2021-04-05 11:34:14'),
(2525, 'default', 'created', 'App\\Models\\Liquidation', 27, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":2,\"reason\":\"h\\u01b0 h\\u1ecfng\",\"person_up\":null,\"updated_at\":\"2021-04-05T01:18:56.000000Z\"}}', '2021-04-05 12:18:56', '2021-04-05 12:18:56'),
(2526, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-05 12:21:50', '2021-04-05 12:21:50'),
(2527, 'default', 'deleted', 'App\\Models\\Liquidation', 27, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":2,\"reason\":\"h\\u01b0 h\\u1ecfng\",\"person_up\":null,\"updated_at\":\"2021-04-05T01:18:56.000000Z\"}}', '2021-04-05 12:43:07', '2021-04-05 12:43:07'),
(2528, 'default', 'created', 'App\\Models\\Liquidation', 28, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":2,\"reason\":\"h\\u01b0 h\\u1ecfng\",\"person_up\":null,\"updated_at\":\"2021-04-05T01:43:19.000000Z\"}}', '2021-04-05 12:43:19', '2021-04-05 12:43:19'),
(2529, 'default', 'updated', 'App\\Models\\Liquidation', 28, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":2,\"reason\":\"h\\u01b0 h\\u1ecfng\",\"person_up\":36,\"updated_at\":\"2021-04-05T01:43:52.000000Z\"},\"old\":{\"amount\":2,\"reason\":\"h\\u01b0 h\\u1ecfng\",\"person_up\":null,\"updated_at\":\"2021-04-05T01:43:19.000000Z\"}}', '2021-04-05 12:43:52', '2021-04-05 12:43:52'),
(2530, 'default', 'updated', 'App\\Models\\Equipment', 254, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"inactive\",\"type\":\"devices\",\"code\":\"N01-XXXMXQ-24032021-XXX254\",\"department_id\":33},\"old\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"inactive\",\"type\":\"devices\",\"code\":\"N01-XXXMXQ-24032021-XXX254\",\"department_id\":33}}', '2021-04-05 12:43:52', '2021-04-05 12:43:52'),
(2531, 'default', 'deleted', 'App\\Models\\Liquidation', 28, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":2,\"reason\":\"h\\u01b0 h\\u1ecfng\",\"person_up\":36,\"updated_at\":\"2021-04-05T01:43:52.000000Z\"}}', '2021-04-05 13:15:53', '2021-04-05 13:15:53'),
(2532, 'default', 'created', 'App\\Models\\Liquidation', 29, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":2,\"reason\":\"demo\",\"person_up\":null,\"updated_at\":\"2021-04-05T02:16:09.000000Z\"}}', '2021-04-05 13:16:09', '2021-04-05 13:16:09'),
(2533, 'default', 'updated', 'App\\Models\\Liquidation', 29, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":2,\"reason\":\"demo\",\"person_up\":36,\"updated_at\":\"2021-04-05T02:16:35.000000Z\"},\"old\":{\"amount\":2,\"reason\":\"demo\",\"person_up\":null,\"updated_at\":\"2021-04-05T02:16:09.000000Z\"}}', '2021-04-05 13:16:35', '2021-04-05 13:16:35'),
(2534, 'default', 'deleted', 'App\\Models\\Liquidation', 29, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":2,\"reason\":\"demo\",\"person_up\":36,\"updated_at\":\"2021-04-05T02:16:35.000000Z\"}}', '2021-04-05 13:18:28', '2021-04-05 13:18:28'),
(2535, 'default', 'created', 'App\\Models\\Liquidation', 30, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":1,\"reason\":\"adsd\",\"person_up\":null,\"updated_at\":\"2021-04-05T02:18:38.000000Z\"}}', '2021-04-05 13:18:38', '2021-04-05 13:18:38'),
(2536, 'default', 'updated', 'App\\Models\\Liquidation', 30, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":1,\"reason\":\"adsd\",\"person_up\":36,\"updated_at\":\"2021-04-05T02:18:46.000000Z\"},\"old\":{\"amount\":1,\"reason\":\"adsd\",\"person_up\":null,\"updated_at\":\"2021-04-05T02:18:38.000000Z\"}}', '2021-04-05 13:18:46', '2021-04-05 13:18:46'),
(2537, 'default', 'updated', 'App\\Models\\Equipment', 254, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"inactive\",\"type\":\"devices\",\"code\":\"N01-XXXMXQ-24032021-XXX254\",\"department_id\":33},\"old\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"inactive\",\"type\":\"devices\",\"code\":\"N01-XXXMXQ-24032021-XXX254\",\"department_id\":33}}', '2021-04-05 13:18:46', '2021-04-05 13:18:46'),
(2538, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-05 13:30:47', '2021-04-05 13:30:47'),
(2539, 'default', 'updated', 'App\\Models\\Equipment', 261, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":34},\"old\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":34}}', '2021-04-05 13:35:45', '2021-04-05 13:35:45'),
(2540, 'default', 'created', 'App\\Models\\Equipment', 278, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":40}}', '2021-04-05 13:35:45', '2021-04-05 13:35:45'),
(2541, 'default', 'updated', 'App\\Models\\Equipment', 278, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"X-XXXXXX-05042021-XXX278\",\"department_id\":40},\"old\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":40}}', '2021-04-05 13:35:45', '2021-04-05 13:35:45'),
(2542, 'default', 'updated', 'App\\Models\\Equipment', 261, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":34},\"old\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":34}}', '2021-04-05 13:38:38', '2021-04-05 13:38:38'),
(2543, 'default', 'created', 'App\\Models\\Equipment', 279, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":39}}', '2021-04-05 13:38:38', '2021-04-05 13:38:38'),
(2544, 'default', 'updated', 'App\\Models\\Equipment', 279, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"X-XXXXXX-05042021-XXX279\",\"department_id\":39},\"old\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":39}}', '2021-04-05 13:38:38', '2021-04-05 13:38:38'),
(2545, 'default', 'updated', 'App\\Models\\Equipment', 261, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":34},\"old\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":34}}', '2021-04-05 13:46:19', '2021-04-05 13:46:19'),
(2546, 'default', 'created', 'App\\Models\\Equipment', 280, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32}}', '2021-04-05 13:46:19', '2021-04-05 13:46:19'),
(2547, 'default', 'updated', 'App\\Models\\Equipment', 280, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"X-XXXXXX-05042021-XXX280\",\"department_id\":32},\"old\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32}}', '2021-04-05 13:46:19', '2021-04-05 13:46:19'),
(2548, 'default', 'updated', 'App\\Models\\Equipment', 261, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":34},\"old\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":34}}', '2021-04-05 13:49:41', '2021-04-05 13:49:41'),
(2549, 'default', 'updated', 'App\\Models\\Equipment', 280, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"X-XXXXXX-05042021-XXX280\",\"department_id\":32},\"old\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"X-XXXXXX-05042021-XXX280\",\"department_id\":32}}', '2021-04-05 13:49:41', '2021-04-05 13:49:41'),
(2550, 'default', 'updated', 'App\\Models\\Equipment', 261, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":39},\"old\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":34}}', '2021-04-05 13:51:38', '2021-04-05 13:51:38'),
(2551, 'default', 'deleted', 'App\\Models\\Liquidation', 30, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":1,\"reason\":\"adsd\",\"person_up\":36,\"updated_at\":\"2021-04-05T02:18:46.000000Z\"}}', '2021-04-05 14:05:33', '2021-04-05 14:05:33'),
(2552, 'default', 'created', 'App\\Models\\Liquidation', 31, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":1,\"reason\":\"h\\u01b0 h\\u1ecfng\",\"person_up\":null,\"updated_at\":\"2021-04-05T03:05:58.000000Z\"}}', '2021-04-05 14:05:58', '2021-04-05 14:05:58'),
(2553, 'default', 'updated', 'App\\Models\\Liquidation', 31, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":1,\"reason\":\"h\\u01b0 h\\u1ecfng\",\"person_up\":36,\"updated_at\":\"2021-04-05T03:06:15.000000Z\"},\"old\":{\"amount\":1,\"reason\":\"h\\u01b0 h\\u1ecfng\",\"person_up\":null,\"updated_at\":\"2021-04-05T03:05:58.000000Z\"}}', '2021-04-05 14:06:15', '2021-04-05 14:06:15'),
(2554, 'default', 'updated', 'App\\Models\\Equipment', 254, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"inactive\",\"type\":\"devices\",\"code\":\"N01-XXXMXQ-24032021-XXX254\",\"department_id\":33},\"old\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"inactive\",\"type\":\"devices\",\"code\":\"N01-XXXMXQ-24032021-XXX254\",\"department_id\":33}}', '2021-04-05 14:06:15', '2021-04-05 14:06:15'),
(2555, 'default', 'updated', 'App\\Models\\ScheduleRepair', 11, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":245,\"repair_date\":\"2021-03-20\",\"completed_repair\":\"2021-04-03\",\"provider_id\":76,\"acceptance\":\"accepted\",\"representative\":20,\"update_date\":\"2021-04-05\",\"person_up\":36,\"approved\":22},\"old\":{\"equipment_id\":245,\"repair_date\":\"2021-03-20\",\"completed_repair\":\"2021-04-03\",\"provider_id\":76,\"acceptance\":\"fixing\",\"representative\":20,\"update_date\":\"2021-03-22\",\"person_up\":36,\"approved\":22}}', '2021-04-05 14:21:49', '2021-04-05 14:21:49'),
(2556, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-05 16:08:42', '2021-04-05 16:08:42'),
(2557, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-05 17:45:38', '2021-04-05 17:45:38'),
(2558, 'default', 'created', 'App\\Models\\ScheduleRepair', 18, 'App\\Models\\User', 21, '{\"attributes\":{\"equipment_id\":276,\"repair_date\":\"2021-04-05\",\"completed_repair\":\"2021-04-07\",\"provider_id\":null,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-05 17:46:36', '2021-04-05 17:46:36'),
(2559, 'login', 'login', NULL, NULL, 'App\\Models\\User', 36, '[]', '2021-04-05 18:01:07', '2021-04-05 18:01:07'),
(2560, 'default', 'updated', 'App\\Models\\ScheduleRepair', 18, 'App\\Models\\User', 21, '{\"attributes\":{\"equipment_id\":276,\"repair_date\":\"2021-04-05\",\"completed_repair\":\"2021-04-07\",\"provider_id\":null,\"acceptance\":\"fixing\",\"representative\":20,\"update_date\":\"2021-04-05\",\"person_up\":21,\"approved\":22},\"old\":{\"equipment_id\":276,\"repair_date\":\"2021-04-05\",\"completed_repair\":\"2021-04-07\",\"provider_id\":null,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-05 18:07:53', '2021-04-05 18:07:53'),
(2561, 'default', 'updated', 'App\\Models\\ScheduleRepair', 18, 'App\\Models\\User', 21, '{\"attributes\":{\"equipment_id\":276,\"repair_date\":\"2021-04-05\",\"completed_repair\":\"2021-04-07\",\"provider_id\":83,\"acceptance\":\"fixing\",\"representative\":20,\"update_date\":\"2021-04-05\",\"person_up\":21,\"approved\":22},\"old\":{\"equipment_id\":276,\"repair_date\":\"2021-04-05\",\"completed_repair\":\"2021-04-07\",\"provider_id\":null,\"acceptance\":\"fixing\",\"representative\":20,\"update_date\":\"2021-04-05\",\"person_up\":21,\"approved\":22}}', '2021-04-05 18:09:22', '2021-04-05 18:09:22'),
(2562, 'default', 'updated', 'App\\Models\\Equipment', 229, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y in phim kh\\u00f4 Laser\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30},\"old\":{\"title\":\"M\\u00e1y in phim kh\\u00f4 Laser\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":32}}', '2021-04-05 18:18:22', '2021-04-05 18:18:22'),
(2563, 'default', 'updated', 'App\\Models\\Equipment', 231, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":34},\"old\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":32}}', '2021-04-05 18:22:21', '2021-04-05 18:22:21');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(2564, 'default', 'updated', 'App\\Models\\Equipment', 233, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y b\\u01a1m ti\\u00eam \\u0111i\\u1ec7n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":33},\"old\":{\"title\":\"M\\u00e1y b\\u01a1m ti\\u00eam \\u0111i\\u1ec7n\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":32}}', '2021-04-05 18:24:03', '2021-04-05 18:24:03'),
(2565, 'default', 'updated', 'App\\Models\\Equipment', 236, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":33},\"old\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":32}}', '2021-04-05 18:25:36', '2021-04-05 18:25:36'),
(2566, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-05 19:08:23', '2021-04-05 19:08:23'),
(2567, 'default', 'created', 'App\\Models\\Equipment', 281, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng X\\u1ea1 h\\u00ecnh SPECT hai \\u0111\\u1ea7u thu\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":41}}', '2021-04-05 19:13:33', '2021-04-05 19:13:33'),
(2568, 'default', 'updated', 'App\\Models\\Equipment', 281, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng X\\u1ea1 h\\u00ecnh SPECT hai \\u0111\\u1ea7u thu\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N05-XSPECT-05042021-XXX281\",\"department_id\":41},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng X\\u1ea1 h\\u00ecnh SPECT hai \\u0111\\u1ea7u thu\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":\"41\"}}', '2021-04-05 19:13:33', '2021-04-05 19:13:33'),
(2569, 'default', 'updated', 'App\\Models\\Equipment', 281, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng X\\u1ea1 h\\u00ecnh SPECT hai \\u0111\\u1ea7u thu\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N05-XSPECT-05042021-XXX281\",\"department_id\":41},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng X\\u1ea1 h\\u00ecnh SPECT hai \\u0111\\u1ea7u thu\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N05-XSPECT-05042021-XXX281\",\"department_id\":41}}', '2021-04-05 19:15:37', '2021-04-05 19:15:37'),
(2570, 'default', 'updated', 'App\\Models\\EquipmentBallot', 51, 'App\\Models\\User', 21, '[]', '2021-04-05 19:23:17', '2021-04-05 19:23:17'),
(2571, 'default', 'created', 'App\\Models\\Equipment', 282, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng SPECT\\/CT 2 \\u0111\\u1ea7u thu c\\u00f3 ch\\u1ee9c n\\u0103ng \\u0111\\u1ecbnh l\\u01b0\\u1ee3ng\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-05 19:31:25', '2021-04-05 19:31:25'),
(2572, 'default', 'updated', 'App\\Models\\Equipment', 282, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng SPECT\\/CT 2 \\u0111\\u1ea7u thu c\\u00f3 ch\\u1ee9c n\\u0103ng \\u0111\\u1ecbnh l\\u01b0\\u1ee3ng\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N05-XSPECT-05042021-XXX282\",\"department_id\":30,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng SPECT\\/CT 2 \\u0111\\u1ea7u thu c\\u00f3 ch\\u1ee9c n\\u0103ng \\u0111\\u1ecbnh l\\u01b0\\u1ee3ng\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":\"30\",\"date_failure\":null,\"reason\":null}}', '2021-04-05 19:31:25', '2021-04-05 19:31:25'),
(2573, 'default', 'updated', 'App\\Models\\Equipment', 282, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng SPECT\\/CT 2 \\u0111\\u1ea7u thu c\\u00f3 ch\\u1ee9c n\\u0103ng \\u0111\\u1ecbnh l\\u01b0\\u1ee3ng\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N05-XSPECT-05042021-XXX282\",\"department_id\":32,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng SPECT\\/CT 2 \\u0111\\u1ea7u thu c\\u00f3 ch\\u1ee9c n\\u0103ng \\u0111\\u1ecbnh l\\u01b0\\u1ee3ng\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N05-XSPECT-05042021-XXX282\",\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-05 19:33:06', '2021-04-05 19:33:06'),
(2574, 'default', 'updated', 'App\\Models\\Equipment', 282, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng SPECT\\/CT 2 \\u0111\\u1ea7u thu c\\u00f3 ch\\u1ee9c n\\u0103ng \\u0111\\u1ecbnh l\\u01b0\\u1ee3ng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N05-XSPECT-05042021-XXX282\",\"department_id\":32,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng SPECT\\/CT 2 \\u0111\\u1ea7u thu c\\u00f3 ch\\u1ee9c n\\u0103ng \\u0111\\u1ecbnh l\\u01b0\\u1ee3ng\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N05-XSPECT-05042021-XXX282\",\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-05 19:34:42', '2021-04-05 19:34:42'),
(2575, 'default', 'updated', 'App\\Models\\Equipment', 231, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":null},\"old\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":null,\"reason\":null}}', '2021-04-05 19:36:48', '2021-04-05 19:36:48'),
(2576, 'default', 'updated', 'App\\Models\\Equipment', 231, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"h\\u01b0 h\\u1ecfng n\\u1eb7ng\"},\"old\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":null}}', '2021-04-05 19:38:03', '2021-04-05 19:38:03'),
(2577, 'default', 'updated', 'App\\Models\\Equipment', 282, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng SPECT\\/CT 2 \\u0111\\u1ea7u thu c\\u00f3 ch\\u1ee9c n\\u0103ng \\u0111\\u1ecbnh l\\u01b0\\u1ee3ng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N05-XSPECT-05042021-XXX282\",\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"B\\u00e0n giao l\\u1ea1i\"},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng SPECT\\/CT 2 \\u0111\\u1ea7u thu c\\u00f3 ch\\u1ee9c n\\u0103ng \\u0111\\u1ecbnh l\\u01b0\\u1ee3ng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N05-XSPECT-05042021-XXX282\",\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-05 19:41:26', '2021-04-05 19:41:26'),
(2578, 'default', 'deleted', 'App\\Models\\Equipment', 282, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng SPECT\\/CT 2 \\u0111\\u1ea7u thu c\\u00f3 ch\\u1ee9c n\\u0103ng \\u0111\\u1ecbnh l\\u01b0\\u1ee3ng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N05-XSPECT-05042021-XXX282\",\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"B\\u00e0n giao l\\u1ea1i\"}}', '2021-04-05 19:44:06', '2021-04-05 19:44:06'),
(2579, 'default', 'deleted', 'App\\Models\\Equipment', 281, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng X\\u1ea1 h\\u00ecnh SPECT hai \\u0111\\u1ea7u thu\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N05-XSPECT-05042021-XXX281\",\"department_id\":41,\"date_failure\":null,\"reason\":null}}', '2021-04-05 19:44:12', '2021-04-05 19:44:12'),
(2580, 'login', 'login', NULL, NULL, 'App\\Models\\User', 45, '[]', '2021-04-05 19:46:29', '2021-04-05 19:46:29'),
(2581, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-05 19:47:02', '2021-04-05 19:47:02'),
(2582, 'default', 'updated', 'App\\Models\\Equipment', 237, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"corrected\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-05 20:36:51', '2021-04-05 20:36:51'),
(2583, 'default', 'updated', 'App\\Models\\Equipment', 231, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"h\\u01b0 h\\u1ecfng n\\u1eb7ng\"},\"old\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"h\\u01b0 h\\u1ecfng n\\u1eb7ng\"}}', '2021-04-05 20:40:45', '2021-04-05 20:40:45'),
(2584, 'default', 'updated', 'App\\Models\\Equipment', 235, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"MH001\",\"department_id\":34,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"MH001\",\"department_id\":34,\"date_failure\":null,\"reason\":null}}', '2021-04-05 20:41:01', '2021-04-05 20:41:01'),
(2585, 'default', 'updated', 'App\\Models\\Equipment', 230, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y th\\u1edf\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"M\\u00e1y th\\u1edf\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-05 20:41:06', '2021-04-05 20:41:06'),
(2586, 'default', 'updated', 'App\\Models\\Equipment', 240, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng n\\u1ed9i soi tai m\\u0169i h\\u1ecdng \\u1ed1ng c\\u1ee9ng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N11-XXNSCD-21032021-XXX240\",\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"demo\"},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng n\\u1ed9i soi tai m\\u0169i h\\u1ecdng \\u1ed1ng c\\u1ee9ng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N11-XXNSCD-21032021-XXX240\",\"department_id\":34,\"date_failure\":null,\"reason\":null}}', '2021-04-05 20:48:35', '2021-04-05 20:48:35'),
(2587, 'default', 'updated', 'App\\Models\\Equipment', 240, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng n\\u1ed9i soi tai m\\u0169i h\\u1ecdng \\u1ed1ng c\\u1ee9ng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N11-XXNSCD-21032021-XXX240\",\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"h\\u01b0 h\\u1ecfng n\\u1eb7ng\"},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng n\\u1ed9i soi tai m\\u0169i h\\u1ecdng \\u1ed1ng c\\u1ee9ng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N11-XXNSCD-21032021-XXX240\",\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"demo\"}}', '2021-04-05 20:48:53', '2021-04-05 20:48:53'),
(2588, 'default', 'updated', 'App\\Models\\Equipment', 240, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng n\\u1ed9i soi tai m\\u0169i h\\u1ecdng \\u1ed1ng c\\u1ee9ng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N11-XXNSCD-21032021-XXX240\",\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"demo\"},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng n\\u1ed9i soi tai m\\u0169i h\\u1ecdng \\u1ed1ng c\\u1ee9ng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N11-XXNSCD-21032021-XXX240\",\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"h\\u01b0 h\\u1ecfng n\\u1eb7ng\"}}', '2021-04-05 20:50:32', '2021-04-05 20:50:32'),
(2589, 'default', 'updated', 'App\\Models\\Equipment', 240, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng n\\u1ed9i soi tai m\\u0169i h\\u1ecdng \\u1ed1ng c\\u1ee9ng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N11-XXNSCD-21032021-XXX240\",\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"h\\u01b0 h\\u1ecfng n\\u1eb7ng\"},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng n\\u1ed9i soi tai m\\u0169i h\\u1ecdng \\u1ed1ng c\\u1ee9ng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N11-XXNSCD-21032021-XXX240\",\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"demo\"}}', '2021-04-05 20:53:46', '2021-04-05 20:53:46'),
(2590, 'default', 'updated', 'App\\Models\\Equipment', 231, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"h\\u01b0 h\\u1ecfng n\\u1eb7ng\"},\"old\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"h\\u01b0 h\\u1ecfng n\\u1eb7ng\"}}', '2021-04-05 20:56:42', '2021-04-05 20:56:42'),
(2591, 'default', 'updated', 'App\\Models\\Equipment', 231, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"demo\"},\"old\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"h\\u01b0 h\\u1ecfng n\\u1eb7ng\"}}', '2021-04-05 20:56:42', '2021-04-05 20:56:42'),
(2592, 'default', 'deleted', 'App\\Models\\ScheduleRepair', 15, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":245,\"repair_date\":\"2021-04-16\",\"completed_repair\":\"2021-04-16\",\"provider_id\":82,\"acceptance\":\"accepted\",\"representative\":20,\"update_date\":\"2021-04-02\",\"person_up\":36,\"approved\":22}}', '2021-04-05 21:00:40', '2021-04-05 21:00:40'),
(2593, 'default', 'deleted', 'App\\Models\\ScheduleRepair', 10, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":245,\"repair_date\":\"2021-03-26\",\"completed_repair\":\"2021-03-31\",\"provider_id\":82,\"acceptance\":\"accepted\",\"representative\":20,\"update_date\":\"2021-03-31\",\"person_up\":37,\"approved\":22}}', '2021-04-05 21:00:44', '2021-04-05 21:00:44'),
(2594, 'default', 'deleted', 'App\\Models\\ScheduleRepair', 11, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":245,\"repair_date\":\"2021-03-20\",\"completed_repair\":\"2021-04-03\",\"provider_id\":76,\"acceptance\":\"accepted\",\"representative\":20,\"update_date\":\"2021-04-05\",\"person_up\":36,\"approved\":22}}', '2021-04-05 21:00:46', '2021-04-05 21:00:46'),
(2595, 'default', 'deleted', 'App\\Models\\ScheduleRepair', 18, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":276,\"repair_date\":\"2021-04-05\",\"completed_repair\":\"2021-04-07\",\"provider_id\":83,\"acceptance\":\"fixing\",\"representative\":20,\"update_date\":\"2021-04-05\",\"person_up\":21,\"approved\":22}}', '2021-04-05 21:00:54', '2021-04-05 21:00:54'),
(2596, 'default', 'deleted', 'App\\Models\\ScheduleRepair', 17, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":242,\"repair_date\":\"2021-04-03\",\"completed_repair\":\"2021-04-05\",\"provider_id\":null,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-05 21:01:01', '2021-04-05 21:01:01'),
(2597, 'default', 'deleted', 'App\\Models\\ScheduleRepair', 16, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":242,\"repair_date\":\"2021-04-03\",\"completed_repair\":\"2021-04-05\",\"provider_id\":null,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-05 21:01:05', '2021-04-05 21:01:05'),
(2598, 'default', 'deleted', 'App\\Models\\ScheduleRepair', 12, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":223,\"repair_date\":\"2021-03-27\",\"completed_repair\":\"2021-03-31\",\"provider_id\":82,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-05 21:01:12', '2021-04-05 21:01:12'),
(2599, 'default', 'created', 'App\\Models\\ScheduleRepair', 19, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":240,\"repair_date\":\"2021-04-05\",\"completed_repair\":\"2021-04-30\",\"provider_id\":null,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-05 21:01:48', '2021-04-05 21:01:48'),
(2600, 'default', 'updated', 'App\\Models\\ScheduleRepair', 19, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":240,\"repair_date\":\"2021-04-05\",\"completed_repair\":\"2021-04-30\",\"provider_id\":null,\"acceptance\":\"create\",\"representative\":20,\"update_date\":\"2021-04-05\",\"person_up\":36,\"approved\":22},\"old\":{\"equipment_id\":240,\"repair_date\":\"2021-04-05\",\"completed_repair\":\"2021-04-30\",\"provider_id\":null,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-05 21:02:04', '2021-04-05 21:02:04'),
(2601, 'default', 'updated', 'App\\Models\\Equipment', 240, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng n\\u1ed9i soi tai m\\u0169i h\\u1ecdng \\u1ed1ng c\\u1ee9ng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N11-XXNSCD-21032021-XXX240\",\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"demo\"},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng n\\u1ed9i soi tai m\\u0169i h\\u1ecdng \\u1ed1ng c\\u1ee9ng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"N11-XXNSCD-21032021-XXX240\",\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"h\\u01b0 h\\u1ecfng n\\u1eb7ng\"}}', '2021-04-05 21:02:04', '2021-04-05 21:02:04'),
(2602, 'default', 'updated', 'App\\Models\\Equipment', 231, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"demo\"},\"old\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"demo\"}}', '2021-04-05 21:03:44', '2021-04-05 21:03:44'),
(2603, 'default', 'updated', 'App\\Models\\Equipment', 223, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"corrected\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-05 21:03:47', '2021-04-05 21:03:47'),
(2604, 'default', 'updated', 'App\\Models\\Equipment', 222, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"L01\",\"department_id\":32,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"L01\",\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-05 21:03:50', '2021-04-05 21:03:50'),
(2605, 'default', 'created', 'App\\Models\\Liquidation', 32, 'App\\Models\\User', 36, '{\"attributes\":{\"amount\":1,\"reason\":\"demo\",\"person_up\":null,\"updated_at\":\"2021-04-05T10:14:08.000000Z\"}}', '2021-04-05 21:14:08', '2021-04-05 21:14:08'),
(2606, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-06 00:08:50', '2021-04-06 00:08:50'),
(2607, 'login', 'login', NULL, NULL, 'App\\Models\\User', 37, '[]', '2021-04-06 00:19:56', '2021-04-06 00:19:56'),
(2608, 'default', 'created', 'App\\Models\\Device', 48, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh\"}}', '2021-04-06 00:37:03', '2021-04-06 00:37:03'),
(2609, 'default', 'created', 'App\\Models\\Equipment', 283, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 00:39:55', '2021-04-06 00:39:55'),
(2610, 'default', 'updated', 'App\\Models\\Equipment', 283, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N05-HTGTTT-05042021-XXX283\",\"department_id\":null,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 00:39:55', '2021-04-06 00:39:55'),
(2611, 'default', 'updated', 'App\\Models\\Equipment', 283, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N05-HTGTTT-05042021-XXX283\",\"department_id\":30,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N05-HTGTTT-05042021-XXX283\",\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
(2612, 'default', 'updated', 'App\\Models\\Equipment', 228, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 00:50:11', '2021-04-06 00:50:11'),
(2613, 'default', 'updated', 'App\\Models\\Equipment', 228, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"Kh\\u00f4ng si\\u00eau \\u00e2m \\u0111\\u01b0\\u1ee3c\"},\"old\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 00:50:11', '2021-04-06 00:50:11'),
(2614, 'default', 'created', 'App\\Models\\ScheduleRepair', 20, 'App\\Models\\User', 21, '{\"attributes\":{\"equipment_id\":228,\"repair_date\":\"2021-04-05\",\"completed_repair\":\"2021-04-06\",\"provider_id\":null,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
(2615, 'default', 'updated', 'App\\Models\\Equipment', 228, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"inactive\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"Kh\\u00f4ng si\\u00eau \\u00e2m \\u0111\\u01b0\\u1ee3c\"},\"old\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"Kh\\u00f4ng si\\u00eau \\u00e2m \\u0111\\u01b0\\u1ee3c\"}}', '2021-04-06 00:57:01', '2021-04-06 00:57:01'),
(2616, 'default', 'updated', 'App\\Models\\Equipment', 228, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"liquidated\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"Kh\\u00f4ng si\\u00eau \\u00e2m \\u0111\\u01b0\\u1ee3c\"},\"old\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"inactive\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"Kh\\u00f4ng si\\u00eau \\u00e2m \\u0111\\u01b0\\u1ee3c\"}}', '2021-04-06 00:58:17', '2021-04-06 00:58:17'),
(2617, 'default', 'inactive', 'App\\Models\\Equipment', 228, 'App\\Models\\User', 21, '[]', '2021-04-06 00:58:17', '2021-04-06 00:58:17'),
(2618, 'default', 'created', 'App\\Models\\Device', 49, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng\\/ Thi\\u1ebft b\\u1ecb kh\\u00e1c\"}}', '2021-04-06 01:05:03', '2021-04-06 01:05:03'),
(2619, 'default', 'created', 'App\\Models\\Equipment', 284, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 01:12:45', '2021-04-06 01:12:45'),
(2620, 'default', 'updated', 'App\\Models\\Equipment', 284, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N05-XSPECT-05042021-XXX284\",\"department_id\":null,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 01:12:45', '2021-04-06 01:12:45'),
(2621, 'default', 'updated', 'App\\Models\\Equipment', 284, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings)\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N05-XSPECT-05042021-XXX284\",\"department_id\":41,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N05-XSPECT-05042021-XXX284\",\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
(2622, 'default', 'updated', 'App\\Models\\Equipment', 222, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"L01\",\"department_id\":32,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"L01\",\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 01:20:34', '2021-04-06 01:20:34'),
(2623, 'default', 'updated', 'App\\Models\\Equipment', 222, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"L01\",\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"Ch\\u1ee5p b\\u1ecb m\\u1edd\"},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"L01\",\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 01:20:34', '2021-04-06 01:20:34'),
(2624, 'default', 'created', 'App\\Models\\Equipment', 285, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 01:28:14', '2021-04-06 01:28:14'),
(2625, 'default', 'updated', 'App\\Models\\Equipment', 285, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N05-HTGTTT-05042021-XXX285\",\"department_id\":null,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 01:28:14', '2021-04-06 01:28:14'),
(2626, 'default', 'updated', 'App\\Models\\Equipment', 285, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"N05-HTGTTT-05042021-XXX285\",\"department_id\":30,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N05-HTGTTT-05042021-XXX285\",\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
(2627, 'default', 'created', 'App\\Models\\ScheduleRepair', 21, 'App\\Models\\User', 21, '{\"attributes\":{\"equipment_id\":222,\"repair_date\":\"2021-04-06\",\"completed_repair\":\"2021-04-07\",\"provider_id\":null,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
(2628, 'default', 'updated', 'App\\Models\\Equipment', 222, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"L01\",\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"Ch\\u1ee5p b\\u1ecb m\\u1edd\"},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"L01\",\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"Ch\\u1ee5p b\\u1ecb m\\u1edd\"}}', '2021-04-06 01:39:35', '2021-04-06 01:39:35'),
(2629, 'default', 'created', 'App\\Models\\Equipment', 286, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 01:49:00', '2021-04-06 01:49:00'),
(2630, 'default', 'updated', 'App\\Models\\Equipment', 286, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"X-XXXXXX-05042021-XXX286\",\"department_id\":null,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 01:49:00', '2021-04-06 01:49:00'),
(2631, 'default', 'updated', 'App\\Models\\Equipment', 286, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"X-XXXXXX-05042021-XXX286\",\"department_id\":34,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"X-XXXXXX-05042021-XXX286\",\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
(2632, 'default', 'updated', 'App\\Models\\Equipment', 224, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"liquidated\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 01:52:03', '2021-04-06 01:52:03'),
(2633, 'default', 'updated', 'App\\Models\\Equipment', 224, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"Kh\\u00f4ng si\\u00eau \\u00e2m \\u0111\\u01b0\\u1ee3c\"},\"old\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 01:52:03', '2021-04-06 01:52:03'),
(2634, 'default', 'created', 'App\\Models\\ScheduleRepair', 22, 'App\\Models\\User', 21, '{\"attributes\":{\"equipment_id\":224,\"repair_date\":\"2021-04-06\",\"completed_repair\":\"2021-04-07\",\"provider_id\":null,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-06 01:53:08', '2021-04-06 01:53:08'),
(2635, 'default', 'updated', 'App\\Models\\Equipment', 224, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"inactive\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"Kh\\u00f4ng si\\u00eau \\u00e2m \\u0111\\u01b0\\u1ee3c\"},\"old\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"Kh\\u00f4ng si\\u00eau \\u00e2m \\u0111\\u01b0\\u1ee3c\"}}', '2021-04-06 01:55:52', '2021-04-06 01:55:52'),
(2636, 'default', 'updated', 'App\\Models\\Equipment', 224, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"liquidated\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"Kh\\u00f4ng si\\u00eau \\u00e2m \\u0111\\u01b0\\u1ee3c\"},\"old\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"inactive\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"Kh\\u00f4ng si\\u00eau \\u00e2m \\u0111\\u01b0\\u1ee3c\"}}', '2021-04-06 01:59:49', '2021-04-06 01:59:49'),
(2637, 'default', 'inactive', 'App\\Models\\Equipment', 224, 'App\\Models\\User', 21, '[]', '2021-04-06 01:59:49', '2021-04-06 01:59:49'),
(2638, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-06 06:28:19', '2021-04-06 06:28:19'),
(2639, 'default', 'updated', 'App\\Models\\Equipment', 286, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"X-XXXXXX-05042021-XXX286\",\"department_id\":41,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"X-XXXXXX-05042021-XXX286\",\"department_id\":34,\"date_failure\":null,\"reason\":null}}', '2021-04-06 06:42:00', '2021-04-06 06:42:00'),
(2640, 'default', 'updated', 'App\\Models\\Equipment', 286, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"X-XXXXXX-06042021-XXX286\",\"department_id\":41,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"X-XXXXXX-05042021-XXX286\",\"department_id\":\"41\",\"date_failure\":null,\"reason\":null}}', '2021-04-06 06:42:00', '2021-04-06 06:42:00'),
(2641, 'default', 'created', 'App\\Models\\Equipment', 287, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 06:53:43', '2021-04-06 06:53:43'),
(2642, 'default', 'updated', 'App\\Models\\Equipment', 287, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"X-XXXXXX-06042021-XXX287\",\"department_id\":null,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 06:53:43', '2021-04-06 06:53:43'),
(2643, 'default', 'updated', 'App\\Models\\Equipment', 287, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"X-XXXXXX-06042021-XXX287\",\"department_id\":41,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"X-XXXXXX-06042021-XXX287\",\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
(2644, 'default', 'created', 'App\\Models\\User', 48, 'App\\Models\\User', 21, '{\"attributes\":{\"name\":\"nvkxt\"}}', '2021-04-06 06:58:12', '2021-04-06 06:58:12'),
(2645, 'login', 'login', NULL, NULL, 'App\\Models\\User', 48, '[]', '2021-04-06 06:58:37', '2021-04-06 06:58:37'),
(2646, 'default', 'updated', 'App\\Models\\Equipment', 222, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"L01\",\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"Ch\\u1ee5p b\\u1ecb m\\u1edd\"},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"L01\",\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"Ch\\u1ee5p b\\u1ecb m\\u1edd\"}}', '2021-04-06 07:00:16', '2021-04-06 07:00:16'),
(2647, 'default', 'updated', 'App\\Models\\Equipment', 222, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"L01\",\"department_id\":32,\"date_failure\":\"2021-04-06\",\"reason\":\"k r\\u00f5\"},\"old\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"L01\",\"department_id\":32,\"date_failure\":\"2021-04-05\",\"reason\":\"Ch\\u1ee5p b\\u1ecb m\\u1edd\"}}', '2021-04-06 07:00:16', '2021-04-06 07:00:16'),
(2648, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-06 07:14:47', '2021-04-06 07:14:47'),
(2649, 'default', 'created', 'App\\Models\\Accre', 2, 'App\\Models\\User', 21, '{\"attributes\":{\"equipment_id\":240}}', '2021-04-06 07:19:48', '2021-04-06 07:19:48'),
(2650, 'login', 'login', NULL, NULL, 'App\\Models\\User', 36, '[]', '2021-04-06 11:31:38', '2021-04-06 11:31:38'),
(2651, 'login', 'login', NULL, NULL, 'App\\Models\\User', 32, '[]', '2021-04-06 12:04:20', '2021-04-06 12:04:20'),
(2652, 'default', 'created', 'App\\Models\\Equipment', 288, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"Velit nostrud eu id\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":44,\"date_failure\":null,\"reason\":null}}', '2021-04-06 12:09:38', '2021-04-06 12:09:38'),
(2653, 'default', 'updated', 'App\\Models\\Equipment', 288, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"Velit nostrud eu id\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N01-XXXMXQ-06042021-XXX288\",\"department_id\":44,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"Velit nostrud eu id\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":\"44\",\"date_failure\":null,\"reason\":null}}', '2021-04-06 12:09:38', '2021-04-06 12:09:38'),
(2654, 'login', 'login', NULL, NULL, 'App\\Models\\User', 20, '[]', '2021-04-06 12:25:04', '2021-04-06 12:25:04'),
(2662, 'default', 'created', 'App\\Models\\Equipment', 300, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2663, 'default', 'created', 'App\\Models\\Equipment', 301, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2664, 'default', 'created', 'App\\Models\\Equipment', 302, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2665, 'default', 'created', 'App\\Models\\Equipment', 303, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2666, 'default', 'created', 'App\\Models\\Equipment', 304, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2667, 'default', 'created', 'App\\Models\\Equipment', 305, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2668, 'default', 'created', 'App\\Models\\Equipment', 306, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2669, 'default', 'created', 'App\\Models\\Equipment', 307, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2670, 'default', 'created', 'App\\Models\\Equipment', 308, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2671, 'default', 'created', 'App\\Models\\Equipment', 309, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2672, 'default', 'created', 'App\\Models\\Equipment', 310, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2673, 'default', 'created', 'App\\Models\\Equipment', 311, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2674, 'default', 'created', 'App\\Models\\Equipment', 312, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2675, 'default', 'created', 'App\\Models\\Equipment', 313, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2676, 'default', 'created', 'App\\Models\\Equipment', 314, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2677, 'default', 'created', 'App\\Models\\Equipment', 315, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2678, 'default', 'created', 'App\\Models\\Equipment', 316, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:36', '2021-04-06 13:07:36'),
(2679, 'default', 'created', 'App\\Models\\Equipment', 317, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:37', '2021-04-06 13:07:37'),
(2680, 'default', 'created', 'App\\Models\\Equipment', 318, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:37', '2021-04-06 13:07:37'),
(2681, 'default', 'created', 'App\\Models\\Equipment', 319, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:37', '2021-04-06 13:07:37');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(2682, 'default', 'created', 'App\\Models\\Equipment', 320, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:37', '2021-04-06 13:07:37'),
(2683, 'default', 'created', 'App\\Models\\Equipment', 321, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:07:37', '2021-04-06 13:07:37'),
(2684, 'default', 'created', 'App\\Models\\Equipment', 322, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2685, 'default', 'created', 'App\\Models\\Equipment', 323, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2686, 'default', 'created', 'App\\Models\\Equipment', 324, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2687, 'default', 'created', 'App\\Models\\Equipment', 325, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2688, 'default', 'created', 'App\\Models\\Equipment', 326, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2689, 'default', 'created', 'App\\Models\\Equipment', 327, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2690, 'default', 'created', 'App\\Models\\Equipment', 328, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2691, 'default', 'created', 'App\\Models\\Equipment', 329, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2692, 'default', 'created', 'App\\Models\\Equipment', 330, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2693, 'default', 'created', 'App\\Models\\Equipment', 331, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2694, 'default', 'created', 'App\\Models\\Equipment', 332, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2695, 'default', 'created', 'App\\Models\\Equipment', 333, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2696, 'default', 'created', 'App\\Models\\Equipment', 334, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2697, 'default', 'created', 'App\\Models\\Equipment', 335, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2698, 'default', 'created', 'App\\Models\\Equipment', 336, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2699, 'default', 'created', 'App\\Models\\Equipment', 337, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2700, 'default', 'created', 'App\\Models\\Equipment', 338, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2701, 'default', 'created', 'App\\Models\\Equipment', 339, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2702, 'default', 'created', 'App\\Models\\Equipment', 340, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2703, 'default', 'created', 'App\\Models\\Equipment', 341, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2704, 'default', 'created', 'App\\Models\\Equipment', 342, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2705, 'default', 'created', 'App\\Models\\Equipment', 343, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:08:42', '2021-04-06 13:08:42'),
(2706, 'default', 'created', 'App\\Models\\Equipment', 344, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"Monitor theo d\\u00e2i b\\u00d6nh nh\\u00a9n\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2707, 'default', 'created', 'App\\Models\\Equipment', 345, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2708, 'default', 'created', 'App\\Models\\Equipment', 346, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2709, 'default', 'created', 'App\\Models\\Equipment', 347, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2710, 'default', 'created', 'App\\Models\\Equipment', 348, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2711, 'default', 'created', 'App\\Models\\Equipment', 349, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2712, 'default', 'created', 'App\\Models\\Equipment', 350, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2713, 'default', 'created', 'App\\Models\\Equipment', 351, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2714, 'default', 'created', 'App\\Models\\Equipment', 352, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2715, 'default', 'created', 'App\\Models\\Equipment', 353, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2716, 'default', 'created', 'App\\Models\\Equipment', 354, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2717, 'default', 'created', 'App\\Models\\Equipment', 355, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2718, 'default', 'created', 'App\\Models\\Equipment', 356, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2719, 'default', 'created', 'App\\Models\\Equipment', 357, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2720, 'default', 'created', 'App\\Models\\Equipment', 358, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2721, 'default', 'created', 'App\\Models\\Equipment', 359, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2722, 'default', 'created', 'App\\Models\\Equipment', 360, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2723, 'default', 'created', 'App\\Models\\Equipment', 361, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2724, 'default', 'created', 'App\\Models\\Equipment', 362, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2725, 'default', 'created', 'App\\Models\\Equipment', 363, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2726, 'default', 'created', 'App\\Models\\Equipment', 364, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2727, 'default', 'created', 'App\\Models\\Equipment', 365, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2728, 'default', 'created', 'App\\Models\\Equipment', 366, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:10:33', '2021-04-06 13:10:33'),
(2729, 'default', 'created', 'App\\Models\\Equipment', 367, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:10', '2021-04-06 13:15:10'),
(2730, 'default', 'created', 'App\\Models\\Equipment', 368, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:10', '2021-04-06 13:15:10'),
(2731, 'default', 'created', 'App\\Models\\Equipment', 369, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:10', '2021-04-06 13:15:10'),
(2732, 'default', 'created', 'App\\Models\\Equipment', 370, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:10', '2021-04-06 13:15:10'),
(2733, 'default', 'created', 'App\\Models\\Equipment', 371, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:10', '2021-04-06 13:15:10'),
(2734, 'default', 'created', 'App\\Models\\Equipment', 372, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:10', '2021-04-06 13:15:10'),
(2735, 'default', 'created', 'App\\Models\\Equipment', 373, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:11', '2021-04-06 13:15:11'),
(2736, 'default', 'created', 'App\\Models\\Equipment', 374, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y in phim kh\\u00f4 Laser\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:11', '2021-04-06 13:15:11'),
(2737, 'default', 'created', 'App\\Models\\Equipment', 375, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y th\\u1edf\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:11', '2021-04-06 13:15:11'),
(2738, 'default', 'created', 'App\\Models\\Equipment', 376, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:11', '2021-04-06 13:15:11'),
(2739, 'default', 'created', 'App\\Models\\Equipment', 377, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:11', '2021-04-06 13:15:11'),
(2740, 'default', 'created', 'App\\Models\\Equipment', 378, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y b\\u01a1m ti\\u00eam \\u0111i\\u1ec7n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:11', '2021-04-06 13:15:11'),
(2741, 'default', 'created', 'App\\Models\\Equipment', 379, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\\u0110\\u00e8n m\\u1ed5 1 b\\u00f3ng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:11', '2021-04-06 13:15:11'),
(2742, 'default', 'created', 'App\\Models\\Equipment', 380, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:11', '2021-04-06 13:15:11'),
(2743, 'default', 'created', 'App\\Models\\Equipment', 381, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:11', '2021-04-06 13:15:11'),
(2744, 'default', 'created', 'App\\Models\\Equipment', 382, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:11', '2021-04-06 13:15:11'),
(2745, 'default', 'created', 'App\\Models\\Equipment', 383, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y Monitor theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:11', '2021-04-06 13:15:11'),
(2746, 'default', 'created', 'App\\Models\\Equipment', 384, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"Dao m\\u1ed5 \\u0111i\\u1ec7n cao t\\u1ea7n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:15:11', '2021-04-06 13:15:11'),
(2764, 'default', 'created', 'App\\Models\\Equipment', 402, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2765, 'default', 'created', 'App\\Models\\Equipment', 403, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2766, 'default', 'created', 'App\\Models\\Equipment', 404, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2767, 'default', 'created', 'App\\Models\\Equipment', 405, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2768, 'default', 'created', 'App\\Models\\Equipment', 406, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2769, 'default', 'created', 'App\\Models\\Equipment', 407, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2770, 'default', 'created', 'App\\Models\\Equipment', 408, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2771, 'default', 'created', 'App\\Models\\Equipment', 409, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y in phim kh\\u00f4 Laser\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2772, 'default', 'created', 'App\\Models\\Equipment', 410, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y th\\u1edf\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2773, 'default', 'created', 'App\\Models\\Equipment', 411, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2774, 'default', 'created', 'App\\Models\\Equipment', 412, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2775, 'default', 'created', 'App\\Models\\Equipment', 413, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y b\\u01a1m ti\\u00eam \\u0111i\\u1ec7n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2776, 'default', 'created', 'App\\Models\\Equipment', 414, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\\u0110\\u00e8n m\\u1ed5 1 b\\u00f3ng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2777, 'default', 'created', 'App\\Models\\Equipment', 415, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2778, 'default', 'created', 'App\\Models\\Equipment', 416, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2779, 'default', 'created', 'App\\Models\\Equipment', 417, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2780, 'default', 'created', 'App\\Models\\Equipment', 418, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y Monitor theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2781, 'default', 'created', 'App\\Models\\Equipment', 419, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:19:48', '2021-04-06 13:19:48'),
(2782, 'default', 'created', 'App\\Models\\Equipment', 420, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2783, 'default', 'created', 'App\\Models\\Equipment', 421, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2784, 'default', 'created', 'App\\Models\\Equipment', 422, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2785, 'default', 'created', 'App\\Models\\Equipment', 423, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2786, 'default', 'created', 'App\\Models\\Equipment', 424, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2787, 'default', 'created', 'App\\Models\\Equipment', 425, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2788, 'default', 'created', 'App\\Models\\Equipment', 426, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2789, 'default', 'created', 'App\\Models\\Equipment', 427, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y in phim kh\\u00f4 Laser\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2790, 'default', 'created', 'App\\Models\\Equipment', 428, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2791, 'default', 'created', 'App\\Models\\Equipment', 429, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2792, 'default', 'created', 'App\\Models\\Equipment', 430, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2793, 'default', 'created', 'App\\Models\\Equipment', 431, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2794, 'default', 'created', 'App\\Models\\Equipment', 432, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2795, 'default', 'created', 'App\\Models\\Equipment', 433, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2796, 'default', 'created', 'App\\Models\\Equipment', 434, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2797, 'default', 'created', 'App\\Models\\Equipment', 435, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2798, 'default', 'created', 'App\\Models\\Equipment', 436, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2799, 'default', 'created', 'App\\Models\\Equipment', 437, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:23:08', '2021-04-06 13:23:08'),
(2800, 'default', 'created', 'App\\Models\\Equipment', 438, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2801, 'default', 'created', 'App\\Models\\Equipment', 439, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2802, 'default', 'created', 'App\\Models\\Equipment', 440, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2803, 'default', 'created', 'App\\Models\\Equipment', 441, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2804, 'default', 'created', 'App\\Models\\Equipment', 442, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2805, 'default', 'created', 'App\\Models\\Equipment', 443, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2806, 'default', 'created', 'App\\Models\\Equipment', 444, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2807, 'default', 'created', 'App\\Models\\Equipment', 445, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y in phim kh\\u00f4 Laser\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2808, 'default', 'created', 'App\\Models\\Equipment', 446, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2809, 'default', 'created', 'App\\Models\\Equipment', 447, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2810, 'default', 'created', 'App\\Models\\Equipment', 448, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2811, 'default', 'created', 'App\\Models\\Equipment', 449, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2812, 'default', 'created', 'App\\Models\\Equipment', 450, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2813, 'default', 'created', 'App\\Models\\Equipment', 451, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2814, 'default', 'created', 'App\\Models\\Equipment', 452, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2815, 'default', 'created', 'App\\Models\\Equipment', 453, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2816, 'default', 'created', 'App\\Models\\Equipment', 454, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2817, 'default', 'created', 'App\\Models\\Equipment', 455, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":null,\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:27:09', '2021-04-06 13:27:09'),
(2818, 'default', 'created', 'App\\Models\\Equipment', 456, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2819, 'default', 'created', 'App\\Models\\Equipment', 457, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2820, 'default', 'created', 'App\\Models\\Equipment', 458, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2821, 'default', 'created', 'App\\Models\\Equipment', 459, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2822, 'default', 'created', 'App\\Models\\Equipment', 460, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2823, 'default', 'created', 'App\\Models\\Equipment', 461, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2824, 'default', 'created', 'App\\Models\\Equipment', 462, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2825, 'default', 'created', 'App\\Models\\Equipment', 463, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y in phim kh\\u00f4 Laser\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2826, 'default', 'created', 'App\\Models\\Equipment', 464, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2827, 'default', 'created', 'App\\Models\\Equipment', 465, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2828, 'default', 'created', 'App\\Models\\Equipment', 466, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2829, 'default', 'created', 'App\\Models\\Equipment', 467, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2830, 'default', 'created', 'App\\Models\\Equipment', 468, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2831, 'default', 'created', 'App\\Models\\Equipment', 469, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2832, 'default', 'created', 'App\\Models\\Equipment', 470, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2833, 'default', 'created', 'App\\Models\\Equipment', 471, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2834, 'default', 'created', 'App\\Models\\Equipment', 472, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2835, 'default', 'created', 'App\\Models\\Equipment', 473, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:33:06', '2021-04-06 13:33:06'),
(2836, 'default', 'created', 'App\\Models\\Equipment', 474, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2837, 'default', 'created', 'App\\Models\\Equipment', 475, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2838, 'default', 'created', 'App\\Models\\Equipment', 476, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2839, 'default', 'created', 'App\\Models\\Equipment', 477, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2840, 'default', 'created', 'App\\Models\\Equipment', 478, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2841, 'default', 'created', 'App\\Models\\Equipment', 479, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2842, 'default', 'created', 'App\\Models\\Equipment', 480, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2843, 'default', 'created', 'App\\Models\\Equipment', 481, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y in phim kh\\u00f4 Laser\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2844, 'default', 'created', 'App\\Models\\Equipment', 482, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2845, 'default', 'created', 'App\\Models\\Equipment', 483, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2846, 'default', 'created', 'App\\Models\\Equipment', 484, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2847, 'default', 'created', 'App\\Models\\Equipment', 485, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2848, 'default', 'created', 'App\\Models\\Equipment', 486, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2849, 'default', 'created', 'App\\Models\\Equipment', 487, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2850, 'default', 'created', 'App\\Models\\Equipment', 488, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2851, 'default', 'created', 'App\\Models\\Equipment', 489, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2852, 'default', 'created', 'App\\Models\\Equipment', 490, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2853, 'default', 'created', 'App\\Models\\Equipment', 491, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:37:11', '2021-04-06 13:37:11'),
(2854, 'default', 'created', 'App\\Models\\Equipment', 492, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2855, 'default', 'created', 'App\\Models\\Equipment', 493, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2856, 'default', 'created', 'App\\Models\\Equipment', 494, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2857, 'default', 'created', 'App\\Models\\Equipment', 495, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2858, 'default', 'created', 'App\\Models\\Equipment', 496, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2859, 'default', 'created', 'App\\Models\\Equipment', 497, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2860, 'default', 'created', 'App\\Models\\Equipment', 498, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2861, 'default', 'created', 'App\\Models\\Equipment', 499, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y in phim kh\\u00f4 Laser\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44');
INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `properties`, `created_at`, `updated_at`) VALUES
(2862, 'default', 'created', 'App\\Models\\Equipment', 500, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2863, 'default', 'created', 'App\\Models\\Equipment', 501, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2864, 'default', 'created', 'App\\Models\\Equipment', 502, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2865, 'default', 'created', 'App\\Models\\Equipment', 503, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2866, 'default', 'created', 'App\\Models\\Equipment', 504, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2867, 'default', 'created', 'App\\Models\\Equipment', 505, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2868, 'default', 'created', 'App\\Models\\Equipment', 506, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2869, 'default', 'created', 'App\\Models\\Equipment', 507, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2870, 'default', 'created', 'App\\Models\\Equipment', 508, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2871, 'default', 'created', 'App\\Models\\Equipment', 509, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 13:38:44', '2021-04-06 13:38:44'),
(2872, 'default', 'created', 'App\\Models\\Equipment', 510, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"Nguy\\u1ec5n V\\u0103n Ph\\u01b0\\u1edbc\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:26:18', '2021-04-06 14:26:18'),
(2873, 'default', 'created', 'App\\Models\\Equipment', 511, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"Nguy\\u1ec5n V\\u0103n Ph\\u01b0\\u1edbc\",\"status\":\"corrected\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:29:11', '2021-04-06 14:29:11'),
(2874, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-06 14:36:38', '2021-04-06 14:36:38'),
(2909, 'default', 'deleted', 'App\\Models\\Equipment', 510, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"Nguy\\u1ec5n V\\u0103n Ph\\u01b0\\u1edbc\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:44:47', '2021-04-06 14:44:47'),
(2910, 'default', 'deleted', 'App\\Models\\Equipment', 511, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"Nguy\\u1ec5n V\\u0103n Ph\\u01b0\\u1edbc\",\"status\":\"corrected\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:44:50', '2021-04-06 14:44:50'),
(2911, 'default', 'created', 'App\\Models\\Equipment', 546, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2912, 'default', 'created', 'App\\Models\\Equipment', 547, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2913, 'default', 'created', 'App\\Models\\Equipment', 548, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2914, 'default', 'created', 'App\\Models\\Equipment', 549, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2915, 'default', 'created', 'App\\Models\\Equipment', 550, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2916, 'default', 'created', 'App\\Models\\Equipment', 551, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2917, 'default', 'created', 'App\\Models\\Equipment', 552, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2918, 'default', 'created', 'App\\Models\\Equipment', 553, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y in phim kh\\u00f4 Laser\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2919, 'default', 'created', 'App\\Models\\Equipment', 554, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y th\\u1edf\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2920, 'default', 'created', 'App\\Models\\Equipment', 555, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2921, 'default', 'created', 'App\\Models\\Equipment', 556, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2922, 'default', 'created', 'App\\Models\\Equipment', 557, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y b\\u01a1m ti\\u00eam \\u0111i\\u1ec7n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2923, 'default', 'created', 'App\\Models\\Equipment', 558, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\\u0110\\u00e8n m\\u1ed5 1 b\\u00f3ng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2924, 'default', 'created', 'App\\Models\\Equipment', 559, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2925, 'default', 'created', 'App\\Models\\Equipment', 560, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2926, 'default', 'created', 'App\\Models\\Equipment', 561, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2927, 'default', 'created', 'App\\Models\\Equipment', 562, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y Monitor theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2928, 'default', 'created', 'App\\Models\\Equipment', 563, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:45:13', '2021-04-06 14:45:13'),
(2929, 'default', 'created', 'App\\Models\\Equipment', 564, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2930, 'default', 'created', 'App\\Models\\Equipment', 565, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2931, 'default', 'created', 'App\\Models\\Equipment', 566, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2932, 'default', 'created', 'App\\Models\\Equipment', 567, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2933, 'default', 'created', 'App\\Models\\Equipment', 568, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2934, 'default', 'created', 'App\\Models\\Equipment', 569, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2935, 'default', 'created', 'App\\Models\\Equipment', 570, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2936, 'default', 'created', 'App\\Models\\Equipment', 571, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y in phim kh\\u00f4 Laser\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2937, 'default', 'created', 'App\\Models\\Equipment', 572, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y th\\u1edf\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2938, 'default', 'created', 'App\\Models\\Equipment', 573, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2939, 'default', 'created', 'App\\Models\\Equipment', 574, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2940, 'default', 'created', 'App\\Models\\Equipment', 575, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y b\\u01a1m ti\\u00eam \\u0111i\\u1ec7n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2941, 'default', 'created', 'App\\Models\\Equipment', 576, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\\u0110\\u00e8n m\\u1ed5 1 b\\u00f3ng\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2942, 'default', 'created', 'App\\Models\\Equipment', 577, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2943, 'default', 'created', 'App\\Models\\Equipment', 578, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2944, 'default', 'created', 'App\\Models\\Equipment', 579, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2945, 'default', 'created', 'App\\Models\\Equipment', 580, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y Monitor theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2946, 'default', 'created', 'App\\Models\\Equipment', 581, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:46:28', '2021-04-06 14:46:28'),
(2947, 'default', 'created', 'App\\Models\\Equipment', 582, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2948, 'default', 'created', 'App\\Models\\Equipment', 583, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2949, 'default', 'created', 'App\\Models\\Equipment', 584, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2950, 'default', 'created', 'App\\Models\\Equipment', 585, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2951, 'default', 'created', 'App\\Models\\Equipment', 586, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2952, 'default', 'created', 'App\\Models\\Equipment', 587, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2953, 'default', 'created', 'App\\Models\\Equipment', 588, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2954, 'default', 'created', 'App\\Models\\Equipment', 589, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y in phim kh\\u00f4 Laser\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2955, 'default', 'created', 'App\\Models\\Equipment', 590, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2956, 'default', 'created', 'App\\Models\\Equipment', 591, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2957, 'default', 'created', 'App\\Models\\Equipment', 592, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2958, 'default', 'created', 'App\\Models\\Equipment', 593, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2959, 'default', 'created', 'App\\Models\\Equipment', 594, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2960, 'default', 'created', 'App\\Models\\Equipment', 595, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2961, 'default', 'created', 'App\\Models\\Equipment', 596, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2962, 'default', 'created', 'App\\Models\\Equipment', 597, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2963, 'default', 'created', 'App\\Models\\Equipment', 598, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2964, 'default', 'created', 'App\\Models\\Equipment', 599, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 14:48:02', '2021-04-06 14:48:02'),
(2965, 'default', 'created', 'App\\Models\\Equipment', 600, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2966, 'default', 'created', 'App\\Models\\Equipment', 601, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2967, 'default', 'created', 'App\\Models\\Equipment', 602, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2968, 'default', 'created', 'App\\Models\\Equipment', 603, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2969, 'default', 'created', 'App\\Models\\Equipment', 604, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2970, 'default', 'created', 'App\\Models\\Equipment', 605, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2971, 'default', 'created', 'App\\Models\\Equipment', 606, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2972, 'default', 'created', 'App\\Models\\Equipment', 607, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y in phim kh\\u00f4 Laser\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2973, 'default', 'created', 'App\\Models\\Equipment', 608, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y th\\u1edf\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2974, 'default', 'created', 'App\\Models\\Equipment', 609, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2975, 'default', 'created', 'App\\Models\\Equipment', 610, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2976, 'default', 'created', 'App\\Models\\Equipment', 611, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y b\\u01a1m ti\\u00eam \\u0111i\\u1ec7n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2977, 'default', 'created', 'App\\Models\\Equipment', 612, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\\u0110\\u00e8n m\\u1ed5 1 b\\u00f3ng\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2978, 'default', 'created', 'App\\Models\\Equipment', 613, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2979, 'default', 'created', 'App\\Models\\Equipment', 614, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2980, 'default', 'created', 'App\\Models\\Equipment', 615, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2981, 'default', 'created', 'App\\Models\\Equipment', 616, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y Monitor theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2982, 'default', 'created', 'App\\Models\\Equipment', 617, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 15:12:25', '2021-04-06 15:12:25'),
(2983, 'default', 'created', 'App\\Models\\Eqsupplie', 256, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":null,\"code\":null}}', '2021-04-06 15:13:55', '2021-04-06 15:13:55'),
(2984, 'default', 'deleted', 'App\\Models\\Eqsupplie', 256, 'App\\Models\\User', 20, '{\"attributes\":{\"title\":\"test\",\"status\":null,\"code\":null}}', '2021-04-06 15:14:02', '2021-04-06 15:14:02'),
(2985, 'login', 'login', NULL, NULL, 'App\\Models\\User', 36, '[]', '2021-04-06 17:33:03', '2021-04-06 17:33:03'),
(2986, 'login', 'login', NULL, NULL, 'App\\Models\\User', 32, '[]', '2021-04-06 17:40:07', '2021-04-06 17:40:07'),
(2988, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-06 18:24:42', '2021-04-06 18:24:42'),
(2989, 'default', 'updated', 'App\\Models\\Equipment', 276, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"test\",\"status\":\"inactive\",\"type\":\"devices\",\"code\":\"N01-XXXMSA-02042021-XXX276\",\"department_id\":30,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"test\",\"status\":\"corrected\",\"type\":\"devices\",\"code\":\"N01-XXXMSA-02042021-XXX276\",\"department_id\":30,\"date_failure\":null,\"reason\":null}}', '2021-04-06 18:29:46', '2021-04-06 18:29:46'),
(2990, 'default', 'updated', 'App\\Models\\Equipment', 231, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"demo\"},\"old\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"demo\"}}', '2021-04-06 18:48:43', '2021-04-06 18:48:43'),
(2991, 'default', 'updated', 'App\\Models\\Equipment', 231, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-06\",\"reason\":\"demo\"},\"old\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-05\",\"reason\":\"demo\"}}', '2021-04-06 18:48:43', '2021-04-06 18:48:43'),
(2992, 'default', 'updated', 'App\\Models\\Equipment', 235, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"MH001\",\"department_id\":34,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"MH001\",\"department_id\":34,\"date_failure\":null,\"reason\":null}}', '2021-04-06 18:49:24', '2021-04-06 18:49:24'),
(2993, 'default', 'updated', 'App\\Models\\Equipment', 235, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"MH001\",\"department_id\":34,\"date_failure\":\"2021-04-06\",\"reason\":\"demo\"},\"old\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"MH001\",\"department_id\":34,\"date_failure\":null,\"reason\":null}}', '2021-04-06 18:49:24', '2021-04-06 18:49:24'),
(2994, 'default', 'updated', 'App\\Models\\Equipment', 231, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-06\",\"reason\":\"demo\"},\"old\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"active\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-06\",\"reason\":\"demo\"}}', '2021-04-06 18:53:29', '2021-04-06 18:53:29'),
(2995, 'default', 'updated', 'App\\Models\\Equipment', 235, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"MH001\",\"department_id\":34,\"date_failure\":\"2021-04-06\",\"reason\":\"demo\"},\"old\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"active\",\"type\":\"devices\",\"code\":\"MH001\",\"department_id\":34,\"date_failure\":\"2021-04-06\",\"reason\":\"demo\"}}', '2021-04-06 18:54:34', '2021-04-06 18:54:34'),
(2996, 'default', 'updated', 'App\\Models\\Equipment', 235, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"MH001\",\"department_id\":34,\"date_failure\":\"2021-04-06\",\"reason\":\"h\\u01b0 h\\u1ecfng n\\u1eb7ng\"},\"old\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":\"MH001\",\"department_id\":34,\"date_failure\":\"2021-04-06\",\"reason\":\"demo\"}}', '2021-04-06 18:54:34', '2021-04-06 18:54:34'),
(3050, 'default', 'created', 'App\\Models\\Equipment', 693, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"was_broken\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:07:55', '2021-04-06 20:07:55'),
(3051, 'default', 'created', 'App\\Models\\Equipment', 694, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"was_broken\",\"type\":null,\"code\":null,\"department_id\":33,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:08:52', '2021-04-06 20:08:52'),
(3052, 'default', 'created', 'App\\Models\\Equipment', 695, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:29', '2021-04-06 20:09:29'),
(3053, 'default', 'created', 'App\\Models\\Equipment', 696, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:29', '2021-04-06 20:09:29'),
(3054, 'default', 'created', 'App\\Models\\Equipment', 697, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:29', '2021-04-06 20:09:29'),
(3055, 'default', 'created', 'App\\Models\\Equipment', 698, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:29', '2021-04-06 20:09:29'),
(3056, 'default', 'created', 'App\\Models\\Equipment', 699, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:29', '2021-04-06 20:09:29'),
(3057, 'default', 'created', 'App\\Models\\Equipment', 700, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:29', '2021-04-06 20:09:29'),
(3058, 'default', 'created', 'App\\Models\\Equipment', 701, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:29', '2021-04-06 20:09:29'),
(3059, 'default', 'created', 'App\\Models\\Equipment', 702, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y in phim kh\\u00f4 Laser\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:29', '2021-04-06 20:09:29'),
(3060, 'default', 'created', 'App\\Models\\Equipment', 703, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y th\\u1edf\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:29', '2021-04-06 20:09:29'),
(3061, 'default', 'created', 'App\\Models\\Equipment', 704, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:29', '2021-04-06 20:09:29'),
(3062, 'default', 'created', 'App\\Models\\Equipment', 705, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y s\\u1ed1c tim\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:29', '2021-04-06 20:09:29'),
(3063, 'default', 'created', 'App\\Models\\Equipment', 706, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y b\\u01a1m ti\\u00eam \\u0111i\\u1ec7n\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:29', '2021-04-06 20:09:29'),
(3064, 'default', 'created', 'App\\Models\\Equipment', 707, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"\\u0110\\u00e8n m\\u1ed5 1 b\\u00f3ng\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:29', '2021-04-06 20:09:29'),
(3065, 'default', 'created', 'App\\Models\\Equipment', 708, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat d\\u1ecbch \\u00e1p l\\u01b0c \\u00e2m\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:29', '2021-04-06 20:09:29'),
(3066, 'default', 'created', 'App\\Models\\Equipment', 709, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:30', '2021-04-06 20:09:30'),
(3067, 'default', 'created', 'App\\Models\\Equipment', 710, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y h\\u00fat \\u1ea9m\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:30', '2021-04-06 20:09:30'),
(3068, 'default', 'created', 'App\\Models\\Equipment', 711, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y Monitor theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:30', '2021-04-06 20:09:30'),
(3069, 'default', 'created', 'App\\Models\\Equipment', 712, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:50', '2021-04-06 20:09:50'),
(3070, 'default', 'created', 'App\\Models\\Equipment', 713, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:50', '2021-04-06 20:09:50'),
(3071, 'default', 'created', 'App\\Models\\Equipment', 714, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:50', '2021-04-06 20:09:50'),
(3072, 'default', 'created', 'App\\Models\\Equipment', 715, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:50', '2021-04-06 20:09:50'),
(3073, 'default', 'created', 'App\\Models\\Equipment', 716, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:50', '2021-04-06 20:09:50'),
(3074, 'default', 'created', 'App\\Models\\Equipment', 717, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:50', '2021-04-06 20:09:50'),
(3075, 'default', 'created', 'App\\Models\\Equipment', 718, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:50', '2021-04-06 20:09:50'),
(3076, 'default', 'created', 'App\\Models\\Equipment', 719, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y in phim kh\\u00f4 Laser\",\"status\":\"not_handed\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:09:50', '2021-04-06 20:09:50'),
(3077, 'login', 'login', NULL, NULL, 'App\\Models\\User', 20, '[]', '2021-04-06 20:15:57', '2021-04-06 20:15:57'),
(3078, 'default', 'created', 'App\\Models\\Equipment', 720, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:25:54', '2021-04-06 20:25:54'),
(3079, 'default', 'created', 'App\\Models\\Equipment', 721, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m 3 \\u0111\\u1ea7u d\\u00f2\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:25:54', '2021-04-06 20:25:54'),
(3080, 'default', 'created', 'App\\Models\\Equipment', 722, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:25:54', '2021-04-06 20:25:54'),
(3081, 'default', 'created', 'App\\Models\\Equipment', 723, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:25:54', '2021-04-06 20:25:54'),
(3082, 'default', 'created', 'App\\Models\\Equipment', 724, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:25:54', '2021-04-06 20:25:54'),
(3083, 'default', 'created', 'App\\Models\\Equipment', 725, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:25:54', '2021-04-06 20:25:54'),
(3084, 'default', 'created', 'App\\Models\\Equipment', 726, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:25:54', '2021-04-06 20:25:54'),
(3085, 'default', 'created', 'App\\Models\\Equipment', 727, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"M\\u00e1y in phim kh\\u00f4 Laser\",\"status\":\"active\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:25:54', '2021-04-06 20:25:54'),
(3086, 'default', 'created', 'App\\Models\\ScheduleRepair', 23, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":231,\"repair_date\":\"2021-04-07\",\"completed_repair\":\"2021-04-30\",\"provider_id\":83,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
(3087, 'default', 'created', 'App\\Models\\ScheduleRepair', 24, 'App\\Models\\User', 36, '{\"attributes\":{\"equipment_id\":231,\"repair_date\":\"2021-04-07\",\"completed_repair\":\"2021-04-29\",\"provider_id\":null,\"acceptance\":\"create\",\"representative\":null,\"update_date\":null,\"person_up\":null,\"approved\":null}}', '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
(3088, 'default', 'updated', 'App\\Models\\Equipment', 231, 'App\\Models\\User', 36, '{\"attributes\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"corrected\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-06\",\"reason\":\"demo\"},\"old\":{\"title\":\"M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n\",\"status\":\"was_broken\",\"type\":\"devices\",\"code\":null,\"department_id\":34,\"date_failure\":\"2021-04-06\",\"reason\":\"demo\"}}', '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
(3089, 'default', 'created', 'App\\Models\\Equipment', 728, 'App\\Models\\User', 32, '{\"attributes\":{\"title\":\"Monitor theo d\\u00e2i b\\u00d6nh nh\\u00a9n\",\"status\":\"was_broken\",\"type\":null,\"code\":null,\"department_id\":32,\"date_failure\":null,\"reason\":null}}', '2021-04-06 20:55:28', '2021-04-06 20:55:28'),
(3090, 'login', 'login', NULL, NULL, 'App\\Models\\User', 32, '[]', '2021-04-06 21:16:27', '2021-04-06 21:16:27'),
(3091, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-07 00:02:16', '2021-04-07 00:02:16'),
(3092, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-07 01:25:20', '2021-04-07 01:25:20'),
(3093, 'login', 'login', NULL, NULL, 'App\\Models\\User', 21, '[]', '2021-04-07 02:33:50', '2021-04-07 02:33:50'),
(3094, 'default', 'created', 'App\\Models\\Equipment', 729, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-07 04:15:04', '2021-04-07 04:15:04'),
(3095, 'default', 'updated', 'App\\Models\\Equipment', 729, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"X-XXXXXX-07042021-XXX729\",\"department_id\":null,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":null,\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-07 04:15:04', '2021-04-07 04:15:04'),
(3096, 'default', 'updated', 'App\\Models\\Equipment', 729, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"X-XXXXXX-07042021-XXX729\",\"department_id\":null,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"X-XXXXXX-07042021-XXX729\",\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-07 04:17:28', '2021-04-07 04:17:28'),
(3097, 'default', 'updated', 'App\\Models\\Equipment', 729, 'App\\Models\\User', 21, '{\"attributes\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"N05-HTGTTT-07042021-XXX729\",\"department_id\":null,\"date_failure\":null,\"reason\":null},\"old\":{\"title\":\"M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator)\",\"status\":\"not_handed\",\"type\":\"devices\",\"code\":\"X-XXXXXX-07042021-XXX729\",\"department_id\":null,\"date_failure\":null,\"reason\":null}}', '2021-04-07 04:17:28', '2021-04-07 04:17:28'),
(3098, 'login', 'login', NULL, NULL, 'App\\Models\\User', 36, '[]', '2021-04-07 11:42:57', '2021-04-07 11:42:57');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attachments`
--

CREATE TABLE `attachments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media_id` bigint(20) UNSIGNED NOT NULL,
  `equipment_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ballots_equipments`
--

CREATE TABLE `ballots_equipments` (
  `id` int(10) UNSIGNED NOT NULL,
  `ballot_id` int(20) DEFAULT NULL,
  `equipment_id` int(20) DEFAULT NULL,
  `amount` int(191) DEFAULT NULL,
  `unit_price` int(191) DEFAULT NULL,
  `price` int(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ballots_equipments`
--

INSERT INTO `ballots_equipments` (`id`, `ballot_id`, `equipment_id`, `amount`, `unit_price`, `price`) VALUES
(168, 46, 235, 12, 250000000, NULL),
(169, 45, 242, 12, 48800000, NULL),
(173, 47, 224, 1, 250000000, NULL),
(174, 47, 223, 1, 250000000, NULL),
(175, 47, 222, 1, 250000000, NULL),
(176, 48, 254, 1, 250000000, NULL),
(178, 49, 240, 1, 150000000, NULL),
(181, 50, 224, 1, 250000000, NULL),
(182, 50, 228, 1, 250000000, NULL),
(183, 51, 230, 1, 250000000, NULL),
(184, 51, 232, 1, 250000000, NULL),
(185, 51, 231, 1, 250000000, NULL),
(186, 51, 233, 1, 250000000, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blog_cats`
--

CREATE TABLE `blog_cats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `brokens`
--

CREATE TABLE `brokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `equipment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `leader_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `process` text COLLATE utf8_unicode_ci NOT NULL,
  `image` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_id` bigint(10) UNSIGNED DEFAULT NULL,
  `nursing_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `departments`
--

INSERT INTO `departments` (`id`, `title`, `code`, `slug`, `phone`, `contact`, `email`, `address`, `user_id`, `author_id`, `nursing_id`, `image`, `created_at`, `updated_at`) VALUES
(30, 'Khoa Khám bệnh', 'Khoa Khám bệnh', 'khoa-kham-benh', '0123456789', 'Điều dưỡng trưởng', 'kkb@gmail.com', 'Nhà K', 22, NULL, 24, NULL, '2021-01-09 10:48:39', '2021-02-04 11:59:22'),
(32, 'Phòng Vật tư', 'Phòng Vật tư', 'phong-vat-tu', '0123456789', 'Trưởng phòng Vật tư', 'phongvtyt2020@gmail.com', 'HN', 22, NULL, 23, NULL, '2021-01-26 15:52:16', '2021-02-04 12:03:09'),
(33, 'Khoa Nội', 'Khoa Nội', 'khoa-noi', '0123456789', 'TKN', 'kn@gmail.com', 'HN', 28, NULL, 21, NULL, '2021-01-31 11:37:52', '2021-02-18 11:41:47'),
(34, 'Khoa Chẩn đoán hình ảnh', 'KCĐHA', 'dolor-voluptas-esse', '0123456789', 'Điều dưỡng trưởng', 'kcdha@gmail.com', 'Nhà C', 25, NULL, 26, NULL, '2021-02-05 14:01:53', '2021-02-18 11:42:51'),
(39, 'Khoa Phụ Sản', 'Khoa Phụ Sản', 'demo', '1663906700', 'vanphuoc260797@gmail.com', 'vanphuoc260797@gmail.com', 'tổ dân phố 4, phường Hương Văn,Hương Trà, Huế (0363906700)', 20, NULL, 21, 9, '2021-02-22 12:58:34', '2021-03-01 20:38:37'),
(40, 'Khoa Ngoại', 'Khoa Ngoại', 'khoa-ngoai', '012345678910', 'Điều dưỡng trưởng Khoa Ngoại', 'khoangoai@gmail.com', 'Nhà Kz', 40, 37, 20, NULL, '2021-03-01 14:54:01', '2021-03-27 15:10:13'),
(41, 'Khoa Xạ trị', 'KhoaXatri', 'khoa-xa-tri', '012345678912', 'Điều dưỡng trưởng', 'khoaxatri@gmail.com', 'Nhà C, tầng 2', 21, 37, 44, NULL, '2021-03-30 21:50:06', '2021-03-30 21:50:06'),
(44, 'Khoa CĐHA 2', 'Khoa CĐHA 2', 'khoa-cdha-2', '012345678913', 'Điều dưỡng trưởng', 'khoacdha2@gmail.com', 'Nhà H', 25, 37, 26, NULL, '2021-03-31 07:07:43', '2021-03-31 07:07:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `devices`
--

CREATE TABLE `devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` bigint(20) UNSIGNED DEFAULT NULL,
  `cat_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_id` bigint(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `devices`
--

INSERT INTO `devices` (`id`, `title`, `slug`, `code`, `image`, `cat_id`, `author_id`, `created_at`, `updated_at`) VALUES
(32, 'Máy X quang', 'may-x-quang', 'MXQ', NULL, 27, NULL, '2021-01-09 09:30:08', '2021-02-18 12:15:49'),
(33, 'Máy siêu âm', 'may-sieu-am', 'MSA', NULL, 27, NULL, '2021-01-09 09:30:33', '2021-02-18 12:16:02'),
(34, 'Máy theo dõi bệnh nhân', 'may-theo-doi-benh-nhan', '3', NULL, 28, NULL, '2021-01-09 10:40:15', '2021-01-26 15:06:30'),
(36, 'Máy trợ thở', 'may-tro-tho', 'Apache', NULL, 28, NULL, '2021-01-14 05:47:07', '2021-02-05 08:33:32'),
(37, 'Máy đo nhịp tim', 'may-do-nhip-tim', 'NGINX', NULL, 30, NULL, '2021-01-26 15:06:59', '2021-02-05 08:33:20'),
(38, 'Máy cộng hưởng từ', 'may-cong-huong-tu', 'MRIx', NULL, 27, NULL, '2021-01-28 17:41:31', '2021-01-28 17:41:31'),
(39, 'Máy CT', 'may-ct', 'CTxx', NULL, 27, NULL, '2021-01-28 17:41:51', '2021-01-28 17:41:51'),
(42, 'Hệ thống chụp mạch số hóa xóa nền(DSA)', 'he-thong-chup-mach-so-hoa-xoa-nen-dsa', 'DSA', NULL, 27, 27, '2021-03-11 23:01:30', '2021-03-11 23:01:30'),
(43, 'Hệ thống chụp cổng hưởng từ', 'he-thong-chup-cong-huong-tu', 'MRI', NULL, 27, 27, '2021-03-11 23:02:20', '2021-03-11 23:02:20'),
(44, 'Hệ thống/  thiết bị hồi sức khác', 'he-thong-thiet-bi-hoi-suc-khac', 'TBK', NULL, 28, 27, '2021-03-11 23:03:35', '2021-03-11 23:03:35'),
(45, 'Máy hút dịch', 'may-hut-dich', 'MHD', NULL, 28, 27, '2021-03-11 23:03:54', '2021-03-11 23:03:54'),
(46, 'Nội soi chuẩn đoán', 'noi-soi-chuan-doan', 'NSCD', NULL, 38, 37, '2021-03-13 13:18:03', '2021-03-13 13:18:03'),
(47, 'Hệ thống SPECT loại 2 đầu thu', 'he-thong-spect-loai-2-dau-thu', 'SPECT', NULL, 31, 27, '2021-04-03 14:46:48', '2021-04-03 14:46:48'),
(48, 'Hệ thống gia tốc tuyến tính', 'he-thong-gia-toc-tuyen-tinh', 'HTGTTT', NULL, 31, 21, '2021-04-06 00:37:03', '2021-04-06 00:37:03'),
(49, 'Hệ thống/ Thiết bị khác', 'he-thong-thiet-bi-khac', 'HT/TBK', NULL, 31, 21, '2021-04-06 01:05:03', '2021-04-06 01:05:03');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `equipments`
--

CREATE TABLE `equipments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_manufacture` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `warehouse` date DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `risk` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `manufacturer` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `origin` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `maintenance_id` bigint(20) UNSIGNED DEFAULT NULL,
  `provider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `repair_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `cate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `devices_id` bigint(10) UNSIGNED DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` bigint(20) UNSIGNED DEFAULT NULL,
  `first_inspection` date DEFAULT NULL,
  `specificat` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `first_value` float DEFAULT NULL,
  `process` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_use` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `officer_charge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `officers_use_id` bigint(20) UNSIGNED DEFAULT NULL,
  `first_information` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_price` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `bid_project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `warranty_date` date DEFAULT NULL,
  `configurat` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `depreciat` float DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `officer_department_charge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `officers_training_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `regular_inspection` int(5) UNSIGNED DEFAULT '0',
  `parent_id` int(11) DEFAULT '0',
  `date_failure` date DEFAULT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `equipments`
--

INSERT INTO `equipments` (`id`, `title`, `model`, `year_manufacture`, `warehouse`, `slug`, `code`, `serial`, `type`, `status`, `risk`, `amount`, `manufacturer`, `origin`, `maintenance_id`, `provider_id`, `repair_id`, `user_id`, `cate_id`, `devices_id`, `unit_id`, `department_id`, `image`, `first_inspection`, `specificat`, `first_value`, `process`, `year_use`, `officer_charge_id`, `officers_use_id`, `first_information`, `import_price`, `bid_project_id`, `warranty_date`, `configurat`, `depreciat`, `note`, `officer_department_charge_id`, `officers_training_id`, `supplie_id`, `regular_inspection`, `parent_id`, `date_failure`, `reason`, `created_at`, `updated_at`) VALUES
(222, 'Hệ thống Máy chụp cộng hưởng từ (MRI) 1,5 Telsa', 'Signa HDxt', '2005', NULL, 'he-thong-may-chup-cong-huong-tu-mri-1-5-telsa', 'L01', 'R8478', 'devices', 'active', NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, '1. Tính năng chung\n- Máy giúp thở chuyên dụng dùng cho cấp cứu, hồi sức tích cực và vận chuyển\n- Có chế độ thở không xâm lấn (NIV)\n- Sử dụng cho người lớn, trẻ em\n- Hoạt động với nguồn khí nén tuốc- bin tích hợp trong máy, có quạt làm mát dành riêng cho tuốc- bin\n- Có chương trình tự kiểm tra máy\n- Cho phép cài đặt mặc định các thông số thở\n- Có tính năng tự động bù khoảng chết\n- Có tính năng tự động bù áp lực: tự động bù áp lực khí quyển trên áp lực đo được hiện tại\n- Có thể dùng nguồn điện ngoài (điện áp thấp) 12V.DC hoặc pin NiMh 12V.DC (Pin hoạt động tối đa 4 giờ)\n- Có cảm biến lưu lượng và hiệu chuẩn tự động (Hiệu chuẩn được bắt đầu bởi người vận hành)\n- Bộ khí dung: Có thể điều chỉnh thông số bù lưu lượng khí dung lên tới 6L/phút ở chế độ thông khí cưỡng bức\n- Có khả năng nâng cấp tính năng theo dõi C)2 của bệnh nhân, tùy chọn công nghệ mainstream hoặc sidestream\n- Có tính năng dự phòng ngưng thở', 480000000, NULL, '2012', NULL, NULL, '2006', '250000000', NULL, NULL, 'Máy chính với các phụ kiện tiêu chuẩn và vật tư tiêu hao kèm theo cho: 01 máy\n- Màn hình màu TFT, 10.4\", cảm ứng: 01 chiếc\n- Van thở ra và cảm biến lưu lượng, sử dụng nhiều lần, có thể hấp tiệt trùng: 01 bộ\n- Bộ dây thở sử dụng nhiều lần: 01 bộ\n- Mặt nạ thở sử dụng nhiều lần: 01 bộ\n- Bộ dây nguồn khí Oxy: 01 bộ\n- Phổi giả: 01 chiếc\n- Ắc quy trong: 01 chiếc\n- Tài liệu hướng dẫn sử dụng: 01 bộ', NULL, 'Dïng siªu ©m ®Ó chÈn ®o¸n ®iÒu trÞ bÖnh nh©n', NULL, NULL, NULL, 0, 0, '2021-04-06', 'k rõ', '2021-03-13 16:12:40', '2021-04-06 07:00:16'),
(223, 'Máy siêu âm 3 đầu dò', 'prosound @6', '2005', NULL, 'may-sieu-am-3-dau-do', NULL, 'xxx001', 'devices', 'active', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, '2018', NULL, NULL, '2006', '250000000', NULL, NULL, NULL, NULL, '42998', NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-03-13 16:12:40', '2021-04-05 21:03:47'),
(224, 'Máy siêu âm đen trắng', 'Prosound @6', '2005', NULL, 'may-sieu-am-den-trang', NULL, 'xxx002', 'devices', 'liquidated', NULL, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, '2007', NULL, NULL, '2006', '250000000', NULL, NULL, NULL, NULL, 'Dïng siªu ©m ®Ó chÈn ®o¸n ®iÒu trÞ bÖnh nh©n', NULL, NULL, NULL, 0, 0, '2021-04-05', 'Không siêu âm được', '2021-03-13 16:12:40', '2021-04-06 01:59:49'),
(225, 'Máy siêu âm màu', 'Logic C5 Premium', '2005', NULL, 'may-sieu-am-mau', NULL, 'xxx003', 'devices', 'active', NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, '2014', NULL, NULL, '2006', '250000000', NULL, NULL, NULL, NULL, 'Dïng siªu ©m ®Ó chÈn ®o¸n ®iÒu trÞ bÖnh nh©n', NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-03-13 16:12:40', '2021-04-01 19:11:03'),
(228, 'Máy siêu âm màu 3D-4D', 'Voluson 730 pro', '2005', NULL, 'may-sieu-am-mau-3d-4d', NULL, 'A45463', 'devices', 'liquidated', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, '2012', NULL, NULL, '2006', '250000000', NULL, NULL, NULL, NULL, 'M¸y chôp c¾t líp dïng trong chÈn ®o¸n bÖnh', NULL, NULL, NULL, 0, 0, '2021-04-05', 'Không siêu âm được', '2021-03-13 16:12:40', '2021-04-06 00:58:17'),
(229, 'Máy in phim khô Laser', 'TrimaxTX50', '2005', NULL, 'may-in-phim-kho-laser', NULL, '10050192', 'devices', 'active', NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, '2012', NULL, NULL, '2006', '250000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-03-13 16:12:40', '2021-04-05 18:18:22'),
(230, 'Máy thở', 'BAT02065', '2005', NULL, 'may-tho', NULL, '16532-07', 'devices', 'active', NULL, 59, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 32, NULL, NULL, NULL, NULL, NULL, '2010', NULL, NULL, '2006', '250000000', NULL, NULL, NULL, NULL, '42289', NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-03-13 16:12:40', '2021-04-05 20:41:06'),
(231, 'Máy theo dõi bệnh nhân', 'BSM-2301K', '2005', NULL, 'may-theo-doi-benh-nhan', NULL, '35614', 'devices', 'corrected', NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, '2010', NULL, NULL, '2006', '250000000', NULL, NULL, NULL, NULL, 'Dïng cho m¸y SA logic P3', NULL, NULL, NULL, 0, 0, '2021-04-06', 'demo', '2021-03-13 16:12:40', '2021-04-06 20:39:54'),
(232, 'Máy sốc tim', 'TEC-5531K', '2005', NULL, 'may-soc-tim', NULL, '5057', 'devices', 'active', NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, '2010', NULL, NULL, '2006', '250000000', NULL, NULL, NULL, NULL, 'bµn giao ngµy 12/10/2015, míi 100%', NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-03-13 16:12:40', '2021-03-29 14:48:03'),
(233, 'Máy bơm tiêm điện', 'TE-331', '2005', NULL, 'may-bom-tiem-dien', NULL, '1012000405', 'devices', 'active', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, '2010', NULL, NULL, '2006', '250000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-03-13 16:12:40', '2021-04-05 18:24:03'),
(235, 'Máy hút dịch áp lưc âm', 'Constomt-1400', '2005', NULL, 'may-hut-dich-ap-luc-am', 'MH001', '15100064', 'devices', 'was_broken', NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, NULL, NULL, NULL, NULL, NULL, '2016', NULL, NULL, '2006', '250000000', NULL, NULL, NULL, NULL, 'Bàn giao ngày 24/3/2016', NULL, NULL, NULL, 0, 0, '2021-04-06', 'hư hỏng nặng', '2021-03-13 16:12:40', '2021-04-06 18:54:34'),
(236, 'Máy hút ẩm', 'ED-16B', '2005', NULL, 'may-hut-am', NULL, '16160638', 'devices', 'active', NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, '2016', NULL, NULL, '2006', '250000000', NULL, NULL, NULL, NULL, 'Bàn giao ngày 04/7/2016', NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-03-13 16:12:40', '2021-04-05 18:25:36'),
(237, 'Máy hút ẩm', 'ED-16B', '2005', NULL, 'may-hut-am-1', NULL, '16160367', 'devices', 'active', NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, '2016', NULL, NULL, '2006', '250000000', NULL, NULL, NULL, NULL, 'Bàn giao ngày 04/7/2016', NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-03-13 16:12:40', '2021-04-05 20:36:51'),
(238, 'Máy Monitor theo dõi bệnh nhân', 'BSM-35626', '2005', NULL, 'may-monitor-theo-doi-benh-nhan', NULL, '21988', 'devices', 'active', NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, '2019', NULL, NULL, '2006', '250000000', NULL, NULL, NULL, NULL, '43474', NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-03-13 16:12:40', '2021-04-01 19:18:21'),
(240, 'Hệ thống nội soi tai mũi họng ống cứng', 'Soprocomeg', '2017', '2021-03-13', 'he-thong-noi-soi-tai-mui-hong-ong-cung', 'N11-XXNSCD-21032021-XXX240', 'S165-0686', 'devices', 'active', 'B', 1, 'Soprocomeg', 'Pháp', NULL, 72, NULL, NULL, 38, 46, 16, 34, 50, '2021-03-01', 'abc', 100, 'Theo hướng dẫn sử dụng', NULL, 24, NULL, NULL, '150000000', 31, NULL, 'abc', 10, NULL, 25, NULL, NULL, 6, 0, '2021-04-05', 'demo', '2021-03-13 18:30:12', '2021-04-05 21:02:04'),
(241, 'Hệ thống chụp mạch số hóa xóa nền(DSA) 2 bình diện', 'Magnetom Amira', '2021', NULL, 'he-thong-chup-mach-so-hoa-xoa-nen-dsa-2-binh-dien', 'N01-XXXDSA-23032021-XXX241', 'DSAHA', 'devices', 'was_broken', 'B', 6, 'Siemens Healthcare GmbH', 'Đức', NULL, NULL, NULL, NULL, 27, 42, 16, 34, NULL, NULL, '- Nhà sản xuất máy chính phải có các chứnng chỉ chất lượng quốc tế: ISO 9001, ISO 13485 hoặc CE, FDA,…\r\n- Điều kiện môi trường của máy chính: \r\nNhiệt độ tối đa:  25 độ C\r\nĐộ ẩm tối đa:  70%', NULL, NULL, NULL, 24, NULL, NULL, '48800000', 31, NULL, NULL, NULL, NULL, 24, NULL, NULL, 6, 0, NULL, NULL, '2021-03-13 19:02:12', '2021-03-23 06:42:41'),
(242, 'Hệ thống chụp cắt lớp vi tính và phụ kiện(cấu hình 16 dãy đầu thu, 32 lát cắt)', 'Access CT', '2021', NULL, 'he-thong-chup-cat-lop-vi-tinh-va-phu-kien-cau-hinh-16-day-dau-thu-32-lat-cat', 'N01-XXCTxx-13032021-XXX242', 'CLCT', 'devices', 'was_broken', 'C', 7, 'Philips Healthcare(Suzhou) Co.Ltd', 'Trung Quốc', NULL, NULL, NULL, NULL, 27, 39, 16, 30, NULL, NULL, '- Nhà sản xuất máy chính phải có các chứnng chỉ chất lượng quốc tế: ISO 9001, ISO 13485 hoặc CE, FDA,…\r\n- Điều kiện môi trường của máy chính: \r\nNhiệt độ tối đa:  25 độ C\r\nĐộ ẩm tối đa:  70%', NULL, NULL, NULL, NULL, NULL, NULL, '48800000', NULL, NULL, '2021-01-05/7ad18f68-4c37-4cd4-b630-3959ef51b801/Access CT 32 lat.pdf', NULL, NULL, NULL, NULL, NULL, 6, 0, NULL, NULL, '2021-03-13 19:09:54', '2021-04-02 20:15:43'),
(243, 'Máy chụp X-Quang 2D/3D di động và phụ kiện đi kèm', 'O-ARM O2', '2021', NULL, 'may-chup-x-quang-2d-3d-di-dong-va-phu-kien-di-kem', 'N01-XXXMXQ-13032021-XXX243', 'DDXQ', 'devices', 'active', 'C', 4, 'Medtronic Navigation, Inc.', 'Mỹ', NULL, NULL, NULL, NULL, 27, 32, 15, 30, NULL, NULL, 'THÔNG SỐ CHỈ TIÊU KỸ THUẬT KỸ THUẬT:\r\nKhối xử lý hình ảnh\r\nẢnh đơn diện 2D: Chiếu xung ở 30 hình/giây\r\nẢnh đa diện 2D: Tới 4 hình 2D từ vị trí cài đặt trước\r\nẢnh khối 3D tiêu chuẩn: \r\n+ Thu thập dữ liệu: < 16 giây (tiêu chuẩn: 14 giây)\r\n+ Số ảnh: 391 ảnh trên 360 độ\r\n+ Thời gian tái tạo ảnh 3D: < 30 giây (tiêu chuẩn: 7 giây)\r\n+ Trường nhìn: 20 cm\r\n+ Độ phân giải: 0,415 x 0,415 x 0,833 mm\r\n+ Kích thước ma trận tái tạo: 512 x 512 x 192\r\nHình ảnh khối 3D\r\nKhối trụ:\r\n+ FOV 20cm: 21,25cm đường kính x 15 cm chiều cao\r\n+ FOV 40cm: 39,7cm đường kính x 15 cm chiều cao\r\nĐộ phân giải: 512 x 512 x 192\r\nNguồn phát tia X\r\nCông suất: Tối đa 32kW\r\nĐộ chính xác lặp lại kVp: ≤ 0,05 CV\r\nĐộ chính xác tuyến tính mAs: <0,05 liền kề; <0,1 không liền kề\r\nBóng phát tia\r\nLoại bóng: Anode quay\r\nCông suất tối đa: 32kW\r\nĐiện áp tối đa: 150V\r\nBộ lọc tia: Tương đương 0,7mm Al\r\nKhả năng trữ nhiệt của Anode: 300kHU (222 kJ)\r\nKhả năng trữ nhiệt của vỏ bóng: 1250kHU (927 kJ)', NULL, NULL, NULL, 20, NULL, NULL, '32000000000', NULL, NULL, 'Máy chính O-arm O2\r\nBộ cắt lớp hình ảnh 3D-HD3D O2 độ nét cao\r\nBộ cắt lớp hình ảnh sọ não 3D\r\nPhần mềm hiển thị hình ảnh O2\r\nBộ chụp nghiêng IsoWag O2\r\nBộ phát tia chuẩn trực hướng tâm 3D\r\nBộ cắt lớp hình ảnh đa trường nhìn\r\nBộ phần mềm tối ưu hóa hình ảnh cho khung lập thể\r\nĐiều khiển từ xa\r\nGiao diện kết nối với hệ thống định vị phẫu thuật\r\nTúi phủ tiệt trùng', NULL, NULL, 20, NULL, NULL, 6, 0, NULL, NULL, '2021-03-13 19:12:26', '2021-03-13 21:24:36'),
(244, 'Máy theo dõi bệnh nhân 5 thông số', 'BPM-1010', '2021', NULL, 'may-theo-doi-benh-nhan-5-thong-so', 'N02-XXXXX3-13032021-XXX244', 'MTDBN', 'devices', 'active', 'C', 3, 'Bionics Co, Ltd', 'Hàn Quốc', NULL, NULL, NULL, NULL, 28, 34, 14, 30, NULL, NULL, '•	Màn hình \r\n-	Màn hình LCD TFT màu 10.4 inch\r\n-	Độ phân giải : 800x600 SVGA\r\n-	Các đường tín hiệu: 6 dạng sóng ( tiêu chuẩn )/ có tùy chọn tối đa 12 dạng sóng. Các vệt sóng có thể Bật/Tắt \r\n•	Các tham số hiển thị: \r\n-	Hiển thị các thông số: ECG, SpO2, NIBP, 4IBP, RESP, 4TEMP, EtCO2, Multi Gas, ICO, HRV, OXY-CRG, phân tích APG, hiển thị mức ST, mini trend, xem lại ECG, tính liều thuốc, thay đổi màu sắc các kênh, nhiệt độ TD, NIBP trend\r\n•	Tín hiệu điện tim (ECG)\r\n-	Kênh ECG : 3 kênh ( tiêu chuẩn) / 12 kênh EKG ( tùy chọn)\r\n-	Điện cực : 3 hoặc 5 điện cực ( tùy chọn 10 điện cực)\r\n-	 3 đạo trình : I, II, III ( 1 đạo trình 1 thời điểm)\r\n-	 4 đạo trình : I, II, III aVR, aVL, aVF ( 6 đạo trình 1 thời điểm)\r\n-	 5 đạo trình : I, II, III aVR, aVL, aVF, V ( 7 đạo trình 1 thời điểm)\r\n-	10 đạo trình : I, II, III aVR, aVL, aVF, V1, V2, V3, V4, V5, V6 ( tất cả 12 đạo trình của ECG tại một thời điểm)\r\n-	Bộ lọc : Lọc nhiễu tần số cao (50/60Hz), băng thông ( 0.05~80Hz)\r\n-	Khuếch đại: 2.5, 5, 10, 20, 30, 40, tự động mm/mV\r\n-	Tốc độ quét : 6.25, 12.5, 25, 50 mm/s\r\n-	Khoảng đo nhịp tim : 0 đến 300 nhịp/phút, ± 2 nhịp/phút\r\n-	Khoảng tín hiệu vào :0 ±0.5mV đến ±5mV\r\n-	Phát hiện sóng QRS: 0.15mV ~ 0.40mV ( bằng tay)\r\n-	Bảo vệ với máy sốc tim : 300J tại 5000V\r\n-	Chế độ điều hòa nhịp tim : người dùng lựa chọn ( PNF, PNC)\r\n-	Dò loạn nhịp tim : TAC, BRD, PVC, VTAC, ASY, BGM, TGM, VENT,VFIB, CPT, TPT, MIB, Ront\r\n-	Phân tích ST : dải -9.9mm đến 9.9mm/ độ phân dải 0.1mm ( đạo trình : chọn kênh ECG)\r\n-	Tính toán HR : 4~16 sóng QRS\r\n•	Nhịp thở\r\n-	Phương pháp : dùng trở kháng của đạo trình ECG ( có thể lựa chọn)\r\n-	Nhịp thở : 0 ~ 150 nhịp/phút\r\n-	Sai số : ±2% hoặc  ±2 nhịp/phút\r\n-	Lựa chọn đạo trình : I, II\r\n-	Ngưng thở : OFF, 10~60 giây\r\n-	Tốc độ quét : 3.12, 6.25, 12.5, 25, 50 mm/s\r\n-	Độ khuếch đại : x0.25, x0.5, x1, x2, x4, tự động\r\n•	Huyết áp không xâm lấn ( NIBP)\r\n-	Kỹ thuật đo: đo dao động\r\n-	Phạm vi đo :  người lớn 0 ~ 300 mmHg, trẻ em 0 ~ 150 mmHg\r\n-	Chu kỳ đo tự động: 1~ 59 phút, 1~12 giờ\r\n-	Chế độ cấp cứu (STAT) : 5 ~15 phút liên tục\r\n•	Độ bão hòa oxy trong máu (SpO2)  \r\n-	Đầu dò : cảm biến đầu ngón tay dùng nhiều lần\r\n-	Dải đo : 0 ~ 100%\r\n-	Khoảng nhịp mạch:  0 ~ 300 nhịp/phút\r\n-	Độ phân giải : 1%\r\n-	Độ khuếch đại : X0.25, X0.5, X1, X2, X4, tự động\r\n-	Tốc độ quét : 6.25,12.5, 25, 50 mm/s\r\n-	Sai số SpO2  ±2% (70-100%), ±3%(50-69%), không xác định (0-49%)\r\n-	Sai số xung nhịp: 2 nhịp đối với dải từ 0-240 nhịp,  3 nhịp đối với dải từ 241-300 nhịp\r\n-	Cài đặt thời gian phát sóng : 5 giây tối đa ( dựa trên 75 nhịp/phút)\r\n-	Cổng gắn thêm tùy chọn : Nellcor OXI-MAX\r\n•	Nhiệt độ\r\n-	Số kênh: 2 ( tiêu chuẩn), 4 ( tùy chọn)\r\n-	Kiểu: YSI-400 serise\r\n-	Dải đo : 0 ~ 50ºC\r\n-	Sai số: ±0.1 ºC ( 25-50 ºC), ±0.2 ºC ( 0-24.9 ºC)\r\n-	Nhiệt độ TD: Hỗ trợ\r\n•	Cổng mở rộng\r\n-	Cổng RS232, VGA, LAN and Wireless, ECG output, IBP output, thẻ nhớ SD, cổng báo gọi y tá\r\n•	Ngôn ngữ : Tiếng Anh, Pháp, Tây Ba Nha, Đức, Ý, Thổ Nhĩ Kỹ, Séc, Rumani, Bồ Đào Nha ( có thể cập nhật tất cả ngôn ngữ)\r\n•	Trend : \r\n-	Lưu trữ : 30 ngày ( tiêu chuẩn) với tất cả các thông số\r\n-	Dữ liệu thống kê và biểu đồ : 1, 5, 15, 30 phút và 1 giờ\r\n•	Pin\r\n-	Pin Li-on ( DC : 10.8V/2.6A tiêu chuẩn) ( 10.8V/4.4A tùy chọn)\r\n-	Thời gian hoạt động: Tối thiểu: 1 giờ ( tiêu chuẩn)/ tối đa 5 giờ ( tùy chọn 2 bộ )\r\n•	Thông số vật lý\r\n-	Kích thước : 310 x 160 x 290mm (R x S x D)\r\n-	Trọng lượng : 7 Kg\r\n•	Nguồn điện yêu cầu\r\n-	Nguồn vào : 100-240V, 50-60Hz\r\n-	Công suất 120VA', NULL, NULL, NULL, 20, NULL, NULL, '75000000', NULL, NULL, 'Cấu hình cơ bản\r\n·       Máy chính màn hình cảm ứng màu 10.4 inch : 01 chiếc\r\n·       Cáp điện tim : 01 chiếc\r\n·       Bao đo huyết áp người lớn dùng nhiều lần : 01 chiếc\r\n·       Bao đo huyết áp trẻ em dùng nhiều lần: 01 chiếc\r\n·       Cảm biến SpO2 ngón tay dùng nhiều lần : 01 chiếc\r\n·       Điện cực dán: 01 túi\r\n·       Cảm biến nhiệt độ qua da : 01 chiếc\r\n·       Dây nguồn: : 01 chiếc\r\n·       Pin đi kèm máy: : 01 chiếc\r\n·       Tài liệu HDSD tiếng Anh và tiếng Việt : 01 bộ', NULL, 'https://congkhaigiadmec.moh.gov.vn/chi-tiet-thiet-bi?name=M%C3%A1y%20theo%20d%C3%B5i%20b%E1%BB%87nh%20nh%C3%A2n%205%20th%C3%B4ng%20s%E1%BB%91&type=1&idD=7982', 20, NULL, NULL, 2, 0, NULL, NULL, '2021-03-13 19:17:13', '2021-03-13 21:10:34'),
(245, 'Máy thở rung tần số cao', 'Humming Vue Advance', '2021', '2021-03-13', 'may-tho-rung-tan-so-cao', 'N02-XXXXX3-13032021-XXX245', 'MTRTSC', 'devices', 'was_broken', 'C', 5, 'Metran Co .,Ltd', 'Nhật Bản', NULL, NULL, NULL, NULL, 28, 34, 14, 30, NULL, NULL, 'hạdhnasd', NULL, NULL, NULL, 20, NULL, NULL, '2520000000', NULL, NULL, 'ưerdhasgdhqwa', NULL, 'https://congkhaigiadmec.moh.gov.vn/chi-tiet-thiet-bi?name=M%C3%A1y%20th%E1%BB%9F%20rung%20t%E1%BA%A7n%20s%E1%BB%91%20cao&type=1&idD=8691', 20, NULL, NULL, 3, 0, NULL, NULL, '2021-03-13 19:33:58', '2021-03-23 13:28:09'),
(250, 'Hệ thống MRI', 'MRI', '2020', '2021-03-23', 'he-thong-mri', 'N01-XXXMRI-23032021-XXX250', 'MRI001', 'devices', 'active', 'C', 1, 'GE', 'Mỹ', NULL, NULL, NULL, 37, 27, 43, 16, 34, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-23', '20000000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 0, NULL, NULL, '2021-03-23 16:06:50', '2021-04-01 20:13:43'),
(251, '', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '250000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-03-23 20:43:56', '2021-03-23 20:43:56'),
(252, 'Máy Monitor theo dõi bệnh nhân', 'BSM-35626', '2005', NULL, 'may-monitor-theo-doi-benh-nhan-1', NULL, '21988', 'devices', 'active', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, '2019', NULL, NULL, '2006', '250000000', NULL, NULL, NULL, NULL, '43474', NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-03-23 20:45:02', '2021-04-01 19:10:00'),
(253, 'Máy siêu âm 3 đầu dò', 'prosound @6', '2005', NULL, 'may-sieu-am-3-dau-do-1', NULL, 'xxx001', 'devices', 'was_broken', NULL, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, NULL, NULL, NULL, NULL, NULL, '2018', NULL, NULL, '2006', '250000000', NULL, NULL, NULL, NULL, '42998', NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-03-23 20:47:20', '2021-03-23 20:47:20'),
(254, 'Máy siêu âm 3 đầu dò', 'prosound @6', '2005', NULL, 'may-sieu-am-3-dau-do-2', 'N01-XXXMXQ-24032021-XXX254', 'xxx001', 'devices', 'inactive', 'B', 6, 'GE', 'Mỹ', NULL, NULL, NULL, 37, 27, 32, 14, 33, NULL, NULL, NULL, NULL, NULL, '2018', NULL, NULL, '2021-03-24', '250000000', NULL, NULL, NULL, NULL, '42998', NULL, NULL, NULL, 12, 0, NULL, NULL, '2021-03-24 20:57:27', '2021-04-05 14:06:15'),
(257, 'Máy hút dịch áp lưc âm', 'Constomt-1400', '2005', NULL, 'may-hut-dich-ap-luc-am-1', NULL, '15100064', 'devices', 'active', NULL, 50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL, '2016', NULL, NULL, '2006', NULL, NULL, NULL, NULL, NULL, 'Bàn giao ngày 24/3/2016', NULL, NULL, NULL, 0, 235, NULL, NULL, '2021-03-25 12:23:25', '2021-04-01 19:06:46'),
(261, 'Máy sốc tim', 'TEC-5531K', '2005', NULL, 'may-soc-tim-1', NULL, '5057', 'devices', 'active', NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, '2010', NULL, NULL, '2006', NULL, NULL, NULL, NULL, NULL, 'bµn giao ngµy 12/10/2015, míi 100%', NULL, NULL, NULL, 0, 232, NULL, NULL, '2021-03-25 14:30:55', '2021-04-05 13:51:38'),
(270, 'Máy Monitor theo dõi bệnh nhân', 'BSM-35626', '2005', NULL, 'may-monitor-theo-doi-benh-nhan-2', 'N02-XXXXX3-01042021-XXX270', '21988', 'devices', 'active', NULL, 11, 'GE', 'Mỹ', NULL, NULL, NULL, 37, 28, 34, 14, 33, NULL, NULL, NULL, 100, NULL, '2019', 27, NULL, '2021-04-01', NULL, 26, '2021-12-31', NULL, 10, '43474', 28, NULL, NULL, 12, 238, NULL, NULL, '2021-03-30 15:05:47', '2021-04-01 19:41:30'),
(273, 'Fugit voluptas temp', 'Ipsam et adipisci di', '2015', '2020-03-01', 'fugit-voluptas-temp', 'N07-XXXXXX-02042021-XXX273', 'Voluptas quos aspern', 'devices', 'active', 'B', 3, 'Laborum aspernatur v', 'Consequatur mollitia', 86, 80, 76, 32, 34, NULL, 22, 30, NULL, '1970-03-20', 'Quos beatae magna eu', 8, 'Vel quasi dolorem ex', NULL, 32, NULL, '2021-12-05', '6', 30, '2000-12-20', 'Excepteur in expedit', 43, 'Sed commodo laudanti', NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-04-02 14:10:32', '2021-04-02 14:10:44'),
(276, 'test', '1212', '2020', '2021-04-02', 'test', 'N01-XXXMSA-02042021-XXX276', '1111', 'devices', 'inactive', 'A', 100, 'ENN', 'VN', NULL, NULL, NULL, 20, 27, 33, 14, 30, NULL, '2021-04-02', 'aaaa', 100, NULL, NULL, NULL, NULL, '2021-04-02', '100000', NULL, '2022-12-20', 'aaaa', 10, NULL, NULL, NULL, NULL, 1, 0, NULL, NULL, '2021-04-02 19:54:10', '2021-04-06 18:29:46'),
(277, 'Hệ thống SPECT/CT 2 đầu thu có chức năng định lượng', 'Symbia Intevo Bold', '2020', NULL, 'he-thong-spect-ct-2-dau-thu-co-chuc-nang-dinh-luong', 'N05-XSPECT-03042021-XXX277', 'EX41271203', 'devices', 'active', 'C', 1, 'Siemens Medical Solutions USA, Inc', 'Mỹ', NULL, 72, NULL, 27, 31, 47, 16, 41, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, '2021-04-03', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, 12, 0, NULL, NULL, '2021-04-03 14:49:55', '2021-04-03 14:50:34'),
(278, 'Máy sốc tim', 'TEC-5531K', '2005', NULL, 'may-soc-tim-2', 'X-XXXXXX-05042021-XXX278', '5057', 'devices', 'active', NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, NULL, NULL, NULL, NULL, NULL, '2010', NULL, NULL, '2006', NULL, NULL, NULL, NULL, NULL, 'bµn giao ngµy 12/10/2015, míi 100%', NULL, NULL, NULL, 0, 261, NULL, NULL, '2021-04-05 13:35:45', '2021-04-05 13:35:45'),
(279, 'Máy sốc tim', 'TEC-5531K', '2005', NULL, 'may-soc-tim-3', 'X-XXXXXX-05042021-XXX279', '5057', 'devices', 'active', NULL, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, NULL, NULL, NULL, NULL, NULL, '2010', NULL, NULL, '2006', NULL, NULL, NULL, NULL, NULL, 'bµn giao ngµy 12/10/2015, míi 100%', NULL, NULL, NULL, 0, 261, NULL, NULL, '2021-04-05 13:38:38', '2021-04-05 13:38:38'),
(280, 'Máy sốc tim', 'TEC-5531K', '2005', NULL, 'may-soc-tim-4', 'X-XXXXXX-05042021-XXX280', '5057', 'devices', 'active', NULL, 200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, '2010', NULL, NULL, '2006', NULL, NULL, NULL, NULL, NULL, 'bµn giao ngµy 12/10/2015, míi 100%', NULL, NULL, NULL, 0, 261, NULL, NULL, '2021-04-05 13:46:19', '2021-04-05 13:49:41'),
(283, 'Máy gia tốc tuyến tính (Medical electron Linear Accelerator)', 'Medical electron Linear Accelerator (XHA1400)', '2021', NULL, 'may-gia-toc-tuyen-tinh-medical-electron-linear-accelerator', 'N05-HTGTTT-05042021-XXX283', 'Medical electron Linear Accelerator (XHA1400)', 'devices', 'active', 'C', 15, 'Shinva Medical Instrument Co., Ltd', 'Trung Quốc', NULL, 72, NULL, 21, 31, 48, 16, 30, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, '2021-04-05', '64000000000', NULL, NULL, NULL, 5, NULL, NULL, NULL, NULL, 12, 0, NULL, NULL, '2021-04-06 00:39:55', '2021-04-06 00:45:44'),
(284, 'Hệ thống chụp PET/CT (3 Rings)', 'Discovery IQ', '2020', NULL, 'he-thong-chup-pet-ct-3-rings', 'N05-XSPECT-05042021-XXX284', 'DIQ-001', 'devices', 'active', 'C', 10, 'GE Medical Systems, LLC', 'Mỹ', NULL, 72, NULL, 21, 31, 47, 16, 41, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, '2021-04-05', '65000000000', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 6, 0, NULL, NULL, '2021-04-06 01:12:45', '2021-04-06 01:17:49'),
(285, 'Hệ thống xạ trị gia tốc tuyến tính nhiều mức năng lượng, ống chuẩn trực (MLC) 80 lá, Điều biến liều tia (IMRT) và các thiết bị hỗ trợ', 'Clinac CX', '2020', NULL, 'he-thong-xa-tri-gia-toc-tuyen-tinh-nhieu-muc-nang-luong-ong-chuan-truc-mlc-80-la-dieu-bien-lieu-tia-imrt-va-cac-thiet-bi-ho-tro', 'N05-HTGTTT-05042021-XXX285', 'CCX-001', 'devices', 'active', 'C', 1, 'Varian Medical Systems, Inc', 'Mỹ', NULL, 72, NULL, 21, 31, 48, 16, 30, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, '2021-04-05', '70000000000', NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 12, 0, NULL, NULL, '2021-04-06 01:28:13', '2021-04-06 01:29:47'),
(286, 'Hệ thống xạ trị gia tốc tuyến tính nhiều mức năng lượng, ống chuẩn trực (MLC) 80 lá và các thiết bị hỗ trợ', 'Clinac CX', '2020', NULL, 'he-thong-xa-tri-gia-toc-tuyen-tinh-nhieu-muc-nang-luong-ong-chuan-truc-mlc-80-la-va-cac-thiet-bi-ho-tro', 'X-XXXXXX-06042021-XXX286', 'CCX-002', 'devices', 'active', NULL, 45, 'Varian Medical Systems, Inc', 'Mỹ', NULL, 72, NULL, 21, NULL, NULL, 16, 41, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, '2021-04-06', '65000000000', NULL, NULL, NULL, 4, NULL, 44, NULL, NULL, 6, 0, NULL, NULL, '2021-04-06 01:49:00', '2021-04-06 06:42:00'),
(287, 'Máy gia tốc tuyến tính (Medical electron Linear Accelerator)', 'Medical electron Linear Accelerator (XHA1400)', '2020', NULL, 'may-gia-toc-tuyen-tinh-medical-electron-linear-accelerator-1', 'X-XXXXXX-06042021-XXX287', 'XHA1400-001', 'devices', 'active', NULL, 1, 'Shinva Medical Instrument Co., Ltd', 'Trung Quốc', NULL, NULL, NULL, 21, NULL, NULL, 16, 41, NULL, NULL, 'Thông tin chung về thiết bị\r\n\r\nThiết bị gia tốc tuyến tính electron y khoa là thiết bị y tế lớn được thiết kế cho xạ trị, dùng để chiếu xạ từ bên ngoài vào cơ thể người trong thực hành y khoa . Máy gia tốc tuyến tính electron y khoa XHA1400 là máy gia tốc sóng đứng được thiết kế dưới nguyên tắc điểm đồng tâm với khoảng cách điều trị thông thường là 100cm, trong điều kiện bình thường có thể tạo ra cả tia X và tia Electron với mức năng lượng tối đa lên tới 12MeV', 100, NULL, NULL, NULL, NULL, '2021-04-06', NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, 12, 0, NULL, NULL, '2021-04-06 06:53:43', '2021-04-06 06:55:52'),
(288, 'Velit nostrud eu id', 'Minima optio quis h', '2000', '2017-05-08', 'velit-nostrud-eu-id', 'N01-XXXMXQ-06042021-XXX288', 'Doloremque velit iur', 'devices', 'not_handed', 'D', 41, 'Exercitation laborum', 'Magna quidem occaeca', 70, 72, 82, 32, 27, 32, 21, 44, NULL, '2018-05-15', 'Rerum ad quae nisi e', 46, 'Aut magni sit sint e', NULL, 21, NULL, '1978-04-04', '2880000', 31, '1986-07-12', 'Excepturi quo amet', 35, 'Quasi ut ad rem eius', 24, NULL, NULL, 2, 0, NULL, NULL, '2021-04-06 12:09:38', '2021-04-06 12:09:38'),
(720, 'Hệ thống Máy chụp cộng hưởng từ (MRI) 1,5 Telsa', 'Signa HDxt', '2005', NULL, 'he-thong-may-chup-cong-huong-tu-mri-1-5-telsa-1', NULL, 'R8478', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, '1. Tính năng chung\n- Máy giúp thở chuyên dụng dùng cho cấp cứu, hồi sức tích cực và vận chuyển\n- Có chế độ thở không xâm lấn (NIV)\n- Sử dụng cho người lớn, trẻ em\n- Hoạt động với nguồn khí nén tuốc- bin tích hợp trong máy, có quạt làm mát dành riêng cho tuốc- bin\n- Có chương trình tự kiểm tra máy\n- Cho phép cài đặt mặc định các thông số thở\n- Có tính năng tự động bù khoảng chết\n- Có tính năng tự động bù áp lực: tự động bù áp lực khí quyển trên áp lực đo được hiện tại\n- Có thể dùng nguồn điện ngoài (điện áp thấp) 12V.DC hoặc pin NiMh 12V.DC (Pin hoạt động tối đa 4 giờ)\n- Có cảm biến lưu lượng và hiệu chuẩn tự động (Hiệu chuẩn được bắt đầu bởi người vận hành)\n- Bộ khí dung: Có thể điều chỉnh thông số bù lưu lượng khí dung lên tới 6L/phút ở chế độ thông khí cưỡng bức\n- Có khả năng nâng cấp tính năng theo dõi C)2 của bệnh nhân, tùy chọn công nghệ mainstream hoặc sidestream\n- Có tính năng dự phòng ngưng thở', 480000000, NULL, '2012', NULL, NULL, '2006', NULL, NULL, NULL, 'Máy chính với các phụ kiện tiêu chuẩn và vật tư tiêu hao kèm theo cho: 01 máy\n- Màn hình màu TFT, 10.4\", cảm ứng: 01 chiếc\n- Van thở ra và cảm biến lưu lượng, sử dụng nhiều lần, có thể hấp tiệt trùng: 01 bộ\n- Bộ dây thở sử dụng nhiều lần: 01 bộ\n- Mặt nạ thở sử dụng nhiều lần: 01 bộ\n- Bộ dây nguồn khí Oxy: 01 bộ\n- Phổi giả: 01 chiếc\n- Ắc quy trong: 01 chiếc\n- Tài liệu hướng dẫn sử dụng: 01 bộ', NULL, 'Dïng siªu ©m ®Ó chÈn ®o¸n ®iÒu trÞ bÖnh nh©n', NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-04-06 20:25:54', '2021-04-06 20:25:54'),
(721, 'Máy siêu âm 3 đầu dò', 'prosound @6', '2005', NULL, 'may-sieu-am-3-dau-do-3', NULL, 'xxx001', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, '2018', NULL, NULL, '2006', NULL, NULL, NULL, NULL, NULL, '42998', NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-04-06 20:25:54', '2021-04-06 20:25:54'),
(722, 'Máy siêu âm đen trắng', 'Prosound @6', '2005', NULL, 'may-sieu-am-den-trang-1', NULL, 'xxx002', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, '2007', NULL, NULL, '2006', NULL, NULL, NULL, NULL, NULL, 'Dïng siªu ©m ®Ó chÈn ®o¸n ®iÒu trÞ bÖnh nh©n', NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-04-06 20:25:54', '2021-04-06 20:25:54'),
(723, 'Máy siêu âm màu', 'Logic C5 Premium', '2005', NULL, 'may-sieu-am-mau-4', NULL, 'xxx003', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, '2014', NULL, NULL, '2006', NULL, NULL, NULL, NULL, NULL, 'Dïng siªu ©m ®Ó chÈn ®o¸n ®iÒu trÞ bÖnh nh©n', NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-04-06 20:25:54', '2021-04-06 20:25:54'),
(724, 'Máy siêu âm đen trắng', 'Logic C3 Premium', '2005', NULL, 'may-sieu-am-den-trang-2', NULL, '212385WX9', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, '2012', NULL, NULL, '2006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-04-06 20:25:54', '2021-04-06 20:25:54'),
(725, 'Máy siêu âm đen trắng', 'Logic C3 Premium', '2005', NULL, 'may-sieu-am-den-trang-3', NULL, '212386WX7', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, '2012', NULL, NULL, '2006', NULL, NULL, NULL, NULL, NULL, 'Dïng chôp phim X Quang vó ®Ó chÈn ®o¸n ®iÒu trÞ bÖnh nh©n', NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-04-06 20:25:54', '2021-04-06 20:25:54'),
(726, 'Máy siêu âm màu 3D-4D', 'Voluson 730 pro', '2005', NULL, 'may-sieu-am-mau-3d-4d-1', NULL, 'A45463', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, '2012', NULL, NULL, '2006', NULL, NULL, NULL, NULL, NULL, 'M¸y chôp c¾t líp dïng trong chÈn ®o¸n bÖnh', NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-04-06 20:25:54', '2021-04-06 20:25:54'),
(727, 'Máy in phim khô Laser', 'TrimaxTX50', '2005', NULL, 'may-in-phim-kho-laser-1', NULL, '10050192', NULL, 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, '2012', NULL, NULL, '2006', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-04-06 20:25:54', '2021-04-06 20:25:54'),
(728, 'Monitor theo dâi bÖnh nh©n', NULL, NULL, NULL, 'monitor-theo-dai-boenh-nhcn', NULL, 'BSM2301K', NULL, 'was_broken', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL, 'NhËt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, 0, 0, NULL, NULL, '2021-04-06 20:55:28', '2021-04-06 20:55:28'),
(729, 'Máy gia tốc tuyến tính (Medical electron Linear Accelerator)', 'Medical electron Linear Accelerator (XHA1400)', '2021', NULL, 'may-gia-toc-tuyen-tinh-medical-electron-linear-accelerator-2', 'N05-HTGTTT-07042021-XXX729', 'MELA-0001', 'devices', 'not_handed', 'C', 1, 'Shinva Medical Instrument Co., Ltd', 'Trung Quốc', NULL, NULL, NULL, 21, 31, 48, 16, NULL, NULL, NULL, NULL, 100, NULL, NULL, NULL, NULL, '2021-04-07', '50000000', NULL, NULL, NULL, 4, NULL, NULL, NULL, NULL, 6, 0, NULL, NULL, '2021-04-07 04:15:04', '2021-04-07 04:17:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `equipment_ballots`
--

CREATE TABLE `equipment_ballots` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ballot` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `provider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_vote` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `equi_array` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `equipment_ballots`
--

INSERT INTO `equipment_ballots` (`id`, `ballot`, `department_id`, `provider_id`, `user_id`, `date_vote`, `note`, `equi_array`, `status`, `created_at`, `updated_at`) VALUES
(48, '20210401162756', 44, 72, 32, '2004-03-01', 'Culpa dicta rerum d', NULL, 'public', '2021-04-01 20:27:56', '2021-04-02 12:41:01'),
(49, '20210401162945', 44, 85, 32, '2021-04-01', NULL, NULL, 'public', '2021-04-01 20:29:45', '2021-04-01 20:32:31'),
(50, '20210402084322', 39, 72, 32, '2021-04-02', NULL, NULL, 'public', '2021-04-02 12:43:22', '2021-04-02 16:39:56'),
(51, '20210404143451', 41, 84, 32, '1989-04-01', 'Minus numquam sapien', NULL, 'public', '2021-04-04 18:34:51', '2021-04-05 19:23:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `equipment_cates`
--

CREATE TABLE `equipment_cates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` bigint(20) UNSIGNED DEFAULT NULL,
  `author_id` bigint(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `equipment_cates`
--

INSERT INTO `equipment_cates` (`id`, `title`, `slug`, `code`, `image`, `author_id`, `created_at`, `updated_at`) VALUES
(27, 'N1 Thiết bị chẩn đoán hình ảnh', 'thiet-bi-chan-doan-hinh-anh', 'N01', NULL, NULL, '2021-01-09 09:29:43', '2021-02-18 12:14:22'),
(28, 'N2 Thiết bị hồi sức cấp cứu', '2-thiet-bi-hoi-suc-cap-cuu', 'N02', NULL, NULL, '2021-01-09 10:38:41', '2021-02-18 12:14:52'),
(29, 'N3 Thiết bị lọc máu', 'n3-thiet-bi-loc-mau', 'N03', NULL, NULL, '2021-01-09 10:39:22', '2021-02-18 12:15:04'),
(30, 'N4 Thiết bị phòng mổ', 'n4-thiet-bi-phong-mo', 'N04', NULL, NULL, '2021-01-09 10:39:38', '2021-02-18 12:15:18'),
(31, 'N5 Thiết bị chuyên khoa ung bướu và y học hạt nhân', 'n5-thiet-bi-phong-x-quang', 'N05', NULL, NULL, '2021-01-26 15:02:43', '2021-03-04 19:00:52'),
(33, 'N6 Thiết bi chuyên khoa RHM-THM-Mắt', 'thiet-bi-chuyen-khoa-rhm-thm-mat', 'N06', NULL, 27, '2021-03-11 22:44:09', '2021-03-11 22:44:23'),
(34, 'N7 Thiết bị chuyên khoa xét nghiệm', 'n7-thiet-bi-chuyen-khoa-xet-nghiem', 'N07', NULL, 27, '2021-03-11 22:44:49', '2021-03-11 22:44:49'),
(35, 'N8 Thiết bị kiểm soát nhiễm khuẩn', 'n8-thiet-bi-kiem-soat-nhiem-khuan', 'N08', NULL, 27, '2021-03-11 22:45:08', '2021-03-11 22:45:08'),
(36, 'N9 Thiết bị chuyên khoa sản nhi', 'n9-thiet-bi-chuyen-khoa-san-nhi', 'N09', NULL, 27, '2021-03-11 22:45:26', '2021-03-11 22:45:26'),
(37, 'N10 Thiết bị thăm dò chức năng', 'n10-thiet-bi-tham-do-chuc-nang', 'N10', NULL, 27, '2021-03-11 22:45:45', '2021-03-11 22:45:45'),
(38, 'N11 Thiết bị nội soi chuẩn đoán', 'n11-thiet-bi-noi-soi-chuan-doan', 'N11', NULL, 27, '2021-03-11 22:46:00', '2021-03-11 22:46:00'),
(39, 'N12 Thiết bị hồi phục chức năng- Vật lý trị liệu', 'n12', 'N12', NULL, 27, '2021-03-11 22:46:10', '2021-03-11 22:47:17'),
(40, 'N13 Thiết bị dùng chung', 'n13-thiet-bi-dung-chung', 'N13', NULL, 27, '2021-03-11 22:46:24', '2021-03-11 22:46:24'),
(41, 'N14 Thiết bị khám- điều trị khác', 'n14-thiet-bi-kham-dieu-tri-khac', 'N14', NULL, 27, '2021-03-11 22:46:46', '2021-03-11 22:46:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `equipment_supplies`
--

CREATE TABLE `equipment_supplies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `model` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_manufacture` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warehouse` date DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `risk` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `manufacturer` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `origin` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `maintenance_id` bigint(20) UNSIGNED DEFAULT NULL,
  `provider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `repair_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` bigint(20) UNSIGNED DEFAULT NULL,
  `first_inspection` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specificat` text COLLATE utf8_unicode_ci,
  `first_value` float DEFAULT NULL,
  `process` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `year_use` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `officer_charge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `officer_department_charge_id` bigint(20) UNSIGNED DEFAULT NULL,
  `first_information` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `import_price` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bid_project` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warranty_date` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `configurat` text COLLATE utf8_unicode_ci,
  `depreciat` float DEFAULT NULL,
  `note` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `votes` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiry` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `used` float DEFAULT NULL,
  `supplie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `eqdevice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_delivery` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `equipment_supplies`
--

INSERT INTO `equipment_supplies` (`id`, `title`, `model`, `year_manufacture`, `warehouse`, `slug`, `code`, `serial`, `status`, `risk`, `amount`, `manufacturer`, `origin`, `maintenance_id`, `provider_id`, `repair_id`, `user_id`, `unit_id`, `department_id`, `image`, `first_inspection`, `specificat`, `first_value`, `process`, `year_use`, `officer_charge_id`, `officer_department_charge_id`, `first_information`, `import_price`, `bid_project`, `warranty_date`, `configurat`, `depreciat`, `note`, `votes`, `expiry`, `used`, `supplie_id`, `eqdevice_id`, `date_delivery`, `created_at`, `updated_at`) VALUES
(215, 'Quia ea non in ipsam', 'Laborum eveniet cor', NULL, '2021-03-11', 'quia-ea-non-in-ipsam', NULL, 'Voluptatem Enim dol', NULL, NULL, 16, 'Eius sint ex cupidit', 'Aute sit aspernatur', NULL, 79, NULL, 33, 23, NULL, NULL, NULL, 'Ipsam dicta eos in c', NULL, 'Voluptatibus dolor c', NULL, NULL, NULL, '1988-12-27', '299', 'Quia ab recusandae', NULL, 'Qui itaque accusamus', NULL, 'Voluptas sit corpori', 'Rerum maxime volupta', '2017-02-07', NULL, 5, NULL, NULL, '2021-03-19 20:56:16', '2021-03-19 20:56:16'),
(217, 'In duis sit est odit', 'Soluta non itaque qu', NULL, '1998-12-24', 'in-duis-sit-est-odit', NULL, 'Commodo dolorem ex v', NULL, NULL, 6, 'Veniam qui ab quia', 'Eiusmod voluptas mol', NULL, 79, NULL, 33, 21, NULL, NULL, NULL, 'Omnis asperiores in', NULL, 'Error ea ut voluptas', NULL, NULL, NULL, '1990-01-05', '1000', 'Et minus cillum iust', NULL, 'Fugiat in incidunt', NULL, 'Eius esse voluptatu', 'Et nesciunt in dolo', '1988-05-18', NULL, 6, NULL, NULL, '2021-03-19 20:56:24', '2021-03-19 20:56:24'),
(218, 'Đầu camera nội soi', 'Soprocomeg', '2020', '2021-03-22', 'dau-camera-noi-soi', NULL, 'S165-0686', NULL, NULL, 1, 'Soprocomeg', 'Pháp', NULL, 72, NULL, 37, 14, NULL, NULL, NULL, NULL, NULL, NULL, '2021', NULL, NULL, '2021-03-22', '10000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, '2021-03-22', '2021-03-22 22:21:18', '2021-03-22 22:21:18'),
(219, 'Đầu ống chữ C', NULL, NULL, NULL, 'dau-ong-chu-c', NULL, NULL, NULL, NULL, 1, 'Soprocomeg', 'Pháp', NULL, 72, NULL, 37, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '10000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2021-03-22 22:21:51', '2021-03-22 22:21:51'),
(220, 'Consequuntur optio', 'In nostrum magnam nu', NULL, '1990-09-24', 'consequuntur-optio', NULL, 'Tempor mollit sunt N', NULL, NULL, 99, 'Quidem earum quis in', 'Fuga Facere archite', NULL, 84, NULL, 33, 15, NULL, NULL, NULL, 'A corporis voluptati', NULL, 'Qui iure deleniti es', NULL, NULL, NULL, '2004-09-02', '646', 'Minim labore volupta', NULL, 'Expedita quod culpa', NULL, 'Aut inventore ipsa', 'Adipisci aspernatur', '1970-11-04', NULL, 5, NULL, '1976-04-24', '2021-03-23 13:44:52', '2021-03-23 13:44:52'),
(221, 'Omnis consectetur a', 'At aliqua Voluptas', NULL, '2002-12-02', 'omnis-consectetur-a', NULL, 'Blanditiis rerum dol', NULL, NULL, 100, 'Magna eaque officia', 'Perspiciatis labori', NULL, 84, NULL, 33, 21, NULL, NULL, NULL, 'Ullamco sed quidem i', NULL, 'Blanditiis accusamus', NULL, NULL, NULL, '1973-09-21', '667', 'Provident ratione n', NULL, 'Voluptatem ullam omn', NULL, 'Accusamus similique', 'Elit qui voluptate', '1984-09-23', NULL, 4, NULL, '2008-03-22', '2021-03-23 13:48:35', '2021-03-23 13:48:35'),
(222, 'Máy chính', 'Soprocomeg', '2020', NULL, 'may-chinh', NULL, 'S165-0686', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 37, 14, NULL, NULL, NULL, NULL, NULL, NULL, '2021', NULL, NULL, NULL, '150000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, '2021-03-23 16:01:14', '2021-03-23 16:01:14'),
(223, 'Giường bệnh nhân', 'GBN', NULL, NULL, 'giuong-benh-nhan', NULL, 'GBN003', NULL, NULL, 3, 'GE', 'Mỹ', NULL, NULL, NULL, 37, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '100000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-03-23 16:07:58', '2021-03-30 22:07:31'),
(224, 'Incidunt iure facil', 'Omnis nulla eiusmod', NULL, '1992-05-28', 'incidunt-iure-facil', NULL, 'Doloribus molestias', NULL, NULL, 77, 'Iusto odit eu dolor', 'Quaerat libero amet', NULL, 80, NULL, 33, 13, NULL, NULL, NULL, 'Molestias adipisicin', NULL, 'Culpa quod voluptati', NULL, NULL, NULL, '1995-07-23', '482', 'Maxime et sit enim c', NULL, 'Aspernatur doloribus', NULL, 'Et et sed eius omnis', 'Consequat Architect', '1991-12-06', NULL, 5, NULL, '1988-06-08', '2021-03-23 19:11:00', '2021-03-23 19:11:00'),
(225, 'Dignissimos ratione', 'Eos necessitatibus c', NULL, '1993-06-18', 'dignissimos-ratione', NULL, 'Excepteur perferendi', NULL, NULL, 94, 'Consequatur irure a', 'Autem aute cum enim', NULL, 85, NULL, 33, 15, NULL, NULL, NULL, 'Culpa mollit ipsam d', NULL, 'Sit aute voluptates', NULL, NULL, NULL, '2007-06-21', '474', 'Recusandae Earum et', NULL, 'Ut aut et dolorem im', NULL, 'Nemo culpa ea magna', 'Voluptatum assumenda', '1978-05-12', NULL, 9, NULL, '1983-05-23', '2021-03-23 19:40:29', '2021-03-23 19:40:29'),
(226, 'Dolores velit asper', 'Sunt commodi volupta', NULL, '1982-10-03', 'dolores-velit-asper', NULL, 'Voluptate vel except', NULL, NULL, 26, 'Nihil voluptatem et', 'Numquam nulla quibus', NULL, 80, NULL, 33, 22, NULL, NULL, NULL, 'Quasi vitae beatae s', NULL, 'Aut omnis suscipit o', NULL, NULL, NULL, '1992-02-09', '270', 'Enim aperiam ut vel', NULL, 'Sit et exercitatione', NULL, 'Quis quod libero inc', 'Esse magni tenetur', '1997-02-10', NULL, 5, NULL, '1990-04-24', '2021-03-24 13:44:12', '2021-03-24 13:44:12'),
(227, 'Cillum maxime enim e', 'Incidunt dolore pro', NULL, '2004-05-05', 'cillum-maxime-enim-e', NULL, 'Sed et laboriosam a', NULL, NULL, 103, 'Labore nisi nobis ve', 'Accusamus aut odit r', NULL, 85, NULL, 33, 22, NULL, NULL, NULL, 'Consequatur tenetur', NULL, 'Consequuntur vero as', NULL, NULL, NULL, '2007-11-11', '422', 'Similique voluptates', NULL, 'Ut est non laboris', NULL, 'Asperiores alias nis', 'Voluptatem quia non', '2011-01-27', NULL, 4, NULL, '1970-08-02', '2021-03-25 13:12:45', '2021-03-30 13:24:31'),
(228, 'Et quasi unde et nes', 'Eos voluptas ut quo', NULL, '2010-03-11', 'et-quasi-unde-et-nes', NULL, 'Sunt voluptas anim d', NULL, NULL, 75, 'Consectetur modi aut', 'Ea similique eius co', NULL, 72, NULL, 33, 23, NULL, NULL, NULL, 'Sit cupiditate simil', NULL, 'Earum porro pariatur', NULL, NULL, NULL, '2021-09-21', '242', 'Optio ut reiciendis', NULL, 'Quia vero autem accu', NULL, 'Et eiusmod aute nost', 'Non sequi qui ad odi', '1980-12-22', NULL, 5, NULL, '1988-05-22', '2021-03-25 13:12:57', '2021-03-25 13:12:57'),
(229, 'Ea ut est odit sunt', 'Excepturi magna occa', NULL, '1987-01-05', 'ea-ut-est-odit-sunt', NULL, 'Voluptatem Nobis ne', NULL, NULL, 82, 'Exercitation adipisi', 'Minus eos at recusa', NULL, 72, NULL, 33, 15, NULL, NULL, NULL, 'Aliquam itaque ipsam', NULL, 'Delectus a aut dist', NULL, NULL, NULL, '1994-02-27', '830252', 'Laborum Eius enim l', NULL, 'Ut totam ullamco dol', NULL, 'Aut ex maxime qui ci', 'Quo quae ut et molli', '2015-09-11', NULL, 9, NULL, '1995-07-02', '2021-03-25 13:13:55', '2021-03-25 13:13:55'),
(230, 'Ut ad commodi eos r', 'Est ex expedita qui', NULL, '2009-06-28', 'ut-ad-commodi-eos-r', NULL, 'Ut qui duis quis off', NULL, NULL, 55, 'Nulla nostrud veniam', 'Modi dolorem volupta', NULL, 84, NULL, 33, 13, NULL, NULL, NULL, 'Pariatur Enim non q', NULL, 'Ut aut maiores conse', NULL, NULL, NULL, '2013-06-27', '235', 'Minim sit exercitati', NULL, 'Vel qui voluptatibus', NULL, 'Et occaecat maxime e', 'Ipsa sint id consec', '2004-05-14', NULL, 4, NULL, '1997-09-27', '2021-03-25 18:17:18', '2021-03-25 18:17:18'),
(231, 'Ipsa enim in totam', 'Voluptatibus explica', NULL, '2000-11-09', 'ipsa-enim-in-totam', NULL, 'Omnis qui explicabo', NULL, NULL, 124, 'Consectetur reprehe', 'Quis doloremque sunt', NULL, 72, NULL, 33, 21, NULL, NULL, NULL, 'Quia eiusmod cillum', NULL, 'Eveniet reprehender', NULL, NULL, NULL, '1988-04-21', '277', 'Itaque aut est reici', NULL, 'Labore sed omnis ex', NULL, 'Quo omnis qui repell', 'Sed sapiente dolore', '1980-06-24', NULL, 5, NULL, '2001-09-01', '2021-03-25 18:17:32', '2021-03-30 13:24:39'),
(233, 'Omnis dolor fugiat e', 'Magni magnam ex sunt', NULL, '2006-12-15', 'omnis-dolor-fugiat-e', NULL, 'Eaque sint alias en', NULL, NULL, 187, 'Dolore in molestiae', 'In cum recusandae D', NULL, 85, NULL, 32, 22, NULL, NULL, NULL, 'Consequatur tempori', NULL, 'Reprehenderit in vi', NULL, NULL, NULL, '1983-08-27', '31', 'Anim aut maxime ulla', NULL, 'Facere Nam ipsam del', NULL, 'Culpa nisi delectus', 'Dolor expedita sapie', '2010-09-13', NULL, 5, NULL, '2014-05-23', '2021-03-30 13:00:06', '2021-03-30 13:24:46'),
(254, 'Tủ điều khiển nguồn phát tia', NULL, NULL, NULL, 'tu-dieu-khien-nguon-phat-tia', NULL, 'LM525', NULL, NULL, 1, 'Shimadzu', 'Nhật Bản', NULL, NULL, NULL, 37, 15, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-31', '15000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, NULL, NULL, '2021-03-31 06:31:19', '2021-03-31 06:31:19'),
(255, 'Giá đỡ bóng loại treo trần', 'CH-200M', NULL, NULL, 'gia-do-bong-loai-treo-tran', NULL, 'L117009', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 37, 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-31', '10000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, NULL, NULL, '2021-03-31 06:35:07', '2021-03-31 06:35:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `equipment_user_training`
--

CREATE TABLE `equipment_user_training` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `equipment_id` int(20) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `equipment_user_training`
--

INSERT INTO `equipment_user_training` (`id`, `equipment_id`, `user_id`) VALUES
(542, 13, 22),
(543, 13, 23),
(544, 13, 24),
(545, 13, 28),
(546, 13, 30),
(547, 13, 32),
(548, 13, 33),
(549, 13, 34),
(550, 13, 36),
(551, 13, 38),
(552, 14, 23),
(553, 14, 26),
(554, 14, 32),
(555, 15, 21),
(556, 15, 30),
(557, 15, 36),
(558, 16, 25),
(559, 17, 21),
(560, 17, 26),
(561, 17, 27),
(562, 17, 28),
(563, 17, 31),
(564, 17, 32),
(565, 17, 33),
(566, 17, 34),
(567, 17, 38),
(568, 18, 26),
(569, 18, 34),
(570, 18, 36),
(571, 18, 37),
(572, 119, 23),
(573, 119, 24),
(574, 19, 21),
(575, 19, 22),
(576, 19, 23),
(577, 19, 24),
(578, 19, 25),
(579, 19, 26),
(580, 19, 28),
(581, 19, 30),
(582, 19, 32),
(583, 19, 34),
(584, 19, 37),
(585, 19, 38),
(586, 20, 21),
(587, 20, 23),
(588, 20, 24),
(589, 20, 25),
(590, 20, 26),
(591, 20, 27),
(592, 20, 30),
(593, 20, 31),
(594, 20, 32),
(595, 20, 36),
(596, 20, 37),
(597, 20, 38),
(598, 21, 23),
(599, 21, 25),
(600, 21, 28),
(601, 21, 34),
(602, 21, 36),
(603, 21, 38),
(604, 22, 21),
(605, 22, 22),
(606, 22, 23),
(607, 22, 24),
(608, 22, 25),
(609, 22, 26),
(610, 22, 27),
(611, 22, 28),
(612, 22, 30),
(613, 22, 36),
(614, 23, 22),
(615, 23, 23),
(616, 23, 27),
(617, 23, 31),
(618, 23, 34),
(619, 23, 36),
(620, 24, 25),
(621, 24, 27),
(622, 24, 28),
(623, 24, 30),
(624, 24, 32),
(625, 24, 33),
(626, 24, 36),
(627, 24, 38),
(628, 25, 25),
(629, 25, 27),
(630, 25, 34),
(631, 26, 22),
(632, 26, 25),
(633, 26, 27),
(634, 26, 32),
(635, 26, 34),
(636, 26, 36),
(637, 26, 38),
(638, 27, 24),
(639, 27, 26),
(640, 27, 27),
(641, 27, 31),
(642, 27, 36),
(643, 28, 21),
(644, 28, 23),
(645, 28, 27),
(646, 28, 31),
(647, 28, 32),
(648, 28, 33),
(649, 28, 36),
(650, 28, 37),
(651, 28, 38),
(652, 29, 22),
(653, 29, 23),
(654, 29, 25),
(655, 29, 28),
(656, 29, 30),
(657, 29, 31),
(658, 29, 32),
(659, 29, 36),
(660, 29, 37),
(661, 29, 38),
(662, 30, 21),
(663, 30, 22),
(664, 30, 23),
(665, 30, 26),
(666, 30, 30),
(667, 30, 31),
(668, 30, 32),
(669, 30, 34),
(670, 30, 36),
(671, 30, 37),
(672, 30, 38),
(673, 31, 21),
(674, 31, 25),
(675, 31, 31),
(676, 31, 34),
(677, 32, 25),
(678, 32, 28),
(679, 32, 38),
(680, 33, 33),
(681, 33, 34),
(682, 33, 36),
(683, 33, 38),
(684, 34, 21),
(685, 34, 24),
(686, 34, 26),
(687, 34, 30),
(688, 34, 31),
(689, 34, 32),
(690, 34, 36),
(691, 34, 38),
(692, 35, 23),
(693, 35, 27),
(694, 35, 36),
(695, 36, 22),
(696, 36, 23),
(697, 36, 25),
(698, 36, 27),
(699, 36, 28),
(700, 36, 30),
(701, 36, 31),
(702, 36, 33),
(703, 36, 36),
(704, 36, 38),
(705, 37, 24),
(706, 137, 21),
(707, 137, 23),
(708, 137, 24),
(709, 137, 26),
(710, 137, 32),
(711, 137, 33),
(712, 137, 34),
(713, 38, 21),
(714, 38, 22),
(715, 38, 24),
(716, 38, 25),
(717, 38, 27),
(718, 38, 28),
(719, 38, 30),
(720, 38, 31),
(721, 38, 32),
(722, 38, 33),
(723, 38, 38),
(724, 39, 22),
(725, 39, 26),
(726, 39, 27),
(727, 41, 23),
(728, 41, 33),
(729, 41, 34),
(730, 138, 23),
(731, 138, 26),
(732, 138, 31),
(733, 138, 32),
(734, 139, 23),
(735, 139, 24),
(736, 139, 27),
(737, 139, 28),
(738, 139, 30),
(739, 139, 31),
(740, 139, 32),
(741, 139, 36),
(742, 139, 37),
(743, 42, 27),
(744, 42, 38),
(745, 43, 24),
(746, 43, 27),
(747, 43, 33),
(748, 43, 38),
(749, 43, 39),
(750, 44, 31),
(751, 44, 37),
(752, 45, 23),
(753, 45, 24),
(754, 45, 25),
(755, 45, 27),
(756, 45, 28),
(757, 45, 31),
(758, 45, 32),
(759, 45, 34),
(760, 45, 36),
(761, 45, 37),
(762, 45, 38),
(763, 46, 21),
(764, 46, 22),
(765, 46, 23),
(766, 46, 25),
(767, 46, 28),
(768, 46, 30),
(769, 46, 32),
(770, 46, 33),
(771, 46, 34),
(772, 46, 36),
(773, 46, 37),
(774, 47, 21),
(775, 47, 23),
(776, 47, 30),
(777, 47, 32),
(778, 47, 34),
(779, 47, 36),
(780, 47, 38),
(781, 158, 22),
(782, 158, 24),
(783, 158, 25),
(784, 158, 26),
(785, 158, 27),
(786, 158, 28),
(787, 158, 30),
(788, 158, 32),
(789, 158, 36),
(790, 158, 38),
(791, 48, 22),
(792, 48, 25),
(793, 48, 26),
(794, 48, 27),
(795, 48, 28),
(796, 48, 31),
(797, 48, 32),
(798, 48, 33),
(799, 48, 34),
(800, 48, 36),
(801, 48, 37),
(802, 48, 38),
(803, 159, 24),
(804, 159, 25),
(805, 159, 27),
(806, 159, 30),
(807, 159, 34),
(808, 159, 37),
(809, 160, 20),
(810, 160, 21),
(811, 160, 31),
(812, 49, 23),
(813, 49, 24),
(814, 179, 23),
(815, 179, 33),
(816, 179, 34),
(817, 180, 20),
(818, 180, 21),
(819, 180, 31),
(820, 180, 41),
(821, 50, 22),
(822, 50, 24),
(823, 50, 25),
(824, 50, 27),
(825, 50, 28),
(826, 50, 31),
(827, 50, 32),
(828, 50, 36),
(829, 50, 38),
(830, 50, 41),
(831, 187, 24),
(832, 187, 28),
(833, 187, 36),
(834, 187, 37),
(835, 187, 38),
(836, 190, 24),
(837, 190, 28),
(838, 190, 36),
(839, 190, 37),
(840, 190, 38),
(841, 192, 20),
(842, 192, 21),
(843, 192, 31),
(844, 192, 41),
(845, 193, 20),
(846, 193, 21),
(847, 193, 31),
(848, 193, 41),
(849, 195, 24),
(850, 195, 28),
(851, 195, 36),
(852, 195, 37),
(853, 195, 38),
(854, 196, 25),
(855, 196, 30),
(856, 196, 32),
(857, 212, 23),
(858, 212, 33),
(859, 212, 34),
(860, 215, 20),
(861, 215, 21),
(862, 215, 31),
(863, 215, 41),
(864, 216, 24),
(865, 216, 28),
(866, 216, 36),
(867, 216, 37),
(868, 219, 20),
(869, 219, 21),
(870, 219, 31),
(871, 219, 41),
(872, 220, 20),
(873, 220, 21),
(874, 220, 31),
(875, 220, 41),
(876, 240, 24),
(882, 243, 20),
(883, 243, 21),
(884, 243, 31),
(885, 243, 41),
(886, 244, 20),
(887, 244, 21),
(888, 244, 31),
(889, 244, 41),
(890, 245, 20),
(891, 245, 21),
(892, 245, 31),
(893, 245, 41),
(894, 246, 23),
(895, 246, 33),
(896, 246, 34),
(897, 246, 38),
(898, 247, 22),
(899, 247, 26),
(900, 247, 27),
(901, 247, 39),
(907, 240, 23),
(908, 241, 24),
(909, 241, 36),
(910, 248, 23),
(911, 248, 24),
(912, 248, 36),
(913, 256, 22),
(914, 256, 26),
(915, 256, 27),
(916, 256, 33),
(917, 256, 37),
(918, 265, 20),
(919, 269, 20),
(920, 269, 21),
(921, 269, 41),
(922, 269, 42),
(923, 269, 44),
(924, 271, 23),
(925, 271, 24),
(926, 273, 21),
(927, 273, 22),
(928, 273, 27),
(929, 273, 33),
(930, 273, 37),
(931, 273, 43),
(932, 281, 44),
(933, 281, 45),
(934, 282, 20),
(935, 282, 41),
(936, 282, 42),
(937, 286, 44),
(938, 286, 45),
(939, 288, 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `equipment_user_use`
--

CREATE TABLE `equipment_user_use` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `equipment_id` int(20) DEFAULT NULL,
  `user_id` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `equipment_user_use`
--

INSERT INTO `equipment_user_use` (`id`, `equipment_id`, `user_id`) VALUES
(614, 13, 24),
(615, 13, 25),
(616, 13, 32),
(617, 13, 34),
(618, 13, 37),
(619, 14, 24),
(620, 14, 26),
(621, 14, 27),
(622, 14, 31),
(623, 14, 34),
(624, 14, 36),
(625, 14, 37),
(626, 15, 34),
(627, 16, 22),
(628, 16, 24),
(629, 16, 25),
(630, 16, 28),
(631, 16, 30),
(632, 16, 31),
(633, 16, 33),
(634, 16, 34),
(635, 16, 36),
(636, 16, 38),
(637, 17, 21),
(638, 17, 24),
(639, 17, 25),
(640, 17, 27),
(641, 17, 31),
(642, 17, 32),
(643, 17, 34),
(644, 17, 36),
(645, 18, 21),
(646, 18, 23),
(647, 18, 24),
(648, 18, 27),
(649, 18, 30),
(650, 18, 31),
(651, 18, 34),
(652, 119, 23),
(653, 119, 24),
(654, 19, 22),
(655, 20, 23),
(656, 20, 24),
(657, 20, 26),
(658, 20, 30),
(659, 20, 31),
(660, 20, 38),
(661, 21, 24),
(662, 21, 27),
(663, 21, 28),
(664, 21, 34),
(665, 21, 36),
(666, 22, 21),
(667, 22, 22),
(668, 22, 24),
(669, 23, 21),
(670, 23, 26),
(671, 23, 30),
(672, 23, 34),
(673, 23, 36),
(674, 24, 21),
(675, 24, 23),
(676, 24, 25),
(677, 24, 27),
(678, 24, 28),
(679, 24, 31),
(680, 24, 32),
(681, 24, 33),
(682, 24, 36),
(683, 25, 21),
(684, 25, 22),
(685, 25, 25),
(686, 25, 26),
(687, 25, 28),
(688, 25, 30),
(689, 25, 31),
(690, 25, 33),
(691, 25, 34),
(692, 25, 36),
(693, 25, 37),
(694, 26, 21),
(695, 26, 32),
(696, 26, 37),
(697, 27, 21),
(698, 27, 22),
(699, 27, 28),
(700, 27, 34),
(701, 27, 37),
(702, 28, 21),
(703, 28, 22),
(704, 28, 23),
(705, 28, 24),
(706, 28, 26),
(707, 28, 27),
(708, 28, 28),
(709, 28, 30),
(710, 28, 33),
(711, 28, 38),
(712, 29, 22),
(713, 29, 28),
(714, 29, 30),
(715, 29, 31),
(716, 29, 32),
(717, 29, 33),
(718, 29, 34),
(719, 29, 38),
(720, 30, 24),
(721, 30, 25),
(722, 30, 27),
(723, 30, 28),
(724, 30, 33),
(725, 30, 36),
(726, 30, 38),
(727, 31, 21),
(728, 31, 22),
(729, 31, 23),
(730, 31, 26),
(731, 31, 27),
(732, 31, 28),
(733, 31, 30),
(734, 31, 32),
(735, 31, 33),
(736, 31, 37),
(737, 31, 38),
(738, 32, 22),
(739, 32, 23),
(740, 32, 27),
(741, 32, 28),
(742, 32, 31),
(743, 32, 33),
(744, 32, 38),
(745, 33, 22),
(746, 33, 23),
(747, 33, 28),
(748, 33, 30),
(749, 33, 31),
(750, 33, 32),
(751, 33, 37),
(752, 33, 38),
(753, 34, 21),
(754, 35, 21),
(755, 35, 22),
(756, 35, 23),
(757, 35, 24),
(758, 35, 27),
(759, 35, 32),
(760, 35, 33),
(761, 35, 34),
(762, 35, 36),
(763, 35, 37),
(764, 35, 38),
(765, 36, 37),
(766, 37, 23),
(767, 137, 22),
(768, 137, 26),
(769, 137, 31),
(770, 137, 32),
(771, 38, 28),
(772, 38, 30),
(773, 38, 36),
(774, 39, 22),
(775, 39, 26),
(776, 39, 27),
(777, 41, 23),
(778, 41, 33),
(779, 41, 34),
(780, 138, 21),
(781, 138, 22),
(782, 138, 24),
(783, 138, 25),
(784, 138, 32),
(785, 138, 33),
(786, 138, 36),
(787, 138, 37),
(788, 138, 38),
(789, 139, 33),
(790, 139, 36),
(791, 42, 21),
(792, 42, 22),
(793, 42, 23),
(794, 42, 24),
(795, 42, 26),
(796, 42, 30),
(797, 42, 31),
(798, 42, 32),
(799, 42, 33),
(800, 42, 38),
(801, 43, 25),
(802, 43, 26),
(803, 43, 37),
(804, 44, 22),
(805, 44, 23),
(806, 44, 25),
(807, 44, 27),
(808, 44, 28),
(809, 44, 30),
(810, 44, 33),
(811, 44, 34),
(812, 44, 36),
(813, 44, 37),
(814, 44, 38),
(815, 44, 39),
(816, 45, 21),
(817, 45, 22),
(818, 45, 23),
(819, 45, 27),
(820, 45, 28),
(821, 45, 31),
(822, 45, 33),
(823, 45, 37),
(824, 45, 38),
(825, 45, 39),
(826, 46, 21),
(827, 46, 22),
(828, 46, 24),
(829, 46, 25),
(830, 46, 27),
(831, 46, 28),
(832, 46, 31),
(833, 46, 32),
(834, 46, 34),
(835, 46, 36),
(836, 46, 39),
(837, 47, 22),
(838, 47, 24),
(839, 47, 25),
(840, 47, 30),
(841, 47, 31),
(842, 47, 32),
(843, 47, 37),
(844, 47, 38),
(845, 47, 39),
(846, 158, 21),
(847, 158, 23),
(848, 158, 26),
(849, 158, 32),
(850, 158, 33),
(851, 158, 34),
(852, 158, 36),
(853, 158, 37),
(854, 158, 38),
(855, 48, 23),
(856, 48, 26),
(857, 48, 34),
(858, 48, 37),
(859, 159, 24),
(860, 159, 25),
(861, 159, 26),
(862, 159, 28),
(863, 159, 30),
(864, 159, 31),
(865, 159, 33),
(866, 159, 37),
(867, 160, 20),
(868, 160, 21),
(869, 160, 31),
(870, 49, 20),
(871, 179, 23),
(872, 179, 33),
(873, 179, 34),
(874, 180, 20),
(875, 180, 21),
(876, 180, 31),
(877, 180, 41),
(878, 50, 23),
(879, 50, 24),
(880, 50, 34),
(881, 50, 38),
(882, 187, 24),
(883, 187, 28),
(884, 187, 36),
(885, 187, 37),
(886, 187, 38),
(887, 190, 24),
(888, 190, 28),
(889, 190, 36),
(890, 190, 37),
(891, 190, 38),
(892, 192, 20),
(893, 192, 21),
(894, 192, 31),
(895, 192, 41),
(896, 193, 20),
(897, 193, 21),
(898, 193, 31),
(899, 193, 41),
(900, 195, 24),
(901, 195, 28),
(902, 195, 36),
(903, 195, 37),
(904, 195, 38),
(905, 196, 25),
(906, 196, 30),
(907, 196, 32),
(908, 212, 23),
(909, 212, 33),
(910, 212, 34),
(911, 215, 20),
(912, 215, 21),
(913, 215, 31),
(914, 215, 41),
(915, 216, 24),
(916, 216, 36),
(917, 216, 37),
(918, 219, 20),
(919, 219, 21),
(920, 219, 31),
(921, 219, 41),
(922, 220, 20),
(923, 220, 21),
(924, 220, 31),
(925, 220, 41),
(926, 240, 24),
(931, 243, 20),
(932, 243, 21),
(933, 243, 31),
(934, 243, 41),
(935, 244, 20),
(936, 244, 21),
(937, 244, 31),
(938, 244, 41),
(939, 245, 20),
(940, 245, 21),
(941, 245, 31),
(942, 245, 41),
(943, 246, 23),
(944, 246, 33),
(945, 246, 34),
(946, 246, 38),
(947, 247, 22),
(948, 247, 26),
(949, 247, 27),
(950, 247, 39),
(956, 241, 24),
(957, 241, 36),
(958, 248, 23),
(959, 248, 24),
(960, 248, 40),
(961, 256, 22),
(962, 256, 26),
(963, 256, 27),
(964, 256, 33),
(965, 256, 37),
(966, 265, 20),
(967, 269, 20),
(968, 269, 21),
(969, 269, 41),
(970, 269, 42),
(971, 269, 44),
(972, 271, 23),
(973, 271, 24),
(974, 270, 20),
(975, 273, 21),
(976, 273, 22),
(977, 273, 27),
(978, 273, 33),
(979, 273, 37),
(980, 273, 43),
(981, 281, 44),
(982, 281, 45),
(983, 282, 20),
(984, 282, 41),
(985, 282, 42),
(986, 286, 44),
(987, 286, 45),
(988, 288, 24);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `guarantees`
--

CREATE TABLE `guarantees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `equipment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `guarantees`
--

INSERT INTO `guarantees` (`id`, `equipment_id`, `provider`, `time`, `note`, `content`, `created_at`, `updated_at`) VALUES
(8, NULL, 'xxxxxxxxxxx', '2021-03-29', 'xxxxxxxxxxxxx', 'xxxxxxxxxxxx', '2021-03-29 21:12:11', '2021-03-29 21:12:11'),
(9, NULL, 'xxxxxxxxxxx', '111111-11-11', 'xxx', 'xxx', '2021-03-30 12:42:19', '2021-03-30 12:42:19'),
(10, NULL, 'Điện tử BK', '2021-03-30', 'Free', 'Bảo hành trong 12 tháng', '2021-03-30 15:00:20', '2021-03-30 15:00:20'),
(11, 240, 'Hãng cung cấp', NULL, 'Free', 'Bảo hành trong thời hạn 12 tháng', '2021-03-30 15:48:50', '2021-03-30 15:48:50'),
(12, NULL, 'xxxxxxxxxxx', '2021-04-01', 'xxxxxxxxxx', 'xxxxxxxxxxxx', '2021-04-01 11:55:16', '2021-04-01 11:55:16'),
(13, 270, '10', '2021-04-02', '10', '10', '2021-04-02 14:05:11', '2021-04-02 14:05:11'),
(14, 270, '10', '2021-04-17', '000', '00000000', '2021-04-02 14:05:25', '2021-04-02 14:05:25');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `liquidations`
--

CREATE TABLE `liquidations` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `equipment_id` bigint(11) UNSIGNED DEFAULT NULL,
  `amount` int(20) UNSIGNED NOT NULL DEFAULT '0',
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(11) UNSIGNED DEFAULT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting',
  `person_up` bigint(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `liquidations`
--

INSERT INTO `liquidations` (`id`, `equipment_id`, `amount`, `reason`, `user_id`, `status`, `person_up`, `created_at`, `updated_at`) VALUES
(31, 254, 1, 'hư hỏng', 36, 'liquidated', 36, '2021-04-05 14:05:58', '2021-04-05 14:06:15'),
(32, 254, 1, 'demo', 36, 'waiting', NULL, '2021-04-05 21:14:08', '2021-04-05 21:14:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maintenances`
--

CREATE TABLE `maintenances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `equipment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `provide_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `frequency` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'year',
  `note` text COLLATE utf8mb4_unicode_ci,
  `author_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approve_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'request',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maintenances`
--

INSERT INTO `maintenances` (`id`, `equipment_id`, `provide_id`, `title`, `start_date`, `frequency`, `note`, `author_id`, `approve_id`, `status`, `created_at`, `updated_at`) VALUES
(11, 222, NULL, 'Kiểm tra buồng kính chiếu tia X', '2021-03-13', '9m', 'Kiểm tra buồng kính chiếu tia X', 32, NULL, 'request', '2021-03-13 16:14:18', '2021-03-13 16:14:18'),
(12, 222, NULL, 'Hoạt động bảo dưỡng', '2021-03-13', '1m', 'Hoạt động bảo dưỡng', 32, NULL, 'request', '2021-03-13 16:15:01', '2021-03-13 16:15:01'),
(18, 261, NULL, 'Thiết bị', '2021-03-25', '3w', 'nginx', 33, NULL, 'request', '2021-03-29 13:11:39', '2021-03-29 13:11:39'),
(19, 261, NULL, 'Công ty Phương Tây', '2021-03-25', '3w', 'xxx', 33, NULL, 'request', '2021-03-29 13:14:36', '2021-03-29 13:14:36'),
(20, 240, NULL, 'Thay màng lọc', '2021-04-01', '1m', 'hàng tháng, sai số 3 ngày', 21, NULL, 'request', '2021-04-05 18:12:01', '2021-04-05 18:12:01'),
(21, 240, NULL, 'Thay cảm biế flow', '2021-04-01', '6m', '6 tháng, sai số 1 tuần', 21, NULL, 'request', '2021-04-05 18:12:41', '2021-04-05 18:12:41'),
(22, 280, NULL, 'Vệ sinh máy', '2021-04-01', '2w', NULL, 21, NULL, 'request', '2021-04-05 18:13:32', '2021-04-05 18:13:32'),
(23, 240, NULL, 'Vệ sinh máy', '2021-04-01', '2w', NULL, 21, NULL, 'request', '2021-04-05 18:14:09', '2021-04-05 18:14:09'),
(24, 240, NULL, 'Kiểm định máy', '2021-04-01', '1y', 'hàng năm', 21, NULL, 'request', '2021-04-05 18:18:36', '2021-04-05 18:18:36'),
(25, 288, NULL, 'Fugiat vel non inci', '2021-04-06', '10m', 'Aut expedita quos co', 32, NULL, 'request', '2021-04-06 15:23:48', '2021-04-06 15:23:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `maintenance_actions`
--

CREATE TABLE `maintenance_actions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `maintenance_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` char(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'C' COMMENT 'C:check\r\nI: inspection\r\nM: maintenance',
  `created_date` date DEFAULT NULL COMMENT 'ngày thực hiện',
  `date_of_action` date DEFAULT NULL,
  `author_id` bigint(20) UNSIGNED NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `maintenance_actions`
--

INSERT INTO `maintenance_actions` (`id`, `code`, `maintenance_id`, `type`, `created_date`, `date_of_action`, `author_id`, `note`, `created_at`, `updated_at`) VALUES
(1, '2021020411', 11, 'C', '2021-02-04', '2021-02-04', 32, NULL, '2021-03-15 13:07:48', '2021-03-15 13:07:48'),
(2, '2021020311', 11, 'I', '2021-03-15', '2021-02-03', 32, NULL, '2021-03-15 14:15:58', '2021-03-15 14:15:58'),
(3, '2021020412', 12, 'M', '2021-03-15', '2021-02-04', 32, NULL, '2021-03-15 14:16:12', '2021-03-15 14:16:12'),
(4, '2021020511', 11, 'I', '2021-03-27', '2021-02-05', 36, 'demo', '2021-03-27 12:37:40', '2021-03-27 18:09:29'),
(10, '2021030118', 18, 'C', '2021-03-29', '2021-03-01', 33, NULL, '2021-03-29 13:15:01', '2021-03-29 13:15:01'),
(11, '2021030218', 18, 'C', '2021-03-29', '2021-03-02', 33, NULL, '2021-03-29 13:15:10', '2021-03-29 13:15:10'),
(12, '2021030918', 18, 'C', '2021-03-18', '2021-03-09', 33, NULL, '2021-03-29 13:15:27', '2021-03-29 13:15:27'),
(14, '2021040120', 20, 'C', '2021-04-05', '2021-04-01', 21, NULL, '2021-04-05 18:15:12', '2021-04-05 18:15:12'),
(15, '2021041520', 20, 'C', '2021-04-05', '2021-04-15', 21, NULL, '2021-04-05 18:15:28', '2021-04-05 18:15:28'),
(16, '2021040123', 23, 'C', '2021-04-05', '2021-04-01', 21, NULL, '2021-04-05 18:15:55', '2021-04-05 18:15:55'),
(17, '2021041523', 23, 'C', '2021-04-05', '2021-04-15', 21, NULL, '2021-04-05 18:16:02', '2021-04-05 18:16:02'),
(18, '2021040124', 24, 'I', '2021-04-05', '2021-04-01', 21, 'Kiểm định lần 1 ngày 2021-03-01', '2021-04-05 18:19:21', '2021-04-05 18:21:49'),
(19, '2021040220', 20, 'C', '2021-04-06', '2021-04-02', 20, NULL, '2021-04-06 15:16:34', '2021-04-06 15:16:34'),
(20, '2021040825', 25, 'C', '2021-04-06', '2021-04-08', 32, 'nguyenhoang', '2021-04-06 15:23:58', '2021-04-06 15:24:57'),
(21, '2021041225', 25, 'C', '2021-04-06', '2021-04-12', 32, NULL, '2021-04-06 15:25:21', '2021-04-06 15:25:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image',
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `media`
--

INSERT INTO `media` (`id`, `title`, `slug`, `alt`, `path`, `content`, `type`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'hinh-anh-hoa-cuc-cau-vong-dep_110817989', 'hinh-anh-hoa-cuc-cau-vong-dep-110817989', 'hinh-anh-hoa-cuc-cau-vong-dep_110817989', 'hinh-anh-hoa-cuc-cau-vong-dep-110817989.jpg', NULL, 'jpg', NULL, '2021-01-29 14:22:22', '2021-01-29 14:22:23'),
(2, 'anh-hoa-dep-1', 'anh-hoa-dep-1', 'anh-hoa-dep-1', 'anh-hoa-dep-1.jpg', NULL, 'jpg', NULL, '2021-01-29 14:22:27', '2021-01-29 14:22:27'),
(3, 'top-nhung-hinh-anh-hoa-dep-bong-hoa-dep-nhat-1', 'top-nhung-hinh-anh-hoa-dep-bong-hoa-dep-nhat-1', 'top-nhung-hinh-anh-hoa-dep-bong-hoa-dep-nhat-1', 'top-nhung-hinh-anh-hoa-dep-bong-hoa-dep-nhat-1.jpg', NULL, 'jpg', NULL, '2021-01-29 14:22:30', '2021-01-29 14:22:30'),
(4, 'download', 'download', 'download', 'download.jpg', NULL, 'jpg', NULL, '2021-02-02 07:22:26', '2021-02-02 07:22:26'),
(5, 'top-nhung-hinh-anh-hoa-dep-bong-hoa-dep-nhat-1', 'top-nhung-hinh-anh-hoa-dep-bong-hoa-dep-nhat-1-1', 'top-nhung-hinh-anh-hoa-dep-bong-hoa-dep-nhat-1', 'top-nhung-hinh-anh-hoa-dep-bong-hoa-dep-nhat-1-1.jpg', NULL, 'jpg', NULL, '2021-02-02 07:23:29', '2021-02-02 07:23:29'),
(6, 'Cầu vòng mưa', 'cau-vong-mua', 'Cầu vòng mưa', 'cau-vong-mua.jpeg', NULL, 'jpeg', 20, '2021-02-02 13:18:00', '2021-02-02 13:18:00'),
(7, 'hinh-anh-hoa-cuc-cau-vong-dep_110817989', 'hinh-anh-hoa-cuc-cau-vong-dep-110817989-1', 'hinh-anh-hoa-cuc-cau-vong-dep_110817989', 'hinh-anh-hoa-cuc-cau-vong-dep-110817989-1.jpg', NULL, 'jpg', NULL, '2021-02-02 13:19:56', '2021-02-02 13:19:56'),
(8, '7 ngày yêu', '7-ngay-yeu', '7 ngày yêu', '7-ngay-yeu.jpeg', NULL, 'jpeg', 20, '2021-02-03 07:35:59', '2021-02-03 07:35:59'),
(9, 'anh-nen-tuyet-dep-ve-hoa-huong-duong_042951928', 'anh-nen-tuyet-dep-ve-hoa-huong-duong-042951928', 'anh-nen-tuyet-dep-ve-hoa-huong-duong_042951928', 'anh-nen-tuyet-dep-ve-hoa-huong-duong-042951928.jpg', NULL, 'jpg', 33, '2021-02-06 07:16:45', '2021-02-06 07:16:45'),
(10, 'Quên', 'quen', 'Quên', 'quen.jpeg', NULL, 'jpeg', 20, '2021-02-23 08:30:34', '2021-02-23 08:30:34'),
(11, 'avatar', 'avatar', 'avatar', 'avatar.jpg', NULL, 'jpg', 27, '2021-02-23 12:50:36', '2021-02-23 12:50:36'),
(12, 'avatar', 'avatar-1', 'avatar', 'avatar-1.jpg', NULL, 'jpg', 27, '2021-02-23 12:51:26', '2021-02-23 12:51:26'),
(13, 'avatar', 'avatar-2', 'avatar', 'avatar-2.jpg', NULL, 'jpg', 27, '2021-02-24 13:32:30', '2021-02-24 13:32:30'),
(14, '2', '2', '2', '2.PNG', NULL, 'PNG', 20, '2021-02-26 07:24:21', '2021-02-26 07:24:21'),
(15, 'avatar', 'avatar-3', 'avatar', 'avatar-3.jpg', NULL, 'jpg', 37, '2021-02-27 19:18:55', '2021-02-27 19:18:55'),
(17, '2', '2-1', '2', '2-1.PNG', NULL, 'PNG', 20, '2021-03-01 19:34:54', '2021-03-01 19:34:54'),
(18, '2', '2-2', '2', '2-2.PNG', NULL, 'PNG', 20, '2021-03-01 19:35:30', '2021-03-01 19:35:30'),
(24, 'logo-dark', 'logo-dark', 'logo-dark', 'logo-dark.png', NULL, 'png', 32, '2021-03-09 14:36:55', '2021-03-09 14:36:55'),
(37, 'uhhh', 'uhhh', 'uhhh', 'uhhh.jpg', NULL, 'jpg', 32, '2021-03-11 16:00:41', '2021-03-11 16:00:41'),
(45, 'tests', 'tests', 'tests', 'tests.txt', NULL, 'txt', 32, '2021-03-12 14:12:28', '2021-03-12 14:12:28'),
(47, 'Báo cáo thiết bị theo khoa 12-03-2021', 'bao-cao-thiet-bi-theo-khoa-12-03-2021', 'Báo cáo thiết bị theo khoa 12-03-2021', 'bao-cao-thiet-bi-theo-khoa-12-03-2021.xlsx', NULL, 'xlsx', 36, '2021-03-12 21:05:16', '2021-03-12 21:05:16'),
(48, 'robots', 'robots', 'robots', 'robots.txt', NULL, 'txt', 36, '2021-03-12 21:08:24', '2021-03-12 21:08:24'),
(50, 'avatar', 'avatar-4', 'avatar', 'avatar-4.jpg', NULL, 'jpg', 37, '2021-03-13 19:12:48', '2021-03-13 19:12:48'),
(51, 'viber_image_2020-10-31_19-26-11', 'viber-image-2020-10-31-19-26-11', 'viber_image_2020-10-31_19-26-11', 'viber-image-2020-10-31-19-26-11.jpg', NULL, 'jpg', 37, '2021-03-13 19:12:48', '2021-03-13 19:12:48'),
(52, 'viber_image_2020-10-31_19-26-12', 'viber-image-2020-10-31-19-26-12', 'viber_image_2020-10-31_19-26-12', 'viber-image-2020-10-31-19-26-12.jpg', NULL, 'jpg', 37, '2021-03-13 19:12:48', '2021-03-13 19:12:48'),
(54, 'half way to work', 'half-way-to-work', 'half way to work', 'half-way-to-work.JPG', NULL, 'JPG', 37, '2021-03-19 18:00:30', '2021-03-19 18:00:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mediables`
--

CREATE TABLE `mediables` (
  `media_id` bigint(20) UNSIGNED NOT NULL,
  `mediable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mediable_id` int(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mediables`
--

INSERT INTO `mediables` (`media_id`, `mediable_type`, `mediable_id`, `type`) VALUES
(1, 'App\\Models\\Requests', 19, 'image'),
(1, 'App\\Models\\ScheduleRepair', 11, NULL),
(3, 'App\\Models\\Requests', 19, 'image'),
(6, 'App\\Models\\Requests', 18, 'image'),
(14, 'App\\Models\\Requests', 18, 'image'),
(15, 'App\\Models\\Requests', 18, 'image'),
(17, 'App\\Models\\Equipment', 217, NULL),
(18, 'App\\Models\\Equipment', 217, NULL),
(24, 'App\\Models\\Equipment', 217, NULL),
(24, 'App\\Models\\Requests', 20, 'image'),
(45, 'App\\Models\\Requests', 21, 'file'),
(47, 'App\\Models\\Requests', 18, 'file'),
(47, 'App\\Models\\Requests', 19, 'file'),
(47, 'App\\Models\\Requests', 21, 'file'),
(47, 'App\\Models\\Requests', 23, 'file'),
(48, 'App\\Models\\Requests', 18, 'file'),
(48, 'App\\Models\\Requests', 20, 'file'),
(48, 'App\\Models\\Requests', 22, 'file'),
(48, 'App\\Models\\Requests', 23, 'file'),
(50, 'App\\Models\\Requests', 21, 'image'),
(50, 'App\\Models\\Requests', 23, 'image'),
(50, 'App\\Models\\ScheduleRepair', 10, NULL),
(50, 'App\\Models\\ScheduleRepair', 12, NULL),
(51, 'App\\Models\\Requests', 21, 'image'),
(51, 'App\\Models\\Requests', 22, 'image'),
(51, 'App\\Models\\Requests', 23, 'image'),
(51, 'App\\Models\\ScheduleRepair', 12, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_cates`
--

CREATE TABLE `media_cates` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `media_cates`
--

INSERT INTO `media_cates` (`id`, `title`, `slug`, `content`, `created_at`, `updated_at`) VALUES
(1, 'System', 'system', NULL, '2020-12-29 13:24:46', '2020-12-29 13:24:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_media_cate`
--

CREATE TABLE `media_media_cate` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media_id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_12_28_031543_create_sessions_table', 1),
(7, '2020_12_28_032537_create_sessions_table', 2),
(8, '2020_12_28_034936_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(8, 'App\\Models\\User', 10),
(9, 'App\\Models\\User', 11),
(8, 'App\\Models\\User', 12),
(1, 'App\\Models\\User', 13),
(12, 'App\\Models\\User', 14),
(8, 'App\\Models\\User', 17),
(1, 'App\\Models\\User', 18),
(1, 'App\\Models\\User', 20),
(1, 'App\\Models\\User', 21),
(13, 'App\\Models\\User', 22),
(8, 'App\\Models\\User', 23),
(8, 'App\\Models\\User', 24),
(12, 'App\\Models\\User', 25),
(10, 'App\\Models\\User', 26),
(9, 'App\\Models\\User', 27),
(12, 'App\\Models\\User', 28),
(1, 'App\\Models\\User', 32),
(1, 'App\\Models\\User', 33),
(1, 'App\\Models\\User', 34),
(1, 'App\\Models\\User', 36),
(1, 'App\\Models\\User', 37),
(12, 'App\\Models\\User', 40),
(8, 'App\\Models\\User', 41),
(8, 'App\\Models\\User', 42),
(9, 'App\\Models\\User', 43),
(9, 'App\\Models\\User', 44),
(12, 'App\\Models\\User', 45),
(8, 'App\\Models\\User', 48);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` int(10) UNSIGNED NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('00559449-0b15-4f0a-8fd0-b7867c44fe73', 'App\\Notifications\\RepairNotifications', 44, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('00928b5f-fa66-472c-8889-57419da106e0', 'App\\Notifications\\HanOverNotifications', 28, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('027fbc55-52a2-48b3-8d2c-8d2d6cb2526b', 'App\\Notifications\\HanOverNotifications', 27, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('0339c783-1542-4435-b033-9bf04f23cef2', 'App\\Notifications\\HanOverNotifications', 32, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('0341e855-aae0-4c7e-8388-a3a56901d0b4', 'App\\Notifications\\RepairNotifications', 34, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('047826b3-ba54-41b2-99c0-7cd04f1f266e', 'App\\Notifications\\HanOverNotifications', 26, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('06f264ad-995e-4efb-ac63-7da8fa0f097c', 'App\\Notifications\\RepairNotifications', 41, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('081bf8ae-878c-46e4-a8ee-e8f3ac742a2b', 'App\\Notifications\\RepairNotifications', 43, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('0b9aea60-f238-46fc-8752-0e0c32c21eff', 'App\\Notifications\\RepairNotifications', 27, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('0c642660-4eaa-4e45-be10-d436ced1738e', 'App\\Notifications\\RepairNotifications', 41, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('0dfa166f-00c1-4952-be84-b16028a3c751', 'App\\Notifications\\HanOverNotifications', 22, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('0e4470b2-3334-4740-aec3-f1f4e4c87f05', 'App\\Notifications\\RepairNotifications', 42, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('0e7474f1-083a-43f8-8193-f54614e6fe72', 'App\\Notifications\\HanOverNotifications', 24, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('0e9d7189-f9c3-4cfd-966e-c5b8c84c0381', 'App\\Notifications\\RepairNotifications', 36, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('0fc64427-779b-4180-9d55-10ab4051a56a', 'App\\Notifications\\RepairNotifications', 20, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('0fdf9cee-674b-4060-a222-339d3da26c92', 'App\\Notifications\\HanOverNotifications', 42, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('125c5d5f-ed12-4b3f-8c10-37cd18d94a40', 'App\\Notifications\\RepairNotifications', 34, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('13715063-d533-46f4-b39d-7190bf423ba1', 'App\\Notifications\\HanOverNotifications', 37, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('13801ea8-1ccd-4f4f-8495-3f7d5eec47d7', 'App\\Notifications\\HanOverNotifications', 28, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('145b7b46-f224-4b50-88dc-3355254a40c0', 'App\\Notifications\\HanOverNotifications', 41, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('1505a1bf-0438-4df4-8a59-0278a2b45b61', 'App\\Notifications\\HanOverNotifications', 36, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', '2021-04-06 14:09:43', '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('16b701a1-a376-4a74-8a09-220f5090fab1', 'App\\Notifications\\RepairNotifications', 37, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('1774988b-10f8-40de-a7d3-89aa3075bfc6', 'App\\Notifications\\HanOverNotifications', 27, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('17ee967a-7172-472e-aa87-8f5d2ce98fd1', 'App\\Notifications\\RepairNotifications', 32, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('186d9f55-3654-4e10-88d5-22ab46dd5173', 'App\\Notifications\\RepairNotifications', 21, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('18a05f66-ce7f-4990-8049-0a065c5489c4', 'App\\Notifications\\RepairNotifications', 24, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('1c2cc49c-2765-4505-8f2a-767fb4ad5b4b', 'App\\Notifications\\HanOverNotifications', 23, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('1c7235cd-0f30-4951-a307-3cbb5af5fdc5', 'App\\Notifications\\RepairNotifications', 44, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('1d422257-56a2-4c39-8895-55a37183f676', 'App\\Notifications\\HanOverNotifications', 26, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('1e19b03b-7a08-49fc-b821-7c908a692caa', 'App\\Notifications\\RepairNotifications', 26, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('21d6de4a-5cc4-41bc-922f-3b03b153014d', 'App\\Notifications\\HanOverNotifications', 25, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('24003c6e-c6ed-49fc-9c7f-49ab8f5c25e2', 'App\\Notifications\\RepairNotifications', 37, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('241e3c97-75de-4f10-b50f-1afaacb6113c', 'App\\Notifications\\RepairNotifications', 24, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('25e047bc-ad07-4cb3-92f2-e1a6c93bc968', 'App\\Notifications\\HanOverNotifications', 34, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('262ddff7-abfb-4281-85db-708dbee333d1', 'App\\Notifications\\HanOverNotifications', 41, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('26489bf2-a584-4315-8e8d-4e29e8a8696f', 'App\\Notifications\\HanOverNotifications', 45, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('2d8e2cd7-bbc9-4c66-84df-e54729f55e84', 'App\\Notifications\\RepairNotifications', 28, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('2ec2c438-27e4-4b95-964f-a7c2644ada10', 'App\\Notifications\\RepairNotifications', 40, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('30586e66-f46b-423c-8c07-6b9adb054389', 'App\\Notifications\\RepairNotifications', 48, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('3091909e-0a28-4785-b11f-4cb174566eba', 'App\\Notifications\\RepairNotifications', 42, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('31092ed4-a5de-41d4-8e9b-a431d73cca65', 'App\\Notifications\\HanOverNotifications', 22, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('3137273c-ec89-430d-88dc-72d60b1b4a3d', 'App\\Notifications\\RepairNotifications', 26, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('32e84f13-fa3d-473e-a420-17d0a3bcf23e', 'App\\Notifications\\HanOverNotifications', 40, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('337a4b90-6130-4934-97e1-b03271e04f0c', 'App\\Notifications\\RepairNotifications', 45, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('342be88a-3925-41a5-ac91-1891fb5aa4b1', 'App\\Notifications\\HanOverNotifications', 24, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('34db25ba-6aac-49cb-8fe5-dca4eca9136e', 'App\\Notifications\\RepairNotifications', 26, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('34fcc2a2-4122-4fb9-b94e-5fbe3a2f6494', 'App\\Notifications\\HanOverNotifications', 27, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('36351041-2e52-4703-876e-981a04e1fe05', 'App\\Notifications\\RepairNotifications', 33, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('3663a338-e57d-4efd-a604-42ea044880c0', 'App\\Notifications\\RepairNotifications', 34, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('373c12d6-33fc-4308-855d-845e5abca531', 'App\\Notifications\\HanOverNotifications', 36, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('381003db-b480-48ea-951d-5c415c1ac152', 'App\\Notifications\\RepairNotifications', 33, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('39bc667d-3e9e-4b00-93a5-4e513aefe23d', 'App\\Notifications\\HanOverNotifications', 22, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('3d376b45-472a-4af4-a23c-4ac92e768cdd', 'App\\Notifications\\RepairNotifications', 27, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('3df00c06-3a4e-497d-a6a1-8b3d9b20be30', 'App\\Notifications\\HanOverNotifications', 27, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('3f4ff55c-cc66-4a9b-85a5-23b4f0d1c53d', 'App\\Notifications\\HanOverNotifications', 28, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('41d67f81-5418-4ff4-bc85-eeb9e1c7460f', 'App\\Notifications\\HanOverNotifications', 40, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('422d9c4c-1a8f-4486-9c0c-93b354584f50', 'App\\Notifications\\RepairNotifications', 23, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('43976f73-1f0e-4c76-91e1-35df54c531c9', 'App\\Notifications\\HanOverNotifications', 28, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('44b04719-d708-48bd-8c99-47b8ad3176cd', 'App\\Notifications\\HanOverNotifications', 22, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('45f9074e-b22b-4bbd-8f0b-2c9a085834d6', 'App\\Notifications\\RepairNotifications', 36, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('46473c7d-3756-4695-957f-c83692b57fa5', 'App\\Notifications\\HanOverNotifications', 42, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('471d1e18-e3ab-4f6a-95c5-095c0c37ba5d', 'App\\Notifications\\RepairNotifications', 36, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('4792358a-ec78-421c-9775-3ab7f9817476', 'App\\Notifications\\HanOverNotifications', 36, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('4903c757-7129-4025-ba63-4c0d715add4a', 'App\\Notifications\\RepairNotifications', 43, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('4aea7454-75e0-45f3-84bb-864b5e96b1d2', 'App\\Notifications\\RepairNotifications', 45, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('4b3d616c-bdae-45e6-9c3b-2b7ba353b006', 'App\\Notifications\\RepairNotifications', 48, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('4f03fb62-24ff-44a2-a27f-c2e0a71cc942', 'App\\Notifications\\RepairNotifications', 33, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('50017ca8-a9fc-4b4f-976f-fd72b5a51485', 'App\\Notifications\\RepairNotifications', 20, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('50d7ce2a-44df-4389-96ff-bd6070bce6eb', 'App\\Notifications\\HanOverNotifications', 43, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('51f43d88-acec-4f77-97ef-f8b926491369', 'App\\Notifications\\RepairNotifications', 44, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('5219574d-119e-43cf-9815-6e2bbbec7e32', 'App\\Notifications\\HanOverNotifications', 45, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('5406dda0-0983-40bc-a117-a3a24c624d73', 'App\\Notifications\\HanOverNotifications', 37, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('54678742-ec50-4683-b84f-5a4d5ac4b919', 'App\\Notifications\\RepairNotifications', 22, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('55a7ca1a-3417-4704-beca-e9e718f73e61', 'App\\Notifications\\HanOverNotifications', 25, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('5801e2be-a980-4370-b290-593a13af87c2', 'App\\Notifications\\HanOverNotifications', 22, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('5883e434-e5a6-4397-b6cf-6c9a05a5c696', 'App\\Notifications\\RepairNotifications', 34, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('5968ac91-f67c-4053-9984-05b44e12d5f7', 'App\\Notifications\\HanOverNotifications', 37, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('59c9b4c7-ffb0-4ace-a864-81d740d72ffd', 'App\\Notifications\\RepairNotifications', 24, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('5b22b233-68f8-45de-9bc8-5fbaf90d94bc', 'App\\Notifications\\RepairNotifications', 22, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('5b68e063-3afb-4624-a8cc-8d6c7cbac2d4', 'App\\Notifications\\RepairNotifications', 45, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('5d653a2d-23e7-4eb8-bac7-5f9d78019efa', 'App\\Notifications\\HanOverNotifications', 25, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('5dde684c-2f4e-4c2c-80b8-5384386addd9', 'App\\Notifications\\RepairNotifications', 33, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('5e9269ca-1c04-4b4e-96d8-7ba4c9954e49', 'App\\Notifications\\HanOverNotifications', 27, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('5f7176e3-5a3d-4e47-99ce-bdbff3c0ba58', 'App\\Notifications\\HanOverNotifications', 25, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('61317201-83f9-4f80-982c-74782dbd7285', 'App\\Notifications\\HanOverNotifications', 21, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('6248339e-3810-40c7-8a34-d947a28d331d', 'App\\Notifications\\HanOverNotifications', 26, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('646be8aa-cb90-487d-93d4-02ac1c8d2068', 'App\\Notifications\\HanOverNotifications', 34, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('6499b433-8c68-4c39-8dae-225637413d93', 'App\\Notifications\\RepairNotifications', 20, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('64d56fc0-2c48-4567-a01d-e5aed61fec86', 'App\\Notifications\\RepairNotifications', 23, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('650043ee-8ae2-4ff9-9c01-67b075c11439', 'App\\Notifications\\RepairNotifications', 28, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('658d4616-b69c-4464-a4ba-3da1e03df1eb', 'App\\Notifications\\RepairNotifications', 28, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('668a85f8-a981-4c8d-a14a-339affd9d80f', 'App\\Notifications\\RepairNotifications', 37, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('66bd5ac1-64da-44e5-8e5f-85dc3bc4a872', 'App\\Notifications\\HanOverNotifications', 43, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('66e06ddf-c6a1-44cf-bc45-42bc71998b14', 'App\\Notifications\\RepairNotifications', 21, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('6b1b4b50-d869-4b5a-a115-b38a402179f6', 'App\\Notifications\\HanOverNotifications', 32, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('6e9c37c1-e27c-42ed-80c2-6720f97fdac9', 'App\\Notifications\\HanOverNotifications', 40, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('7234b64c-94e1-4e4b-aff1-8a59583b7650', 'App\\Notifications\\RepairNotifications', 43, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('75188ab7-661b-4950-a7ea-7b1651d3ab59', 'App\\Notifications\\RepairNotifications', 21, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('77b0903a-affe-4607-85d0-cbdd0c58512e', 'App\\Notifications\\RepairNotifications', 32, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('78b67260-f8e5-4ae3-9228-2246d3bd51aa', 'App\\Notifications\\RepairNotifications', 41, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('79b7a481-59ad-4ad3-94cc-f309a9916fe7', 'App\\Notifications\\HanOverNotifications', 26, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('7d16bcac-81dc-45db-990f-e36581727eee', 'App\\Notifications\\RepairNotifications', 25, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('7de80b7d-48e0-47ec-9c1b-b5492bb88295', 'App\\Notifications\\RepairNotifications', 37, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('7fd832f9-aabe-4497-848f-6bd262d267e2', 'App\\Notifications\\HanOverNotifications', 21, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('81f0e19b-9c40-4e2e-b0d7-e24ba33d83c1', 'App\\Notifications\\RepairNotifications', 37, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('8718ef0a-3b07-4ddc-b3d4-ebe5e5475e21', 'App\\Notifications\\RepairNotifications', 32, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('89205a35-b950-4896-bb4a-31bd2e0bd049', 'App\\Notifications\\HanOverNotifications', 24, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('8acf6f75-9dbf-451d-90b7-2240cbdb1d3e', 'App\\Notifications\\RepairNotifications', 41, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('8e43a071-2709-4aa2-be73-6424c0334696', 'App\\Notifications\\RepairNotifications', 25, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('8fba51c7-933d-4a68-843e-91134ee3ee1d', 'App\\Notifications\\HanOverNotifications', 24, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('8fbdd3b2-ccce-4615-8346-842450af2206', 'App\\Notifications\\HanOverNotifications', 36, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', '2021-04-06 13:25:55', '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('91282a09-3cb1-4308-a6ac-fc1f9fb918e9', 'App\\Notifications\\RepairNotifications', 20, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('9483d467-797e-4e44-84e3-42ff9fa15dc3', 'App\\Notifications\\RepairNotifications', 21, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('94d765eb-68f6-4726-986c-b40a69463535', 'App\\Notifications\\RepairNotifications', 32, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('955d539c-050a-4803-a51f-543353348166', 'App\\Notifications\\RepairNotifications', 42, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('96bd4e8e-38ec-4f5e-bb51-01a6b0bde3de', 'App\\Notifications\\RepairNotifications', 40, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('96e4e801-581b-4df9-a8b4-ad6f646b0fa4', 'App\\Notifications\\HanOverNotifications', 33, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('97006960-4357-4d1e-92b0-979bfc156247', 'App\\Notifications\\HanOverNotifications', 34, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('97b26d15-d21e-4134-81fe-915b8724ab44', 'App\\Notifications\\HanOverNotifications', 41, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('9a829fce-f41b-4d8b-9d0a-da4413077907', 'App\\Notifications\\HanOverNotifications', 41, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('9a96e5bd-1513-4717-8309-6280cadbabc1', 'App\\Notifications\\HanOverNotifications', 23, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49');
INSERT INTO `notifications` (`id`, `type`, `notifiable_id`, `notifiable_type`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('9b590bc1-2074-49be-b10e-1f9bd08774fd', 'App\\Notifications\\HanOverNotifications', 42, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('9c5de614-f5ed-4b12-92c1-2db82f10f857', 'App\\Notifications\\RepairNotifications', 25, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('9cec7bb0-6523-444c-b47e-64b964395c4f', 'App\\Notifications\\RepairNotifications', 27, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('9d27b53e-59b9-4c7e-bac3-1992b0e7d659', 'App\\Notifications\\RepairNotifications', 44, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('9dc22da1-63f9-42b6-9aab-96c809d7e2f3', 'App\\Notifications\\HanOverNotifications', 34, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('9e236ce6-4bc7-4f20-a9ee-164703f23e23', 'App\\Notifications\\RepairNotifications', 28, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('a0233b96-11a5-4fad-afc8-bd13f1cc9d26', 'App\\Notifications\\HanOverNotifications', 45, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('a2f6910d-3df9-4993-967f-5ef436e381a8', 'App\\Notifications\\HanOverNotifications', 33, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('a5b2a80f-9a06-470e-a935-57a9e6ab6220', 'App\\Notifications\\RepairNotifications', 23, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('a605d65f-d17c-442b-954f-7e1ea5ba208c', 'App\\Notifications\\RepairNotifications', 43, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('a7af2f45-4615-4cbe-a20f-610baa0ec05a', 'App\\Notifications\\RepairNotifications', 43, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('aa84213c-4a12-41fb-917d-c0ce1cb144e5', 'App\\Notifications\\RepairNotifications', 27, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('ab7a7a34-0f82-4e58-ada0-4e5e051dbb14', 'App\\Notifications\\RepairNotifications', 23, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('aeede4ba-9c7d-4aa5-8cc1-b414b1ed2d5a', 'App\\Notifications\\HanOverNotifications', 42, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('b101b7f1-dffe-4aad-b883-2f4b4fed9c5c', 'App\\Notifications\\RepairNotifications', 26, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('b1fe2db6-d08c-4d33-ba7b-917bfbf8d024', 'App\\Notifications\\RepairNotifications', 28, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('b237696d-cc31-498b-82c9-6d37bb1fa8d2', 'App\\Notifications\\HanOverNotifications', 23, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('b2b41628-b99d-44b5-bd1b-3650e3a135eb', 'App\\Notifications\\HanOverNotifications', 44, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('b5c0e6ae-c740-45c7-9b05-16ba21a6ff84', 'App\\Notifications\\HanOverNotifications', 20, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('b61face3-5547-4c59-8d6b-3fca4e9c76e4', 'App\\Notifications\\HanOverNotifications', 21, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('b68103b6-fd27-46a8-9758-8f72a3985480', 'App\\Notifications\\HanOverNotifications', 40, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('b6837eb2-f9a8-4e42-a75e-8a06d085c594', 'App\\Notifications\\HanOverNotifications', 23, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('b72f240f-7f3b-42b4-9e1c-4c3d293e03cf', 'App\\Notifications\\RepairNotifications', 22, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('b7d9f1d1-f8b2-44e1-9dbb-280c5a1758b4', 'App\\Notifications\\HanOverNotifications', 20, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('b89bc36b-b7a7-42c8-ad24-382d8045bf14', 'App\\Notifications\\HanOverNotifications', 32, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('b96c4ead-a237-4eea-a319-0bb288f36e6c', 'App\\Notifications\\RepairNotifications', 40, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('bad4874d-9239-434f-9f74-df9f177a76b7', 'App\\Notifications\\HanOverNotifications', 37, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('badaa217-cba9-4199-a965-185212165251', 'App\\Notifications\\RepairNotifications', 24, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('bc580b40-fd91-43b0-82ba-a3fecb66169c', 'App\\Notifications\\HanOverNotifications', 32, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('bce1e704-e0f0-415b-b453-0c41b48753a5', 'App\\Notifications\\RepairNotifications', 21, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('be984e37-0755-4cbd-b0ce-9d178cfdb722', 'App\\Notifications\\HanOverNotifications', 34, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('c070842d-f37d-42e0-832c-54a594d89ea3', 'App\\Notifications\\RepairNotifications', 22, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('c0744c51-a161-4e00-9921-9a1d5c42b443', 'App\\Notifications\\RepairNotifications', 26, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('c230f084-8796-4d78-9376-653a1a9435c5', 'App\\Notifications\\HanOverNotifications', 20, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('c5a8620c-aff4-4ec8-8ad8-9694de921c40', 'App\\Notifications\\HanOverNotifications', 41, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('c60b3b27-aeb1-4d0b-95d4-855a3b0b05b0', 'App\\Notifications\\HanOverNotifications', 43, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('c6c84cc1-6155-4817-9aa2-2acb3cf4f9a0', 'App\\Notifications\\HanOverNotifications', 21, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('c6d4017c-270f-407b-b5f2-81debb1e45ca', 'App\\Notifications\\HanOverNotifications', 33, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('c7325bd3-a526-49bd-9881-286868ea46f2', 'App\\Notifications\\RepairNotifications', 23, 'App\\Models\\User', '{\"id\":24,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54'),
('c769c576-58c4-4935-9ad6-3c996a7b8b8b', 'App\\Notifications\\HanOverNotifications', 45, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('c79e5682-d8b9-4f60-8ed9-b281bb45f81c', 'App\\Notifications\\RepairNotifications', 25, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('c925c3f8-0b45-40ba-93c2-a92ac37f7a33', 'App\\Notifications\\HanOverNotifications', 44, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('cacb4fdd-6ff8-49c5-8879-6521e7033c72', 'App\\Notifications\\HanOverNotifications', 32, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('cacdf69b-59b5-4201-9793-868c62dc5c55', 'App\\Notifications\\HanOverNotifications', 33, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('cbf3f384-e8eb-437b-9cf7-d5d77b9029ed', 'App\\Notifications\\RepairNotifications', 45, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('cfe758a3-4dec-46a6-922d-c2463051103e', 'App\\Notifications\\RepairNotifications', 44, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('d270efb1-b408-4162-9ed6-4c2382025bce', 'App\\Notifications\\RepairNotifications', 27, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('d28f4f11-6b45-4a96-b199-0435e5722041', 'App\\Notifications\\HanOverNotifications', 43, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('d4b3b9dd-e4f0-4932-ac2b-246f6e9f373d', 'App\\Notifications\\HanOverNotifications', 37, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52'),
('d922c716-8e3a-4c45-bf74-0c45d83b4441', 'App\\Notifications\\HanOverNotifications', 21, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('da8f2647-f2f1-42b7-94c4-77cc1558adfd', 'App\\Notifications\\RepairNotifications', 45, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('daa97c3d-472b-45bf-bea8-eb36cd0f15a4', 'App\\Notifications\\RepairNotifications', 40, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('db84174e-5e06-4acc-888c-8848f913d760', 'App\\Notifications\\RepairNotifications', 40, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('dc835677-b1d1-4cec-bf49-ca33cac36582', 'App\\Notifications\\HanOverNotifications', 24, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('dd608d9b-2f11-4e9c-b736-cfdc8f7d534d', 'App\\Notifications\\HanOverNotifications', 45, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('dd7d337a-bcb4-49d9-a66e-56bf600827a0', 'App\\Notifications\\HanOverNotifications', 33, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('de0d0a9c-057a-4b0a-8c25-a51ecf93800d', 'App\\Notifications\\HanOverNotifications', 36, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('dff4ee47-c0fb-472d-a587-c759f91da44a', 'App\\Notifications\\HanOverNotifications', 40, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('e013c213-5f38-4c45-bfc5-010b93eaa9c1', 'App\\Notifications\\RepairNotifications', 20, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('e0f1818d-a955-4908-82c8-6a6295dd0442', 'App\\Notifications\\HanOverNotifications', 23, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('e247b1ca-4584-4269-8163-871b8d52f50a', 'App\\Notifications\\RepairNotifications', 34, 'App\\Models\\User', '{\"id\":23,\"equip_id\":231,\"user_id\":36,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y theo d\\u00f5i b\\u1ec7nh nh\\u00e2n \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 20:29:03', '2021-04-06 20:29:03'),
('e6e5e571-f59c-438c-baf4-fab5d9b52820', 'App\\Notifications\\RepairNotifications', 24, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('e7950c5d-485f-4cbb-8bbf-6c443022c9f3', 'App\\Notifications\\RepairNotifications', 22, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('e7ecc059-6776-422c-8329-dac9802c3b15', 'App\\Notifications\\HanOverNotifications', 42, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('e908519e-c8a1-4356-803e-c278b9d9cfd6', 'App\\Notifications\\RepairNotifications', 33, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('ea3b24a9-d489-44e8-951b-f88a1e33da8a', 'App\\Notifications\\HanOverNotifications', 44, 'App\\Models\\User', '{\"id\":283,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 00:45:44', '2021-04-06 00:45:44'),
('eb0352de-b32e-49a0-81d7-fb755b633755', 'App\\Notifications\\HanOverNotifications', 20, 'App\\Models\\User', '{\"id\":284,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng ch\\u1ee5p PET\\/CT (3 Rings) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 01:17:49', '2021-04-06 01:17:49'),
('eb037397-1b04-48d3-960b-36b416b46759', 'App\\Notifications\\HanOverNotifications', 26, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('eb935263-5ba9-46a5-9d8b-8eb132ebdb7f', 'App\\Notifications\\HanOverNotifications', 20, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('ebfd1ef0-7b14-4bf8-a7c7-0ca858666a72', 'App\\Notifications\\HanOverNotifications', 28, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('ec4cf1e4-d15d-4442-9db9-b10b74f527bf', 'App\\Notifications\\RepairNotifications', 42, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('f121b16c-5e0a-4e09-a3dd-e5cf3e81a039', 'App\\Notifications\\RepairNotifications', 36, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('f244f722-22b6-49ce-aa72-1b0d3538def5', 'App\\Notifications\\HanOverNotifications', 44, 'App\\Models\\User', '{\"id\":285,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1, \\u0110i\\u1ec1u bi\\u1ebfn li\\u1ec1u tia (IMRT) v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Kh\\u00e1m b\\u1ec7nh\"}', NULL, '2021-04-06 01:29:47', '2021-04-06 01:29:47'),
('f2f67270-35a7-4b6d-8e9e-25da3df11a9f', 'App\\Notifications\\RepairNotifications', 42, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('f7e759ba-38db-4d6a-809d-49cfae6e9492', 'App\\Notifications\\HanOverNotifications', 25, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('f893b02d-0b54-4c1b-8983-02cad108b640', 'App\\Notifications\\RepairNotifications', 41, 'App\\Models\\User', '{\"id\":22,\"equip_id\":224,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m \\u0111en tr\\u1eafng \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:53:09', '2021-04-06 01:53:09'),
('fa7036e9-b8eb-4616-9575-c0b638f5ccbf', 'App\\Notifications\\HanOverNotifications', 44, 'App\\Models\\User', '{\"id\":286,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng x\\u1ea1 tr\\u1ecb gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh nhi\\u1ec1u m\\u1ee9c n\\u0103ng l\\u01b0\\u1ee3ng, \\u1ed1ng chu\\u1ea9n tr\\u1ef1c (MLC) 80 l\\u00e1 v\\u00e0 c\\u00e1c thi\\u1ebft b\\u1ecb h\\u1ed7 tr\\u1ee3 \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa Ch\\u1ea9n \\u0111o\\u00e1n h\\u00ecnh \\u1ea3nh\"}', NULL, '2021-04-06 01:49:41', '2021-04-06 01:49:41'),
('fbaf155e-8b49-47d7-a961-89daecc35224', 'App\\Notifications\\RepairNotifications', 25, 'App\\Models\\User', '{\"id\":20,\"equip_id\":228,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb M\\u00e1y si\\u00eau \\u00e2m m\\u00e0u 3D-4D \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 00:55:40', '2021-04-06 00:55:40'),
('fe1f6794-02de-421d-ad87-91727accc1db', 'App\\Notifications\\RepairNotifications', 32, 'App\\Models\\User', '{\"id\":21,\"equip_id\":222,\"user_id\":21,\"content\":\"L\\u1ecbch s\\u1eeda ch\\u1eefa thi\\u1ebft b\\u1ecb H\\u1ec7 th\\u1ed1ng M\\u00e1y ch\\u1ee5p c\\u1ed9ng h\\u01b0\\u1edfng t\\u1eeb (MRI) 1,5 Telsa \\u0111\\u00e3 t\\u1ea1o.\"}', NULL, '2021-04-06 01:35:51', '2021-04-06 01:35:51'),
('fe2a955f-c301-4561-9023-6ae61197636c', 'App\\Notifications\\HanOverNotifications', 43, 'App\\Models\\User', '{\"id\":287,\"user_id\":21,\"content\":\"Thi\\u1ebft b\\u1ecb M\\u00e1y gia t\\u1ed1c tuy\\u1ebfn t\\u00ednh (Medical electron Linear Accelerator) \\u0111\\u00e3 \\u0111\\u01b0\\u1ee3c b\\u00e0n giao qua Khoa X\\u1ea1 tr\\u1ecb\"}', NULL, '2021-04-06 06:55:52', '2021-04-06 06:55:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'logo', '24', '2020-12-28 15:10:30', '2021-03-09 14:37:14'),
(2, 'favicon', '24', '2020-12-28 15:10:30', '2021-03-09 14:37:14'),
(3, 'site_name', 'CRM', '2020-12-28 15:10:30', '2021-03-09 14:37:14'),
(4, 'address', '123 ABC XYZ', '2020-12-28 15:10:30', '2021-03-09 14:37:14'),
(5, 'email', 'crm@gmail.com', '2020-12-28 15:10:30', '2021-03-09 14:37:14'),
(6, 'hotline', '0123456789', '2020-12-28 15:10:30', '2021-03-09 14:37:14'),
(7, 'phone', '0363906700', '2021-02-27 13:29:09', '2021-03-09 14:37:14'),
(8, 'website', 'https://crm.dsmart.work/', '2021-02-27 13:29:09', '2021-03-09 14:37:14'),
(9, 'email_support', 'dsmart@gmail.com', '2021-02-27 14:49:36', '2021-03-10 19:16:14'),
(10, 'hotline_support', '02343757575', '2021-02-27 14:49:36', '2021-03-10 19:16:14'),
(11, 'fanpage', 'xxxxxxxxxxxxxxx', '2021-02-27 14:49:36', '2021-03-10 19:16:14'),
(12, 'file_format', 'pdf,txt,doc,docx,jpg,png,xls,xlsx,ppt,pptx,ico,bmp,gif,jpe,jpeg', '2021-03-08 13:42:16', '2021-03-10 19:16:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `template` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pages`
--

INSERT INTO `pages` (`id`, `content`, `template`, `post_id`, `created_at`, `updated_at`) VALUES
(4, 'content11', 'home', 4, '2020-12-30 14:28:53', '2021-01-02 08:41:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `display_name`, `group`, `created_at`, `updated_at`) VALUES
(1, 'users.read', 'web', NULL, 'User', '2020-12-30 14:56:57', '2020-12-30 14:56:57'),
(2, 'users.create', 'web', NULL, 'User', '2020-12-30 14:57:26', '2020-12-30 14:57:26'),
(3, 'users.update', 'web', NULL, 'User', '2020-12-30 14:57:55', '2020-12-30 14:57:55'),
(4, 'users.delete', 'web', NULL, 'User', '2020-12-30 14:58:01', '2020-12-30 14:58:01'),
(9, 'media.create', 'web', NULL, 'Media', '2020-12-30 15:05:22', '2020-12-30 15:05:22'),
(10, 'media.read', 'web', NULL, 'Media', '2020-12-30 15:05:27', '2020-12-30 15:05:27'),
(11, 'media.update', 'web', NULL, 'Media', '2020-12-30 15:05:32', '2020-12-30 15:05:32'),
(12, 'media.delete', 'web', NULL, 'Media', '2020-12-30 15:05:44', '2020-12-30 15:05:44'),
(25, 'options.info', 'web', NULL, 'Cài đặt', '2020-12-30 15:14:08', '2020-12-30 15:14:08'),
(26, 'options.config', 'web', NULL, 'Cài đặt', '2020-12-30 15:14:13', '2020-12-30 15:14:13'),
(27, 'options.roles', 'web', NULL, 'Cài đặt', '2020-12-30 15:14:18', '2020-12-30 15:14:18'),
(29, 'dashboard.read', 'web', NULL, 'Dashboard', '2021-02-18 12:49:20', '2021-02-18 12:49:20'),
(30, 'department.create', 'web', NULL, 'Phòng ban', '2021-02-18 13:12:58', '2021-02-18 13:12:58'),
(31, 'department.read', 'web', NULL, 'Phòng ban', '2021-02-18 13:13:09', '2021-02-18 13:13:09'),
(32, 'department.update', 'web', NULL, 'Phòng ban', '2021-02-18 13:13:17', '2021-02-18 13:13:17'),
(33, 'department.delete', 'web', NULL, 'Phòng ban', '2021-02-18 13:13:25', '2021-02-18 13:13:25'),
(34, 'provider.create', 'web', NULL, 'Nhà cung cấp', '2021-02-18 13:13:41', '2021-02-18 13:13:41'),
(35, 'provider.read', 'web', NULL, 'Nhà cung cấp', '2021-02-18 13:13:51', '2021-02-18 13:13:51'),
(36, 'provider.update', 'web', NULL, 'Nhà cung cấp', '2021-02-18 13:13:59', '2021-02-18 13:13:59'),
(37, 'provider.delete', 'web', NULL, 'Nhà cung cấp', '2021-02-18 13:14:08', '2021-02-18 13:14:08'),
(38, 'maintenance_periodic.create', 'web', NULL, 'Bảo dưỡng định kỳ', '2021-02-18 13:14:25', '2021-02-18 13:14:25'),
(39, 'maintenance_periodic.read', 'web', NULL, 'Bảo dưỡng định kỳ', '2021-02-18 13:14:30', '2021-02-18 13:14:30'),
(40, 'maintenance_periodic.update', 'web', NULL, 'Bảo dưỡng định kỳ', '2021-02-18 13:14:36', '2021-02-18 13:14:36'),
(41, 'maintenance_periodic.delete', 'web', NULL, 'Bảo dưỡng định kỳ', '2021-02-18 13:14:43', '2021-02-18 13:14:43'),
(42, 'equipment_cate.create', 'web', NULL, 'Nhóm thiết bị', '2021-02-18 13:14:58', '2021-02-18 13:14:58'),
(43, 'equipment_cate.read', 'web', NULL, 'Nhóm thiết bị', '2021-02-18 13:15:04', '2021-02-18 13:15:04'),
(44, 'equipment_cate.update', 'web', NULL, 'Nhóm thiết bị', '2021-02-18 13:15:11', '2021-02-18 13:15:11'),
(45, 'equipment_cate.delete', 'web', NULL, 'Nhóm thiết bị', '2021-02-18 13:15:18', '2021-02-18 13:15:18'),
(46, 'device.create', 'web', NULL, 'Loại thiết bị', '2021-02-18 13:15:48', '2021-02-18 13:15:48'),
(47, 'device.read', 'web', NULL, 'Loại thiết bị', '2021-02-18 13:15:55', '2021-02-18 13:15:55'),
(48, 'device.update', 'web', NULL, 'Loại thiết bị', '2021-02-18 13:16:01', '2021-02-18 13:16:01'),
(49, 'repair.create', 'web', NULL, 'Đơn vị sửa chữa', '2021-02-18 13:16:18', '2021-02-18 13:16:18'),
(50, 'repair.read', 'web', NULL, 'Đơn vị sửa chữa', '2021-02-18 13:16:22', '2021-02-18 13:16:22'),
(51, 'repair.update', 'web', NULL, 'Đơn vị sửa chữa', '2021-02-18 13:16:29', '2021-02-18 13:16:29'),
(52, 'repair.delete', 'web', NULL, 'Đơn vị sửa chữa', '2021-02-18 13:16:35', '2021-02-18 13:16:35'),
(53, 'supplie.create', 'web', NULL, 'Loại vật tư', '2021-02-18 13:17:09', '2021-02-18 13:17:09'),
(54, 'supplie.read', 'web', NULL, 'Loại vật tư', '2021-02-18 13:17:13', '2021-02-18 13:17:13'),
(55, 'supplie.update', 'web', NULL, 'Loại vật tư', '2021-02-18 13:17:18', '2021-02-18 13:17:18'),
(56, 'supplie.delete', 'web', NULL, 'Loại vật tư', '2021-02-18 13:17:30', '2021-02-18 13:17:30'),
(57, 'unit.create', 'web', NULL, 'Đơn vị tính', '2021-02-18 13:17:44', '2021-02-18 13:17:44'),
(58, 'unit.read', 'web', NULL, 'Đơn vị tính', '2021-02-18 13:17:50', '2021-02-18 13:17:50'),
(59, 'unit.update', 'web', NULL, 'Đơn vị tính', '2021-02-18 13:17:55', '2021-02-18 13:17:55'),
(60, 'unit.delete', 'web', NULL, 'Đơn vị tính', '2021-02-18 13:18:01', '2021-02-18 13:18:01'),
(61, 'project.create', 'web', NULL, 'Dự án', '2021-02-18 13:18:31', '2021-02-18 13:18:31'),
(62, 'project.read', 'web', NULL, 'Dự án', '2021-02-18 13:18:39', '2021-02-18 13:18:39'),
(63, 'project.update', 'web', NULL, 'Dự án', '2021-02-18 13:18:44', '2021-02-18 13:18:44'),
(64, 'project.delete', 'web', NULL, 'Dự án', '2021-02-18 13:18:48', '2021-02-18 13:18:48'),
(65, 'equipment.create', 'web', NULL, 'Danh sách thiết bị', '2021-02-18 13:19:05', '2021-02-18 13:19:05'),
(66, 'equipment.read', 'web', NULL, 'Danh sách thiết bị', '2021-02-18 13:19:10', '2021-02-18 13:19:10'),
(67, 'history_status.read', 'web', NULL, 'Lịch sử trạng thái', '2021-02-18 13:19:24', '2021-02-18 13:19:24'),
(68, 'history_status.delete', 'web', NULL, 'Lịch sử trạng thái', '2021-02-18 13:19:31', '2021-02-18 13:19:31'),
(69, 'eqsupplie.create_amount', 'web', NULL, 'Danh sách vật tư', '2021-02-18 13:19:58', '2021-02-18 13:19:58'),
(70, 'eqsupplie.read', 'web', NULL, 'Danh sách vật tư', '2021-02-18 13:20:02', '2021-02-18 13:20:02'),
(71, 'eqsupplie.update', 'web', NULL, 'Danh sách vật tư', '2021-02-18 13:20:08', '2021-02-18 13:20:08'),
(72, 'eqsupplie.delete', 'web', NULL, 'Danh sách vật tư', '2021-02-18 13:20:17', '2021-02-18 13:20:17'),
(73, 'eqrepair.create', 'web', NULL, 'Sửa chữa thiết bị', '2021-02-18 13:20:59', '2021-02-18 13:20:59'),
(74, 'eqrepair.read', 'web', NULL, 'Sửa chữa thiết bị', '2021-02-18 13:21:04', '2021-02-18 13:21:04'),
(75, 'eqrepair.update', 'web', NULL, 'Sửa chữa thiết bị', '2021-02-18 13:21:10', '2021-02-18 13:21:10'),
(76, 'eqrepair.delete', 'web', NULL, 'Sửa chữa thiết bị', '2021-02-18 13:21:15', '2021-02-18 13:21:15'),
(77, 'maintenance.create', 'web', NULL, 'Đơn vị bảo trì', '2021-02-18 13:21:28', '2021-02-18 13:21:28'),
(78, 'maintenance.read', 'web', NULL, 'Đơn vị bảo trì', '2021-02-18 13:21:34', '2021-02-18 13:21:34'),
(79, 'maintenance.update', 'web', NULL, 'Đơn vị bảo trì', '2021-02-18 13:21:39', '2021-02-18 13:21:39'),
(80, 'maintenance.delete', 'web', NULL, 'Đơn vị bảo trì', '2021-02-18 13:21:46', '2021-02-18 13:21:46'),
(82, 'eqaccre.read', 'web', NULL, 'Kiểm định', '2021-02-18 13:22:11', '2021-02-18 13:22:11'),
(85, 'device.delete', 'web', NULL, 'Loại thiết bị', '2021-02-18 13:39:40', '2021-02-18 13:39:40'),
(86, 'guarantee.create', 'web', NULL, 'Bảo hành', '2021-02-18 13:51:39', '2021-02-18 13:51:39'),
(87, 'guarantee.read', 'web', NULL, 'Bảo hành', '2021-02-18 13:51:43', '2021-02-18 13:51:43'),
(88, 'guarantee.update', 'web', NULL, 'Bảo hành', '2021-02-18 13:51:48', '2021-02-18 13:51:48'),
(89, 'guarantee.delete', 'web', NULL, 'Bảo hành', '2021-02-18 13:51:53', '2021-02-18 13:51:53'),
(90, 'transfer.create', 'web', NULL, 'Điều chuyển thiết bị', '2021-02-18 13:52:08', '2021-02-18 13:52:08'),
(91, 'transfer.read', 'web', NULL, 'Điều chuyển thiết bị', '2021-02-18 13:52:11', '2021-02-18 13:52:11'),
(92, 'transfer.update', 'web', NULL, 'Điều chuyển thiết bị', '2021-02-18 13:52:16', '2021-02-18 13:52:16'),
(93, 'transfer.delete', 'web', NULL, 'Điều chuyển thiết bị', '2021-02-18 13:52:24', '2021-02-18 13:52:24'),
(94, 'liquidation.create', 'web', NULL, 'Thanh lý thiết bị', '2021-02-18 13:52:35', '2021-02-18 13:52:35'),
(95, 'liquidation.read', 'web', NULL, 'Thanh lý thiết bị', '2021-02-18 13:53:41', '2021-02-18 13:53:41'),
(97, 'liquidation.delete', 'web', NULL, 'Thanh lý thiết bị', '2021-02-18 13:55:26', '2021-02-18 13:55:26'),
(98, 'users.show_all', 'web', NULL, 'User', '2021-02-19 07:59:57', '2021-02-19 07:59:57'),
(104, 'imports.supplie', 'web', NULL, 'Imports', '2021-02-26 07:02:24', '2021-02-26 07:02:24'),
(105, 'imports.equipment', 'web', NULL, 'Imports', '2021-02-26 07:02:36', '2021-02-26 07:02:36'),
(106, 'equipment.create_supplie', 'web', NULL, 'Danh sách thiết bị', '2021-02-26 07:38:01', '2021-02-26 07:38:01'),
(107, 'equipment.update', 'web', NULL, 'Danh sách thiết bị', '2021-02-26 07:39:20', '2021-02-26 07:39:20'),
(108, 'equipment.show', 'web', NULL, 'Danh sách thiết bị', '2021-02-26 07:39:40', '2021-02-26 07:39:40'),
(109, 'equipment.delete', 'web', NULL, 'Danh sách thiết bị', '2021-02-26 07:39:49', '2021-02-26 07:39:49'),
(113, 'equipment.export', 'web', NULL, 'Danh sách thiết bị', '2021-02-26 08:29:07', '2021-02-26 08:29:07'),
(114, 'equipment.update_status', 'web', NULL, 'Danh sách thiết bị', '2021-02-26 20:51:27', '2021-02-26 20:51:27'),
(115, 'eqrepair.approved', 'web', NULL, 'Sửa chữa thiết bị', '2021-03-30 13:38:16', '2021-03-30 13:38:16'),
(116, 'eqsupplie.create_input', 'web', NULL, 'Danh sách vật tư', '2021-03-30 14:54:50', '2021-03-30 14:54:50'),
(117, 'equipment.hand', 'web', NULL, 'Danh sách thiết bị', '2021-03-30 15:23:14', '2021-03-30 15:23:14'),
(118, 'equipment.sup_calendar', 'web', NULL, 'Danh sách thiết bị', '2021-03-30 15:26:36', '2021-03-30 15:26:36'),
(119, 'equipment.liquidation', 'web', NULL, 'Danh sách thiết bị', '2021-03-30 18:08:02', '2021-03-30 18:08:02'),
(120, 'liquidation.approved', 'web', NULL, 'Thanh lý thiết bị', '2021-03-30 18:41:24', '2021-03-30 18:41:24'),
(121, 'transfer.approved', 'web', NULL, 'Điều chuyển thiết bị', '2021-03-30 20:24:51', '2021-03-30 20:24:51'),
(122, 'requests.read', 'web', NULL, 'Yêu cầu trợ giúp', '2021-03-30 21:19:23', '2021-03-30 21:19:23'),
(123, 'requests.create', 'web', NULL, 'Yêu cầu trợ giúp', '2021-03-30 21:19:37', '2021-03-30 21:19:37'),
(124, 'requests.update', 'web', NULL, 'Yêu cầu trợ giúp', '2021-03-30 21:19:43', '2021-03-30 21:19:43'),
(125, 'requests.delete', 'web', NULL, 'Yêu cầu trợ giúp', '2021-03-30 21:19:48', '2021-03-30 21:19:48'),
(126, 'general.equipment', 'web', NULL, 'Bảng kê - Tổng hợp', '2021-03-31 18:09:57', '2021-03-31 18:09:57'),
(127, 'general.supplie', 'web', NULL, 'Bảng kê - Tổng hợp', '2021-03-31 18:10:17', '2021-03-31 18:10:17'),
(128, 'general.repair', 'web', NULL, 'Bảng kê - Tổng hợp', '2021-03-31 18:10:27', '2021-03-31 18:10:27'),
(129, 'general.liquidation', 'web', NULL, 'Bảng kê - Tổng hợp', '2021-03-31 18:10:38', '2021-03-31 18:10:38'),
(130, 'general.maintenance', 'web', NULL, 'Bảng kê - Tổng hợp', '2021-03-31 18:12:09', '2021-03-31 18:12:09'),
(131, 'general.transfer', 'web', NULL, 'Bảng kê - Tổng hợp', '2021-03-31 18:14:44', '2021-03-31 18:14:44'),
(132, 'general.supplie_department', 'web', NULL, 'Bảng kê - Tổng hợp', '2021-03-31 18:15:19', '2021-03-31 18:15:19'),
(133, 'statistical.info', 'web', NULL, 'Thống kê', '2021-04-01 12:16:42', '2021-04-01 12:16:42'),
(134, 'statistical.department', 'web', NULL, 'Thống kê', '2021-04-01 12:21:15', '2021-04-01 12:21:15'),
(135, 'statistical.classify', 'web', NULL, 'Thống kê', '2021-04-01 12:21:33', '2021-04-01 12:21:33'),
(136, 'statistical.year', 'web', NULL, 'Thống kê', '2021-04-01 12:21:50', '2021-04-01 12:21:50'),
(137, 'statistical.risk', 'web', NULL, 'Thống kê', '2021-04-01 12:22:06', '2021-04-01 12:22:06'),
(138, 'statistical.project', 'web', NULL, 'Thống kê', '2021-04-01 12:22:16', '2021-04-01 12:22:16'),
(139, 'statistical.warranty_date', 'web', NULL, 'Thống kê', '2021-04-01 12:23:41', '2021-04-01 12:23:41'),
(140, 'statistical.supplies', 'web', NULL, 'Thống kê', '2021-04-01 12:23:55', '2021-04-01 12:23:55'),
(141, 'statistical.accreditation', 'web', NULL, 'Thống kê', '2021-04-01 12:24:19', '2021-04-01 12:24:19'),
(142, 'users.diary', 'web', NULL, 'User', '2021-04-01 20:42:00', '2021-04-01 20:42:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `meta_key` text COLLATE utf8mb4_unicode_ci,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `image_id`, `excerpt`, `meta_key`, `meta_value`, `type`, `user_id`, `status`, `created_at`, `updated_at`) VALUES
(4, 'page 111', 'page-1', NULL, 'description11', 'EO key11', 'EO content11', 'page', NULL, 'draft', '2020-12-30 14:28:53', '2021-01-02 08:41:02');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `procurement` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `decision` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` bigint(20) UNSIGNED DEFAULT NULL,
  `fromDate` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `toDate` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `author_id` bigint(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `projects`
--

INSERT INTO `projects` (`id`, `title`, `slug`, `procurement`, `decision`, `note`, `status`, `image`, `fromDate`, `toDate`, `author_id`, `created_at`, `updated_at`) VALUES
(25, 'Nâng cấp', 'nang-cap', 'SYT', '001', 'Note', 'active', NULL, '01/01/2021 6:58 AM', '01/01/2022 6:58 AM', NULL, '2021-01-22 04:58:26', '2021-01-22 04:58:26'),
(26, 'XHH', 'xhh', 'XHH', '2021', 'Hiện chưa có ghi chú', 'active', NULL, '02/01/2021 2:18 PM', '03/31/2021 2:18 PM', NULL, '2021-02-18 12:18:12', '2021-02-18 12:18:12'),
(30, 'demo', 'demo-2', 'demo', 'demo', 'fdedszf', 'active', NULL, '02/25/2021 9:52 AM', '02/26/2021 9:52 AM', NULL, '2021-02-25 07:53:10', '2021-02-25 07:53:10'),
(31, 'VP', 'vp', 'Viện phí', '2021', 'Hiện chưa có ghi chú', 'active', NULL, '03/01/2021 1:26 PM', '03/17/2021 1:26 PM', 37, '2021-03-17 17:26:48', '2021-03-17 17:26:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `providers`
--

CREATE TABLE `providers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tax_code` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fields_operation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `repair` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` bigint(20) UNSIGNED DEFAULT NULL,
  `author_id` bigint(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `providers`
--

INSERT INTO `providers` (`id`, `title`, `slug`, `type`, `tax_code`, `fields_operation`, `note`, `repair`, `contact`, `email`, `address`, `image`, `author_id`, `created_at`, `updated_at`) VALUES
(70, 'Vật tư thay thế', 'vat-tu-thay-the', 'maintenances', '34543', '[\"provided\",\"repair\"]', '1', NULL, '44331255', 'gohoan12g@gmail.com', '44412355', NULL, NULL, '2021-01-18 01:47:34', '2021-01-18 06:47:34'),
(71, 'Công ty sữa chữa 4', 'vat-tu', 'repairs', '34543', '[\"repair\",\"maintenance\"]', 'ádas', NULL, '44331255', 'gohoan12g@gmail.com', '44412355', NULL, NULL, '2021-03-19 03:11:34', '2021-03-19 14:11:34'),
(72, 'Công ty Phương Đông', 'cong-ty-phuong-dong', 'providers', '0123456789', '[\"provided\",\"maintenance\"]', 'Note', NULL, 'Nguyễn Phương Đông', 'phuongdong@gmail.com', 'HN', NULL, NULL, '2021-02-05 04:15:24', '2021-02-05 09:15:24'),
(75, 'Công ty bảo trì', 'thiet-bi-thay-the', 'maintenances', '12345678', '[\"provided\",\"maintenance\"]', 'Hiện chưa có ghi chú', NULL, 'nguyenhoang', 'lqviet.it@gmail.com', 'nguyenhoang', NULL, NULL, '2021-02-18 06:43:57', '2021-02-18 11:43:57'),
(76, 'Công ty sửa chữa 2', 'thiet-bi-thay-the-1', 'repairs', '12345678', '[\"repair\",\"maintenance\"]', 'nguyenhoang', NULL, 'nguyenhoang', 'lqviet.it@gmail.com', 'nguyenhoang', NULL, NULL, '2021-03-19 03:00:17', '2021-03-19 14:00:17'),
(79, 'Unde consequatur aut', 'unde-consequatur-aut', 'providers', 'Voluptatem Quasi ne', '[\"provided\",\"repair\"]', 'Modi distinctio Est', NULL, 'Laudantium omnis cu', 'cylov@mailinator.com', 'Soluta similique mol', NULL, NULL, '2021-02-05 14:02:23', '2021-02-05 14:02:23'),
(80, 'Công ty cung cấp, bảo trì, sửa chữa', 'vel-magni-est-ut-ut', 'providers', 'Occaecat cupidatat a', '[\"provided\",\"repair\",\"maintenance\"]', 'Công ty cung cấp, bảo trì, sửa chữa', NULL, 'Doloremque cumque ma', 'gaqiq@mailinator.com', 'Dolor voluptas quas', NULL, NULL, '2021-03-30 20:11:41', '2021-03-31 07:11:41'),
(82, 'Sapiente est magna', 'sapiente-est-magna', 'repairs', 'Quo recusandae Cons', '[\"provided\",\"repair\",\"maintenance\",\"accreditation\"]', 'Qui tenetur culpa m', NULL, 'Molestiae quibusdam', 'cutago@mailinator.com', 'Rerum ut do nostrud', NULL, NULL, '2021-02-05 14:18:09', '2021-02-05 14:18:09'),
(83, 'Công ty sữa chữa 1', 'cong-ty-sua-chua-1', 'repairs', '0123456789', '[\"repair\"]', 'Hiện chưa có ghi chú', NULL, 'Nguyễn Sữa Chữa', 'ctysuachua@gmail.com', 'HN', NULL, NULL, '2021-02-18 11:45:16', '2021-02-18 11:45:16'),
(84, 'Công ty kiểm định', 'cong-ty-kiem-dinh', 'providers', '0123456789', '[\"accreditation\"]', 'Hiện chưa có ghi chú', NULL, 'Nguyễn Kiểm Định', 'ctykiemdinh@gmail.com', 'HCM', NULL, NULL, '2021-02-18 11:46:24', '2021-02-18 11:46:24'),
(85, 'Công ty cung cấp, bảo trì', 'demo', 'providers', '214524154', '[\"provided\",\"maintenance\"]', 'demo', NULL, '0363906700', 'vanphuoc260797@gmail.com', 'HN', 14, NULL, '2021-03-30 20:11:01', '2021-03-31 07:11:01'),
(86, 'demo1', 'demo-1', 'maintenances', 'demo', '[\"provided\",\"maintenance\"]', 'demo', NULL, '0363906700', 'vanphuoc260797@gmail.com', 'tổ dân phố 4, phường Hương Văn,Hương Trà, Huế (0363906700)', 18, NULL, '2021-03-01 08:19:30', '2021-03-01 20:19:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `providers_cat`
--

CREATE TABLE `providers_cat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_id` int(11) DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `providers_cat`
--

INSERT INTO `providers_cat` (`id`, `provider_id`, `cat_id`) VALUES
(23, 35, 7),
(28, 36, 8),
(29, 37, 7),
(31, 38, 7),
(34, 36, 7),
(35, 36, 16),
(36, 39, 7),
(37, 40, 7),
(40, 41, 7),
(41, 41, 8),
(43, 42, 7),
(44, 42, 8),
(45, 42, 16),
(46, 43, 7),
(47, 43, 8),
(48, 43, 17),
(49, 44, 7),
(50, 44, 16),
(51, 44, 8),
(52, 44, 17),
(53, 45, 8),
(54, 45, 17),
(55, 45, 18),
(56, 46, 17),
(57, 47, 8),
(58, 47, 16),
(59, 47, 7),
(60, 48, 16),
(61, 48, 18),
(62, 48, 19),
(63, 49, 8),
(64, 49, 16),
(65, 51, 23),
(66, 51, 24),
(67, 52, 23),
(68, 52, 24),
(69, 52, 25),
(70, 53, 25),
(71, 54, 23),
(72, 55, 24),
(73, 54, 24),
(74, 54, 25),
(75, 56, 23),
(76, 56, 24),
(77, 56, 25),
(78, 58, 23),
(79, 58, 24),
(80, 59, 23),
(81, 59, 24),
(82, 59, 25),
(83, 60, 23),
(84, 60, 24),
(85, 60, 25),
(91, 63, 23),
(92, 63, 24),
(94, 64, 23),
(95, 65, 23),
(96, 65, 24),
(97, 66, 27),
(98, 63, 27),
(99, 63, 28),
(100, 63, 29),
(101, 67, 27),
(102, 61, 28),
(103, 62, 28),
(104, 68, 27),
(105, 69, 27),
(106, 69, 29),
(107, 70, 28),
(108, 71, 27),
(109, 71, 29),
(110, 72, 27),
(111, 72, 28),
(112, 73, 27),
(113, 73, 29),
(114, 74, 29),
(115, 74, 30),
(116, 75, 29),
(117, 76, 29),
(118, 76, 30),
(119, 77, 27),
(120, 78, 31),
(121, 79, 29),
(122, 79, 30),
(123, 80, 31),
(124, 81, 31),
(125, 79, 28),
(126, 79, 29),
(127, 79, 31),
(128, 80, 28),
(129, 81, 29),
(130, 81, 31),
(131, 82, 28),
(132, 82, 31),
(133, 83, 27),
(134, 83, 30),
(135, 84, 27),
(136, 85, 30),
(137, 86, 29),
(138, 87, 28),
(139, 87, 29),
(140, 87, 30);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `requests`
--

CREATE TABLE `requests` (
  `id` bigint(10) UNSIGNED NOT NULL,
  `user_id` bigint(10) UNSIGNED DEFAULT NULL,
  `department_id` bigint(10) UNSIGNED DEFAULT NULL,
  `device_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` date DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reply` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sent',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `requests`
--

INSERT INTO `requests` (`id`, `user_id`, `department_id`, `device_name`, `time`, `serial`, `model`, `code`, `note`, `reply`, `status`, `created_at`, `updated_at`) VALUES
(19, 36, 32, 'abc', '2021-03-19', 'abc', 'acb', '123', 'abc', NULL, 'sent', '2021-03-16 13:55:53', '2021-03-16 13:55:53'),
(23, NULL, 33, 'abc', '2021-03-18', 'abc', 'acb', '123', '123', 'đã nhận được yêu cầu trợ giúp', 'confirmed', '2021-03-18 18:48:05', '2021-03-30 23:11:45'),
(24, 37, 32, 'Tủ thuốc', '2021-03-31', NULL, NULL, NULL, 'Hỏng khóa', 'đã nhận yêu cầu, đã phản hồi', 'confirmed', '2021-03-31 06:08:21', '2021-04-02 16:41:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', 'Administrator', '2020-12-31 08:46:12', '2020-12-31 09:08:22'),
(8, 'nvkp', 'web', 'Nhân viên khoa phòng', '2021-01-05 09:45:16', '2021-01-05 09:45:16'),
(9, 'Nvpvt', 'web', 'Nhân viên phòng Vật tư', '2021-01-05 09:45:45', '2021-01-05 09:45:45'),
(10, 'Ddt', 'web', 'Điều dưỡng trưởng', '2021-01-05 09:46:23', '2021-01-05 09:46:23'),
(11, 'BGD', 'web', 'Ban giám đốc', '2021-01-05 09:46:48', '2021-01-05 09:46:48'),
(12, 'TK', 'web', 'Trưởng khoa', '2021-01-15 08:12:52', '2021-01-15 08:12:52'),
(13, 'TPVT', 'web', 'Trưởng phòng Vật tư', '2021-01-21 15:07:48', '2021-01-21 15:07:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(25, 1),
(26, 1),
(27, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(82, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(97, 1),
(98, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(1, 8),
(3, 8),
(29, 8),
(65, 8),
(66, 8),
(67, 8),
(68, 8),
(69, 8),
(70, 8),
(71, 8),
(72, 8),
(74, 8),
(75, 8),
(76, 8),
(90, 8),
(91, 8),
(92, 8),
(93, 8),
(106, 8),
(107, 8),
(108, 8),
(109, 8),
(113, 8),
(114, 8),
(1, 9),
(3, 9),
(25, 9),
(26, 9),
(27, 9),
(29, 9),
(30, 9),
(31, 9),
(32, 9),
(33, 9),
(34, 9),
(35, 9),
(36, 9),
(37, 9),
(38, 9),
(39, 9),
(40, 9),
(41, 9),
(42, 9),
(43, 9),
(44, 9),
(45, 9),
(46, 9),
(47, 9),
(48, 9),
(49, 9),
(50, 9),
(51, 9),
(52, 9),
(53, 9),
(54, 9),
(55, 9),
(56, 9),
(57, 9),
(58, 9),
(59, 9),
(60, 9),
(61, 9),
(62, 9),
(63, 9),
(64, 9),
(65, 9),
(66, 9),
(67, 9),
(68, 9),
(69, 9),
(70, 9),
(71, 9),
(72, 9),
(73, 9),
(74, 9),
(75, 9),
(76, 9),
(77, 9),
(78, 9),
(79, 9),
(80, 9),
(82, 9),
(85, 9),
(86, 9),
(87, 9),
(88, 9),
(89, 9),
(90, 9),
(91, 9),
(92, 9),
(93, 9),
(94, 9),
(95, 9),
(97, 9),
(104, 9),
(105, 9),
(106, 9),
(107, 9),
(108, 9),
(109, 9),
(113, 9),
(114, 9),
(115, 9),
(116, 9),
(117, 9),
(118, 9),
(119, 9),
(120, 9),
(121, 9),
(1, 10),
(3, 10),
(9, 10),
(10, 10),
(11, 10),
(12, 10),
(34, 10),
(35, 10),
(36, 10),
(37, 10),
(38, 10),
(39, 10),
(40, 10),
(41, 10),
(42, 10),
(43, 10),
(44, 10),
(45, 10),
(46, 10),
(47, 10),
(48, 10),
(49, 10),
(50, 10),
(51, 10),
(52, 10),
(53, 10),
(54, 10),
(55, 10),
(56, 10),
(57, 10),
(58, 10),
(59, 10),
(60, 10),
(61, 10),
(62, 10),
(63, 10),
(64, 10),
(65, 10),
(66, 10),
(67, 10),
(68, 10),
(69, 10),
(70, 10),
(71, 10),
(72, 10),
(73, 10),
(74, 10),
(75, 10),
(76, 10),
(77, 10),
(78, 10),
(79, 10),
(80, 10),
(82, 10),
(85, 10),
(86, 10),
(87, 10),
(88, 10),
(89, 10),
(90, 10),
(91, 10),
(92, 10),
(93, 10),
(94, 10),
(95, 10),
(97, 10),
(1, 11),
(3, 11),
(29, 11),
(65, 11),
(66, 11),
(67, 11),
(68, 11),
(1, 12),
(3, 12),
(9, 12),
(10, 12),
(11, 12),
(12, 12),
(30, 12),
(34, 12),
(38, 12),
(42, 12),
(46, 12),
(49, 12),
(50, 12),
(51, 12),
(52, 12),
(57, 12),
(61, 12),
(65, 12),
(69, 12),
(73, 12),
(77, 12),
(86, 12),
(90, 12),
(94, 12),
(1, 13),
(2, 13),
(3, 13),
(4, 13),
(9, 13),
(10, 13),
(11, 13),
(12, 13),
(25, 13),
(26, 13),
(27, 13),
(29, 13),
(30, 13),
(31, 13),
(32, 13),
(33, 13),
(34, 13),
(35, 13),
(36, 13),
(37, 13),
(38, 13),
(39, 13),
(40, 13),
(41, 13),
(42, 13),
(43, 13),
(44, 13),
(45, 13),
(46, 13),
(47, 13),
(48, 13),
(49, 13),
(50, 13),
(51, 13),
(52, 13),
(53, 13),
(54, 13),
(55, 13),
(56, 13),
(57, 13),
(58, 13),
(59, 13),
(60, 13),
(61, 13),
(62, 13),
(63, 13),
(64, 13),
(65, 13),
(66, 13),
(67, 13),
(68, 13),
(69, 13),
(70, 13),
(71, 13),
(72, 13),
(73, 13),
(74, 13),
(75, 13),
(76, 13),
(77, 13),
(78, 13),
(79, 13),
(80, 13),
(82, 13),
(85, 13),
(86, 13),
(87, 13),
(88, 13),
(89, 13),
(90, 13),
(91, 13),
(92, 13),
(93, 13),
(94, 13),
(95, 13),
(97, 13),
(98, 13),
(104, 13),
(105, 13),
(106, 13),
(107, 13),
(108, 13),
(109, 13),
(113, 13),
(114, 13);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `schedule_repairs`
--

CREATE TABLE `schedule_repairs` (
  `id` bigint(11) UNSIGNED NOT NULL,
  `equipment_id` bigint(11) UNSIGNED DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repair_date` date DEFAULT NULL,
  `pre_corrected` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` bigint(11) UNSIGNED DEFAULT NULL,
  `expected_cost` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acceptance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed_repair` date DEFAULT NULL,
  `repaired_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `actual_costs` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `documents` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `planning_date` date DEFAULT NULL,
  `user_id` bigint(11) UNSIGNED DEFAULT NULL,
  `representative` bigint(11) UNSIGNED DEFAULT NULL,
  `update_date` date DEFAULT NULL,
  `person_up` bigint(10) UNSIGNED DEFAULT NULL,
  `approved` bigint(11) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `schedule_repairs`
--

INSERT INTO `schedule_repairs` (`id`, `equipment_id`, `code`, `repair_date`, `pre_corrected`, `provider_id`, `expected_cost`, `acceptance`, `completed_repair`, `repaired_status`, `actual_costs`, `documents`, `planning_date`, `user_id`, `representative`, `update_date`, `person_up`, `approved`, `created_at`, `updated_at`) VALUES
(24, 231, '75932', '2021-04-07', 'demo2', NULL, '12345', 'create', '2021-04-29', 'demo', '1234567', NULL, '2021-04-06', 36, NULL, NULL, NULL, NULL, '2021-04-06 20:39:54', '2021-04-06 20:39:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('k39lO0EfmxwHHY6DTM1ghu6BZIn4pJrEfQQZEela', 21, '58.187.165.214', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36 Edg/89.0.774.68', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoieHdhczV4OWlPZEJDT3V6eUUzWVpQSGtqT3FrSUlaM01WNXRKS2s5RyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6ODE6Imh0dHBzOi8vY3JtLmRzbWFydC53b3JrL2ltYWdlL2hpbmgtYW5oLWhvYS1jdWMtY2F1LXZvbmctZGVwLTExMDgxNzk4OS5qcGcvMTUwLzEwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjIxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkTGFHV0RqeVhRUk9yS2lBRUhBUHEzLkFNRElaMGJ5clFMaEhlMkZrR0taTjhrSndFT1JoM1ciO30=', 1617729452),
('M3iHiBz8EDmfqbw0qBCYNmAvMlwcRIE29FYIHw2W', 36, '117.2.216.68', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.114 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVVkyb2Q4d1VDc1pKcFpLMlBseTVZTnFPaTBtanNUSjI2S3JQSGNSOSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjQ5OiJodHRwczovL2NybS5kc21hcnQud29yay9pbWFnZS9sb2dvLWRhcmsucG5nLzQwLzQwIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MzY7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRkc2h1YUtVNHk1aU5BWEpZQXlpeFplTHY1dTZoUy9GVDdEeWRYU0lRLkxUWjRxWmd1MVRzTyI7fQ==', 1617756212);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplies`
--

CREATE TABLE `supplies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `image` bigint(20) UNSIGNED DEFAULT NULL,
  `author_id` bigint(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplies`
--

INSERT INTO `supplies` (`id`, `title`, `slug`, `code`, `image`, `author_id`, `created_at`, `updated_at`) VALUES
(4, 'Vật tư tiêu hao', 'vat-tu-tieu-hao', 'VTTH', NULL, NULL, '2021-01-09 08:39:40', '2021-02-18 11:51:56'),
(5, 'Vật tư thay thế', 'vat-tu-thay-the', 'VTTT', NULL, NULL, '2021-01-09 08:39:49', '2021-02-18 11:51:44'),
(6, 'Phụ kiện kèm theo', 'phu-kien-di-kem', 'PHKT', NULL, NULL, '2021-01-09 08:39:56', '2021-02-27 18:04:51'),
(7, 'Thành phần cấu thành', 'vat-tu-khoa-phong', 'TPCT', NULL, NULL, '2021-01-29 14:00:04', '2021-02-18 12:17:11'),
(9, 'Máy chính', 'may-chinh', 'MC', NULL, 37, '2021-03-13 15:08:37', '2021-03-13 15:08:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplies_devices`
--

CREATE TABLE `supplies_devices` (
  `id` bigint(20) NOT NULL,
  `supplie_id` int(20) DEFAULT NULL,
  `device_id` int(20) DEFAULT NULL,
  `amount` int(20) DEFAULT NULL,
  `note` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date_delivery` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplies_devices`
--

INSERT INTO `supplies_devices` (`id`, `supplie_id`, `device_id`, `amount`, `note`, `user_id`, `date_delivery`, `created_at`, `updated_at`) VALUES
(396, 136, 215, 77, 'spelled_by_device', 33, NULL, '2021-03-11 21:31:12', '2021-03-11 21:31:12'),
(397, 137, 215, 100, 'spelled_by_device', 33, NULL, '2021-03-11 21:31:24', '2021-03-11 21:31:24'),
(441, 137, 179, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-12 13:59:14', '2021-03-12 13:59:14'),
(442, 137, 160, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-12 13:59:14', '2021-03-12 13:59:14'),
(443, 138, 186, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-12 22:21:55', '2021-03-12 22:21:55'),
(444, 138, 185, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-12 22:21:55', '2021-03-12 22:21:55'),
(445, 138, 181, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-12 22:21:55', '2021-03-12 22:21:55'),
(446, 138, 179, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-12 22:21:55', '2021-03-12 22:21:55'),
(447, 138, 160, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-12 22:21:56', '2021-03-12 22:21:56'),
(448, 141, 221, 1, 'spelled_by_device', 37, NULL, '2021-03-13 15:10:57', '2021-03-13 15:10:57'),
(449, 143, 221, 1, 'spelled_by_device', 37, NULL, '2021-03-13 15:12:25', '2021-03-13 15:12:25'),
(450, 144, 221, 1, 'spelled_by_device', 37, NULL, '2021-03-13 15:13:08', '2021-03-13 15:13:08'),
(451, 145, 221, 1, 'spelled_by_device', 37, NULL, '2021-03-13 15:13:40', '2021-03-13 15:13:40'),
(452, 146, 221, 1, 'spelled_by_device', 37, NULL, '2021-03-13 15:14:31', '2021-03-13 15:14:31'),
(453, 147, 221, 1, 'spelled_by_device', 37, NULL, '2021-03-13 15:15:52', '2021-03-13 15:15:52'),
(454, 142, 190, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-13 15:33:08', '2021-03-13 15:33:08'),
(455, 142, 187, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-13 15:33:08', '2021-03-13 15:33:08'),
(456, 142, 184, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-13 15:33:08', '2021-03-13 15:33:08'),
(457, 142, 159, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-13 15:33:08', '2021-03-13 15:33:08'),
(458, 142, 216, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-13 15:33:21', '2021-03-13 15:33:21'),
(459, 142, 195, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-13 15:33:21', '2021-03-13 15:33:21'),
(460, 148, 240, 1, 'spelled_by_device', 37, NULL, '2021-03-13 18:31:12', '2021-03-13 18:31:12'),
(461, 149, 240, 1, 'spelled_by_device', 37, NULL, '2021-03-13 18:31:45', '2021-03-13 18:31:45'),
(462, 150, 240, 1, 'spelled_by_device', 37, NULL, '2021-03-13 18:32:06', '2021-03-13 18:32:06'),
(463, 151, 245, 1000, 'spelled_by_device', 36, NULL, '2021-03-13 20:27:22', '2021-03-13 20:27:22'),
(469, 151, 234, 1000, 'supplies_can_equipment', 33, '2021-03-19', '2021-03-13 22:07:01', '2021-03-19 15:12:15'),
(470, 151, 235, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-13 22:07:01', '2021-03-13 22:07:01'),
(471, 151, 236, 5000, 'supplies_can_equipment', 33, '2021-03-20', '2021-03-13 22:07:01', '2021-03-19 15:12:35'),
(472, 151, 237, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-13 22:07:01', '2021-03-13 22:07:01'),
(473, 151, 238, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-13 22:07:01', '2021-03-13 22:07:01'),
(474, 151, 239, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-13 22:07:01', '2021-03-13 22:07:01'),
(475, 151, 225, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-13 22:07:25', '2021-03-13 22:07:25'),
(476, 151, 226, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-13 22:07:25', '2021-03-13 22:07:25'),
(477, 151, 227, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-13 22:07:25', '2021-03-13 22:07:25'),
(478, 151, 228, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-13 22:07:25', '2021-03-13 22:07:25'),
(483, 139, 246, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-14 18:13:27', '2021-03-14 18:13:27'),
(484, 152, 247, 14, 'spelled_by_device', 33, NULL, '2021-03-15 12:47:52', '2021-03-15 12:47:52'),
(485, 152, 222, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-15 18:40:06', '2021-03-15 18:40:06'),
(486, 152, 223, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-15 18:40:06', '2021-03-15 18:40:06'),
(487, 142, 222, 11, 'supplies_can_equipment', 37, '2021-03-18', '2021-03-18 10:42:40', '2021-03-18 10:43:32'),
(488, 150, 247, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-19 15:12:51', '2021-03-19 15:12:51'),
(489, 150, 222, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-19 15:12:51', '2021-03-19 15:12:51'),
(490, 150, 223, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-19 15:12:51', '2021-03-19 15:12:51'),
(491, 150, 224, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-19 15:12:51', '2021-03-19 15:12:51'),
(492, 150, 225, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-19 15:12:51', '2021-03-19 15:12:51'),
(493, 217, 245, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-19 21:02:46', '2021-03-19 21:02:46'),
(494, 217, 244, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-19 21:02:46', '2021-03-19 21:02:46'),
(495, 217, 243, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-19 21:02:46', '2021-03-19 21:02:46'),
(496, 217, 242, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-19 21:02:46', '2021-03-19 21:02:46'),
(497, 217, 241, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-19 21:02:46', '2021-03-19 21:02:46'),
(498, 218, 240, 1, 'spelled_by_device', 37, NULL, '2021-03-22 22:21:18', '2021-03-22 22:21:18'),
(499, 219, 240, 1, 'spelled_by_device', 37, NULL, '2021-03-22 22:21:51', '2021-03-22 22:21:51'),
(500, 220, 228, 65, 'spelled_by_device', 33, NULL, '2021-03-23 13:44:52', '2021-03-23 13:44:52'),
(501, 221, 248, 34, 'spelled_by_device', 33, NULL, '2021-03-23 13:48:35', '2021-03-23 13:48:35'),
(502, 222, 240, 1, 'spelled_by_device', 37, NULL, '2021-03-23 16:01:15', '2021-03-23 16:01:15'),
(503, 223, 250, 1, 'spelled_by_device', 37, NULL, '2021-03-23 16:07:58', '2021-03-23 16:07:58'),
(504, 224, 238, 15, 'spelled_by_device', 33, NULL, '2021-03-23 19:11:00', '2021-03-23 19:11:00'),
(505, 225, 235, 63, 'spelled_by_device', 33, NULL, '2021-03-23 19:40:29', '2021-03-23 19:40:29'),
(506, 226, 253, 85, 'spelled_by_device', 33, NULL, '2021-03-24 13:44:12', '2021-03-24 13:44:12'),
(507, 227, 257, 9, 'spelled_by_device', 33, NULL, '2021-03-25 13:12:46', '2021-03-25 13:12:46'),
(508, 228, 235, 10, 'spelled_by_device', 33, NULL, '2021-03-25 13:12:57', '2021-03-25 13:12:57'),
(509, 229, 232, 83, 'spelled_by_device', 33, NULL, '2021-03-25 13:13:55', '2021-03-25 13:13:55'),
(510, 229, 255, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-25 14:07:24', '2021-03-25 14:07:24'),
(512, 229, 253, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-25 14:07:24', '2021-03-25 14:07:24'),
(513, 215, 259, NULL, 'supplies_can_equipment', 36, NULL, '2021-03-25 14:28:16', '2021-03-25 14:28:16'),
(514, 215, 256, NULL, 'supplies_can_equipment', 36, NULL, '2021-03-25 14:28:16', '2021-03-25 14:28:16'),
(515, 230, 261, 99, 'spelled_by_device', 33, NULL, '2021-03-25 18:17:18', '2021-03-25 18:17:18'),
(516, 231, 261, 37, 'spelled_by_device', 33, NULL, '2021-03-25 18:17:32', '2021-03-25 18:17:32'),
(517, 231, 257, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-27 12:37:00', '2021-03-27 12:37:00'),
(518, 231, 245, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-27 12:37:00', '2021-03-27 12:37:00'),
(519, 231, 244, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-27 12:37:00', '2021-03-27 12:37:00'),
(520, 231, 243, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-27 12:37:00', '2021-03-27 12:37:00'),
(521, 231, 242, NULL, 'supplies_can_equipment', 33, NULL, '2021-03-27 12:37:13', '2021-03-27 12:37:13'),
(522, 232, 269, 78, 'spelled_by_device', 32, NULL, '2021-03-30 12:59:44', '2021-03-30 12:59:44'),
(523, 233, 269, 60, 'spelled_by_device', 32, NULL, '2021-03-30 13:00:06', '2021-03-30 13:00:06'),
(525, 233, 256, 10, 'supplies_can_equipment', 32, '2021-03-30', '2021-03-30 13:29:25', '2021-03-30 13:42:43'),
(526, 233, 222, 30, 'supplies_can_equipment', 36, '2021-04-02', '2021-03-30 13:29:25', '2021-04-02 18:50:54'),
(527, 232, 256, NULL, 'supplies_can_equipment', 32, NULL, '2021-03-30 13:48:16', '2021-03-30 13:48:16'),
(528, 232, 222, NULL, 'supplies_can_equipment', 32, NULL, '2021-03-30 13:48:16', '2021-03-30 13:48:16'),
(530, 254, 271, 1, 'spelled_by_device', 37, NULL, '2021-03-31 06:31:19', '2021-03-31 06:31:19'),
(531, 255, 271, 1, 'spelled_by_device', 37, NULL, '2021-03-31 06:35:07', '2021-03-31 06:35:07'),
(532, 255, 236, NULL, 'supplies_can_equipment', 33, NULL, '2021-04-01 14:38:30', '2021-04-01 14:38:30'),
(533, 255, 237, NULL, 'supplies_can_equipment', 33, NULL, '2021-04-01 14:38:30', '2021-04-01 14:38:30'),
(534, 255, 238, NULL, 'supplies_can_equipment', 33, NULL, '2021-04-01 14:38:30', '2021-04-01 14:38:30'),
(535, 254, 257, NULL, 'supplies_can_equipment', 33, NULL, '2021-04-01 14:40:32', '2021-04-01 14:40:32'),
(536, 254, 245, NULL, 'supplies_can_equipment', 33, NULL, '2021-04-01 14:40:32', '2021-04-01 14:40:32'),
(537, 254, 244, NULL, 'supplies_can_equipment', 33, NULL, '2021-04-01 14:41:16', '2021-04-01 14:41:16'),
(538, 254, 243, NULL, 'supplies_can_equipment', 33, NULL, '2021-04-01 14:41:16', '2021-04-01 14:41:16'),
(539, 254, 242, NULL, 'supplies_can_equipment', 33, NULL, '2021-04-01 14:41:16', '2021-04-01 14:41:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `equipment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `time_move` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` bigint(20) UNSIGNED DEFAULT NULL,
  `note` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `status` varchar(191) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transfers`
--

INSERT INTO `transfers` (`id`, `equipment_id`, `user_id`, `department_id`, `content`, `time_move`, `image`, `note`, `amount`, `status`, `created_at`, `updated_at`) VALUES
(23, 232, 32, 40, 'Xin điều chuyển thiết bị từ khoa tới khoa', '2021-03-30', NULL, 'Sed ut excepteur qui', 10, 'public', '2021-03-29 14:47:45', '2021-03-30 12:14:58'),
(25, 232, 32, 40, 'Xin điều chuyển thiết bị từ khoa tới khoa', '2021-03-30', NULL, 'XXXXXXXXXX', 1, 'public', '2021-03-30 12:29:52', '2021-03-30 12:29:58'),
(26, 238, 33, 33, 'Xin điều chuyển thiết bị từ khoa tới khoa', '2021-03-30', NULL, 'xxxxxxxxx', 11, 'public', '2021-03-30 15:05:39', '2021-03-30 15:05:47');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` bigint(20) UNSIGNED DEFAULT NULL,
  `device_id` bigint(20) UNSIGNED DEFAULT NULL,
  `supplie_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_id` bigint(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `units`
--

INSERT INTO `units` (`id`, `title`, `slug`, `image`, `device_id`, `supplie_id`, `author_id`, `created_at`, `updated_at`) VALUES
(13, 'Kg', 'kg', NULL, 32, 4, NULL, '2021-01-11 12:47:20', '2021-01-11 12:47:20'),
(14, 'Cái', 'gam', NULL, 32, 4, NULL, '2021-01-11 12:47:46', '2021-01-14 08:03:51'),
(15, 'Bộ', 'mg', NULL, 32, 4, NULL, '2021-01-11 12:48:01', '2021-01-14 08:03:59'),
(16, 'Hệ thống', 'he-thong', NULL, NULL, NULL, NULL, '2021-02-18 12:17:28', '2021-02-18 12:17:28'),
(21, 'miếng', 'mieng', NULL, NULL, NULL, 37, '2021-03-15 18:01:25', '2021-03-15 18:01:25'),
(22, 'que', 'que', NULL, NULL, NULL, 37, '2021-03-15 18:01:33', '2021-03-15 18:01:33'),
(23, 'ml', 'ml', NULL, NULL, NULL, 37, '2021-03-15 18:01:42', '2021-03-15 18:01:42');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `displayname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` bigint(20) UNSIGNED DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_disabled` int(10) UNSIGNED DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `current_team_id`, `displayname`, `image`, `address`, `birthday`, `phone`, `department_id`, `gender`, `is_disabled`, `created_at`, `updated_at`) VALUES
(20, 'Tester', 'nhoham124@gmail.com', NULL, '$2y$10$1mCC.gpfjp2jAn3.10A1Yeg3lm8PdJIHHWOXm.XomSOCd.821/0/u', NULL, NULL, 'Tằm', NULL, '14nguyenvancu', NULL, '13246578', 30, NULL, 0, '2021-01-21 05:53:24', '2021-02-23 08:15:42'),
(21, 'Ben Hoang', 'phongvtyt2020@gmail.com', NULL, '$2y$10$LaGWDjyXQROrKiAEHAPq3.AMDIZ0byrQLhHe2FkGKZN8kJwEORh3W', NULL, NULL, 'Administrator', 3, NULL, NULL, '012345678913', 32, NULL, 0, '2021-01-21 06:04:11', '2021-03-31 18:53:34'),
(22, 'TPVT', 'tpvt@gmail.com', NULL, '$2y$10$n6eQbUiMcS7WRQEEM9iBieaUnfG72wMnj2Q7pAdLFzYfBoydIDl.K', NULL, NULL, 'Trưởng phòng vật tư', NULL, NULL, NULL, '0254210001', 32, NULL, 0, '2021-01-21 15:10:12', '2021-03-19 14:36:39'),
(23, 'nvkcdha', 'nvkcdha@gmail.com', NULL, '$2y$10$65ByqsGfeR35j9D1dffsvOEFY.ifehVZnqpHXQ3DtEYEzJpR0o5py', NULL, NULL, 'Nhân viên khoa Chẩn đoán hình ảnh', NULL, NULL, NULL, '0123456702', 34, 'Nam', 0, '2021-01-26 15:47:42', '2021-03-31 07:30:03'),
(24, 'nvkcdha2', 'nvkcdha2@gmail.com', NULL, '$2y$10$7yjG3RX90GCuilsW2kPfbOdnaAdqrX8FCSE76o32cYeqDAGV6FjQ6', NULL, NULL, 'Nhân viên khoa Chẩn đoán hình ảnh 2', NULL, NULL, NULL, '0123456701', 44, NULL, 0, '2021-01-26 15:49:31', '2021-03-31 07:08:40'),
(25, 'TKCDHA', 'tkcdha@gmail.com', NULL, '$2y$10$RVLmXkCLK/dlOGpfhJ3cRu8qn6LOrGFqrBNqqWm0m1ynyL4OAGH0y', NULL, NULL, 'Trưởng khoa Chẩn đoán hình ảnh', NULL, NULL, NULL, '012345678914', 34, 'Nam', 0, '2021-01-27 08:07:35', '2021-03-31 18:48:04'),
(26, 'DKCDHA', 'dkcdha@gmail.com', NULL, '$2y$10$V04CFooyw3ZDADEhSlkS5eSx4riT.Tp.8Dy/BXaHE0oVqnvni8eK2', NULL, NULL, 'Điều dưỡng trưởng Khoa CĐHA', NULL, NULL, NULL, '012345678917', 34, NULL, 0, '2021-01-27 08:09:13', '2021-03-31 18:50:31'),
(27, 'nvpvt', 'nvpvt@gmail.com', NULL, '$2y$10$7yqVYpXry.oepLyX/8gaPO6TddGDNclNuZZy4QvLlcr6Wa/r7jlA6', NULL, NULL, 'Nhân viên phòng Vật tư', NULL, NULL, NULL, '012345678918', 32, 'Nam', 0, '2021-01-31 06:29:47', '2021-03-31 19:18:15'),
(28, 'TKN', 'kn@gmail.com', NULL, '$2y$10$XG7J4vY6bcngT1NBt4JwaO4f0YgoKqcLX54ZmCTuOTreY7CVfcZW6', NULL, NULL, 'Trưởng khoa Nội', NULL, NULL, NULL, '012345678916', 33, NULL, 0, '2021-01-31 11:39:17', '2021-03-31 18:49:13'),
(32, 'gohoang', 'hoangnguyen@gmail.com', NULL, '$2y$10$hPdLhPgJYo7eLcZhqHzoNuMqPfTWpHxSK25vi4wlu5.kcwyFQ3Z9C', NULL, NULL, 'nguyenhoang', NULL, '97 ngo duc ke', NULL, '01282100164', 32, NULL, 0, '2021-02-04 09:11:37', '2021-04-02 14:55:07'),
(33, 'nguyenhoang', 'gohoang@gmail.com', NULL, '$2y$10$UwgfFk3bdW03ttR/PnXWhOwUzty61FaNJ43zBwBBzLn5V2Ji2x5Ia', NULL, NULL, 'nguyenhoang', NULL, '97 ngô đức kế', NULL, '012345678', 32, NULL, 0, '2021-02-04 09:21:56', '2021-03-19 17:52:15'),
(34, 'nguyennguyen', 'hoangnguyenn33333@gmail.com', NULL, '$2y$10$vRV1RUx4VEw3ZdvSeAMZ5O2i648wH41Qo9DOYbczqV4RyAd0X9xvy', NULL, NULL, 'nguyennguyen', NULL, 'Aliquid eveniet aut', NULL, '12345678', 33, NULL, 0, '2021-02-05 12:41:16', '2021-02-05 12:41:16'),
(36, 'vanphuoc260797', 'vanphuoc260797@gmail.com', NULL, '$2y$10$dshuaKU4y5iNAXJYAyixZeLv5u6hS/FT7DydXSIQ.LTZ4qZgu1TsO', NULL, NULL, 'Nguyễn Phước', NULL, '14 nguyễn văn cừ', NULL, '0363906700', 34, 'Nam', 0, '2021-02-18 08:59:02', '2021-03-19 12:59:23'),
(37, 'admin', 'admin@gmail.com', NULL, '$2y$10$OJYe7NRTtdfCEjcHmBoWQe9SqCp49CP0/T7gfDqo0omN/6kex7/UG', NULL, NULL, 'Admin', NULL, NULL, NULL, '012345678910', 32, NULL, 0, '2021-02-18 15:31:30', '2021-03-19 06:37:53'),
(40, 'TKNg', 'tkng@gmail.com', NULL, '$2y$10$mZlkbDIJOK1MwFIWzib11.M.nl/vJygn0fE0mjf4H7Pchg0KU0vwq', NULL, NULL, 'Trưởng khoa Ngoại', NULL, 'HN', NULL, '012345678915', 40, NULL, 0, '2021-03-01 14:56:56', '2021-03-31 18:48:29'),
(41, 'nvkkb', 'nvkkb@gmail.com', NULL, '$2y$10$pu2HeUeubR/NlFdPzJdWBOlrvim/RwSE.9RXTgp4Y84wFv6EkC7HK', NULL, NULL, 'Nhân viên khoa Khám bệnh', NULL, 'HN', NULL, '0123456789', 30, NULL, 0, '2021-03-01 20:04:43', '2021-03-01 20:04:43'),
(42, 'nvkkb2', 'nvkkb2@gmail.com', NULL, '$2y$10$yddaHF2QNvHgJIecGj5.KOLJ7eOr52LK6xYeU8.DHJy77Jq7eJ2tC', NULL, NULL, 'nvkkb2@gmailcom', NULL, 'nvkkb@gmail.com', NULL, '012345678911', 30, NULL, 0, '2021-03-03 04:26:29', '2021-03-23 13:49:35'),
(43, 'huuduoc47', 'nvpvt2@gmail.com', NULL, '$2y$10$kzfBqY6lJtc4x/SjpcqpYeSVMUj6FngI9LRxZpiFHie81PGWCq5u6', NULL, NULL, 'Nhân viên phòng Vật tư 2', NULL, 'HCM', NULL, '09180659569', 32, NULL, 0, '2021-03-03 16:07:15', '2021-04-01 19:35:43'),
(44, 'demo', 'demo@gmail.com', NULL, '$2y$10$3RJtxgbQoskZ.TDCqLzeWOe8XQ71.qFHCbDq.X13QTsx24WroW0rq', NULL, NULL, 'demo', NULL, NULL, '24-12-2020', '0521566022', 41, 'Nam', 0, '2021-03-19 13:13:14', '2021-04-01 20:02:32'),
(45, 'truongkhoaxatri', 'truongkhoaxatri@gmail.com', NULL, '$2y$10$h.J3CMClayZ/8DG1y0bi3egsomHCiI/B524mmdd.i/TDvViwbW8nK', NULL, NULL, 'Trưởng khoa Xạ trị', NULL, NULL, NULL, '055423323665', 41, 'Nam', 0, '2021-03-30 21:51:22', '2021-04-01 20:37:10'),
(48, 'nvkxt', 'nvkxt@gmail.com', NULL, '$2y$10$ximgXsEwYoAQxLdKvuBx9OaOOz9VX48LeQGe.DWeo92ou5FACeGpW', NULL, NULL, 'nvkxt@gmail.com', NULL, 'nvkkb2', NULL, '012345678918', NULL, 'Nam', 0, '2021-04-06 06:58:12', '2021-04-06 06:58:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_metas`
--

CREATE TABLE `user_metas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accres`
--
ALTER TABLE `accres`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accre_equipment_id_foreign` (`equipment_id`);

--
-- Chỉ mục cho bảng `actions`
--
ALTER TABLE `actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `image` (`image`) USING BTREE,
  ADD KEY `equi_id` (`equi_id`) USING BTREE;

--
-- Chỉ mục cho bảng `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Chỉ mục cho bảng `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attachments_media_id_foreign` (`media_id`),
  ADD KEY `attachments_equipment_id_foreign` (`equipment_id`);

--
-- Chỉ mục cho bảng `ballots_equipments`
--
ALTER TABLE `ballots_equipments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blogs_post_id_foreign` (`post_id`),
  ADD KEY `blogs_cat_id_foreign` (`cat_id`);

--
-- Chỉ mục cho bảng `blog_cats`
--
ALTER TABLE `blog_cats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_cats_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `brokens`
--
ALTER TABLE `brokens`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_user_id_foreign` (`user_id`),
  ADD KEY `image` (`image`) USING BTREE,
  ADD KEY `nursing_id` (`nursing_id`) USING BTREE,
  ADD KEY `departments_author_id_foreign` (`author_id`);

--
-- Chỉ mục cho bảng `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image` (`image`) USING BTREE,
  ADD KEY `cat_id` (`cat_id`) USING BTREE,
  ADD KEY `devicess_author_id_foreign` (`author_id`);

--
-- Chỉ mục cho bảng `equipments`
--
ALTER TABLE `equipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maintenance_id` (`maintenance_id`) USING BTREE,
  ADD KEY `provider_id` (`provider_id`) USING BTREE,
  ADD KEY `image` (`image`) USING BTREE,
  ADD KEY `department_id` (`department_id`) USING BTREE,
  ADD KEY `unit_id` (`unit_id`) USING BTREE,
  ADD KEY `cate_id` (`cate_id`) USING BTREE,
  ADD KEY `user_id` (`user_id`) USING BTREE,
  ADD KEY `repair_id` (`repair_id`) USING BTREE,
  ADD KEY `officer_charge` (`officer_charge_id`) USING BTREE,
  ADD KEY `officers_user_id` (`officers_use_id`) USING BTREE,
  ADD KEY `officers_training` (`officers_training_id`) USING BTREE,
  ADD KEY `officer_department_charge_id` (`officer_department_charge_id`) USING BTREE,
  ADD KEY `supplie_id` (`supplie_id`) USING BTREE,
  ADD KEY `equipments_devices_id_foreign` (`devices_id`),
  ADD KEY `equipments_bid_project_id_foreign` (`bid_project_id`);

--
-- Chỉ mục cho bảng `equipment_ballots`
--
ALTER TABLE `equipment_ballots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipment_ballot_equi_id_foreign` (`ballot`),
  ADD KEY `equipment_ballot_dep_id_foreign` (`department_id`),
  ADD KEY `equipment_ballot_user_id_foreign` (`user_id`),
  ADD KEY `equipment_ballot_provide_foreign` (`provider_id`);

--
-- Chỉ mục cho bảng `equipment_cates`
--
ALTER TABLE `equipment_cates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image` (`image`) USING BTREE,
  ADD KEY `equipment_author_id_foreign` (`author_id`);

--
-- Chỉ mục cho bảng `equipment_supplies`
--
ALTER TABLE `equipment_supplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipment_supplies_department_charge_foreign` (`officer_department_charge_id`),
  ADD KEY `equipment_supplies_department_id_foreign` (`department_id`),
  ADD KEY `equipment_supplies_image_foreign` (`image`),
  ADD KEY `equipment_supplies_maintenance_id_foreign` (`maintenance_id`),
  ADD KEY `equipment_supplies_officer _charge_id_foreign` (`officer_charge_id`),
  ADD KEY `equipment_supplies_provider_id_foreign` (`provider_id`),
  ADD KEY `equipment_supplies_repair_id_foreign` (`repair_id`),
  ADD KEY `equipment_supplies_supplie_id_foreign` (`supplie_id`),
  ADD KEY `equipment_supplies_unit_id_foreign` (`unit_id`),
  ADD KEY `equipment_supplies_user_id_foreign` (`user_id`),
  ADD KEY `equipment_supplies_eqdevice_foreign` (`eqdevice_id`);

--
-- Chỉ mục cho bảng `equipment_user_training`
--
ALTER TABLE `equipment_user_training`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `equipment_user_use`
--
ALTER TABLE `equipment_user_use`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `guarantees`
--
ALTER TABLE `guarantees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `guarantees_equipment_id_foreign` (`equipment_id`);

--
-- Chỉ mục cho bảng `liquidations`
--
ALTER TABLE `liquidations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `liquidations_equipment_id_foreign` (`equipment_id`),
  ADD KEY `liquidations_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `maintenances`
--
ALTER TABLE `maintenances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maintenances_equipment_id_foreign` (`equipment_id`),
  ADD KEY `maintenances_provide_id_foreign` (`provide_id`),
  ADD KEY `maintenances_author_id_foreign` (`author_id`),
  ADD KEY `maintenances_approve_id_foreign` (`approve_id`);

--
-- Chỉ mục cho bảng `maintenance_actions`
--
ALTER TABLE `maintenance_actions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`),
  ADD KEY `maintenance_actions_author_id_foreign` (`author_id`),
  ADD KEY `maintenance_actions_maintenance_id_foreign` (`maintenance_id`);

--
-- Chỉ mục cho bảng `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `mediables`
--
ALTER TABLE `mediables`
  ADD PRIMARY KEY (`media_id`,`mediable_type`,`mediable_id`),
  ADD KEY `mediables_mediable_type_mediable_id_index` (`mediable_type`,`mediable_id`);

--
-- Chỉ mục cho bảng `media_cates`
--
ALTER TABLE `media_cates`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `media_media_cate`
--
ALTER TABLE `media_media_cate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_media_cate_media_id_foreign` (`media_id`),
  ADD KEY `media_media_cate_cate_id_foreign` (`cate_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Chỉ mục cho bảng `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_id_notifiable_type_index` (`notifiable_id`,`notifiable_type`);

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `key` (`key`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pages_post_id_foreign` (`post_id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_user_id_foreign` (`user_id`),
  ADD KEY `posts_image_id_foreign` (`image_id`);

--
-- Chỉ mục cho bảng `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image` (`image`) USING BTREE,
  ADD KEY `projects_author_id_foreign` (`author_id`);

--
-- Chỉ mục cho bảng `providers`
--
ALTER TABLE `providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image` (`image`) USING BTREE,
  ADD KEY `providers_author_id_foreign` (`author_id`);

--
-- Chỉ mục cho bảng `providers_cat`
--
ALTER TABLE `providers_cat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `requests_user_id_foreign` (`user_id`),
  ADD KEY `requests_department_id_foreign` (`department_id`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Chỉ mục cho bảng `schedule_repairs`
--
ALTER TABLE `schedule_repairs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schedule_repairs_equipment_id_foreign` (`equipment_id`),
  ADD KEY `schedule_repairs_user_id_foreign` (`user_id`),
  ADD KEY `schedule_repairs_provider_id_foreign` (`provider_id`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `supplies`
--
ALTER TABLE `supplies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `image` (`image`) USING BTREE,
  ADD KEY `supplies_author_id_foreign` (`author_id`);

--
-- Chỉ mục cho bảng `supplies_devices`
--
ALTER TABLE `supplies_devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplies_devices_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_departments_id_foreign` (`department_id`),
  ADD KEY `transfers_users_id_foreign` (`user_id`),
  ADD KEY `transfers_image_id_foreign` (`image`),
  ADD KEY `transfers_equiments_id_foreign` (`equipment_id`);

--
-- Chỉ mục cho bảng `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `device_id` (`device_id`) USING BTREE,
  ADD KEY `image` (`image`) USING BTREE,
  ADD KEY `supplie_id` (`supplie_id`) USING BTREE,
  ADD KEY `units_author_id_foreign` (`author_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_image_foreign` (`image`),
  ADD KEY `users_email_unique` (`email`) USING BTREE,
  ADD KEY `department` (`department_id`) USING BTREE;

--
-- Chỉ mục cho bảng `user_metas`
--
ALTER TABLE `user_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_metas_user_id` (`user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accres`
--
ALTER TABLE `accres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `actions`
--
ALTER TABLE `actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3099;

--
-- AUTO_INCREMENT cho bảng `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ballots_equipments`
--
ALTER TABLE `ballots_equipments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `blog_cats`
--
ALTER TABLE `blog_cats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `brokens`
--
ALTER TABLE `brokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `devices`
--
ALTER TABLE `devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT cho bảng `equipments`
--
ALTER TABLE `equipments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=730;

--
-- AUTO_INCREMENT cho bảng `equipment_ballots`
--
ALTER TABLE `equipment_ballots`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT cho bảng `equipment_cates`
--
ALTER TABLE `equipment_cates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `equipment_supplies`
--
ALTER TABLE `equipment_supplies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=257;

--
-- AUTO_INCREMENT cho bảng `equipment_user_training`
--
ALTER TABLE `equipment_user_training`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=940;

--
-- AUTO_INCREMENT cho bảng `equipment_user_use`
--
ALTER TABLE `equipment_user_use`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=989;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `guarantees`
--
ALTER TABLE `guarantees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `liquidations`
--
ALTER TABLE `liquidations`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT cho bảng `maintenances`
--
ALTER TABLE `maintenances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `maintenance_actions`
--
ALTER TABLE `maintenance_actions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT cho bảng `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `media_cates`
--
ALTER TABLE `media_cates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `media_media_cate`
--
ALTER TABLE `media_media_cate`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `providers`
--
ALTER TABLE `providers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT cho bảng `providers_cat`
--
ALTER TABLE `providers_cat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT cho bảng `requests`
--
ALTER TABLE `requests`
  MODIFY `id` bigint(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `schedule_repairs`
--
ALTER TABLE `schedule_repairs`
  MODIFY `id` bigint(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `supplies`
--
ALTER TABLE `supplies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `supplies_devices`
--
ALTER TABLE `supplies_devices`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=540;

--
-- AUTO_INCREMENT cho bảng `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `user_metas`
--
ALTER TABLE `user_metas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `accres`
--
ALTER TABLE `accres`
  ADD CONSTRAINT `accre_equipment_id_foreign` FOREIGN KEY (`equipment_id`) REFERENCES `equipments` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `actions`
--
ALTER TABLE `actions`
  ADD CONSTRAINT `actions_equi_id_foreign` FOREIGN KEY (`equi_id`) REFERENCES `equipments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `actions_image_foreign` FOREIGN KEY (`image`) REFERENCES `media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `actions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `attachments`
--
ALTER TABLE `attachments`
  ADD CONSTRAINT `attachments_equipment_id_foreign` FOREIGN KEY (`equipment_id`) REFERENCES `equipments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attachments_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `blogs_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `blog_cats` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `departments_image_foreign` FOREIGN KEY (`image`) REFERENCES `media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `departments_nursing_id_foreign` FOREIGN KEY (`nursing_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `departments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `devices`
--
ALTER TABLE `devices`
  ADD CONSTRAINT `devicess_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `devicess_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `equipment_cates` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `type_device_image_foreign` FOREIGN KEY (`image`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `equipments`
--
ALTER TABLE `equipments`
  ADD CONSTRAINT `equipments_bid_project_id_foreign` FOREIGN KEY (`bid_project_id`) REFERENCES `projects` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipments_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `equipment_cates` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipments_department_charge_foreign` FOREIGN KEY (`officer_department_charge_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipments_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipments_devices_id_foreign` FOREIGN KEY (`devices_id`) REFERENCES `devices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipments_image_foreign` FOREIGN KEY (`image`) REFERENCES `media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipments_maintenance_id_foreign` FOREIGN KEY (`maintenance_id`) REFERENCES `providers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipments_officer _charge_id_foreign` FOREIGN KEY (`officer_charge_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipments_officer_department_charge_id_foreign` FOREIGN KEY (`officer_department_charge_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `equipments_officers_training_id_foreign` FOREIGN KEY (`officers_training_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipments_officers_use_id_foreign` FOREIGN KEY (`officers_use_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipments_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipments_repair_id_foreign` FOREIGN KEY (`repair_id`) REFERENCES `providers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipments_supplie_id_foreign` FOREIGN KEY (`supplie_id`) REFERENCES `supplies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipments_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `equipment_ballots`
--
ALTER TABLE `equipment_ballots`
  ADD CONSTRAINT `equipment_ballot_dep_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipment_ballot_provide_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipment_ballot_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `equipment_cates`
--
ALTER TABLE `equipment_cates`
  ADD CONSTRAINT `equipment_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipment_cates_image_foreign` FOREIGN KEY (`image`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `equipment_supplies`
--
ALTER TABLE `equipment_supplies`
  ADD CONSTRAINT `equipment_supplies_department_charge_foreign` FOREIGN KEY (`officer_department_charge_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipment_supplies_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipment_supplies_eqdevice_foreign` FOREIGN KEY (`eqdevice_id`) REFERENCES `equipments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipment_supplies_image_foreign` FOREIGN KEY (`image`) REFERENCES `media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipment_supplies_maintenance_id_foreign` FOREIGN KEY (`maintenance_id`) REFERENCES `providers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipment_supplies_officer _charge_id_foreign` FOREIGN KEY (`officer_charge_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipment_supplies_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipment_supplies_repair_id_foreign` FOREIGN KEY (`repair_id`) REFERENCES `providers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipment_supplies_supplie_id_foreign` FOREIGN KEY (`supplie_id`) REFERENCES `supplies` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipment_supplies_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `equipment_supplies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `guarantees`
--
ALTER TABLE `guarantees`
  ADD CONSTRAINT `guarantees_equipment_id_foreign` FOREIGN KEY (`equipment_id`) REFERENCES `equipments` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `liquidations`
--
ALTER TABLE `liquidations`
  ADD CONSTRAINT `liquidations_equipment_id_foreign` FOREIGN KEY (`equipment_id`) REFERENCES `equipments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `liquidations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `maintenances`
--
ALTER TABLE `maintenances`
  ADD CONSTRAINT `maintenances_approve_id_foreign` FOREIGN KEY (`approve_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `maintenances_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `maintenances_equipment_id_foreign` FOREIGN KEY (`equipment_id`) REFERENCES `equipments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `maintenances_provide_id_foreign` FOREIGN KEY (`provide_id`) REFERENCES `providers` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `maintenance_actions`
--
ALTER TABLE `maintenance_actions`
  ADD CONSTRAINT `maintenance_actions_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `maintenance_actions_maintenance_id_foreign` FOREIGN KEY (`maintenance_id`) REFERENCES `maintenances` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `mediables`
--
ALTER TABLE `mediables`
  ADD CONSTRAINT `mediables_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `media_media_cate`
--
ALTER TABLE `media_media_cate`
  ADD CONSTRAINT `media_media_cate_cate_id_foreign` FOREIGN KEY (`cate_id`) REFERENCES `media_cates` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `media_media_cate_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_user_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `media` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `projects_image_foreign` FOREIGN KEY (`image`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `providers`
--
ALTER TABLE `providers`
  ADD CONSTRAINT `providers_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `providers_image_foreign` FOREIGN KEY (`image`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `requests_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `schedule_repairs`
--
ALTER TABLE `schedule_repairs`
  ADD CONSTRAINT `schedule_repairs_equipment_id_foreign` FOREIGN KEY (`equipment_id`) REFERENCES `equipments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `schedule_repairs_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `providers` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `schedule_repairs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `supplies`
--
ALTER TABLE `supplies`
  ADD CONSTRAINT `supplies_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `supplies_image_foreign` FOREIGN KEY (`image`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `supplies_devices`
--
ALTER TABLE `supplies_devices`
  ADD CONSTRAINT `supplies_devices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_departments_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transfers_equiments_id_foreign` FOREIGN KEY (`equipment_id`) REFERENCES `equipments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_image_id_foreign` FOREIGN KEY (`image`) REFERENCES `media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `transfers_users_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `units_device_id_foreign` FOREIGN KEY (`device_id`) REFERENCES `devices` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `units_image_foreign` FOREIGN KEY (`image`) REFERENCES `media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `units_supplie_id_foreign` FOREIGN KEY (`supplie_id`) REFERENCES `supplies` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `users_image_foreign` FOREIGN KEY (`image`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Các ràng buộc cho bảng `user_metas`
--
ALTER TABLE `user_metas`
  ADD CONSTRAINT `user_metas_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
