-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 26, 2022 at 10:10 AM
-- Server version: 8.0.28-0ubuntu0.20.04.3
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysite`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add tutorial', 7, 'add_tutorial'),
(26, 'Can change tutorial', 7, 'change_tutorial'),
(27, 'Can delete tutorial', 7, 'delete_tutorial'),
(28, 'Can view tutorial', 7, 'view_tutorial'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add series', 9, 'add_series'),
(34, 'Can change series', 9, 'change_series'),
(35, 'Can delete series', 9, 'delete_series'),
(36, 'Can view series', 9, 'view_series');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$hRO7wE3I274MzXKVkSEQ20$F9aoTLHI8pa+gOejYVndlFQtwBE6fv3fpyb7vwjpYfg=', '2022-02-26 07:03:25.554620', 1, 'izzy', 'Isidore', 'DelPierro', 'fontadore@gmail.com', 1, 1, '2022-02-25 06:44:03.000000'),
(3, 'pbkdf2_sha256$260000$ytftBDNKEoG7pR00gUuKYs$sG+nGztoLgWpPcPCrhHhW7NAXWnbzvjpxeLu9L9u+x0=', '2022-02-25 12:19:45.334503', 0, 'dodo', '', '', '', 0, 1, '2022-02-25 12:19:35.217053'),
(4, 'pbkdf2_sha256$260000$DiB7MLo1hvue7PtRVxEj7q$uay0K9LKioWjKqSVogSL58kVyleSiiCXCziG+1Os05k=', '2022-02-26 02:14:00.939175', 0, 'dondada', '', '', 'dondada@gmail.com', 0, 1, '2022-02-26 02:13:03.029941'),
(5, 'pbkdf2_sha256$260000$VmD3UlKFzvsiCUEer1cjQ0$zXUpTH7hroy1bCVKvN9yMFO2dRgpVVQSHBw5dFA2lik=', '2022-02-26 02:47:34.210156', 0, 'dibi', '', '', 'dibi@gmail.com', 0, 1, '2022-02-26 02:38:44.283851'),
(6, 'pbkdf2_sha256$260000$Adzfqw63BVB4Ljyq59jVDx$zF8C3M/s7+W1PuO/KTnRYZsNSI07K7EE1NPhlg+j9FI=', '2022-02-26 02:49:18.010202', 0, 'zaza', '', '', 'zaza@gmail.com', 0, 1, '2022-02-26 02:49:17.115882');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-02-25 06:46:20.269426', '1', 'izzy', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 4, 1),
(2, '2022-02-25 07:56:40.827562', '2', 'Print stuff', 1, '[{\"added\": {}}]', 7, 1),
(3, '2022-02-26 04:58:25.329857', '1', 'Python Tutorial', 1, '[{\"added\": {}}]', 8, 1),
(4, '2022-02-26 04:58:55.852710', '1', 'Fundamentals of Python', 1, '[{\"added\": {}}]', 9, 1),
(5, '2022-02-26 05:06:13.635458', '1', 'To be', 2, '[{\"changed\": {\"fields\": [\"Content\", \"Slug\"]}}]', 7, 1),
(6, '2022-02-26 05:07:31.608947', '2', 'Print Tutorial', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Slug\"]}}]', 7, 1),
(7, '2022-02-26 05:12:28.395715', '1', 'Fundamentals', 2, '[{\"changed\": {\"fields\": [\"Category\", \"Summary\", \"Slug\"]}}]', 8, 1),
(8, '2022-02-26 05:17:01.385964', '1', 'Python Basics', 2, '[{\"changed\": {\"fields\": [\"Series\", \"Summary\"]}}]', 9, 1),
(9, '2022-02-26 05:17:17.577610', '2', 'Print Tutorial', 2, '[]', 7, 1),
(10, '2022-02-26 05:24:34.339298', '2', 'Intermediate', 1, '[{\"added\": {}}]', 8, 1),
(11, '2022-02-26 05:25:15.005017', '3', 'Advanced', 1, '[{\"added\": {}}]', 8, 1),
(12, '2022-02-26 05:25:52.865017', '2', 'Django Basics', 1, '[{\"added\": {}}]', 9, 1),
(13, '2022-02-26 05:26:12.267886', '3', 'WordPress Basics', 1, '[{\"added\": {}}]', 9, 1),
(14, '2022-02-26 05:26:39.908321', '4', 'Intermediate Python', 1, '[{\"added\": {}}]', 9, 1),
(15, '2022-02-26 05:27:01.600554', '5', 'Intermediate Django', 1, '[{\"added\": {}}]', 9, 1),
(16, '2022-02-26 05:27:22.110856', '6', 'Intermediate WordPress', 1, '[{\"added\": {}}]', 9, 1),
(17, '2022-02-26 05:27:45.667335', '7', 'Advanced Python', 1, '[{\"added\": {}}]', 9, 1),
(18, '2022-02-26 05:28:03.279507', '8', 'Advanced Django', 1, '[{\"added\": {}}]', 9, 1),
(19, '2022-02-26 05:28:20.709695', '9', 'Advanced WordPress', 1, '[{\"added\": {}}]', 9, 1),
(20, '2022-02-26 05:30:08.646806', '3', 'Rolling With Python', 1, '[{\"added\": {}}]', 7, 1),
(21, '2022-02-26 05:34:58.512410', '4', 'Gentle Intro To Django', 1, '[{\"added\": {}}]', 7, 1),
(22, '2022-02-26 05:38:50.733796', '5', 'Discovering Django', 1, '[{\"added\": {}}]', 7, 1),
(23, '2022-02-26 05:46:21.403000', '6', 'My First Django', 1, '[{\"added\": {}}]', 7, 1),
(24, '2022-02-26 05:50:33.391430', '7', 'Installing WordPress', 1, '[{\"added\": {}}]', 7, 1),
(25, '2022-02-26 07:07:02.492202', '8', 'First WordPress Post', 1, '[{\"added\": {}}]', 7, 1),
(26, '2022-02-26 07:07:53.523641', '9', 'WordPress Prerequisites', 1, '[{\"added\": {}}]', 7, 1),
(27, '2022-02-26 07:08:29.143061', '10', 'Conditions In Python', 1, '[{\"added\": {}}]', 7, 1),
(28, '2022-02-26 07:08:49.269654', '11', 'Loops In Python', 1, '[{\"added\": {}}]', 7, 1),
(29, '2022-02-26 07:09:23.936136', '12', 'Importance Of Indentation In Python', 1, '[{\"added\": {}}]', 7, 1),
(30, '2022-02-26 07:09:52.942789', '13', 'Routing In Django', 1, '[{\"added\": {}}]', 7, 1),
(31, '2022-02-26 07:10:18.958338', '14', 'MVC With Django', 1, '[{\"added\": {}}]', 7, 1),
(32, '2022-02-26 07:10:40.229075', '15', 'Django Models', 1, '[{\"added\": {}}]', 7, 1),
(33, '2022-02-26 07:11:45.239156', '16', 'WordPress Custom Templates', 1, '[{\"added\": {}}]', 7, 1),
(34, '2022-02-26 07:12:09.934465', '17', 'Custom Menus In WordPress', 1, '[{\"added\": {}}]', 7, 1),
(35, '2022-02-26 07:12:50.058035', '18', 'WordPress eCommerce Basics', 1, '[{\"added\": {}}]', 7, 1),
(36, '2022-02-26 07:14:06.363262', '19', 'Python MySQL Connector Class', 1, '[{\"added\": {}}]', 7, 1),
(37, '2022-02-26 07:14:40.613591', '20', 'Python External Templates', 1, '[{\"added\": {}}]', 7, 1),
(38, '2022-02-26 07:15:17.597600', '21', 'Abstraction With Python', 1, '[{\"added\": {}}]', 7, 1),
(39, '2022-02-26 07:16:13.454762', '22', 'User Registration In Django', 1, '[{\"added\": {}}]', 7, 1),
(40, '2022-02-26 07:16:42.769614', '23', 'Django User Authentication', 1, '[{\"added\": {}}]', 7, 1),
(41, '2022-02-26 07:17:12.274888', '24', 'Django Admin Registration', 1, '[{\"added\": {}}]', 7, 1),
(42, '2022-02-26 07:17:41.764157', '25', 'WordPress Pages', 1, '[{\"added\": {}}]', 7, 1),
(43, '2022-02-26 07:18:31.991849', '26', 'Customizing WordPress Dashboard', 1, '[{\"added\": {}}]', 7, 1),
(44, '2022-02-26 07:18:58.908678', '27', 'WordPress Settings Config', 1, '[{\"added\": {}}]', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'main', 'category'),
(9, 'main', 'series'),
(7, 'main', 'tutorial'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-02-25 06:29:14.680213'),
(2, 'auth', '0001_initial', '2022-02-25 06:29:34.800188'),
(3, 'admin', '0001_initial', '2022-02-25 06:29:39.424802'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-02-25 06:29:39.580293'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-25 06:29:39.699099'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-02-25 06:29:42.922189'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-02-25 06:29:45.275714'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-02-25 06:29:45.823138'),
(9, 'auth', '0004_alter_user_username_opts', '2022-02-25 06:29:45.957915'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-02-25 06:29:47.565803'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-02-25 06:29:47.713003'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-02-25 06:29:47.922346'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-02-25 06:29:49.951315'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-02-25 06:29:51.907984'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-02-25 06:29:52.382761'),
(16, 'auth', '0011_update_proxy_permissions', '2022-02-25 06:29:52.528121'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-02-25 06:29:54.467902'),
(18, 'main', '0001_initial', '2022-02-25 06:29:55.489405'),
(19, 'sessions', '0001_initial', '2022-02-25 06:29:56.916540'),
(20, 'main', '0002_alter_tutorial_published', '2022-02-25 07:18:12.154727'),
(21, 'main', '0003_auto_20220226_0454', '2022-02-26 04:55:01.339131'),
(22, 'main', '0004_auto_20220226_0500', '2022-02-26 05:00:39.669919');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('adbewipy3w60scz244bglvpsi0tlcxbr', '.eJxVjMsOwiAQRf-FtSFQhkdduvcbCDNDpWogKe3K-O_apAvd3nPOfYmYtrXEreclzizOQovT74aJHrnugO-p3pqkVtdlRrkr8qBdXhvn5-Vw_w5K6uVbex-0Yx9gQgOQwJIftAVCMllbYrQqBLBo3DQqcgrZD9YkwNFlZ5QW7w_HQzcQ:1nNUMS:5jgr9IRFEphYBP3BydBew2DA3RCriacT6vyWTIBn6l8', '2022-03-11 06:45:52.786491'),
('c05f6evlu3ofbojuh0rqba8v20msc7hx', '.eJxVjDsOwjAQBe_iGln-xR9Kes4Q7XrXOIAcKU4qxN0hUgpo38y8lxhhW-u4dV7GicRZeHH63RDyg9sO6A7tNss8t3WZUO6KPGiX15n4eTncv4MKvX5rMCFmo5zGGJA1IWIx3nKMCpz3g1KDBdbBYLIUbBoUleJKCmjJoGXx_gDdkDfO:1nNn94:9BVrSdA8b7tzaL6wiVlDu5Rku-jgwmBZErBcV9oGK-g', '2022-03-12 02:49:18.200604'),
('ljimwpzt5n7233sn8v09v0vl7genvi4p', '.eJxVjDsOwjAQBe_iGlnxb72hpOcM0Xq9xgHkSPlUiLtDpBTQvpl5LzXQttZhW2QexqzOyqnT75aIH9J2kO_UbpPmqa3zmPSu6IMu-jpleV4O9--g0lK_NUoo3jIxRA8lk2DprGUDQgadcciAnBIHZ6O1PfhoCkSMUbAHEzr1_gDpNjcr:1nNZZa:E5o2Y0sOfRMdaxYWqJb2E9gnjJ6ORs3C5M-j-8ndiBU', '2022-03-11 12:19:46.427749'),
('oedfywl83ju2wim4zaih1cnwwxxuv2uh', '.eJxVjMsOwiAQRf-FtSFQhkdduvcbCDNDpWogKe3K-O_apAvd3nPOfYmYtrXEreclzizOQovT74aJHrnugO-p3pqkVtdlRrkr8qBdXhvn5-Vw_w5K6uVbex-0Yx9gQgOQwJIftAVCMllbYrQqBLBo3DQqcgrZD9YkwNFlZ5QW7w_HQzcQ:1nNp78:d6LP5NqrJl3dCAxscmOo7pxGdJrtIy6y5_xnnwhgI0Q', '2022-03-12 04:55:26.498383'),
('u6gmbvap90kl8q80ttns21qfif8ahr3q', '.eJxVjMsOwiAQRf-FtSFQhkdduvcbCDNDpWogKe3K-O_apAvd3nPOfYmYtrXEreclzizOQovT74aJHrnugO-p3pqkVtdlRrkr8qBdXhvn5-Vw_w5K6uVbex-0Yx9gQgOQwJIftAVCMllbYrQqBLBo3DQqcgrZD9YkwNFlZ5QW7w_HQzcQ:1nNr6z:ODnhmd1WbaXzRPFJbenf5bRlECr-kKIUBMmG3V1KFzs', '2022-03-12 07:03:25.682730');

-- --------------------------------------------------------

--
-- Table structure for table `main_category`
--

CREATE TABLE `main_category` (
  `id` bigint NOT NULL,
  `category` varchar(200) NOT NULL,
  `summary` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `main_category`
--

INSERT INTO `main_category` (`id`, `category`, `summary`, `slug`) VALUES
(1, 'Fundamentals', 'Learn Python and stuff', 'fundamentals'),
(2, 'Intermediate', 'Getting a handle on things', 'intermediate'),
(3, 'Advanced', 'Getting down to real business', 'advanced');

-- --------------------------------------------------------

--
-- Table structure for table `main_series`
--

CREATE TABLE `main_series` (
  `id` bigint NOT NULL,
  `series` varchar(200) NOT NULL,
  `summary` varchar(200) NOT NULL,
  `category_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `main_series`
--

INSERT INTO `main_series` (`id`, `series`, `summary`, `category_id`) VALUES
(1, 'Python Basics', 'Learn to do things with Python', 1),
(2, 'Django Basics', 'django-basics', 1),
(3, 'WordPress Basics', 'wordpress-basics', 1),
(4, 'Intermediate Python', 'intermediate-python', 2),
(5, 'Intermediate Django', 'intermediate-django', 2),
(6, 'Intermediate WordPress', 'intermediate-wordpress', 2),
(7, 'Advanced Python', 'advanced-python', 3),
(8, 'Advanced Django', 'advanced-django', 3),
(9, 'Advanced WordPress', 'advanced-wordpress', 3);

-- --------------------------------------------------------

--
-- Table structure for table `main_tutorial`
--

CREATE TABLE `main_tutorial` (
  `id` bigint NOT NULL,
  `title` varchar(200) NOT NULL,
  `content` longtext NOT NULL,
  `published` datetime(6) NOT NULL,
  `series_id` bigint NOT NULL,
  `slug` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `main_tutorial`
--

INSERT INTO `main_tutorial` (`id`, `title`, `content`, `published`, `series_id`, `slug`) VALUES
(1, 'To be', '<p>...or not to be</p>', '2022-02-25 06:33:28.000000', 1, 'to-be'),
(2, 'Print Tutorial', '<p>Here\'s how to print things&nbsp;</p>\r\n<pre class=\"language-python\"><code>def print_stuff{thething): \r\n    print(thething) \r\n    return thething \r\n\r\nprint_stuff(\"Whaaooo!\")</code></pre>', '2022-02-25 07:50:53.000000', 1, 'print-tutorial'),
(3, 'Rolling With Python', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span></p>', '2022-02-26 05:15:46.000000', 1, 'rolling-with-python'),
(4, 'Gentle Intro To Django', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 05:15:46.000000', 2, 'gentle-intro-to-django'),
(5, 'Discovering Django', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</span></p>', '2022-02-26 05:15:46.000000', 2, 'discovering-django'),
(6, 'My First Django', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, every pleasure is to be welcomed and every pain avoided. But in certain circumstances and owing to the claims of duty or the obligations of business it will frequently occur that pleasures have to be repudiated and annoyances accepted. The wise man therefore always holds in these matters to this principle of selection: he rejects pleasures to secure other greater pleasures, or else he endures pains to avoid worse pains.</span></p>', '2022-02-26 05:15:46.000000', 1, 'my-first-django'),
(7, 'Installing WordPress', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?</span></p>', '2022-02-26 05:15:46.000000', 3, 'installing-wordpress'),
(8, 'First WordPress Post', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 3, 'first-wordpress-post'),
(9, 'WordPress Prerequisites', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 3, 'wordpress-prerequisites'),
(10, 'Conditions In Python', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 4, 'conditions-in-python'),
(11, 'Loops In Python', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 4, 'loops-in-python'),
(12, 'Importance Of Indentation In Python', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 4, 'importance-of-indentation-in-python'),
(13, 'Routing In Django', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 5, 'routing-in-django'),
(14, 'MVC With Django', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 5, 'mvc-with-django'),
(15, 'Django Models', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 5, 'django-models'),
(16, 'WordPress Custom Templates', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 9, 'wordpress-custom-templates'),
(17, 'Custom Menus In WordPress', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 9, 'custom-menus-in-wordpress'),
(18, 'WordPress eCommerce Basics', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 9, 'wordpress-ecommerce-basics'),
(19, 'Python MySQL Connector Class', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 7, 'python-mysql-connector-class'),
(20, 'Python External Templates', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 7, 'python-external-templates'),
(21, 'Abstraction With Python', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 7, 'abstraction-with-python'),
(22, 'User Registration In Django', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 5, 'user-registration-in-django'),
(23, 'Django User Authentication', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 5, 'django-user-authentication'),
(24, 'Django Admin Registration', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 5, 'django-admin-registration'),
(25, 'WordPress Pages', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 6, 'wordpress-pages'),
(26, 'Customizing WordPress Dashboard', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 6, 'customizing-wordpress-dashboard'),
(27, 'WordPress Settings Config', '<p><span style=\"font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span></p>', '2022-02-26 07:01:33.000000', 6, 'wordpress-settings-config');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `main_category`
--
ALTER TABLE `main_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_series`
--
ALTER TABLE `main_series`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_series_category_id_742840ba_fk_main_category_id` (`category_id`);

--
-- Indexes for table `main_tutorial`
--
ALTER TABLE `main_tutorial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_tutorial_series_id_981d9d2b_fk_main_series_id` (`series_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `main_category`
--
ALTER TABLE `main_category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_series`
--
ALTER TABLE `main_series`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `main_tutorial`
--
ALTER TABLE `main_tutorial`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `main_series`
--
ALTER TABLE `main_series`
  ADD CONSTRAINT `main_series_category_id_742840ba_fk_main_category_id` FOREIGN KEY (`category_id`) REFERENCES `main_category` (`id`);

--
-- Constraints for table `main_tutorial`
--
ALTER TABLE `main_tutorial`
  ADD CONSTRAINT `main_tutorial_series_id_981d9d2b_fk_main_series_id` FOREIGN KEY (`series_id`) REFERENCES `main_series` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
