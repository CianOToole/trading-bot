-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2020 at 11:35 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trading_bot`
--

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(11) NOT NULL,
  `ticker` varchar(10) NOT NULL,
  `price` decimal(11,2) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `ticker`, `price`, `time`) VALUES
(872, 'TSLA', '570.00', '2020-01-22 14:34:05'),
(873, 'TSLA', '570.00', '2020-01-22 14:35:05'),
(874, 'TSLA', '570.40', '2020-01-22 14:36:06'),
(875, 'TSLA', '569.43', '2020-01-22 14:37:06'),
(876, 'TSLA', '566.81', '2020-01-22 14:38:06'),
(877, 'TSLA', '565.11', '2020-01-22 14:39:06'),
(878, 'TSLA', '564.50', '2020-01-22 14:40:06'),
(879, 'TSLA', '565.25', '2020-01-22 14:41:06'),
(880, 'TSLA', '568.20', '2020-01-22 14:42:06'),
(881, 'TSLA', '567.56', '2020-01-22 14:43:07'),
(882, 'TSLA', '566.91', '2020-01-22 14:44:07'),
(883, 'TSLA', '566.96', '2020-01-22 14:45:07'),
(884, 'TSLA', '564.25', '2020-01-22 14:46:07'),
(885, 'TSLA', '565.41', '2020-01-22 14:47:07'),
(886, 'TSLA', '566.42', '2020-01-22 14:48:08'),
(887, 'TSLA', '566.22', '2020-01-22 14:49:08'),
(888, 'TSLA', '565.26', '2020-01-22 14:50:08'),
(889, 'TSLA', '565.34', '2020-01-22 14:51:08'),
(890, 'TSLA', '566.00', '2020-01-22 14:52:08'),
(891, 'TSLA', '568.23', '2020-01-22 14:53:09'),
(892, 'TSLA', '568.44', '2020-01-22 14:54:09'),
(893, 'TSLA', '569.65', '2020-01-22 14:55:09'),
(894, 'TSLA', '569.89', '2020-01-22 14:56:09'),
(895, 'TSLA', '572.70', '2020-01-22 14:57:09'),
(896, 'TSLA', '572.99', '2020-01-22 14:58:09'),
(897, 'TSLA', '573.48', '2020-01-22 14:59:09'),
(898, 'TSLA', '572.68', '2020-01-22 15:00:10'),
(899, 'TSLA', '573.41', '2020-01-22 15:01:10'),
(900, 'TSLA', '574.14', '2020-01-22 15:02:10'),
(901, 'TSLA', '574.44', '2020-01-22 15:03:10'),
(902, 'TSLA', '574.24', '2020-01-22 15:04:10'),
(903, 'TSLA', '574.10', '2020-01-22 15:05:11'),
(904, 'TSLA', '572.76', '2020-01-22 15:06:11'),
(905, 'TSLA', '573.48', '2020-01-22 15:07:11'),
(906, 'TSLA', '574.15', '2020-01-22 15:08:11'),
(907, 'TSLA', '574.20', '2020-01-22 15:09:11'),
(908, 'TSLA', '573.89', '2020-01-22 15:10:11'),
(909, 'TSLA', '573.25', '2020-01-22 15:11:11'),
(910, 'TSLA', '573.48', '2020-01-22 15:12:12'),
(911, 'TSLA', '574.30', '2020-01-22 15:13:12'),
(912, 'TSLA', '575.54', '2020-01-22 15:14:12'),
(913, 'TSLA', '571.74', '2020-01-22 15:15:12'),
(914, 'TSLA', '571.46', '2020-01-22 15:16:12'),
(915, 'TSLA', '571.93', '2020-01-22 15:17:12'),
(916, 'TSLA', '572.63', '2020-01-22 15:18:13'),
(917, 'TSLA', '572.68', '2020-01-22 15:19:13'),
(918, 'TSLA', '572.90', '2020-01-22 15:20:13'),
(919, 'TSLA', '572.21', '2020-01-22 15:21:13'),
(920, 'TSLA', '572.00', '2020-01-22 15:22:14'),
(921, 'TSLA', '572.83', '2020-01-22 15:23:14'),
(922, 'TSLA', '571.10', '2020-01-22 15:24:14'),
(923, 'TSLA', '569.77', '2020-01-22 15:25:14'),
(924, 'TSLA', '570.60', '2020-01-22 15:26:14'),
(925, 'TSLA', '571.23', '2020-01-22 15:27:15'),
(926, 'TSLA', '571.94', '2020-01-22 15:28:15'),
(927, 'TSLA', '572.19', '2020-01-22 15:29:15'),
(928, 'TSLA', '572.89', '2020-01-22 15:30:15'),
(929, 'TSLA', '574.25', '2020-01-22 15:31:15'),
(930, 'TSLA', '573.69', '2020-01-22 15:32:15'),
(931, 'TSLA', '573.90', '2020-01-22 15:33:16'),
(932, 'TSLA', '573.64', '2020-01-22 15:34:16'),
(933, 'TSLA', '575.68', '2020-01-22 15:35:16'),
(934, 'TSLA', '577.80', '2020-01-22 15:36:16'),
(935, 'TSLA', '578.54', '2020-01-22 15:37:17'),
(936, 'TSLA', '579.60', '2020-01-22 15:38:17'),
(937, 'TSLA', '579.53', '2020-01-22 15:39:17'),
(938, 'TSLA', '580.08', '2020-01-22 15:40:17'),
(939, 'TSLA', '579.59', '2020-01-22 15:41:17'),
(940, 'TSLA', '579.97', '2020-01-22 15:42:18'),
(941, 'TSLA', '580.09', '2020-01-22 15:43:18'),
(942, 'TSLA', '580.26', '2020-01-22 15:44:18'),
(943, 'TSLA', '579.56', '2020-01-22 15:45:18'),
(944, 'TSLA', '579.60', '2020-01-22 15:46:18'),
(945, 'TSLA', '580.60', '2020-01-22 15:47:18'),
(946, 'TSLA', '579.21', '2020-01-22 15:48:19'),
(947, 'TSLA', '578.62', '2020-01-22 15:49:19'),
(948, 'TSLA', '577.96', '2020-01-22 15:50:19'),
(949, 'TSLA', '579.74', '2020-01-22 15:51:19'),
(950, 'TSLA', '579.12', '2020-01-22 15:52:20'),
(951, 'TSLA', '581.40', '2020-01-22 15:53:20'),
(952, 'TSLA', '582.01', '2020-01-22 15:54:20'),
(953, 'TSLA', '581.75', '2020-01-22 15:55:21'),
(954, 'TSLA', '581.03', '2020-01-22 15:56:21'),
(955, 'TSLA', '581.41', '2020-01-22 15:57:21'),
(956, 'TSLA', '580.89', '2020-01-22 15:58:21'),
(957, 'TSLA', '580.89', '2020-01-22 15:59:21'),
(958, 'TSLA', '580.42', '2020-01-22 16:00:22'),
(959, 'TSLA', '580.58', '2020-01-22 16:01:22'),
(960, 'TSLA', '580.93', '2020-01-22 16:02:22'),
(961, 'TSLA', '581.35', '2020-01-22 16:03:23'),
(962, 'TSLA', '580.68', '2020-01-22 16:04:23'),
(963, 'TSLA', '579.47', '2020-01-22 16:05:23'),
(964, 'TSLA', '579.41', '2020-01-22 16:06:23'),
(965, 'TSLA', '579.79', '2020-01-22 16:07:24'),
(966, 'TSLA', '579.75', '2020-01-22 16:08:24'),
(967, 'TSLA', '580.89', '2020-01-22 16:09:24'),
(968, 'TSLA', '581.82', '2020-01-22 16:10:24'),
(969, 'TSLA', '583.27', '2020-01-22 16:11:25'),
(970, 'TSLA', '583.02', '2020-01-22 16:12:25'),
(971, 'TSLA', '582.96', '2020-01-22 16:13:25'),
(972, 'TSLA', '582.10', '2020-01-22 16:14:25'),
(973, 'TSLA', '581.85', '2020-01-22 16:15:25'),
(974, 'TSLA', '582.24', '2020-01-22 16:16:26'),
(975, 'TSLA', '582.59', '2020-01-22 16:17:26'),
(976, 'TSLA', '582.77', '2020-01-22 16:18:26'),
(977, 'TSLA', '582.28', '2020-01-22 16:19:26'),
(978, 'TSLA', '583.20', '2020-01-22 16:20:26'),
(979, 'TSLA', '583.95', '2020-01-22 16:21:26'),
(980, 'TSLA', '584.38', '2020-01-22 16:22:27'),
(981, 'TSLA', '584.82', '2020-01-22 16:23:27'),
(982, 'TSLA', '587.72', '2020-01-22 16:24:27'),
(983, 'TSLA', '588.30', '2020-01-22 16:25:27'),
(984, 'TSLA', '588.89', '2020-01-22 16:26:27'),
(985, 'TSLA', '590.24', '2020-01-22 16:27:28'),
(986, 'TSLA', '593.52', '2020-01-22 16:28:28'),
(987, 'TSLA', '591.92', '2020-01-22 16:29:28'),
(988, 'TSLA', '591.33', '2020-01-22 16:30:28'),
(989, 'TSLA', '590.43', '2020-01-22 16:31:28'),
(990, 'TSLA', '592.27', '2020-01-22 16:32:29'),
(991, 'TSLA', '591.59', '2020-01-22 16:33:29'),
(992, 'TSLA', '591.76', '2020-01-22 16:34:29'),
(993, 'TSLA', '592.05', '2020-01-22 16:35:29'),
(994, 'TSLA', '592.43', '2020-01-22 16:36:29'),
(995, 'TSLA', '590.51', '2020-01-22 16:37:30'),
(996, 'TSLA', '591.91', '2020-01-22 16:38:30'),
(997, 'TSLA', '591.24', '2020-01-22 16:39:30'),
(998, 'TSLA', '590.94', '2020-01-22 16:40:30'),
(999, 'TSLA', '592.39', '2020-01-22 16:41:30'),
(1000, 'TSLA', '591.34', '2020-01-22 16:42:31'),
(1001, 'TSLA', '591.15', '2020-01-22 16:43:31'),
(1002, 'TSLA', '589.50', '2020-01-22 16:44:31'),
(1003, 'TSLA', '589.34', '2020-01-22 16:45:31'),
(1004, 'TSLA', '588.66', '2020-01-22 16:46:32'),
(1005, 'TSLA', '586.90', '2020-01-22 16:47:32'),
(1006, 'TSLA', '586.84', '2020-01-22 16:48:32'),
(1007, 'TSLA', '586.90', '2020-01-22 16:49:32'),
(1008, 'TSLA', '587.11', '2020-01-22 16:50:32'),
(1009, 'TSLA', '588.23', '2020-01-22 16:51:32'),
(1010, 'TSLA', '588.85', '2020-01-22 16:52:33'),
(1011, 'TSLA', '590.66', '2020-01-22 16:53:33'),
(1012, 'TSLA', '589.57', '2020-01-22 16:54:33'),
(1013, 'TSLA', '589.59', '2020-01-22 16:55:33'),
(1014, 'TSLA', '588.67', '2020-01-22 16:56:33'),
(1015, 'TSLA', '587.79', '2020-01-22 16:57:33'),
(1016, 'TSLA', '588.12', '2020-01-22 16:58:34'),
(1017, 'TSLA', '587.42', '2020-01-22 16:59:34'),
(1018, 'TSLA', '587.90', '2020-01-22 17:00:34'),
(1019, 'TSLA', '587.02', '2020-01-22 17:01:34'),
(1020, 'TSLA', '586.50', '2020-01-22 17:02:34'),
(1021, 'TSLA', '586.75', '2020-01-22 17:03:35'),
(1022, 'TSLA', '585.88', '2020-01-22 17:04:35'),
(1023, 'TSLA', '587.72', '2020-01-22 17:05:35'),
(1024, 'TSLA', '588.28', '2020-01-22 17:06:35'),
(1025, 'TSLA', '588.06', '2020-01-22 17:07:35'),
(1026, 'TSLA', '588.74', '2020-01-22 17:08:36'),
(1027, 'TSLA', '587.29', '2020-01-22 17:09:36'),
(1028, 'TSLA', '588.05', '2020-01-22 17:10:36'),
(1029, 'TSLA', '588.75', '2020-01-22 17:11:36'),
(1030, 'TSLA', '588.47', '2020-01-22 17:12:36'),
(1031, 'TSLA', '587.89', '2020-01-22 17:13:37'),
(1032, 'TSLA', '586.65', '2020-01-22 17:14:37'),
(1033, 'TSLA', '586.05', '2020-01-22 17:15:37'),
(1034, 'TSLA', '587.45', '2020-01-22 17:16:37'),
(1035, 'TSLA', '586.40', '2020-01-22 17:17:37'),
(1036, 'TSLA', '587.27', '2020-01-22 17:18:38'),
(1037, 'TSLA', '587.47', '2020-01-22 17:19:38'),
(1038, 'TSLA', '586.80', '2020-01-22 17:20:38'),
(1039, 'TSLA', '586.93', '2020-01-22 17:21:38'),
(1040, 'TSLA', '588.13', '2020-01-22 17:22:38'),
(1041, 'TSLA', '588.37', '2020-01-22 17:23:39'),
(1042, 'TSLA', '589.20', '2020-01-22 17:24:39'),
(1043, 'TSLA', '589.20', '2020-01-22 17:25:39'),
(1044, 'TSLA', '589.21', '2020-01-22 17:26:39'),
(1045, 'TSLA', '589.38', '2020-01-22 17:27:39'),
(1046, 'TSLA', '591.00', '2020-01-22 17:28:39'),
(1047, 'TSLA', '591.50', '2020-01-22 17:29:40'),
(1048, 'TSLA', '591.67', '2020-01-22 17:30:40'),
(1049, 'TSLA', '592.07', '2020-01-22 17:31:40'),
(1050, 'TSLA', '591.13', '2020-01-22 17:32:40'),
(1051, 'TSLA', '590.80', '2020-01-22 17:33:40'),
(1052, 'TSLA', '591.77', '2020-01-22 17:34:41'),
(1053, 'TSLA', '590.99', '2020-01-22 17:35:41'),
(1054, 'TSLA', '590.55', '2020-01-22 17:36:41'),
(1055, 'TSLA', '589.16', '2020-01-22 17:37:41'),
(1056, 'TSLA', '588.01', '2020-01-22 17:38:42'),
(1057, 'TSLA', '587.54', '2020-01-22 17:39:42'),
(1058, 'TSLA', '588.89', '2020-01-22 17:40:42'),
(1059, 'TSLA', '588.88', '2020-01-22 17:41:42'),
(1060, 'TSLA', '589.43', '2020-01-22 17:42:42'),
(1061, 'TSLA', '588.85', '2020-01-22 17:43:43'),
(1062, 'TSLA', '589.43', '2020-01-22 17:44:43'),
(1063, 'TSLA', '589.32', '2020-01-22 17:45:43'),
(1064, 'TSLA', '588.70', '2020-01-22 17:46:43'),
(1065, 'TSLA', '590.27', '2020-01-22 17:47:43'),
(1066, 'TSLA', '589.99', '2020-01-22 17:48:44'),
(1067, 'TSLA', '589.53', '2020-01-22 17:49:44'),
(1068, 'TSLA', '590.77', '2020-01-22 17:50:44'),
(1069, 'TSLA', '590.19', '2020-01-22 17:51:44'),
(1070, 'TSLA', '588.75', '2020-01-22 17:52:44'),
(1071, 'TSLA', '588.00', '2020-01-22 17:53:44'),
(1072, 'TSLA', '586.77', '2020-01-22 17:54:45'),
(1073, 'TSLA', '586.27', '2020-01-22 17:55:45'),
(1074, 'TSLA', '587.44', '2020-01-22 17:56:45'),
(1075, 'TSLA', '588.03', '2020-01-22 17:57:45'),
(1076, 'TSLA', '588.53', '2020-01-22 17:58:45'),
(1077, 'TSLA', '588.17', '2020-01-22 17:59:45'),
(1078, 'TSLA', '587.79', '2020-01-22 18:00:46'),
(1079, 'TSLA', '588.29', '2020-01-22 18:01:46'),
(1080, 'TSLA', '588.31', '2020-01-22 18:02:46'),
(1081, 'TSLA', '588.30', '2020-01-22 18:03:46'),
(1082, 'TSLA', '587.33', '2020-01-22 18:04:46'),
(1083, 'TSLA', '587.70', '2020-01-22 18:05:47'),
(1084, 'TSLA', '587.26', '2020-01-22 18:06:47'),
(1085, 'TSLA', '587.18', '2020-01-22 18:07:47'),
(1086, 'TSLA', '586.62', '2020-01-22 18:08:47'),
(1087, 'TSLA', '587.35', '2020-01-22 18:09:47'),
(1088, 'TSLA', '587.78', '2020-01-22 18:10:48'),
(1089, 'TSLA', '587.15', '2020-01-22 18:11:48'),
(1090, 'TSLA', '587.60', '2020-01-22 18:12:48'),
(1091, 'TSLA', '587.11', '2020-01-22 18:13:49'),
(1092, 'TSLA', '586.94', '2020-01-22 18:14:49'),
(1093, 'TSLA', '586.83', '2020-01-22 18:15:49'),
(1094, 'TSLA', '586.94', '2020-01-22 18:16:49'),
(1095, 'TSLA', '587.92', '2020-01-22 18:17:49'),
(1096, 'TSLA', '587.53', '2020-01-22 18:18:49'),
(1097, 'TSLA', '588.02', '2020-01-22 18:19:50'),
(1098, 'TSLA', '589.07', '2020-01-22 18:20:50'),
(1099, 'TSLA', '589.00', '2020-01-22 18:21:50'),
(1100, 'TSLA', '588.81', '2020-01-22 18:22:50'),
(1101, 'TSLA', '587.98', '2020-01-22 18:23:51'),
(1102, 'TSLA', '587.49', '2020-01-22 18:24:51'),
(1103, 'TSLA', '586.84', '2020-01-22 18:25:51'),
(1104, 'TSLA', '586.67', '2020-01-22 18:26:51'),
(1105, 'TSLA', '586.57', '2020-01-22 18:27:51'),
(1106, 'TSLA', '585.33', '2020-01-22 18:28:52'),
(1107, 'TSLA', '586.37', '2020-01-22 18:29:52'),
(1108, 'TSLA', '586.75', '2020-01-22 18:30:52'),
(1109, 'TSLA', '586.45', '2020-01-22 18:31:53'),
(1110, 'TSLA', '586.63', '2020-01-22 18:32:53'),
(1111, 'TSLA', '586.29', '2020-01-22 18:33:53'),
(1112, 'TSLA', '586.49', '2020-01-22 18:34:53'),
(1113, 'TSLA', '586.86', '2020-01-22 18:35:54'),
(1114, 'TSLA', '586.85', '2020-01-22 18:36:54'),
(1115, 'TSLA', '587.23', '2020-01-22 18:37:54'),
(1116, 'TSLA', '586.60', '2020-01-22 18:38:54'),
(1117, 'TSLA', '586.96', '2020-01-22 18:39:54'),
(1118, 'TSLA', '587.11', '2020-01-22 18:40:55'),
(1119, 'TSLA', '587.06', '2020-01-22 18:41:55'),
(1120, 'TSLA', '586.74', '2020-01-22 18:42:55'),
(1121, 'TSLA', '586.87', '2020-01-22 18:43:55'),
(1122, 'TSLA', '586.85', '2020-01-22 18:44:55'),
(1123, 'TSLA', '586.55', '2020-01-22 18:45:55'),
(1124, 'TSLA', '586.41', '2020-01-22 18:46:56'),
(1125, 'TSLA', '586.24', '2020-01-22 18:47:56'),
(1126, 'TSLA', '585.28', '2020-01-22 18:48:56'),
(1127, 'TSLA', '584.16', '2020-01-22 18:49:56'),
(1128, 'TSLA', '584.26', '2020-01-22 18:50:57'),
(1129, 'TSLA', '583.14', '2020-01-22 18:51:57'),
(1130, 'TSLA', '583.40', '2020-01-22 18:52:57'),
(1131, 'TSLA', '583.22', '2020-01-22 18:53:57'),
(1132, 'TSLA', '582.22', '2020-01-22 18:54:57'),
(1133, 'TSLA', '581.30', '2020-01-22 18:55:57'),
(1134, 'TSLA', '579.64', '2020-01-22 18:56:57'),
(1135, 'TSLA', '578.26', '2020-01-22 18:57:58'),
(1136, 'TSLA', '578.06', '2020-01-22 18:58:58'),
(1137, 'TSLA', '577.05', '2020-01-22 18:59:58'),
(1138, 'TSLA', '575.93', '2020-01-22 19:00:58'),
(1139, 'TSLA', '576.55', '2020-01-22 19:01:58'),
(1140, 'TSLA', '578.73', '2020-01-22 19:02:59'),
(1141, 'TSLA', '579.58', '2020-01-22 19:03:59'),
(1142, 'TSLA', '578.76', '2020-01-22 19:04:59'),
(1143, 'TSLA', '578.95', '2020-01-22 19:05:59'),
(1144, 'TSLA', '578.78', '2020-01-22 19:06:59'),
(1145, 'TSLA', '580.63', '2020-01-22 19:07:59'),
(1146, 'TSLA', '580.99', '2020-01-22 19:08:59'),
(1147, 'TSLA', '581.32', '2020-01-22 19:10:00'),
(1148, 'TSLA', '581.13', '2020-01-22 19:11:00'),
(1149, 'TSLA', '580.04', '2020-01-22 19:12:00'),
(1150, 'TSLA', '579.84', '2020-01-22 19:13:00'),
(1151, 'TSLA', '578.50', '2020-01-22 19:14:00'),
(1152, 'TSLA', '578.00', '2020-01-22 19:15:00'),
(1153, 'TSLA', '578.56', '2020-01-22 19:16:01'),
(1154, 'TSLA', '578.75', '2020-01-22 19:17:01'),
(1155, 'TSLA', '578.83', '2020-01-22 19:18:01'),
(1156, 'TSLA', '579.39', '2020-01-22 19:19:01'),
(1157, 'TSLA', '578.93', '2020-01-22 19:20:01'),
(1158, 'TSLA', '578.33', '2020-01-22 19:21:02'),
(1159, 'TSLA', '577.04', '2020-01-22 19:22:02'),
(1160, 'TSLA', '576.31', '2020-01-22 19:23:02'),
(1161, 'TSLA', '577.51', '2020-01-22 19:24:02'),
(1162, 'TSLA', '576.26', '2020-01-22 19:25:03'),
(1163, 'TSLA', '573.30', '2020-01-22 19:26:03'),
(1164, 'TSLA', '572.69', '2020-01-22 19:27:03'),
(1165, 'TSLA', '571.67', '2020-01-22 19:28:03'),
(1166, 'TSLA', '571.16', '2020-01-22 19:29:03'),
(1167, 'TSLA', '572.47', '2020-01-22 19:30:03'),
(1168, 'TSLA', '572.01', '2020-01-22 19:31:03'),
(1169, 'TSLA', '572.26', '2020-01-22 19:32:04'),
(1170, 'TSLA', '570.80', '2020-01-22 19:33:04'),
(1171, 'TSLA', '572.58', '2020-01-22 19:34:04'),
(1172, 'TSLA', '573.99', '2020-01-22 19:35:04'),
(1173, 'TSLA', '574.90', '2020-01-22 19:36:04'),
(1174, 'TSLA', '572.54', '2020-01-22 19:37:05'),
(1175, 'TSLA', '572.52', '2020-01-22 19:38:05'),
(1176, 'TSLA', '572.48', '2020-01-22 19:39:05'),
(1177, 'TSLA', '571.77', '2020-01-22 19:40:05'),
(1178, 'TSLA', '570.96', '2020-01-22 19:41:05'),
(1179, 'TSLA', '568.30', '2020-01-22 19:42:06'),
(1180, 'TSLA', '565.98', '2020-01-22 19:43:06'),
(1181, 'TSLA', '567.40', '2020-01-22 19:44:06'),
(1182, 'TSLA', '567.02', '2020-01-22 19:45:06'),
(1183, 'TSLA', '563.30', '2020-01-22 19:46:06'),
(1184, 'TSLA', '567.09', '2020-01-22 19:47:06'),
(1185, 'TSLA', '568.89', '2020-01-22 19:48:07'),
(1186, 'TSLA', '567.08', '2020-01-22 19:49:07'),
(1187, 'TSLA', '567.80', '2020-01-22 19:50:07'),
(1188, 'TSLA', '569.33', '2020-01-22 19:51:07'),
(1189, 'TSLA', '570.27', '2020-01-22 19:52:07'),
(1190, 'TSLA', '570.44', '2020-01-22 19:53:07'),
(1191, 'TSLA', '569.41', '2020-01-22 19:54:08'),
(1192, 'TSLA', '568.84', '2020-01-22 19:55:08'),
(1193, 'TSLA', '568.60', '2020-01-22 19:56:08'),
(1194, 'TSLA', '568.89', '2020-01-22 19:57:08'),
(1195, 'TSLA', '569.18', '2020-01-22 19:58:08'),
(1196, 'TSLA', '569.01', '2020-01-22 19:59:08'),
(1197, 'TSLA', '567.32', '2020-01-22 20:00:09'),
(1198, 'TSLA', '567.20', '2020-01-22 20:01:09'),
(1199, 'TSLA', '567.85', '2020-01-22 20:02:09'),
(1200, 'TSLA', '567.88', '2020-01-22 20:03:09'),
(1201, 'TSLA', '566.94', '2020-01-22 20:04:09'),
(1202, 'TSLA', '565.98', '2020-01-22 20:05:09'),
(1203, 'TSLA', '566.37', '2020-01-22 20:06:10'),
(1204, 'TSLA', '567.27', '2020-01-22 20:07:10'),
(1205, 'TSLA', '567.14', '2020-01-22 20:08:10'),
(1206, 'TSLA', '567.09', '2020-01-22 20:09:10'),
(1207, 'TSLA', '565.80', '2020-01-22 20:10:10'),
(1208, 'TSLA', '565.08', '2020-01-22 20:11:10'),
(1209, 'TSLA', '565.64', '2020-01-22 20:12:11'),
(1210, 'TSLA', '567.69', '2020-01-22 20:13:11'),
(1211, 'TSLA', '567.16', '2020-01-22 20:14:11'),
(1212, 'TSLA', '565.29', '2020-01-22 20:15:11'),
(1213, 'TSLA', '563.15', '2020-01-22 20:16:11'),
(1214, 'TSLA', '561.52', '2020-01-22 20:17:12'),
(1215, 'TSLA', '562.06', '2020-01-22 20:18:12'),
(1216, 'TSLA', '562.23', '2020-01-22 20:19:12'),
(1217, 'TSLA', '562.25', '2020-01-22 20:20:12'),
(1218, 'TSLA', '561.20', '2020-01-22 20:21:12'),
(1219, 'TSLA', '560.43', '2020-01-22 20:22:12'),
(1220, 'TSLA', '561.92', '2020-01-22 20:23:13'),
(1221, 'TSLA', '559.69', '2020-01-22 20:24:13'),
(1222, 'TSLA', '561.49', '2020-01-22 20:25:13'),
(1223, 'TSLA', '563.65', '2020-01-22 20:26:13'),
(1224, 'TSLA', '564.41', '2020-01-22 20:27:13'),
(1225, 'TSLA', '564.52', '2020-01-22 20:28:14'),
(1226, 'TSLA', '566.00', '2020-01-22 20:29:14'),
(1227, 'TSLA', '567.91', '2020-01-22 20:30:14'),
(1228, 'TSLA', '567.31', '2020-01-22 20:31:14'),
(1229, 'TSLA', '567.56', '2020-01-22 20:32:14'),
(1230, 'TSLA', '568.19', '2020-01-22 20:33:14'),
(1231, 'TSLA', '567.29', '2020-01-22 20:34:15'),
(1232, 'TSLA', '566.89', '2020-01-22 20:35:15'),
(1233, 'TSLA', '566.56', '2020-01-22 20:36:15'),
(1234, 'TSLA', '566.14', '2020-01-22 20:37:15'),
(1235, 'TSLA', '566.74', '2020-01-22 20:38:15'),
(1236, 'TSLA', '566.46', '2020-01-22 20:39:16'),
(1237, 'TSLA', '565.81', '2020-01-22 20:40:16'),
(1238, 'TSLA', '565.66', '2020-01-22 20:41:16'),
(1239, 'TSLA', '566.77', '2020-01-22 20:42:17'),
(1240, 'TSLA', '566.96', '2020-01-22 20:43:17'),
(1241, 'TSLA', '566.99', '2020-01-22 20:44:17'),
(1242, 'TSLA', '566.87', '2020-01-22 20:45:17'),
(1243, 'TSLA', '566.62', '2020-01-22 20:46:17'),
(1244, 'TSLA', '568.67', '2020-01-22 20:47:18'),
(1245, 'TSLA', '568.72', '2020-01-22 20:48:18'),
(1246, 'TSLA', '569.80', '2020-01-22 20:49:18'),
(1247, 'TSLA', '569.67', '2020-01-22 20:50:18'),
(1248, 'TSLA', '569.84', '2020-01-22 20:51:18'),
(1249, 'TSLA', '570.61', '2020-01-22 20:52:19'),
(1250, 'TSLA', '570.96', '2020-01-22 20:53:19'),
(1251, 'TSLA', '570.30', '2020-01-22 20:54:19'),
(1252, 'TSLA', '570.71', '2020-01-22 20:55:19'),
(1253, 'TSLA', '570.67', '2020-01-22 20:56:19'),
(1254, 'TSLA', '571.39', '2020-01-22 20:57:20'),
(1255, 'TSLA', '570.25', '2020-01-22 20:58:20'),
(1256, 'TSLA', '569.49', '2020-01-22 20:59:20'),
(1257, 'TSLA', '569.56', '2020-01-22 21:00:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1258;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
