-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 05:24 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kissanmart`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=77 ;

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
(25, 'Can add addnursery', 7, 'add_addnursery'),
(26, 'Can change addnursery', 7, 'change_addnursery'),
(27, 'Can delete addnursery', 7, 'delete_addnursery'),
(28, 'Can view addnursery', 7, 'view_addnursery'),
(29, 'Can add admin', 8, 'add_admin'),
(30, 'Can change admin', 8, 'change_admin'),
(31, 'Can delete admin', 8, 'delete_admin'),
(32, 'Can view admin', 8, 'view_admin'),
(33, 'Can add blockchainoutput', 9, 'add_blockchainoutput'),
(34, 'Can change blockchainoutput', 9, 'change_blockchainoutput'),
(35, 'Can delete blockchainoutput', 9, 'delete_blockchainoutput'),
(36, 'Can view blockchainoutput', 9, 'view_blockchainoutput'),
(37, 'Can add addworker', 10, 'add_addworker'),
(38, 'Can change addworker', 10, 'change_addworker'),
(39, 'Can delete addworker', 10, 'delete_addworker'),
(40, 'Can view addworker', 10, 'view_addworker'),
(41, 'Can add addcustomer', 11, 'add_addcustomer'),
(42, 'Can change addcustomer', 11, 'change_addcustomer'),
(43, 'Can delete addcustomer', 11, 'delete_addcustomer'),
(44, 'Can view addcustomer', 11, 'view_addcustomer'),
(45, 'Can add payment', 12, 'add_payment'),
(46, 'Can change payment', 12, 'change_payment'),
(47, 'Can delete payment', 12, 'delete_payment'),
(48, 'Can view payment', 12, 'view_payment'),
(49, 'Can add usercategory', 13, 'add_usercategory'),
(50, 'Can change usercategory', 13, 'change_usercategory'),
(51, 'Can delete usercategory', 13, 'delete_usercategory'),
(52, 'Can view usercategory', 13, 'view_usercategory'),
(53, 'Can add nurseryfertilization', 14, 'add_nurseryfertilization'),
(54, 'Can change nurseryfertilization', 14, 'change_nurseryfertilization'),
(55, 'Can delete nurseryfertilization', 14, 'delete_nurseryfertilization'),
(56, 'Can view nurseryfertilization', 14, 'view_nurseryfertilization'),
(57, 'Can add nurseryirrigation', 15, 'add_nurseryirrigation'),
(58, 'Can change nurseryirrigation', 15, 'change_nurseryirrigation'),
(59, 'Can delete nurseryirrigation', 15, 'delete_nurseryirrigation'),
(60, 'Can view nurseryirrigation', 15, 'view_nurseryirrigation'),
(61, 'Can add usernews', 16, 'add_usernews'),
(62, 'Can change usernews', 16, 'change_usernews'),
(63, 'Can delete usernews', 16, 'delete_usernews'),
(64, 'Can view usernews', 16, 'view_usernews'),
(65, 'Can add agent_request', 17, 'add_agent_request'),
(66, 'Can change agent_request', 17, 'change_agent_request'),
(67, 'Can delete agent_request', 17, 'delete_agent_request'),
(68, 'Can view agent_request', 17, 'view_agent_request'),
(69, 'Can add userproduct', 18, 'add_userproduct'),
(70, 'Can change userproduct', 18, 'change_userproduct'),
(71, 'Can delete userproduct', 18, 'delete_userproduct'),
(72, 'Can view userproduct', 18, 'view_userproduct'),
(73, 'Can add machinery', 19, 'add_machinery'),
(74, 'Can change machinery', 19, 'change_machinery'),
(75, 'Can delete machinery', 19, 'delete_machinery'),
(76, 'Can view machinery', 19, 'view_machinery');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'farming', 'addcustomer'),
(7, 'farming', 'addnursery'),
(10, 'farming', 'addworker'),
(8, 'farming', 'admin'),
(17, 'farming', 'agent_request'),
(9, 'farming', 'blockchainoutput'),
(19, 'farming', 'machinery'),
(14, 'farming', 'nurseryfertilization'),
(15, 'farming', 'nurseryirrigation'),
(12, 'farming', 'payment'),
(13, 'farming', 'usercategory'),
(16, 'farming', 'usernews'),
(18, 'farming', 'userproduct'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-04-01 04:29:24.643273'),
(2, 'auth', '0001_initial', '2023-04-01 04:29:27.553737'),
(3, 'admin', '0001_initial', '2023-04-01 04:29:28.309524'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-04-01 04:29:28.324001'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-04-01 04:29:28.348740'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-04-01 04:29:28.586238'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-04-01 04:29:28.724812'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-04-01 04:29:28.902222'),
(9, 'auth', '0004_alter_user_username_opts', '2023-04-01 04:29:28.930546'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-04-01 04:29:29.071505'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-04-01 04:29:29.087713'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-04-01 04:29:29.103086'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-04-01 04:29:29.312478'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-04-01 04:29:29.455817'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-04-01 04:29:29.603187'),
(16, 'auth', '0011_update_proxy_permissions', '2023-04-01 04:29:29.654665'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-04-01 04:29:29.765457'),
(18, 'sessions', '0001_initial', '2023-04-01 04:29:30.091418'),
(19, 'farming', '0001_initial', '2023-04-01 04:32:25.045847');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0pc09u0j2aoz12ilxsy8v3tzh4o5zjk2', 'e30:1ptA6X:7IaNsFDujjq8mPCAuJ5en8Qkk3zB5AHWKdnwjPjmseU', '2023-05-14 16:40:53.447819'),
('179602xsplecjkq3icpucxc5e0e6kq10', 'eyJjaWQiOjEsImNuYW1lIjoiY2hyaXN0eSIsImNlbWFpbCI6ImFjaHVAZ21haWwuY29tIiwidXNlciI6ImN1c3RvbWVyIn0:1pjHRU:Ka1KFtYSXpeTvO9-WJiMtMaJr_XsPSlgp4GsXeZMQfg', '2023-04-17 10:29:40.767924'),
('dyzl7zcq2zuwby7c26vhsn7gptm3bsm6', '.eJyrVirOTFGyMtRRKs5LzE1VslJKzijKLC6pVAKKpOYmZuYAhRKTM0od0kEcveT8XLBMTk5qEVAGyqgFAEHbF60:1prXIj:uScgocaHykCWZn1kIHi0cROWPsSdhLgZ1BXDCNuWu8E', '2023-05-10 05:02:45.697083'),
('lmbd53tzpe685zpumx3k4ocxdbhgkexe', 'e30:1ptPWJ:Owj417wigGUTStZloFGkb9yXid_LghpT3CD9i94OyCI', '2023-05-15 09:08:31.545131');

-- --------------------------------------------------------

--
-- Table structure for table `farming_addcustomer`
--

CREATE TABLE IF NOT EXISTS `farming_addcustomer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `farming_addcustomer`
--

INSERT INTO `farming_addcustomer` (`id`, `address`, `name`, `email`, `phone`, `password`, `status`) VALUES
(1, 'ktm', 'christy', 'achu@gmail.com', '9446859408', '2222', 'approved'),
(2, 'ghghugjh', 'Ashwin Eldose', 'anu@gmail.com', '8234567890', '6789', 'pending'),
(3, 'vhgh', 'Ashwin Eldose', 'antyu@gmail.com', '8234567890', 'hhjh', 'pending'),
(4, 'awsdfghtrtr', 'Customer1', 'Cus1@gmail.com', '9000000000', 'cus1', 'pending'),
(5, 'sdfgh', 'salbin', 'salbin@gmail.com', '9446859408', '1234', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `farming_addnursery`
--

CREATE TABLE IF NOT EXISTS `farming_addnursery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `farming_addnursery`
--

INSERT INTO `farming_addnursery` (`id`, `address`, `name`, `email`, `phone`, `password`, `status`) VALUES
(1, 'ktm', 'christy', 'achu@gmail.com', '9446859408', '345', 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `farming_addworker`
--

CREATE TABLE IF NOT EXISTS `farming_addworker` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `experience` varchar(150) NOT NULL,
  `designation` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `farming_addworker`
--

INSERT INTO `farming_addworker` (`id`, `address`, `name`, `email`, `phone`, `password`, `experience`, `designation`, `status`) VALUES
(1, 'kollam', 'test', '', '9446859403', '3333', '26', 'staff', '');

-- --------------------------------------------------------

--
-- Table structure for table `farming_admin`
--

CREATE TABLE IF NOT EXISTS `farming_admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `farming_admin`
--

INSERT INTO `farming_admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `farming_agent_request`
--

CREATE TABLE IF NOT EXISTS `farming_agent_request` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pid` varchar(150) NOT NULL,
  `wid` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `farming_agent_request`
--

INSERT INTO `farming_agent_request` (`id`, `pid`, `wid`, `status`) VALUES
(1, '1', '1', 'delivered'),
(2, '1', '1', 'delivered'),
(3, '1', '1', 'delivered');

-- --------------------------------------------------------

--
-- Table structure for table `farming_blockchainoutput`
--

CREATE TABLE IF NOT EXISTS `farming_blockchainoutput` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `output` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `farming_cart`
--

CREATE TABLE IF NOT EXISTS `farming_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` varchar(200) NOT NULL,
  `cid` varchar(200) NOT NULL,
  `nid` varchar(200) NOT NULL,
  `qty` varchar(225) NOT NULL,
  `total` varchar(225) NOT NULL,
  `date` varchar(200) NOT NULL,
  `payment` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `farming_cart`
--

INSERT INTO `farming_cart` (`id`, `pid`, `cid`, `nid`, `qty`, `total`, `date`, `payment`, `status`) VALUES
(1, '2', '1', '1', '12', '2400', '2023-04-03', 'card payment', 'delivered'),
(2, '2', '1', '1', '2', '400', '2023-04-03', 'card payment', 'paid'),
(3, '5', '1', '1', '2', '144', '2023-04-30', 'card payment', 'paid'),
(4, '1', '1', '1', '1', '200', '2023-04-30', 'card payment', 'cart'),
(5, '2', '1', '1', '2', '400', '2023-05-01', 'card payment', 'cart'),
(6, '1', '1', '1', '3', '600', '2023-05-01', 'card payment', 'cart');

-- --------------------------------------------------------

--
-- Table structure for table `farming_feedback`
--

CREATE TABLE IF NOT EXISTS `farming_feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(200) NOT NULL,
  `feedback` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `farming_feedback`
--

INSERT INTO `farming_feedback` (`id`, `uid`, `feedback`) VALUES
(1, 'christy', 'jhkhjh');

-- --------------------------------------------------------

--
-- Table structure for table `farming_machinery`
--

CREATE TABLE IF NOT EXISTS `farming_machinery` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `des` varchar(150) NOT NULL,
  `image` varchar(150) NOT NULL,
  `prize` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `farming_machinery`
--

INSERT INTO `farming_machinery` (`id`, `name`, `des`, `image`, `prize`) VALUES
(1, 'fdg', 'gfg', 's2.png', '200');

-- --------------------------------------------------------

--
-- Table structure for table `farming_nurseryfertilization`
--

CREATE TABLE IF NOT EXISTS `farming_nurseryfertilization` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fertilization` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `farming_nurseryfertilization`
--

INSERT INTO `farming_nurseryfertilization` (`id`, `fertilization`) VALUES
(1, 'gcfgcg'),
(2, 'gcfgcg'),
(3, 'gtgt');

-- --------------------------------------------------------

--
-- Table structure for table `farming_nurseryirrigation`
--

CREATE TABLE IF NOT EXISTS `farming_nurseryirrigation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `irrigation` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `farming_nurseryirrigation`
--

INSERT INTO `farming_nurseryirrigation` (`id`, `irrigation`) VALUES
(1, 'hjj'),
(2, 'hjj');

-- --------------------------------------------------------

--
-- Table structure for table `farming_payment`
--

CREATE TABLE IF NOT EXISTS `farming_payment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `quantity` varchar(150) NOT NULL,
  `cid` varchar(150) NOT NULL,
  `prize` varchar(150) NOT NULL,
  `cardname` varchar(150) NOT NULL,
  `cardnumber` varchar(150) NOT NULL,
  `cardyear` varchar(150) NOT NULL,
  `cardtype` varchar(150) NOT NULL,
  `cardmonth` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `cvv` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `user_type` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `farming_payment`
--

INSERT INTO `farming_payment` (`id`, `name`, `quantity`, `cid`, `prize`, `cardname`, `cardnumber`, `cardyear`, `cardtype`, `cardmonth`, `date`, `cvv`, `status`, `user_type`) VALUES
(1, 'fdg', '', 'christy', '200', 'uyeuwa', '9809809', '2023', 'Debit', '6', '2023-04-30', '688', 'pay', ''),
(2, 'fdg', '', 'christy', '200', 'kjhj', '90809809', '2023', 'Credit', '5', '2023-04-30', '890', 'pay', ''),
(3, '', '', 'christy', '2944', 'bhj', '0808098098098', '', '', '', '', '888', '', 'christy');

-- --------------------------------------------------------

--
-- Table structure for table `farming_usercategory`
--

CREATE TABLE IF NOT EXISTS `farming_usercategory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `farming_usercategory`
--

INSERT INTO `farming_usercategory` (`id`, `category`) VALUES
(1, 'dsdff');

-- --------------------------------------------------------

--
-- Table structure for table `farming_usernews`
--

CREATE TABLE IF NOT EXISTS `farming_usernews` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(150) NOT NULL,
  `heading` varchar(150) NOT NULL,
  `date` varchar(150) NOT NULL,
  `image` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `farming_usernews`
--

INSERT INTO `farming_usernews` (`id`, `description`, `heading`, `date`, `image`) VALUES
(1, 'time change  morning 8.00 am to 9.00 am', 'organize ', '2023-04-27', 'b2_tD63BqB.png');

-- --------------------------------------------------------

--
-- Table structure for table `farming_userproduct`
--

CREATE TABLE IF NOT EXISTS `farming_userproduct` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `quantity` varchar(150) NOT NULL,
  `prize` varchar(150) NOT NULL,
  `image` varchar(150) NOT NULL,
  `category` varchar(150) NOT NULL,
  `soil` varchar(150) NOT NULL,
  `climate` varchar(150) NOT NULL,
  `irrigation` varchar(200) NOT NULL,
  `fertilizer` varchar(200) NOT NULL,
  `nid` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `farming_userproduct`
--

INSERT INTO `farming_userproduct` (`id`, `description`, `name`, `quantity`, `prize`, `image`, `category`, `soil`, `climate`, `irrigation`, `fertilizer`, `nid`) VALUES
(1, 'tgfg', 'tfgr', '8', '200', '34_IdOoesP.jpg', 'dsdff', 'tfghrt', 'rggt', 'dg', 'cxvcv', '1'),
(2, 'fgfh', 'fvgftg', '5', '200', '19.jpg', 'dsdff', 'tgrt', 'fgf', 'cxzc', 'fdtd', '1'),
(3, 'dfgf', 'fdg', '12', '200', '18_yeK2uMe.jpg', 'dsdff', 'dfdf', 'fd', 'dfgvdfv', 'gdfgv', '1'),
(4, 'ghgh', 'tfg', '3', '200', '10.jpg', 'dsdff', 'zxcv', 'tutyu', '6uty', 'tyuty', '1'),
(5, 'kjlkj', 'lkml', '10', '72', '3.jpg', 'dsdff', 'lkl', 'jklj', 'hjj', 'gcfgcg', '1');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

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
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
