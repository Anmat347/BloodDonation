-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:8111
-- Generation Time: May 17, 2021 at 08:26 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbdms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin12', 'admin12', '2021-05-15 07:11:03');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add conquery', 7, 'add_conquery'),
(26, 'Can change conquery', 7, 'change_conquery'),
(27, 'Can delete conquery', 7, 'delete_conquery'),
(28, 'Can view conquery', 7, 'view_conquery'),
(29, 'Can add adminreg', 8, 'add_adminreg'),
(30, 'Can change adminreg', 8, 'change_adminreg'),
(31, 'Can delete adminreg', 8, 'delete_adminreg'),
(32, 'Can view adminreg', 8, 'view_adminreg'),
(33, 'Can add tblcontactusquery', 9, 'add_tblcontactusquery'),
(34, 'Can change tblcontactusquery', 9, 'change_tblcontactusquery'),
(35, 'Can delete tblcontactusquery', 9, 'delete_tblcontactusquery'),
(36, 'Can view tblcontactusquery', 9, 'view_tblcontactusquery'),
(37, 'Can add login', 10, 'add_login'),
(38, 'Can change login', 10, 'change_login'),
(39, 'Can delete login', 10, 'delete_login'),
(40, 'Can view login', 10, 'view_login'),
(41, 'Can add signupuser', 11, 'add_signupuser'),
(42, 'Can change signupuser', 11, 'change_signupuser'),
(43, 'Can delete signupuser', 11, 'delete_signupuser'),
(44, 'Can view signupuser', 11, 'view_signupuser');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(8, 'finalmodel', 'adminreg'),
(7, 'finalmodel', 'conquery'),
(10, 'finalmodel', 'login'),
(11, 'finalmodel', 'signupuser'),
(9, 'finalmodel', 'tblcontactusquery'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-04-01 19:38:13.190669'),
(2, 'auth', '0001_initial', '2021-04-01 19:38:14.169358'),
(3, 'admin', '0001_initial', '2021-04-01 19:38:18.718546'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-04-01 19:38:19.850149'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-04-01 19:38:19.886246'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-04-01 19:38:20.435716'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-04-01 19:38:21.212846'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-04-01 19:38:21.347337'),
(9, 'auth', '0004_alter_user_username_opts', '2021-04-01 19:38:21.395463'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-04-01 19:38:22.335736'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-04-01 19:38:23.090167'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-04-01 19:38:23.141183'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-04-01 19:38:23.313332'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-04-01 19:38:23.535595'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-04-01 19:38:23.646962'),
(16, 'auth', '0011_update_proxy_permissions', '2021-04-01 19:38:23.796908'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-04-01 19:38:24.053429'),
(18, 'sessions', '0001_initial', '2021-04-01 19:38:24.359915');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `finalmodel_accptr`
--

CREATE TABLE `finalmodel_accptr` (
  `aid` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `bldgrp` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finalmodel_accptr`
--

INSERT INTO `finalmodel_accptr` (`aid`, `name`, `bldgrp`, `location`, `contact`) VALUES
(1, 'John Doe', 'B+', 'Mumbai', '9087561234'),
(2, 'Bob Matson', 'A+', 'Mumbai,Maharashtra', '89044651287'),
(3, 'Aleexa Methew', 'AB+', 'Mumbai , Maharashtra', '8689453312'),
(4, 'Mary Kin', 'O+', '32 Museum street, Avocadro, Mumbai', '7809123456'),
(5, 'Bob Matson', 'A+', 'Mumbai , Maharashtra', '89044651287'),
(6, 'Gamma Rays', 'B+', 'Mumbai , Maharashtra', '7654127640'),
(7, 'Gamma Rays', 'B+', 'Mumbai , Maharashtra', '7654127640'),
(8, 'Maseerah', 'A+', 'Mumbra , Maharashtra', '9087561234'),
(9, 'AnXun', 'AB+', 'Mumbai , Maharashtra', '7890561253'),
(10, 'Fatima', 'B+', '43 Crimson Road , Gallery Bart , Mumbai', '89044651287');

-- --------------------------------------------------------

--
-- Table structure for table `finalmodel_dnrinfo`
--

CREATE TABLE `finalmodel_dnrinfo` (
  `did` int(11) NOT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `recency` int(11) DEFAULT NULL,
  `montary` int(11) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `firstdontime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finalmodel_dnrinfo`
--

INSERT INTO `finalmodel_dnrinfo` (`did`, `uname`, `recency`, `montary`, `frequency`, `firstdontime`) VALUES
(1, 'Alpja', 4, 89, 25, 40),
(2, 'Bob Matson', 12, 2000, 25, 4),
(3, 'Bob Matson', 12, 2000, 25, 4),
(4, 'Atruba', 12, 2000, 25, 3),
(5, 'Atruba', 12, 2000, 25, 3),
(6, 'Mark Twain', 4, 566, 4, 4),
(7, 'Marry Kim', 12, 2000, 8, 3),
(8, 'Alpha Rays', 12, 2000, 23, 40),
(9, 'Alpha Rays', 12, 2000, 23, 40),
(10, 'Anwari', 1, 2000, 23, 40),
(11, 'John Sena', 4, 2000, 8, 3),
(12, 'Kashaf', 4, 2000, 25, 40);

-- --------------------------------------------------------

--
-- Table structure for table `finalmodel_login`
--

CREATE TABLE `finalmodel_login` (
  `name` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finalmodel_login`
--

INSERT INTO `finalmodel_login` (`name`, `pwd`) VALUES
('Stephen Hawks', 'stephen123'),
('Stephen Hawks', 'stephen123');

-- --------------------------------------------------------

--
-- Table structure for table `finalmodel_signupuser`
--

CREATE TABLE `finalmodel_signupuser` (
  `uid` int(11) NOT NULL,
  `uname` varchar(100) DEFAULT NULL,
  `umail` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `uadd` varchar(100) DEFAULT NULL,
  `cnumber` varchar(100) DEFAULT NULL,
  `bldgrp` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finalmodel_signupuser`
--

INSERT INTO `finalmodel_signupuser` (`uid`, `uname`, `umail`, `pwd`, `uadd`, `cnumber`, `bldgrp`) VALUES
(1, 'John Doe', 'john12@gmail.com', 'john123', 'Mumbai', '9087561234', 'B+'),
(2, 'JuliaDoe', 'Julia@gmail.com', 'julia123', 'Mumbai', '8940367123', 'O+'),
(3, 'Aleexa Methew', 'aleexamathw@gmail.in', 'aleexa123', 'Mumbai , Maharashtra', '8689453312', 'AB+'),
(4, 'Bob Matson', 'bobmatson@gmail.com', 'bob123', 'Mumbai , Maharashtra', '89044651287', 'A+'),
(5, 'Atruba', 'mominatruba@gmail.com', 'atruba123', 'Bhiwandi , Maharashtra', '9087561234', 'A+'),
(6, 'Mark Twain', 'mrktwainnn@gmail.com', 'mark123', '345 Morland road , Blackson Street , Andheri', '9087654231', 'AB+'),
(7, 'Mary Kin', 'marykim@gmail.com', 'marry123', '32 Museum street, Avocadro, Mumbai', '7809123456', 'O+'),
(8, 'Maseerah', 'maseerahk@gmail.com', 'masee123', 'Mumbra , Maharashtra', '9087561234', 'A+'),
(9, 'Alpha Rays', 'alpha12@gmail.com', 'alpha123', '23 Grosslant , Brinjal Street , In Veggies , Panvel ', '9087654231', 'B+'),
(10, 'Gamma Rays', 'gammarayz@gmail.com', 'gamma', 'Mumbra', '123454', 'B+'),
(11, 'Anwari', 'khananwari8424@gmail.com', 'annu123', '45 Crimson Mart , Ballerina Hall, Andheri West', '1234564321', 'O-'),
(12, 'AnXun', 'anxun@gmail.com', 'anxun123', 'Mumbai , Maharashtra', '7890561253', 'AB+'),
(13, 'John Sena', 'johnsena@gmail.com', 'john123', '45 Crimson Mart , Ballerina Hall, Andheri West', '1234564321', 'B+'),
(14, 'Kashaf', 'kmomin@gmail.com', 'kashaf123', '45 Crimson Mart , Ballerina Hall, Andheri West', '8996754309', 'AB+'),
(15, 'Fatima', 'fattymomin@gmail.com', 'fatty123', '45 Crimson Mart , Ballerina Hall, Andheri West', '1234567890', 'B+');

-- --------------------------------------------------------

--
-- Table structure for table `finalmodel_tblblooddonars`
--

CREATE TABLE `finalmodel_tblblooddonars` (
  `id` int(11) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `bloodgroup` varchar(100) DEFAULT NULL,
  `Location` varchar(1000) DEFAULT NULL,
  `contact` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finalmodel_tblblooddonars`
--

INSERT INTO `finalmodel_tblblooddonars` (`id`, `Name`, `bloodgroup`, `Location`, `contact`) VALUES
(1, 'CLEVIO MONTEIRO', 'A+', 'MALAD, mumbai', '9819132140'),
(2, 'Rahul Purandare', 'A+', 'Dadar, mumbai', '9324576504'),
(3, 'Akash Selokar', 'A+', 'Malad (W), mumbai', '9371181541'),
(4, 'Sachin Ramesh Bawkar', 'A+', 'Veera Desai road, Andheri - West, mumbai', '9920021812'),
(5, 'deepak', 'A+', 'sukapur, new panvel, mumbai', '9029391350'),
(6, 'bunty jain', 'A+', 'gulalwadi, mumbai', '9892411555'),
(7, 'VIKAS', 'A+', 'DAHISAR, mumbai', '9892654814'),
(8, 'gaurav kulkarni', 'A+', 'bandra east, mumbai', '919987545314'),
(9, 'Avadhut Sharad Pandit', 'A+', 'Borivali, mumbai', '8080455345'),
(10, 'Saahil khan', 'A+', 'Powai, mumbai', '8898813637'),
(11, 'Subodh', 'A+', 'Ghodbunder Road, thane', '9869061999'),
(12, 'Bharathi Kapoor', 'A+', 'Kandivali, mumbai', '9004050521'),
(13, 'amit', 'A+', 'Charkop, mumbai', '9769101989'),
(14, 'dipankar das', 'A+', 'kalbadevi road, mumbai', '9892091732'),
(15, 'Noah', 'A+', 'Khar west, mumbai', '8898322969'),
(16, 'Hemant Nikam', 'A+', 'Mira road, thane', '8149868727'),
(17, 'Prea Jain', 'A+', 'Worli, mumbai', '9930755945'),
(18, 'Jay Kansara', 'A+', 'Vasai (West), mumbai', '9892414492'),
(19, 'Danny Konketh', 'A+', 'Daisher , mumbai', '7420976189'),
(20, 'Anuran Gayali', 'A+', 'RPG House,143, Dr. Annie Besant Road, Worli, Near Old Passport Office, mumbai', '9903363329'),
(21, 'Arpita Kolay', 'A+', 'Charni Road, mumbai', '9920265306'),
(22, 'Shaikh Fahad', 'A+', 'Kurla West, mumbai', '8419921771'),
(23, 'Suraj Pandurang Yedre', 'A+', 'Ratna Nagar, Tarun Bharat Soc., Chakala , andheri East, mumbai', '7506730772'),
(24, 'Saurabh Tiwari', 'A+', 'Malad East, mumbai', '9990334466'),
(25, 'karthick palanisamy', 'A+', '#1804, milan flat ,thane, mumbai', '7506947168'),
(26, 'sachin waghmare', 'A+', 'kem hospital, mumbai', '8087240614'),
(27, 'Siddhi', 'A+', 'Curryroad, mumbai', '09167344204'),
(28, 'Rahul Rajput', 'A+', 'A6, Vijay Nagar, Dias & PEraira Nagar, Naigaon west, thane', '8983364564'),
(29, 'JAY KANSARA', 'A+', 'Mulund(West), mumbai', '9892414492'),
(30, 'Suraj Waghmare', 'A+', 'Mira Road, mumbai', '9702846069'),
(31, 'SANKET', 'A+', 'dombivli, thane', '9769103408'),
(32, 'Deepak C Yadav', 'A+', 'Chembur, mumbai', '9920619002'),
(33, 'Derick Fernandes', 'A-', 'Pandurang Wadi, Goregaon (E), mumbai', '9821222260'),
(34, 'Hiren Shahani', 'A-', 'Andheri East , mumbai', '9819802016'),
(35, 'NITIN CHANDRAKANT PILANKAR', 'A-', 'LINK ROAD , DAHANUKAR WADI KANDIVALI WEST , mumbai', '9930929517'),
(36, 'devesh tendulkar', 'A-', 'lokhandwala ,andheri west, mumbai', '9833202817'),
(37, 'Sayali Daptardar', 'A-', '304, Visariya Tower, thane', '9324765115'),
(38, 'MURTUZA ZOEB ENGINEER', 'A-', '43/45, RAUDAT TAHERA STREET,, mumbai', '9004786110'),
(39, 'Kunal Shah', 'A-', 'Manpada Road, Dombivali (East), mumbai', '9819734533'),
(40, 'Dinesh Rayan', 'AB+', 'Alaknanda , Lokgram, kalyan east, thane', '9930820805'),
(41, 'jowen dsouza', 'AB+', 'andheri east, mumbai', '9819806396'),
(42, 'Akash Agawane', 'AB+', 'Wadala/Dadar, mumbai', '9146848262'),
(43, 'Omkar Pawar', 'AB+', 'Majiwada, thane', '7715885309'),
(44, 'Harish Kumar', 'AB+', 'Jankalyan Nagar, Malad West, mumbai', '9820700345'),
(45, 'Kalpesh Sanghavi', 'AB+', 'Mumbai, mumbai', '9769644525'),
(46, 'Neha Bansal', 'AB+', 'Powai, Mumbai, mumbai', '9930354031'),
(47, 'jitendra yadav', 'AB+', 'room no. 4 ganesh wadi laxman nagar behind avm high school, mumbai', '9821069120'),
(48, 'Priyanka', 'AB+', 'Borivali west, mumbai', '9822026123'),
(49, 'vinay kumar pandey', 'AB+', 'Mira Road East, thane', '8879406062'),
(50, 'Shridhar Zalki', 'AB+', 'Manpada, Thane West, thane', '7208048065'),
(51, 'Ravikumar Bhatia', 'AB+', 'adarsh dughdalay street malad west, mumbai', '9930437770'),
(52, 'Tulika Agrawal', 'AB+', 'I-1002, Hyderabad Estate, Nepean Sea Road, Malabar Hill, mumbai', '9820737440'),
(53, 'Prasad', 'AB+', 'Maharashtra, mumbai', '9819991740'),
(54, 'vinay kumar pandey', 'AB+', 'Mira Road East, mumbai', '8879406062'),
(55, 'jitendra yadav', 'AB+', 'room no. 4 ganesh wadi laxman nagar behind avm high school, mumbai', '9821069120'),
(56, 'VIDYUT RAJA', 'AB+', 'MIRA ROAD, mumbai', '9930202066'),
(57, 'Arild Dias', 'AB+', 'sarvodaya nagar, Jm road bhandup west, mumbai', '9819653463'),
(58, 'Siddesh Shetty', 'AB+', '1802, Dheeraj Gaurav Heights 1, Off Andheri Link road, Andheri west, mumbai', '9833420930'),
(59, 'Shailesh Irabatti', 'AB+', 'Andheri East, mumbai', '9833522055'),
(60, 'DEEPTI', 'AB+', 'GOREGAON WEST, S.V.ROAD, mumbai', '9820083598'),
(61, 'Akbar Ainullah Khan', 'AB-', 'Sion / Near Dharavi bus Depot, mumbai', '9167179586/ 0096567796508'),
(62, 'Asif', 'AB-', 'Dombivli, thane', '8981566113'),
(63, 'Dipesh Tiwari', 'AB-', 'E 1103, Sonam Srivilas, New golden nest phase 15 Bhayander east, thane', '9821150625'),
(64, 'VIPUL M.Gajjar', 'AB-', 'Devki c h s - 104, v p road,, mumbai', '9920761199'),
(65, 'sanjay kr', 'AB-', 'navi mumbai, mumbai', '09911884989'),
(66, 'Rajeev Modi', 'B+', 'Malad / Andheri, mumbai', '9323483599 / 9594899077'),
(67, 'Sharon Fernandes', 'B+', 'Wadala, mumbai', '9820525184'),
(68, 'Grace Saldanha', 'B+', 'Wadala , mumbai', '9920549419'),
(69, 'SAVIO SALDANHA', 'B+', 'Wadala East , mumbai', '9920549419'),
(70, 'Jackson Francis', 'B+', 'Ambernath, thane', '09860240034'),
(71, 'renita moras', 'B+', 'santacruz (east), mumbai', '9930247729'),
(72, 'vanessa crasto', 'B+', 'andheri, mumbai', '9167515840'),
(73, 'namrata sonawane', 'B+', 'mumbai, mumbai', '9821710964'),
(74, 'namrata sonawane', 'B+', 'mumbai, mumbai', '9821710964'),
(75, 'Savio Saldanha', 'B+', 'Wadala, mumbai', '9920549419'),
(76, 'Dinesh Kudtarkar', 'B+', 'Kalwa West,, thane', '9820335783'),
(77, 'manoj samuel', 'B+', 'Sector - 6, New Panvel Navi Mumbai, mumbai', '9833184686'),
(78, 'SANDIP DEBNATH', 'B+', 'ST.PAUL STREET, mumbai', '9903547609'),
(79, 'Anurag Kumar Pawan Kumar BAri', 'B+', 'hanuman seva sangh,gazdhar band,santacruz west, mumbai', '9029480348'),
(80, 'anubhav', 'B+', 'maharashtra, mumbai', '9167721505'),
(81, 'KIRAN KANDREGULA', 'B+', 'POWAI, mumbai', '919966897902'),
(82, 'Prasad', 'B+', 'The Discovery, Datta pada Road, Borivali east, mumbai', '9892764507'),
(83, 'Sharadchandra Chaturvedi', 'B+', 'Kandarpada, Dahisar West, mumbai', '9892105033'),
(84, 'Peehoo Sinha', 'B+', 'Malad, mumbai', '7498468887'),
(85, 'sanchit', 'B+', '23 c 702, mumbai', '7738354969'),
(86, 'Chetan Jangle', 'B+', 'Mulund east, mumbai', '9324137514'),
(87, 'Vishnu Kanth Gokul', 'B+', 'NG Vedant, Beverly Park, Opp RBK Kanakiya School, mumbai', '9699852352'),
(88, 'Amit Vivalkar', 'B+', 'Tilak Nagar, Chembur, mumbai', '9769240270'),
(89, 'Roshan Dsouza', 'B+', 'MUlji Nagar, mumbai', '9004096262'),
(90, 'Kartik', 'B+', 'Shivai Nagar, thane', '8097245968'),
(91, 'Alphonsa Joseph', 'B+', 'Malad West, mumbai', '9967206214'),
(92, 'Yuvraj Gamre', 'B+', 'Virar west, mumbai', '08983334289'),
(93, 'Kyrien Crasto', 'B+', 'Bandra West, mumbai', '9930338841'),
(94, 'Piomaxie dsouza', 'B+', 'Shiv shurthi marg, kurla est, mumbai', '9820842154'),
(95, 'Rahul Tiwari', 'B+', 'Chembur, mumbai', '9833090874'),
(96, 'Rajnish Rana', 'B+', '701-A, Skyway Building, Shastri Nagar, Lokhandwala Complex,, mumbai', '7773717333'),
(97, 'Delzine Wankadia', 'B+', 'Sir M.V Road, Andheri East, mumbai', '8879718095'),
(98, 'Mayank Shrivastava', 'B+', 'Malad West, mumbai', '9594994127'),
(99, 'Sampras D\'souza', 'B+', 'Dr. Ambekar Road, Naigaon, Dadar east, mumbai', '9773828725'),
(100, 'Nitya Kumar Nadar', 'B+', 'Dharavi, mumbai', '9870788582'),
(101, 'siddhesh bare', 'B+', 'Lower Parel, mumbai', '9773445313'),
(102, 'Prachi', 'B+', 'Vasant Vihar, thane', '9767109660'),
(103, 'Rogers Chelot', 'B+', 'Tilak Nagar, mumbai', '9820437517'),
(104, 'Vinay N Kumar', 'B+', 'Andheri E, mumbai', '9757165122'),
(105, 'Reyee Nainan', 'B+', 'C202, Bldg No.6, Prem Nagar, SVP Road, Borivali West., mumbai', '8655853872'),
(106, 'Dinesh Sonalkar', 'B+', 'Lower Parel, mumbai', '8879527776'),
(107, 'Bhagyesh Ghosalkar', 'B+', 'Datta Mandir road, malad east, mumbai', '8169022364'),
(108, 'Jigar Parekh', 'B+', 'Santacruz (W), mumbai', '9820336573'),
(109, 'Rashmi Tapke', 'B+', 'Antop Hill, Wadala (E), mumbai', '9819288800'),
(110, 'Suraj Vishwakarma', 'B+', 'Film city road , mumbai', '8722913159'),
(111, 'Gopal Jilla', 'B+', 'Dadar West, mumbai', '9967661577'),
(112, 'Ashlyn Colaco', 'B+', 'Byculla, mumbai', '8082125834'),
(113, 'Sejal mehta', 'B+', 'B32 Ishwar Nagar LBS Marg Bhandup west, mumbai', '9167450551'),
(114, 'Jigar Parekh', 'B+', 'Santacruz (W), mumbai', '9820336573'),
(115, 'Bharti joshi', 'B+', 'M.G road, mumbai', '9833948889'),
(116, 'Siddhesh Pradhan', 'B+', 'C-2/503, Rutu Park, Near vrundavan soc, thane', '9930613331'),
(117, 'Ravi Kant Bhatia', 'B+', 'Poonam Sagar Complex, Mira Road (E), thane', '7506921649'),
(118, 'Roshan Dsouza', 'B+', 'Andheri West, mumbai', '9820811448'),
(119, 'akshay majgaonkar', 'B+', 'jogeshwari east, mumbai', '8097453714'),
(120, 'yugal krishna', 'B+', 'royal palm estate, goregaon east, mumbai', '7045063505'),
(121, 'Jay Sopariya', 'B+', 'Iraniwadi , Kandivali, mumbai', '9969581300'),
(122, 'Abhishek Anand', 'B+', 'C 404, Casa Rio Gold, Palava City , Dombivali, mumbai', '8007961610'),
(123, 'SUNIL HINGE', 'B+', 'Wagle estate, thane', '9987372381'),
(124, 'Dinesh Sonalkar', 'B+', 'Lower Parel, mumbai', '8879527776'),
(125, 'Piomaxie dsouza', 'B+', 'Shiv shurthi marg, kurla est, mumbai', '9820842154'),
(126, 'Sharon Lobo', 'B+', 'Chakala, andheri east, mumbai', '7715813251'),
(127, 'Gayatri B Gohain', 'B+', 'Navi Mumbai, Vashi, mumbai', '7506005154'),
(128, 'yogesh katke', 'B+', 'dharavi, mumbai', '8108815633'),
(129, 'Archana Gopakumar', 'B-', 'Colaba, mumbai', '9930012152'),
(130, 'Rajiv menon', 'B-', 'Navi Mumbai, mumbai', '9867722116'),
(131, 'Shaikh ayyaz ahamed', 'B-', 'Tarun bharath andheri, mumbai', '8197204221'),
(132, 'Krishnan Iyer', 'B-', 'Thane, mumbai', '9323195487'),
(133, 'Sohail shaikh', 'B-', 'Nishanpada road, mumbai', '9619253910'),
(134, 'shashikant raibole', 'B-', 'k m hospital,parel , thane', '8652516701'),
(135, 'DIPANKAR BAHALIA', 'B-', 'Andheri - E, mumbai', '9820235505'),
(136, 'Vatsal Shah', 'B-', 'Mahavir Nagar, Kandivali (W), mumbai', '9969399699'),
(137, 'Sachin', 'B-', 'thane, thane', '9833741005'),
(138, 'shashikant raibole', 'B-', 'k m hospital,parel , thane', '8652516701'),
(139, 'Laxmi Pandurang Mohite', 'B-', 'Mumbai, mumbai', '9821912039'),
(140, 'Sachin', 'B-', 'B-65, CyberTech House, J. B. Sawant Marg, Thane, Mumbai, Maharashtra 400604, thane', '9773532404'),
(141, 'ARUP MAITY', 'B-', '14A/507 AMEY CHS LTD MHADA COLONY MAHAKALI CAVES RD ANDHERI EAST, mumbai', '9322711991'),
(142, 'Laxmi Pandurang Mohite', 'B-', 'Mumbai, mumbai', '9821912039'),
(143, 'Gaurav Khiwasara', 'B-', 'Rooftop Housing Society, mumbai', '8329699852'),
(144, 'DIPESH PATEL', 'B-', '195/12 JAWAHAR NAAR, GOREGAON-WEST, mumbai', '9323199424'),
(145, 'Swapna Kamath', 'O+', 'K A Subramanium Road, mumbai', '9820425720'),
(146, 'Vijay k', 'O+', 'Colaba, mumbai', '9819800701'),
(147, 'Prashant Abhyankar', 'O+', 'Malad West, mumbai', '9987755501'),
(148, 'Vijay', 'O+', 'Colaba, mumbai', '9819800701'),
(149, 'SOUMYA BRATA DUTT', 'O+', 'Lokhandwala Township, Kandivali (E), mumbai', '99208890833'),
(150, 'ganesh Aryan', 'O+', 'Hiranandani Estate, thane', '9769370007'),
(151, 'Anesh Kavle', 'O+', 'Versova, Andheri West , mumbai', '9833750586'),
(152, 'Khushbu Gaur', 'O+', 'Mumbai, mumbai', '1234567890'),
(153, 'Khushbu Gaur', 'O+', 'Mumbai, mumbai', '9619265699'),
(154, 'Amitkumar Raghunath Vichare', 'O+', 'Goregaon, mumbai', '9920992566'),
(155, 'Lovina Desouza', 'O+', 'Manere Gaon Road,Morya Nagri,Section-25,ulhasnagar-4,, mumbai', '9324150011'),
(156, 'Alka M Tiwari', 'O+', 'santacruz (East), mumbai', '+91 9699816119'),
(157, 'sunny peter miranda', 'O+', 'miraroad, mumbai', '+918898237914'),
(158, 'Niraj Rayker', 'O+', 'Marol, mumbai', '9870016330'),
(159, 'Sapan Jain', 'O+', 'Borivali, mumbai', '9821995559'),
(160, 'Vijay Konishetty', 'O+', 'Virar (West), mumbai', '9323634452'),
(161, 'Mitang Vinod Shah', 'O+', 'Charkop, Sector 3. RDP 7., mumbai', '9821787139'),
(162, 'Manjunath', 'O+', 'Jankalyan Nagar, Malad West, mumbai', '9986021340'),
(163, 'INJAMUL HUSSAIN', 'O+', 'RCF GUEST HOUSE, Chembur Mahul road , mumbai', '8011303043'),
(164, 'E L SEBASTIAN', 'O+', 'Dahisar, mumbai', '9820047011'),
(165, 'Tanweer AHmed', 'O+', 'Kurla (west), Mumbai, mumbai', '9850172201'),
(166, 'Akhil Dad', 'O+', 'H-150, Sector 63, mumbai', '918802974711'),
(167, 'Ravikiran', 'O+', 'Ameerpet, mumbai', '9866648495'),
(168, 'Sachin Jain', 'O+', 'F-802, Lotus Corporate Park, Off Western Express Highway, Goregaon East, Mumbai, India, mumbai', '07387782984'),
(169, 'TejasKumar V', 'O+', 'WNC(O) mess, NOFRA, Colaba, mumbai', '7411250232'),
(170, 'Toral Gohil', 'O+', 'Borivali - East, mumbai', '9833872816'),
(171, 'ROHAN SHAH', 'O+', 'GRANT ROAD, mumbai', '9223510331'),
(172, 'Sujata Madhukar Dhuri', 'O+', 'Jogeshwari East, mumbai', '9930005186'),
(173, 'trilochan singh balvinder', 'O+', 'jb nagar, mumbai', '7219100577'),
(174, 'Sanjeev Seth', 'O+', 'Goregaon west , mumbai', '9699881444'),
(175, 'sweety mahadik', 'O+', 'vashi, navi mumbai, mumbai', '7276479729'),
(176, 'Tanmayee Nusetti', 'O+', 'Andheri West, mumbai', '7506056976'),
(177, 'Param Vyas', 'O+', 'Parekh Lane, Kandivali (West), mumbai', '9930739474'),
(178, 'vinod chavan', 'O+', 'nahur, mumbai', '9773300505'),
(179, 'Kyrien Crasto', 'O+', 'Bandra West, mumbai', '9930338841'),
(180, 'Prashant Patangia', 'O+', 'Nallasopara, thane', '8080102103'),
(181, 'Ramakrishna Kamath', 'O+', 'Santacruz, mumbai', '9022386694'),
(182, 'Rushikesh jayant parab', 'O+', 'N.M.JOSHI MARG, mumbai', '9920169989'),
(183, 'Arindam Das', 'O+', 'Mira Bhayandar Road (E), Shivar Garden, thane', '8097084829|9619538137'),
(184, 'sunita nair', 'O+', 'Andheri west, mumbai', '919224938182'),
(185, 'Ninad Kulkarni', 'O+', 'Chitale road, behind vartak hall, Dadar west, mumbai', '9920943331'),
(186, 'Divyesh shah', 'O+', 'Ghatkopar, mumbai', '09867372419'),
(187, 'VIJAY SAMPAT SALVE', 'O+', 'PHULE NAGER, mumbai', '9987335522/9892469403'),
(188, 'nikita gangurde', 'O+', 'D-501, saki vihar mtnl exchange, near L&T, andheri east, mumbai', '8657171598'),
(189, 'Krishna Sharma', 'O+', 'Vile Parle (East), mumbai', '9967077708'),
(190, 'Daniella', 'O+', 'Mahakali Road, Andheri East, mumbai', '9867647951'),
(191, 'Aamir Mirza', 'O+', 'Ghatkopar West, mumbai', '8097555404'),
(192, 'Kavita Viraj Karwarkar', 'O+', 'Sai Baba Complex, Goregaon East, mumbai', '9870295831'),
(193, 'Gajanan kapse', 'O+', 'Kandivali East, mumbai', '400101'),
(194, 'Ashlyn Colaco', 'O+', 'Byculla, mumbai', '8082125834'),
(195, 'Renny Varghese', 'O+', 'Meridian, Hiranandani Meadows, thane', '9820090819'),
(196, 'Pavan Raiyani', 'O+', '303 JOLLY APT KIROL ROAD NEAR, FATIMA SCHOOL OPP-JOLLY GYMKHANA, GHATKOPAR WEST NR VIDYA VIHAR STN-W, mumbai', '09833008063'),
(197, 'Rajendra Ramesh Pokale', 'O+', 'ghatkoper, mumbai', '9004343250'),
(198, 'Anant shinde', 'O+', 'Kurla west, mumbai', '8898445630'),
(199, 'Ankita bagri', 'O+', '2nd floor Flat no 6 goldcornet navrojee Gamadia road, mumbai', '9821533050'),
(200, 'Sunand Suresh', 'O+', 'G3/F-11, Dias & Peraira Nagar, naigaon west. Tal. Vasai. 401207, mumbai', '9860019165'),
(201, 'VIJAY SAMPAT SALVE', 'O+', 'THANE, thane', '9987335522/9892469403'),
(202, 'VIKAS ANANT KAMBLE', 'O+', 'SANTACRUZ WEST, mumbai', '400051'),
(203, 'Sunil Das', 'O+', 'Kanjur Marg East, mumbai', '9987557869'),
(204, 'Rohini Joshi', 'O+', 'Mira Bhayander Road, mumbai', '8652110005'),
(205, 'Anish Tripathi', 'O+', 'Parijat Gardens, Kasarvadavali, thane', '400601'),
(206, 'Yuvraj patil', 'O+', 'Mira road,thane, mumbai', '9833565748'),
(207, 'Pritesh Khamkar', 'O+', 'Charkop Kandivali (w), mumbai', '8097476213'),
(208, 'BHAVIK V HARIYANI', 'O+', 'LOK KAILASH CHS, OPP CITY OF JOY, MULUND WEST, mumbai', '9022119001'),
(209, 'paramjeet', 'O+', 'fort market, mumbai', '9022615508'),
(210, 'Vikram pandya', 'O+', 'Sv road . Santacruz west, mumbai', '7021365522'),
(211, 'Raj', 'O+', 'A-403, Integrated Bhoomi, LBS Marg,, mumbai', '09167343253'),
(212, 'Pritesh Khamkar', 'O+', 'Charkop Kandivali (w), mumbai', '8097476213'),
(213, 'Nigel Moreira', 'O+', '37, first floor, Kamal Building, Dr. Ambedkar Road, Parel, mumbai', '8369475884'),
(214, 'Arindam Das', 'O+', '304, Sheetal Plaza Apptt., Mira Bhayandar Road (E), mumbai', '8097084829'),
(215, 'GANESH H DAREKAR', 'O+', 'A/39, SAGAR PRASAD, GAVANPADA, MULUND-EAST, mumbai', '9833895972'),
(216, 'Nisha Abhyankar', 'O-', 'Malad , mumbai', '+919987552004'),
(217, 'Peter Fernandes', 'O-', 'Bhayandar, thane', '9820313325'),
(218, 'nisha abhyankar', 'O-', 'opp inorbit mall , malad (west), mumbai', '9987552004'),
(219, 'Ranganath Bhat', 'O-', 'Kalyan West, bombay', '9930407776'),
(220, 'Mohd Naved', 'O-', 'kadar palace, Mumbra, mumbai', '8860419078'),
(221, 'Sheldon Crasto', 'O-', 'Bandra West, mumbai', '9930693693'),
(222, 'AMOGH GUPTE', 'O-', 'B6/44 SAKET COMPLEX, near kalwa bridge, thane, maharashtra, 400604, thane', '9920441244'),
(223, 'Mayur Raut', 'O-', 'Virar (E) 401305, mumbai', '9867677593'),
(224, 'Mitesh Mehta', 'O-', 'Borivali West, mumbai', '9702067770'),
(225, 'Ranjana', 'O-', 'Borivali, mumbai', '8976751977'),
(226, 'Yogesh Mishra', 'O-', 'Andheri West, mumbai', '9004446474'),
(227, 'Jayesh Jayant Kutala', 'O-', 'Virar Vasai, mumbai', '8779565892'),
(228, 'Ajit Khedkar', 'O-', 'Santacruz West, mumbai', '9833393732'),
(229, 'Sangeetha Jathan', 'O-', 'Sahar Road, Opp Suba International Hotel, Chakala, Andheri East, Mumbai- 400099, mumbai', '9167421159'),
(230, 'Meghana Kamat', 'O-', 'Mumbai , mumbai', '9819473189'),
(231, 'Mohit Khemka', 'O-', 'Malad West, mumbai', '9500044933'),
(232, 'Kartik Pandey', 'O-', 'Ghodbunder, thane', '7208111081'),
(233, 'Rahul Wadhwani', 'O-', 'Gokuldham Goregaon East, mumbai', '9920998166'),
(234, 'githesh gopal', 'O-', 'ambernath, thane', '9011852482'),
(235, 'Zubin Damania', 'O-', 'Oshiwara, andheri W, mumbai', '09819222944'),
(236, 'Pratik Padiya', 'O-', 'Shastri Nagar, Goregaon West,, mumbai', '9833606818'),
(237, 'Harpreet singh', 'O-', 'flat no 7, mumbai', '9619677174'),
(238, 'Sharmin Sonde', 'O-', 'K.D Apt,4/404, Thakurpada,Mumbra, thane', '9920052756'),
(239, 'Vishal M Tiwari', 'O-', 'Thane , thane', '9702459003'),
(240, 'James Menezes', 'O-', '202 I wing Gaurav Galaxy . Phase One. Opp Nityanand Nagar . Next to Poonam Cluster one , Mira Road East . Thane 401107, mumbai', '9619760480 / 9004446333');

-- --------------------------------------------------------

--
-- Table structure for table `finalmodel_tblcontactusquery`
--

CREATE TABLE `finalmodel_tblcontactusquery` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `ContactNumber` char(11) DEFAULT NULL,
  `Message` longtext DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finalmodel_tblcontactusquery`
--

INSERT INTO `finalmodel_tblcontactusquery` (`id`, `name`, `EmailId`, `ContactNumber`, `Message`, `PostingDate`, `status`) VALUES
(10, 'John Sue', 'johnsue@yahoo.in', '9802341167', 'Attempt', '2021-04-26 15:42:39', NULL),
(12, 'Julia Kacky', 'juliakacky@gmail.com', '9087541127', 'Testooo!!!', '2021-05-12 14:44:45', NULL),
(13, 'MaseerahK', 'maseerahk@gmail.com', '8903456123', 'Amazing!!!', '2021-05-12 19:59:04', NULL),
(14, 'Alpha', 'alpha123@gmail.com', '9087654567', 'Good!!!!', '2021-05-16 08:41:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `loggedin`
--

CREATE TABLE `loggedin` (
  `lid` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loggedin`
--

INSERT INTO `loggedin` (`lid`, `name`) VALUES
(1, 'Zoher'),
(2, 'Zoher'),
(3, 'Zoher'),
(4, 'Zoher'),
(5, 'Johnson'),
(6, 'Johnson'),
(7, 'Johnson'),
(8, 'Zoher'),
(9, 'Zoher'),
(10, 'Zoher'),
(11, 'Zoher'),
(12, 'Zoher'),
(13, 'Zoher'),
(14, 'Zoher'),
(15, 'Alpja'),
(16, 'Alpja'),
(17, 'Alpja'),
(18, 'Alpja'),
(19, 'Alpja'),
(20, 'Aleexa Methew'),
(21, 'Aleexa Methew'),
(22, 'Aleexa Methew'),
(23, 'Bob Matson'),
(24, 'Bob Matson'),
(25, 'Bob Matson'),
(26, 'Bob Matson'),
(27, 'Bob Matson'),
(28, 'Bob Matson'),
(29, 'Bob Matson'),
(30, 'Bob Matson'),
(31, 'Bob Matson'),
(32, 'Bob Matson'),
(33, 'Bob Matson'),
(34, 'Bob Matson'),
(35, 'Bob Matson'),
(36, 'Bob Matson'),
(37, 'Bob Matson'),
(38, 'Aleexa Methew'),
(39, 'Atruba'),
(40, 'Mark Twain'),
(41, 'Mary Kin'),
(42, 'Mary Kin'),
(43, 'Bob Matson'),
(44, 'Mary Kin'),
(45, 'Maseerah'),
(46, 'Alpha Rays'),
(47, 'Alpha Rays'),
(48, 'Alpha Rays'),
(49, 'Alpha Rays'),
(50, 'Alpha Rays'),
(51, 'Alpha Rays'),
(52, 'Alpha Rays'),
(53, 'Alpha Rays'),
(54, 'Alpha Rays'),
(55, 'Alpha Rays'),
(56, 'Alpha Rays'),
(57, 'Alpha Rays'),
(58, 'Alpha Rays'),
(59, 'Alpha Rays'),
(60, 'Alpha Rays'),
(61, 'Alpha Rays'),
(62, 'Alpha Rays'),
(63, 'Alpha Rays'),
(64, 'Alpha Rays'),
(65, 'Gamma Rays'),
(66, 'Maseerah'),
(67, 'Anwari'),
(68, 'AnXun'),
(69, 'John Sena'),
(70, 'Kashaf'),
(71, 'Fatima'),
(72, 'Fatima'),
(73, 'Fatima'),
(74, 'Fatima'),
(75, 'Fatima');

-- --------------------------------------------------------

--
-- Table structure for table `tblbloodgroup`
--

CREATE TABLE `tblbloodgroup` (
  `id` int(11) NOT NULL,
  `BloodGroup` varchar(20) DEFAULT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbloodgroup`
--

INSERT INTO `tblbloodgroup` (`id`, `BloodGroup`, `PostingDate`) VALUES
(1, 'A-', '2017-06-30 20:33:50'),
(2, 'AB-', '2017-06-30 20:34:00'),
(3, 'O-', '2017-06-30 20:34:05'),
(4, 'A-', '2017-06-30 20:34:10'),
(5, 'A+', '2017-06-30 20:34:13'),
(6, 'AB+', '2017-06-30 20:34:18');

-- --------------------------------------------------------

--
-- Table structure for table `tblcontactusinfo`
--

CREATE TABLE `tblcontactusinfo` (
  `id` int(11) NOT NULL,
  `Address` tinytext DEFAULT NULL,
  `EmailId` varchar(255) DEFAULT NULL,
  `ContactNo` char(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcontactusinfo`
--

INSERT INTO `tblcontactusinfo` (`id`, `Address`, `EmailId`, `ContactNo`) VALUES
(1, 'Test Demo test demo																									', 'test@test.com', '8585233222');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `PageName` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT '',
  `detail` longtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `PageName`, `type`, `detail`) VALUES
(2, 'Why Become Donor', 'donor', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>'),
(3, 'About Us ', 'aboutus', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `finalmodel_accptr`
--
ALTER TABLE `finalmodel_accptr`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `finalmodel_dnrinfo`
--
ALTER TABLE `finalmodel_dnrinfo`
  ADD PRIMARY KEY (`did`);

--
-- Indexes for table `finalmodel_signupuser`
--
ALTER TABLE `finalmodel_signupuser`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `finalmodel_tblcontactusquery`
--
ALTER TABLE `finalmodel_tblcontactusquery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loggedin`
--
ALTER TABLE `loggedin`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `finalmodel_accptr`
--
ALTER TABLE `finalmodel_accptr`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `finalmodel_dnrinfo`
--
ALTER TABLE `finalmodel_dnrinfo`
  MODIFY `did` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `finalmodel_signupuser`
--
ALTER TABLE `finalmodel_signupuser`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `finalmodel_tblcontactusquery`
--
ALTER TABLE `finalmodel_tblcontactusquery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `loggedin`
--
ALTER TABLE `loggedin`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `tblbloodgroup`
--
ALTER TABLE `tblbloodgroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblcontactusinfo`
--
ALTER TABLE `tblcontactusinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
