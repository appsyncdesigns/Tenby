-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 03, 2024 at 11:02 PM
-- Server version: 5.7.23-23
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appsezmf_tenby`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories_tb`
--

CREATE TABLE `accessories_tb` (
  `a_id` int(11) NOT NULL,
  `fk_enquiry_id` int(11) DEFAULT NULL,
  `type` int(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `net_sale` double DEFAULT NULL,
  `vat` double DEFAULT NULL,
  `profit` double DEFAULT NULL,
  `is_deal` int(11) DEFAULT NULL,
  `del_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accessories_tb`
--

INSERT INTO `accessories_tb` (`a_id`, `fk_enquiry_id`, `type`, `description`, `net_sale`, `vat`, `profit`, `is_deal`, `del_status`) VALUES
(1, 1, 9, 'acc1', 100, 20, 100, 0, 0),
(2, 1, 11, 'acc2', 200, 40, 109, 0, 0),
(3, 1, 1, 'acc2', 100, 20, 90, 0, 0),
(4, 1, 2, 'offer12', 50, 0, 500, 0, 1),
(5, 1, 12, 'acc1', 10, 2, 90, 0, 0),
(6, 1, 11, 'jhgh', 100, 20, 100, 1, 1),
(7, 1, 9, 'acc2', 10, 2, 20, 0, 1),
(8, 1, 13, 'acc1', 10, 2, 90, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `accessories_type`
--

CREATE TABLE `accessories_type` (
  `id` int(11) NOT NULL,
  `accessories` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accessories_type`
--

INSERT INTO `accessories_type` (`id`, `accessories`) VALUES
(1, 'Accessories 1'),
(2, 'Accessories 2'),
(3, 'Accessories 3'),
(4, 'Accessories 4'),
(5, 'Accessories 5'),
(6, 'AdminFee'),
(7, 'ClickAuto'),
(8, 'Dealer Guarantee'),
(9, 'Discount'),
(10, 'GAP Insurance'),
(11, 'Paint Protection'),
(12, 'Service Plan'),
(13, 'Smart'),
(14, 'Warranty');

-- --------------------------------------------------------

--
-- Table structure for table `action_history`
--

CREATE TABLE `action_history` (
  `id` int(11) NOT NULL,
  `action_day` varchar(100) NOT NULL,
  `action_date` date NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `salesman_id` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` date DEFAULT NULL,
  `veh_reg_no` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `action_type` int(11) NOT NULL,
  `customer_notes` varchar(100) NOT NULL,
  `action_time` time NOT NULL,
  `getdate` timestamp NULL DEFAULT NULL,
  `completed` varchar(100) NOT NULL,
  `elapsed` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `action_history`
--

INSERT INTO `action_history` (`id`, `action_day`, `action_date`, `enquiry_id`, `salesman_id`, `created_by`, `created_date`, `veh_reg_no`, `cust_id`, `action_type`, `customer_notes`, `action_time`, `getdate`, `completed`, `elapsed`) VALUES
(1, '', '2021-10-11', 3668273, 3, 1, '2021-10-11', 0, 3, 1, 'aaaa', '08:41:00', NULL, '', ''),
(2, '41', '2021-10-11', 3668273, 3, 1, '2021-10-11', 0, 3, 13, 'asdfgh', '20:39:00', NULL, '', ''),
(3, 'Monday', '2021-10-11', 0, 3, 1, '2021-10-11', 0, 3, 1, '', '08:41:00', NULL, '', ''),
(4, 'Tuesday', '2021-10-13', 3667043, 2, 1, '2021-10-12', 0, 1, 19, '', '08:41:00', NULL, '2021-10-12', '27234094.366667 minutes'),
(5, 'Tuesday', '2021-10-12', 0, 3, 1, '2021-10-12', 0, 1, 15, '', '08:41:00', NULL, '', ''),
(6, 'Tuesday', '2021-10-12', 3668273, 3, 1, '2021-10-12', 0, 1, 1, '', '08:41:00', '0000-00-00 00:00:00', '2021-10-12', '21-10-12'),
(7, 'Tuesday', '2021-10-12', 0, 0, 1, '2021-10-12', 0, 1, 1, '', '08:41:00', '2021-10-12 09:24:59', '2021-10-12', '34.75'),
(8, 'Wednesday', '2021-10-04', 0, 1, 1, '2021-10-13', 0, 43, 13, '', '08:41:00', '2021-10-13 02:13:59', '2021-10-13', '1.55 minutes'),
(9, 'Wednesday', '2021-10-13', 3667043, 0, 1, '2021-10-13', 0, 43, 1, '', '08:41:00', '2021-10-13 02:18:59', '2021-10-13', '0.55 minutes'),
(10, 'Wednesday', '2021-10-13', 0, 0, 1, '2021-10-13', 0, 43, 1, '', '08:41:00', '2021-10-13 02:27:33', '2021-10-13', '0.18333333333333 minutes'),
(11, 'Wednesday', '2021-10-13', 0, 0, 1, '2021-10-13', 0, 43, 1, '', '08:41:00', '2021-10-13 02:28:07', '2021-10-13', '4 minutes'),
(12, 'Wednesday', '2021-10-13', 0, 0, 1, '2021-10-13', 0, 43, 1, '', '08:41:00', '2021-10-13 02:32:47', '2021-10-13', '2 minutes'),
(13, 'Wednesday', '0000-00-00', 0, 0, 1, '2021-10-13', 0, 43, 1, '', '08:41:00', '2021-10-13 02:35:55', '', ''),
(14, 'Wednesday', '2021-10-13', 0, 0, 1, '2021-10-13', 0, 43, 1, '', '08:41:00', '2021-10-13 04:21:10', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `action_type`
--

CREATE TABLE `action_type` (
  `id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `action_type`
--

INSERT INTO `action_type` (`id`, `type`) VALUES
(1, '1 Month follow up call'),
(2, '1st Annual follow up call'),
(3, '24 Month prospect'),
(4, '2nd Annual follow up call'),
(5, '3 Day follow up call'),
(6, '3 Month follow up call'),
(7, '3rd Annual follow up call'),
(8, '6 Month follow up call'),
(9, 'ACD'),
(10, 'Appointment'),
(11, 'Archive customer enquiry if no response'),
(12, 'Assign'),
(13, 'Awaiting Delivery'),
(14, 'Bodywork'),
(15, 'Bulk Video Email Sent'),
(16, 'Call back'),
(17, 'Call back no answer'),
(18, 'Call to customer'),
(19, 'Cancel order'),
(20, 'Click Call'),
(21, 'Click Media Video Email'),
(22, 'Click Media Video Email and SMS'),
(23, 'Click Media Video SMS'),
(24, 'Collections'),
(25, 'Complete'),
(26, 'Contact Centre'),
(27, 'Contacted'),
(28, 'Current update'),
(29, 'Day 1 Call'),
(30, 'Day 14 Call'),
(31, 'Day 7 Call'),
(32, 'Deal Pack'),
(33, 'Deal Stack'),
(34, 'Dealt'),
(35, 'Declined Finance'),
(36, 'Delivery'),
(37, 'Deposit - subject to viewing'),
(38, 'Email'),
(39, 'Email enquiry'),
(40, 'Email sent'),
(41, 'FCA Cash'),
(42, 'Fin Prop'),
(43, 'Finance'),
(44, 'Finance renewal prospect'),
(45, 'Finance Updated'),
(46, 'Find new car'),
(47, 'First action'),
(48, 'Follow up'),
(49, 'GardX Video'),
(50, 'Handover'),
(51, 'Inbound Call'),
(52, 'Inbound Email'),
(53, 'Inbound SMS'),
(54, 'Keep in touch call'),
(55, 'Lost'),
(56, 'Lost confirmed'),
(57, 'Lost Finance'),
(58, 'Lost follow up'),
(59, 'Lost People'),
(60, 'Lost Price'),
(61, 'Lost Product'),
(62, 'Lost vehicle sold'),
(63, 'MOT'),
(64, 'PEX Appraisal'),
(65, 'Post handover follow up call'),
(66, 'Present'),
(67, 'Prospect/cold call'),
(68, 'Re-stacked'),
(69, 'Recall'),
(70, 'Repairs'),
(71, 'Second Face'),
(72, 'Sell car enquiry'),
(73, 'Service'),
(74, 'Sourcing'),
(75, 'Stacked Deal'),
(76, 'Subject to'),
(77, 'Test drive'),
(78, 'Text'),
(79, 'Valet'),
(80, 'Walk on'),
(81, 'Warranty Upsell');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(10) NOT NULL,
  `role_id` int(11) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `password`, `role_id`, `status`) VALUES
(1, 'Admin', 'admin@admin.com', 'admin', 1, 1),
(4, 'John', 'john@gmail.com', '1234', 2, 1),
(6, 'abcd', 'abc@admin.com', '123', 2, 1),
(7, 'sam', 'john@gmail.com', '1234', 2, 1),
(8, 'sam1', 'john@gmail1.com', '12345', 2, 1),
(9, 'sam133', 'john22@gmail1.com', '12345', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `all_privileges`
--

CREATE TABLE `all_privileges` (
  `id` int(100) NOT NULL,
  `name` varchar(250) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `all_privileges`
--

INSERT INTO `all_privileges` (`id`, `name`, `status`) VALUES
(1, 'Stock', 1),
(2, 'Customers', 1),
(3, 'Leads', 1),
(4, 'Marketing', 1),
(5, 'Cms', 1),
(6, 'After Sales', 1),
(7, 'Reports', 1),
(8, 'Add Vehicle', 1),
(9, 'List Vehicle', 1),
(10, 'Ordered Vehicle', 1),
(11, 'Part Exchange', 1),
(12, 'Sold Vehicle', 1),
(13, 'Key Tags', 1),
(14, 'Vehicle Log', 1),
(15, 'Supplier', 1),
(16, 'Advert List', 1),
(17, 'Customer Enquiries', 1),
(18, 'Website Enquires', 1),
(19, 'Customer List', 1),
(20, 'Find A Prospect', 1),
(21, 'Invoice', 1),
(22, 'Finance Calculator', 1),
(23, 'Dashboard', 1),
(24, 'Sales Enquiries', 1),
(25, 'Enquiry Report', 1),
(26, 'Customer Reserves', 1),
(27, 'Booking', 1),
(28, 'Finance Requests', 1),
(29, 'Social', 1),
(30, 'Reviews', 1),
(31, 'Blogs', 1),
(32, 'Image List', 1),
(33, 'Testimonial Text', 1),
(34, 'Terms and Conditions', 1),
(35, 'Privacy Policy', 1),
(36, 'About', 1),
(37, 'Banners', 1),
(38, 'Holidays', 1),
(39, 'Jobcards', 1),
(40, 'Job List', 1),
(41, 'Mot Times', 1),
(42, 'PDI List', 1),
(43, 'Quotations', 1),
(44, 'Standard Service', 1),
(45, 'Technicians', 1),
(46, 'Enquiry', 1),
(47, 'Customers', 1),
(48, 'Sales', 1),
(49, 'Invoice Report', 1),
(50, 'Stock', 1),
(51, 'Sold Vehicle Report', 1),
(52, 'Ordered Vehicle Report', 1),
(53, 'Admin List', 1);

-- --------------------------------------------------------

--
-- Table structure for table `balance_tb`
--

CREATE TABLE `balance_tb` (
  `bal_id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `balance` double NOT NULL,
  `payment` double NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `payment_date` date NOT NULL,
  `banked_date` date NOT NULL,
  `pay_ref` varchar(1000) NOT NULL,
  `txn_ref` varchar(1000) NOT NULL,
  `payment2` double NOT NULL,
  `payment_type2` varchar(20) NOT NULL,
  `payment_date2` date NOT NULL,
  `banked_date2` date NOT NULL,
  `pay_ref2` varchar(1000) NOT NULL,
  `txn_ref2` varchar(1000) NOT NULL,
  `payment3` double NOT NULL,
  `payment_type3` varchar(20) NOT NULL,
  `payment_date3` date NOT NULL,
  `banked_date3` date NOT NULL,
  `pay_ref3` varchar(1000) NOT NULL,
  `txn_ref3` varchar(1000) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `balance_tb`
--

INSERT INTO `balance_tb` (`bal_id`, `enquiry_id`, `balance`, `payment`, `payment_type`, `payment_date`, `banked_date`, `pay_ref`, `txn_ref`, `payment2`, `payment_type2`, `payment_date2`, `banked_date2`, `pay_ref2`, `txn_ref2`, `payment3`, `payment_type3`, `payment_date3`, `banked_date3`, `pay_ref3`, `txn_ref3`, `status`) VALUES
(1, 1, 10990, 10, '', '2022-07-02', '0000-00-00', '', '', 0, '', '0000-00-00', '0000-00-00', '', '', 0, '', '0000-00-00', '0000-00-00', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id` int(11) NOT NULL,
  `banner` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id`, `banner`) VALUES
(1, 'savvcycle.png');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` text NOT NULL,
  `image` text NOT NULL,
  `description` text NOT NULL,
  `meta_des` text NOT NULL,
  `meta_key` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `slug`, `image`, `description`, `meta_des`, `meta_key`, `time`) VALUES
(5, 'test', 'testdemo', 'image1.jpeg', 'test', 'ljfew', 'iojoeiw', '2022-02-18 06:55:11'),
(6, 'test', 'testdemo', 'image8.jpeg', 'test', 'ljfew', 'iojoeiw', '2022-02-18 07:39:03'),
(7, 'test', 'testdemo', 'image4.jpeg', 'test', 'ljfew', 'iojoeiw', '2022-02-18 07:40:05'),
(8, 'test', 'demo', 'image5.jpeg', 'test', 'jghj', 'hjgjh', '2022-02-18 08:58:04'),
(9, 'test', 'demo', 'image7.jpeg', 'test', 'jghj', 'hjgjh', '2022-02-18 09:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `bonus`
--

CREATE TABLE `bonus` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `bonus1` float NOT NULL,
  `des1` text NOT NULL,
  `bonus2` float NOT NULL,
  `des2` text NOT NULL,
  `bonus3` float NOT NULL,
  `des3` text NOT NULL,
  `bonus4` float NOT NULL,
  `des4` text NOT NULL,
  `bonus5` float NOT NULL,
  `des5` text NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bonus`
--

INSERT INTO `bonus` (`id`, `reg_no`, `bonus1`, `des1`, `bonus2`, `des2`, `bonus3`, `des3`, `bonus4`, `des4`, `bonus5`, `des5`, `total`) VALUES
(1, 'WK05YXR', 10, 'sample11', 0, 'vbhnj', 0, 'gvhb', 0, 'cfvgb', 0, 'j hbjn', 10);

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(11) NOT NULL,
  `name` varchar(110) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `make` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  `day` varchar(100) NOT NULL,
  `time` varchar(50) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `name`, `phone`, `email`, `make`, `model`, `day`, `time`, `comments`) VALUES
(1, 'johnss1111 johnss1111', '03554365778', 'john@gmail.com', 'HONDA model', '', 'nm', 'm,', 'm,'),
(2, 's', '07845445152', 's@gmail.com', 'HONDA model', '', '11/11/2021', '12:23', 'asdfasdf'),
(3, 'Sender F name Sender last name', '1111111111', 'john@gmail.com', 'HONDA model', '', '2021-12-02', '04:20', 'bnn'),
(4, 'asdfg', '03554365778', 'john@gmail.com', 'HONDA WR-V', '', '2021-11-04', '16:37', 'erfg'),
(5, 'test', '9605978511', 'admin@asd', 'BMW', 'X5', '1997-06-01', '11:08', 'test'),
(6, 'johnss1111 johnss1111', '03554365778', 'john@gmail.com', 'VAUXHALL', 'ASTRA', '2022-03-01', '11:12', ''),
(7, 'johnss1111 johnss1111', '03554365778', 'john@gmail.com', 'VAUXHALL', 'ASTRA', '2022-03-01', '11:12', 'mm'),
(8, 'test', '9605978511', 'admin@asd', 'BMW', 'X6', '2022-03-11', '15:45', 'test'),
(9, 'test', '9605978511', 'admin@asd', 'AUDI', 'A3', '2022-03-03', '16:04', 'testing'),
(10, 'johnss1111 johnss1111', '03554365778', 'john@gmail.com', 'AUDI', 'Q8', '2022-03-02', '16:37', 'yhjkl\r\n'),
(11, 'test', '9605978511', 'admin@asd', 'BMW', '1 SERIES', '2022-03-04', '10:13', 'testing\r\n'),
(12, 'test', '9605978511', 'admin@asd', 'BMW', '1 SERIES', '2022-03-04', '10:35', 'testing'),
(13, 'test', '9605978511', 'admin@asd', 'BMW', '1 SERIES', '2022-03-04', '10:35', 'testing'),
(14, 'test', '9605978512', 'admin@asd', 'BMW', '1 SERIES', '2022-03-07', '17:33', 'test'),
(15, '', '', '', 'AUDI', '', '2024-02-05', '14:57', 'qwdwdq');

-- --------------------------------------------------------

--
-- Table structure for table `car_enquiry`
--

CREATE TABLE `car_enquiry` (
  `id` int(11) NOT NULL,
  `reg` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `day` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `car_enquiry`
--

INSERT INTO `car_enquiry` (`id`, `reg`, `name`, `phone`, `email`, `day`, `time`, `contact`) VALUES
(1, 'WK05YXRR', 'johnss1111 johnss1111', '03554365778', 'john@gmail.com', 'nn', 'nn', 'email');

-- --------------------------------------------------------

--
-- Table structure for table `cms`
--

CREATE TABLE `cms` (
  `id` int(11) NOT NULL,
  `privacy` text NOT NULL,
  `terms` text NOT NULL,
  `about` text NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cms`
--

INSERT INTO `cms` (`id`, `privacy`, `terms`, `about`, `address`, `phone`, `email`) VALUES
(1, '', '', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '               Tenby Car Supermarket, 166 Camford Way Luton Bedfordshire LU3 3AN', '01908 942752,07872 871866', 'sales@tenbytradecars.co.uk');

-- --------------------------------------------------------

--
-- Table structure for table `collection_steps`
--

CREATE TABLE `collection_steps` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `commission`
--

CREATE TABLE `commission` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `retail_price` float NOT NULL,
  `purchase_price` float NOT NULL,
  `vat` float NOT NULL,
  `expense_total` float NOT NULL,
  `subtotal` float NOT NULL,
  `sales_com` float NOT NULL,
  `split_sales_com` float NOT NULL,
  `manager_com` float NOT NULL,
  `manager_base` float NOT NULL,
  `waranty_com` float NOT NULL,
  `mot_com` float NOT NULL,
  `finance_com` float NOT NULL,
  `fullupdeal` float NOT NULL,
  `nomot` float NOT NULL,
  `commision_total` float NOT NULL,
  `ni_total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `commission`
--

INSERT INTO `commission` (`id`, `reg_no`, `retail_price`, `purchase_price`, `vat`, `expense_total`, `subtotal`, `sales_com`, `split_sales_com`, `manager_com`, `manager_base`, `waranty_com`, `mot_com`, `finance_com`, `fullupdeal`, `nomot`, `commision_total`, `ni_total`) VALUES
(1, 'WK05YXR', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `company_logo`
--

CREATE TABLE `company_logo` (
  `id` int(11) NOT NULL,
  `photo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `complaint_list`
--

CREATE TABLE `complaint_list` (
  `id` int(11) NOT NULL,
  `reg_no` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `complaint_type` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `notes` varchar(100) NOT NULL,
  `created_date` datetime NOT NULL,
  `createdBy` varchar(30) NOT NULL,
  `updated_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `complaint_list`
--

INSERT INTO `complaint_list` (`id`, `reg_no`, `customer_id`, `enquiry_id`, `complaint_type`, `status`, `notes`, `created_date`, `createdBy`, `updated_date`) VALUES
(1, 0, 2, 0, 1, 2, '', '2022-01-28 00:46:07', '', '2022-01-28 00:46:07'),
(2, 0, 2, 0, 1, 2, '', '2022-01-28 00:47:11', '', '2022-01-28 00:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `contact_user`
--

CREATE TABLE `contact_user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_user`
--

INSERT INTO `contact_user` (`id`, `name`, `phone`, `email`, `comments`) VALUES
(1, 'Hercules', '9874563210', 'admin@admin.com', 'm ,.'),
(2, 'Sol', '607-772-0868', 'sol.clemes@yahoo.com', 'Good Morning \r\n \r\nBuy all styles of Ray-Ban Sunglasses only 24.99 dollars with FREE SHIPPING & Returns.  If interested, please visit our site: lensoutlet.online\r\n \r\nRegards, \r\n\r\nSol \r\nUsed cars for sale in Luton & Bedfordshire: Tenby Car Supermarket'),
(3, 'Forest', '60-33-15-32', 'nagle.forest@googlemail.com', 'Good day\r\n\r\nOur Medical-Grade Toenail Clippers is the safest and especially recommended for those with troubles with winding nails, hard nails, two nails, nail cracks, deep nails, thickened nails etc..\r\n\r\nGet yours: thepodiatrist.online\r\n\r\nSincerely,\r\n\r\nForest\r\nUsed cars for sale in Luton & Bedfordshire: Tenby Car Supermarket'),
(4, 'Richelle', '040 35 71 92', 'prieur.richelle@outlook.com', 'Good Morning \r\n \r\nMeet your best Buds - True Wireless Earbuds with amazing sound, convenience, portability, & affordability!\r\n\r\nOrder yours now at 50% OFF with FREE Shipping: musicontrol.online\r\n \r\nRegards, \r\n \r\nRichelle\r\nUsed cars for sale in Luton & Bedfordshire: Tenby Car Supermarket'),
(5, 'Monique', 'Ldcvuepdjuzfl', 'beveridge.monique@gmail.com', 'Hi \r\n \r\nCAREDOGBEST™ - Personalized Dog Harness. All sizes from XS to XXL.  Easy ON/OFF in just 2 seconds.  LIFETIME WARRANTY.\r\n\r\nClick here: caredogbest.com\r\n \r\nMany Thanks, \r\n \r\nMonique\r\nUsed cars for sale in Luton & Bedfordshire: Tenby Car Supermarket'),
(6, 'Riley', '421 25 891', 'riley.arteaga@gmail.com', 'Hi there \r\n \r\nBody Revolution - Medico Postura™ Body Posture Corrector\r\nImprove Your Posture INSTANTLY!\r\n\r\nGet it while it\'s still 60% OFF!  FREE Worldwide Shipping!\r\n\r\nGet yours here: medicopostura.com\r\n \r\nRegards, \r\n \r\nRiley\r\nUsed cars for sale in Luton & Bedfordshire: Tenby Car Supermarket'),
(7, 'Sheena', '601-727-6081', 'eggers.sheena@gmail.com', 'Get The Worlds Greatest Magic Sand Free Beach Mat!\r\n\r\nWatch sand, dirt & dust disappear right before your eyes! It\'s perfect for beach, picnic, camping or hiking.\r\n\r\nAct Now And Receive A Special Discount For Our Magic Mat!\r\n\r\nGet Yours Here:  magicmat.shop\r\n\r\nTo your success, \r\n \r\nSheena\r\nUsed cars for sale in Luton & Bedfordshire: Tenby Car Supermarket'),
(8, 'Bebe', '0418-8291910', 'bebe.fetty@googlemail.com', 'Good Morning\r\n\r\nBuy medical disposable face mask to protect your loved ones from the deadly CoronaVirus.  The price is $0.28 each.  If interested, please visit our site: pharmacyoutlets.online\r\n\r\nBest,\r\n\r\nBebe\r\nUsed cars for sale in Luton & Bedfordshire: Tenby Car Supermarket'),
(9, 'Clyde', '0380 3626516', 'dunning.clyde@msn.com', 'New Multifunction Anti-theft Waterproof Sling Bag\r\n\r\nThe best ever SUPER Sling Bag: Drop-proof/Anti-theft/Scratch-resistant/USB Charging\r\n\r\n50% OFF for the next 24 Hours ONLY + FREE Worldwide Shipping for a LIMITED time\r\n\r\nBuy now: fashiondaily.online\r\n\r\nBest Wishes, \r\n\r\nClyde\r\nUsed cars for sale in Luton & Bedfordshire: Tenby Car Supermarket'),
(10, 'Cecelia', '0486 25 54 29', 'cecelia.lennon27@hotmail.com', 'Morning\r\n\r\nBuy medical disposable face mask to protect your loved ones from the deadly CoronaVirus.  The price is $0.28 each.  If interested, please visit our site: pharmacyoutlets.online\r\n\r\nThanks and Best Regards,\r\n\r\nCecelia'),
(11, 'johnss1111 johnss1111', '03554365778', 'john@gmail.com', 'receiver address Mm		477		3554365778		skkskdhdh		faagfdjoido		fsdffs		gggiow		345675'),
(12, 'johnss1111 johnss1111', '1111111111', 'john@gmail.com', 'nnn');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `home_tel` varchar(20) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `work_tel` varchar(20) DEFAULT NULL,
  `fax` varchar(500) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `work_email` varchar(100) DEFAULT NULL,
  `postcode` int(11) NOT NULL,
  `customer_notes` varchar(1000) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `cust_comments` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `title`, `first_name`, `last_name`, `company`, `address`, `home_tel`, `mobile`, `work_tel`, `fax`, `email`, `work_email`, `postcode`, `customer_notes`, `status`, `cust_comments`) VALUES
(1, 'Mrs', 'Test', 'Demo', 'Abc', '042025,abc,abc,abc,abc', '0102030201', '0201020203', NULL, NULL, 'test@demo.com', NULL, 0, NULL, 1, NULL),
(2, NULL, 'test', '', '', NULL, NULL, '7485968574', NULL, NULL, 'anubackupemail123@gmail.com', NULL, 0, 'decs', 1, '16'),
(3, NULL, 'test', '', '', NULL, NULL, '7485968574', NULL, NULL, 'anubackupemail123@gmail.com', NULL, 0, 'decs', 1, '16'),
(4, NULL, 'test', '', '', NULL, NULL, '7485968574', NULL, NULL, 'anubackupemail123@gmail.com', NULL, 0, 'decs', 1, '16'),
(5, NULL, 'jhgjh', '', '', NULL, NULL, '7885968574', NULL, NULL, 'anubackupemail123@gmail.com', NULL, 0, 'jhgh', 1, ''),
(6, NULL, 'Testing', '', '', NULL, NULL, '7485968574', NULL, NULL, 'anubackupemail123@gmail.com', NULL, 0, 'dedjhkj', 1, '11');

-- --------------------------------------------------------

--
-- Table structure for table `customer_enquiry`
--

CREATE TABLE `customer_enquiry` (
  `cust_enquiry_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `veh_reg_no` varchar(500) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `company_name` varchar(200) DEFAULT NULL,
  `address` varchar(1000) DEFAULT NULL,
  `home_tel` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `work_tel` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `work_email` varchar(100) DEFAULT NULL,
  `enquiry_source` varchar(100) DEFAULT NULL,
  `salesperson` varchar(100) DEFAULT NULL,
  `sales_date` date DEFAULT NULL,
  `sales_type` varchar(100) DEFAULT NULL,
  `enquiry_type` varchar(100) DEFAULT NULL,
  `makee` varchar(100) DEFAULT NULL,
  `modell` varchar(100) DEFAULT NULL,
  `variant` varchar(100) DEFAULT NULL,
  `maxprice` float DEFAULT NULL,
  `enquiry_date` date DEFAULT NULL,
  `enquiry_time` datetime DEFAULT NULL,
  `enquiry_status` varchar(100) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `order_status` varchar(100) DEFAULT NULL,
  `handover_type` varchar(200) DEFAULT NULL,
  `handoverdate` date DEFAULT NULL,
  `handover_time` time DEFAULT NULL,
  `hand_over` varchar(10) DEFAULT NULL,
  `order_notes` varchar(1000) DEFAULT NULL,
  `createdBy` varchar(30) NOT NULL,
  `fax` varchar(1000) DEFAULT NULL,
  `customer_notes` varchar(1000) DEFAULT NULL,
  `balance_id` int(11) NOT NULL,
  `deposit_id` int(11) NOT NULL,
  `mot_id` int(11) NOT NULL,
  `part_finance_id` int(11) NOT NULL,
  `warantty_id` int(11) NOT NULL,
  `gap_id` int(11) NOT NULL,
  `pdi_id` int(11) NOT NULL,
  `deal_id` int(11) NOT NULL,
  `is_deal` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `is_sold` int(11) DEFAULT NULL,
  `sold_date` date NOT NULL,
  `finance_status` int(11) NOT NULL,
  `finance_prop_status` int(11) NOT NULL,
  `pex_allowance` int(11) NOT NULL,
  `pex_regno` varchar(500) NOT NULL,
  `pex_make` varchar(500) NOT NULL,
  `pex_finance` varchar(500) NOT NULL,
  `pex_hpi` varchar(500) NOT NULL,
  `cancel_reason` varchar(100) DEFAULT NULL,
  `is_cancel` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer_enquiry`
--

INSERT INTO `customer_enquiry` (`cust_enquiry_id`, `customer_id`, `veh_reg_no`, `title`, `firstname`, `lastname`, `company_name`, `address`, `home_tel`, `mobile`, `work_tel`, `email`, `work_email`, `enquiry_source`, `salesperson`, `sales_date`, `sales_type`, `enquiry_type`, `makee`, `modell`, `variant`, `maxprice`, `enquiry_date`, `enquiry_time`, `enquiry_status`, `order_date`, `order_status`, `handover_type`, `handoverdate`, `handover_time`, `hand_over`, `order_notes`, `createdBy`, `fax`, `customer_notes`, `balance_id`, `deposit_id`, `mot_id`, `part_finance_id`, `warantty_id`, `gap_id`, `pdi_id`, `deal_id`, `is_deal`, `status`, `is_sold`, `sold_date`, `finance_status`, `finance_prop_status`, `pex_allowance`, `pex_regno`, `pex_make`, `pex_finance`, `pex_hpi`, `cancel_reason`, `is_cancel`) VALUES
(1, 1, 'HJ68ZBZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '4', '1', '2022-07-05', 'retail', '2', NULL, NULL, NULL, NULL, '2022-07-02', '2022-07-02 11:17:22', 'Enquiry', '2022-07-06', 'Ordered', 'collection', '2022-07-13', '12:58:00', 'no', '                hello\r\n              ', '', NULL, NULL, 1, 1, 1, 3, 2, 0, 0, 1, 1, 1, 1, '2022-07-05', 1, 0, 100, 'YF67ZWR', 'AUDI RS 3 TFSI QUATTRO S-A', 'yes', '', NULL, 0),
(2, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0000-00-00', 0, 0, 0, '', '', '', '', NULL, 0),
(3, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0000-00-00', 0, 0, 0, '', '', '', '', NULL, 0),
(4, 4, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0000-00-00', 0, 0, 0, '', '', '', '', NULL, 0),
(5, 5, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0000-00-00', 0, 0, 0, '', '', '', '', NULL, 0),
(6, 6, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-05-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, '0000-00-00', 0, 0, 0, '', '', '', '', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `deal_tb`
--

CREATE TABLE `deal_tb` (
  `deal_id` int(11) NOT NULL,
  `fk_enquiry_id` int(11) NOT NULL,
  `delivery_charge` double NOT NULL,
  `subtotal1` double NOT NULL,
  `total_vat` double NOT NULL,
  `subtotal2` double NOT NULL,
  `road_fund` double NOT NULL,
  `warranty` double NOT NULL,
  `gap_cover` double NOT NULL,
  `mot_cover` double NOT NULL,
  `ipt` double NOT NULL,
  `mot` double NOT NULL,
  `esva` double NOT NULL,
  `cherished_fee` double NOT NULL,
  `register_fee` double NOT NULL,
  `surcharge` double NOT NULL,
  `subtotal3` double NOT NULL,
  `pex_allow` double NOT NULL,
  `subtotal4` double NOT NULL,
  `finance_settle` double NOT NULL,
  `net_price` double NOT NULL,
  `amt_due` double NOT NULL,
  `bal` double NOT NULL,
  `less_deposit` double NOT NULL,
  `bal_due` double NOT NULL,
  `bal_due_cust` double NOT NULL,
  `total_banked` double NOT NULL,
  `cust_bal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deal_tb`
--

INSERT INTO `deal_tb` (`deal_id`, `fk_enquiry_id`, `delivery_charge`, `subtotal1`, `total_vat`, `subtotal2`, `road_fund`, `warranty`, `gap_cover`, `mot_cover`, `ipt`, `mot`, `esva`, `cherished_fee`, `register_fee`, `surcharge`, `subtotal3`, `pex_allow`, `subtotal4`, `finance_settle`, `net_price`, `amt_due`, `bal`, `less_deposit`, `bal_due`, `bal_due_cust`, `total_banked`, `cust_bal`) VALUES
(1, 1, 0, 100, 20, 11120, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 100, 11120, 200, 11120, 0, 11120, 200, 10920, 0, 0, 11120);

-- --------------------------------------------------------

--
-- Table structure for table `deleted_vehicle`
--

CREATE TABLE `deleted_vehicle` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(100) NOT NULL,
  `Deleted_by` varchar(100) NOT NULL,
  `reason` varchar(100) NOT NULL,
  `deleted_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `deposit_tb`
--

CREATE TABLE `deposit_tb` (
  `deposit_id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `amt1` double NOT NULL,
  `pay_type` varchar(100) NOT NULL,
  `pay_date` date NOT NULL,
  `banked_date` date NOT NULL,
  `pay_ref` varchar(500) NOT NULL,
  `txn_ref` varchar(500) NOT NULL,
  `amt2` double NOT NULL,
  `pay_type2` varchar(100) NOT NULL,
  `pay_date2` date NOT NULL,
  `banked_date2` date NOT NULL,
  `pay_ref2` varchar(500) NOT NULL,
  `txn_ref2` varchar(500) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `deposit_tb`
--

INSERT INTO `deposit_tb` (`deposit_id`, `enquiry_id`, `amt1`, `pay_type`, `pay_date`, `banked_date`, `pay_ref`, `txn_ref`, `amt2`, `pay_type2`, `pay_date2`, `banked_date2`, `pay_ref2`, `txn_ref2`, `status`) VALUES
(1, 1, 100, 'PC', '2022-07-14', '2022-07-29', 'kjhkjhk', 'jhkjhj', 200, 'CH', '2022-07-19', '2022-07-20', 'kjlk', 'kj', 1);

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `enq_date` varchar(100) NOT NULL,
  `cust_name` varchar(50) NOT NULL,
  `comp_name` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `sales_person` int(10) NOT NULL,
  `deposit` longtext NOT NULL,
  `status` int(5) NOT NULL,
  `sales_person_order` int(10) NOT NULL,
  `order_date` varchar(20) NOT NULL,
  `handover_type` varchar(20) NOT NULL,
  `handoverdate` varchar(20) NOT NULL,
  `handover_time` varchar(20) NOT NULL,
  `hand_over` varchar(20) NOT NULL,
  `order_notes` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`id`, `reg_no`, `enq_date`, `cust_name`, `comp_name`, `phone`, `sales_person`, `deposit`, `status`, `sales_person_order`, `order_date`, `handover_type`, `handoverdate`, `handover_time`, `hand_over`, `order_notes`) VALUES
(1, 'WK05YXR', 'bmw', 'sample', 'sa@gmail.com', '741258963.', 0, 'dd', 1, 0, '', 'no', '', '', 'no', ''),
(2, 'WK05YRRXR', 'bmw', 'sample', 'sa@gmail.com', '741258963.', 2, '', 0, 0, '', 'no', '', '', 'no', ''),
(3, 'WK05YXRR', 'bmw', 'sample', 'sa@gmail.com', '741258963.', 3, '', 0, 0, '', 'no', '', '', 'no', 'sample\r\n741258963. \r\nEmail :sa@gmail.com\r\n              '),
(4, '', '2021-10-28', '', '', '', 3, '', 1, 1, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_source`
--

CREATE TABLE `enquiry_source` (
  `id` int(11) NOT NULL,
  `source` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_source`
--

INSERT INTO `enquiry_source` (`id`, `source`) VALUES
(1, 'AA Cars'),
(2, 'Auto Exchange'),
(3, 'Automated Codeweavers'),
(4, 'Autotrader - Internet'),
(5, 'Autotrader - Magazine'),
(6, 'Bing'),
(7, 'Bing PPC'),
(8, 'Buy A Car'),
(9, 'Car Finance 247'),
(10, 'CarGurus'),
(11, 'CarLand'),
(12, 'CarSnip'),
(13, 'Cinch'),
(14, 'Click Engage'),
(15, 'Click PPS'),
(16, 'Dealer Website'),
(17, 'Drive By'),
(18, 'eBay'),
(19, 'Email campaign'),
(20, 'Evoluiton'),
(21, 'Exchange & Mart'),
(22, 'Existing Customer'),
(23, 'Facebook'),
(24, 'Facebook Lead Ad'),
(25, 'Facebook Marketplace'),
(26, 'Find and Fund'),
(27, 'GardX/Spincar Remarketing'),
(28, 'Google'),
(29, 'Google (Organic)'),
(30, 'Google PPC'),
(31, 'Gumtree'),
(32, 'Hey Car'),
(33, 'Inbound SMS'),
(34, 'Instagram'),
(35, 'Instagram Lead Ad'),
(36, 'Javed'),
(37, 'Kami'),
(38, 'LivePerson'),
(39, 'Local Paper'),
(40, 'Motors - Internet'),
(41, 'Motors Merchandising'),
(42, 'Other'),
(43, 'Outgoing Communications'),
(44, 'Piston Heads'),
(45, 'Reach Campaign'),
(46, 'Referral'),
(47, 'Remarketing PPC'),
(48, 'Rubrikk'),
(49, 'Shpock'),
(50, 'Tootle'),
(51, 'Twitter'),
(52, 'Unknown'),
(53, 'Used Cars NI'),
(54, 'Website Chat Service'),
(55, 'Website Visitor Chat'),
(56, 'Yahoo'),
(57, 'Zuto');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_type`
--

CREATE TABLE `enquiry_type` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiry_type`
--

INSERT INTO `enquiry_type` (`id`, `type`) VALUES
(1, 'Click Exchange'),
(2, 'Customer'),
(3, 'Email'),
(4, 'Finance'),
(5, 'Hot Lead'),
(6, 'Lost'),
(7, 'Lost - Contact'),
(8, 'Lost - Duplicate'),
(9, 'Lost - Finance'),
(10, 'Lost - People'),
(11, 'Lost - Price'),
(12, 'Lost - Product'),
(13, 'Lost - Purchased'),
(14, 'Lost - PX'),
(15, 'Lost - Vehicle sold'),
(16, 'Referral'),
(17, 'Retention'),
(18, 'Telephone'),
(19, 'Test drive'),
(20, 'Visitor Chat'),
(21, 'Walk on'),
(22, 'Web Chat'),
(23, 'Web enquiry'),
(24, 'Workshop');

-- --------------------------------------------------------

--
-- Table structure for table `expense_assign`
--

CREATE TABLE `expense_assign` (
  `assign_id` int(11) NOT NULL,
  `veh_reg_no` varchar(10) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `exp_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_assign`
--

INSERT INTO `expense_assign` (`assign_id`, `veh_reg_no`, `amount`, `description`, `exp_id`, `status`) VALUES
(9, 'WK05YXRR', 100, 'hello', 4, 1),
(10, 'WK05gYXR', 0, '', 4, 1),
(12, 'WR66PCV', 100, 'jhkh', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `expense_tb`
--

CREATE TABLE `expense_tb` (
  `exp_id` int(11) NOT NULL,
  `invoice_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `pay_id` int(11) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `comments` varchar(2000) DEFAULT NULL,
  `siv_exp_type` varchar(100) DEFAULT NULL,
  `gen_exp_type` varchar(100) DEFAULT NULL,
  `cost_center` int(11) DEFAULT NULL,
  `in_dispute` varchar(100) DEFAULT NULL,
  `origin` varchar(100) DEFAULT NULL,
  `vat_inv` varchar(10) DEFAULT NULL,
  `net_value` double DEFAULT NULL,
  `vat` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `late_cost` varchar(10) DEFAULT NULL,
  `is_return` int(11) DEFAULT NULL,
  `return_amount` double DEFAULT NULL,
  `date_return` datetime DEFAULT NULL,
  `prepayment` varchar(10) DEFAULT NULL,
  `no_month` int(11) DEFAULT NULL,
  `monthly_amt` double DEFAULT NULL,
  `month_pay` double DEFAULT NULL,
  `year_pay` double DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expense_tb`
--

INSERT INTO `expense_tb` (`exp_id`, `invoice_id`, `supplier_id`, `pay_id`, `description`, `comments`, `siv_exp_type`, `gen_exp_type`, `cost_center`, `in_dispute`, `origin`, `vat_inv`, `net_value`, `vat`, `total`, `late_cost`, `is_return`, `return_amount`, `date_return`, `prepayment`, `no_month`, `monthly_amt`, `month_pay`, `year_pay`, `status`) VALUES
(1, 7, 1, NULL, 'hello', 'hello', '11', '', 4, NULL, 'EEC', NULL, 1500, NULL, 1500, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(2, 8, 1, NULL, 'kjefhkjw', 'kjhhj', '', '1', 1, NULL, 'UK', 'Yes', 500, 100, 600, 'No', 1, 100, '2021-10-08 12:51:52', NULL, NULL, NULL, NULL, NULL, 1),
(3, 9, 1, NULL, 'yguy', 'kjhkjh', '9', '', 4, NULL, 'Non EEC', NULL, 1000, NULL, 1000, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(4, 10, 1, NULL, 'ugjgjh', 'kjhkhkj', '4', NULL, 3, NULL, 'EEC', NULL, 500, NULL, 500, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(5, 11, 1, NULL, 'hello', 'hello', '4', '', 2, 'Yes', 'UK', 'Yes', 5000, 1000, 6000, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(6, 12, 1, NULL, 'hello', 'hello', '4', '', 2, 'Yes', 'UK', 'Yes', 5000, 1000, 6000, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(7, 13, 1, NULL, 'hello', 'hello', '4', '', 2, 'Yes', 'UK', 'Yes', 5000, 1000, 6000, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(8, 14, 1, NULL, 'hii', 'hii', '', '1', 3, 'No', 'UK', 'Yes', 500, 100, 600, 'Yes', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(9, 20, 2, NULL, 'hjh', 'hjhj', '3', '', 1, 'No', 'UK', 'Yes', 10, 2, 12, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(10, 21, 1, NULL, 'test demo', 'jenwk', '8', '', 5, 'No', 'UK', 'Yes', 100, 20, 120, 'No', NULL, NULL, NULL, 'No', 0, 0, 1, 2019, 1);

-- --------------------------------------------------------

--
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` int(10) DEFAULT NULL,
  `dob` varchar(20) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `marriage` varchar(15) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `postal` int(100) DEFAULT NULL,
  `period` int(10) DEFAULT NULL,
  `occupation` varchar(50) DEFAULT NULL,
  `salary` int(10) DEFAULT NULL,
  `salary2` int(10) DEFAULT NULL,
  `notes` text,
  `license` text,
  `photo1` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`id`, `name`, `price`, `dob`, `phone`, `email`, `marriage`, `country`, `postal`, `period`, `occupation`, `salary`, `salary2`, `notes`, `license`, `photo1`, `photo2`) VALUES
(1, 'sdf', 15000, '12/05/2000', '7412358963', 'sdf@gmail.com', 'Single', 'india', 745265, 0, 'sdfg', 100000, 0, 'sdfgh', '', NULL, NULL),
(2, 'sample', 40000, '12/5/200', '742563', 'sdf@gmail.com', 'Single', 'sdfgh', 512120, 0, 'sdfg', 41, 0, 'dfg', '', NULL, NULL),
(3, 'akshy', 10000, '23-07-2002', '789653262', 'asdf@gmail.com', 'Single', 'india', 7412362, 0, 'swase', 1000, 0, 'qwert67y', '', NULL, NULL),
(4, 'wer', 1000, '23-0-1200', '4165320658', 'asdf@gmail.com', 'Single', 'qaswedfgh', 8412596, 0, 'awsdf', 200, 0, 'asdfg', '', NULL, NULL),
(5, 'd', 0, '12', '1221', '1212@DDQE.COM', 'Single', 'EW', 1213, 0, 'Asd', 123, 0, 'wqedas', '', NULL, NULL),
(6, 'Jabeena Rishad', 100, '19-10-1995', '7024249633', 'Jabeejabee@gmail.com', 'Married', 'India', 670661, 0, 'nill', 10000, 0, 'ahha', '', NULL, NULL),
(7, 'johnss1111 johnss1111', 10000, '15-05-98', '03554365778', 'john@gmail.com', 'Single', 'India', 345675, 15, 'fcvgbhnj', 111111, 0, 'mm', 'whatsapp1.png', NULL, NULL),
(8, 'johnss1111 johnss1111', 10000, '15-05-98', '03554365778', 'john@gmail.com', 'Single', 'India', 345675, 15, 'fcvgbhnj', 111111, 0, 'mm', 'whatsapp2.png', NULL, NULL),
(9, 'test', 0, '06011997', '9605978511', 'admin@asd', 'Single', 'in', 22, 30, 'test', 1000, 0, 'testing', 'master5_1.PNG', NULL, NULL),
(10, 'johnss1111 johnss1111', 1000, '15-05-98', '03554365778', 'john@gmail.com', 'Divorced', 'India', 345675, 50, 'fcvgbhnj', 2000, 0, 'vbn', 'saree.jpg', NULL, NULL),
(11, 'johnss1111 johnss1111', 1000, '15-05-98', '03554365778', 'john@gmail.com', 'Divorced', 'India', 345675, 50, 'fcvgbhnj', 2000, 0, 'vbn', 'saree1.jpg', NULL, NULL),
(12, 'test', 2500, '06011997', '9605978512', 'admin@asd', 'Single', 'in', 22, 30, 'test', 1000, 0, 'test', 'avatar1.png', NULL, NULL),
(13, 'Anu', 50, '12/8/1997', '3445677889', 'anu@gmail.com', 'Married', 'kkhjk', 123234, 24, '131232', 100, 10, 'nknlkj', 'feature-4.png', NULL, NULL),
(14, 'wsdq', 312453, '12/12/2035', '3456754655', 'adad@swd.com', 'Single', '1§2', 0, 36, '456', 2134253, 2132, '312rfcvdf', '2.jpg', NULL, NULL),
(15, 'znu', 90, '12/12/1997', '3445678998', 'anu@gmail.com', 'Married', 'ughj', 234234, 36, 'wrewe', 1000, 900, 'rwerwe', 'C:\\fakepath\\feature-4.png', NULL, NULL),
(16, 'anu', 90, '12/12/1997', '7306704778', 'anu@gmail.com', 'Married', 'werwere', 123456, 36, 'uiiiii', 1000, 800, 'ikjhjjh', 'jk', NULL, NULL),
(17, 'anu', 90, '12/12/1997', '787676765675', 'anu@gmail.com', 'Married', 'yuthfy', 1234456, 48, 'jhghgfgh', 100, 50, '', 'C:\\fakepath\\feature-3.png', NULL, NULL),
(18, 'anu', 78, '12/12/1898', '5667677889', 'anu@gmail.com', 'Married', 'gjhfhg', 789876, 36, 'uiyu', 9000, 8999, 'jhgh', NULL, 'Screenshot_2023-12-13_1649451.png', 'Screenshot_2023-12-27_1454431.png'),
(19, 'jyhg', 89, '12/7/1998', '7867564534', 'anu@gmail.com', 'Married', 'hgfghdgf', 898767, 36, 'hjghj', 9000, 8999, 'jhfgghfhg', NULL, 'Screenshot_2024-01-05_122406.png', 'Screenshot_2024-01-30_130836.png'),
(20, 'Anu Mohan', 78, '12/12/1998', '8990897867', 'anu@gmail.com', 'Married', 'tyutu', 890987, 24, 'ewfer', 9000, 8999, 'grtht', NULL, 'Screenshot_2023-12-13_1649452.png', 'Screenshot_2024-01-05_1224062.png'),
(21, 'test', 55, '07/08/1997', '8045678998', 'testemail@gmail.com', 'Married', 'abc', 456678, 24, 'abc', 7000, 6600, 'abc', NULL, 'Screenshot_2023-12-27_145711.png', 'Screenshot_2024-01-02_163335.png'),
(22, 'anu', 88, '4/4/1997', '8989898989', 'anu@gmail.com', 'Single', 'were', 565445, 36, 'weerfe', 900, 899, 'ererf', NULL, 'Screenshot_2024-01-02_1633351.png', 'Screenshot_2024-01-09_115733.png'),
(23, 'anu', 33, '2/1/1998', '8990897889', 'anu@gmail.com', 'Married', 'were', 321234, 36, 'fsfaf', 9000, 89999, 'weww', NULL, 'Screenshot_2023-12-30_155135.png', 'Screenshot_2023-12-04_141848.png'),
(24, 'ioi', 89, '9/9/1998', '4567788990', 'anu@gmail.com', 'Married', 'wrer', 890987, 24, 'ewe', 900, 899, 'e23e', NULL, 'Screenshot_2023-12-30_154504.png', 'Screenshot_2024-01-29_152915.png'),
(25, 'Anu pai', 33, '2/2/1998', '9089543423', 'anupai@gmail.com', 'Married', 'abc', 890890, 48, 'abc', 9000, 8999, 'abc', NULL, 'Screenshot_2024-01-04_205549.png', 'Screenshot_2024-01-05_1224063.png'),
(26, 'Anu pai', 33, '2/2/1998', '9089543423', 'anupai@gmail.com', 'Married', 'abc', 890890, 48, 'abc', 9000, 8999, 'abc', NULL, 'Screenshot_2024-01-04_205549.png', 'Screenshot_2024-01-05_1224063.png'),
(27, 'Anu pai', 33, '2/2/1998', '9089543423', 'anupai@gmail.com', 'Married', 'abc', 890890, 48, 'abc', 9000, 8999, 'abc', NULL, 'Screenshot_2024-01-04_205549.png', 'Screenshot_2024-01-05_1224063.png'),
(28, 'anu', 55, '1/2/1997', '78907879077', 'anu@gmail.com', 'Married', 'rfgr', 908908, 36, 'jhkjh', 900, 899, 'jkjk', NULL, 'Screenshot_2023-12-30_1551351.png', 'Screenshot_2024-01-30_1308361.png'),
(29, 'rwer', 89, '7/9/1998', '90897876867', 'anutest@gmail.com', 'Married', 'retert', 9089089, 36, 'gergtr', 9000, 788, 'rert', NULL, 'Screenshot_2024-01-05_144613.png', 'Screenshot_2024-03-31_230712.png'),
(30, 'hgfhg', 66, '1/1/1997', '7867566778', 'anu@gmail.com', 'Married', 'lklklk', 890987, 24, 'asddas', 900, 899, 'dasda', NULL, 'Screenshot_2023-12-27_143803.png', 'Screenshot_2023-12-30_1551352.png'),
(31, 'dsf', 67, '1/1/1998', '8989786787', 'anumohanonline97@gmail.com', 'Married', 'sddsf', 908876, 36, 'erwer', 900, 899, 'ewr', NULL, 'Screenshot_2023-12-30_1551353.png', 'Screenshot_2024-01-29_1529151.png'),
(32, 'sfds', 78, '1/1/1998', '897867564534455', 'anumohanonline97@gmail.com', 'Married', 'wewr', 909890, 36, 'erwer', 900, 899, 'erere', NULL, 'Screenshot_2023-12-30_1551354.png', 'Screenshot_2024-01-24_103529.png'),
(33, 'hfjd', 44, '2/2/2998', '7867677878', 'anu@gmail.com', 'Married', 'jhhkj', 234234, 36, 'jihjk', 900, 899, 'jjk', NULL, 'Screenshot_2024-01-04_2055491.png', 'Screenshot_2024-01-05_1224064.png'),
(34, 'sqdq', 43, '1/1/1998', '3423123454', 'anumohanonline97@gmail.com', 'Married', 'hjbjhgj', 908990, 36, 'jhjhj', 9000, 8999, 'ewqe', NULL, 'Screenshot_2024-03-31_2307121.png', 'Screenshot_2024-04-06_120602.png'),
(35, 'anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(37, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'wqwq', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(39, 'Anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(40, 'Anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'aqsqwd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(43, 'rtr', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(44, 'jhgh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(45, 'huhu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'jhj', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(50, 'dwfe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(51, 'Anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Anu ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Anu ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(55, 'Anu ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Anu Mohan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Anu Mohan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'Anu Mohan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'Anju ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(64, 'jhgjh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(65, 'anu', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'anu mohan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'anu', 88, '12/12/1997', '8978897889', 'anumohanonline97@gmail.com', 'Married', 'abc', 897890, 36, 'abc test', 9000, 8999, 'testing', NULL, 'Screenshot_2024-01-24_1035291.png', 'Screenshot_2023-12-13_1649453.png'),
(68, 'Anu Mohan', 45, '03/09/1997', '7306703710', 'anubackupemail123@gmail.com', 'Married', 'testing', 678890, 48, 'tetsing', 7000, 6899, 'testing', NULL, 'Screenshot_2023-12-30_1551355.png', 'Screenshot_2024-01-02_163537.png'),
(69, 'Anu Mohan', 45, '12/12/1997', '7889907867', 'anubackupemail123@gmail.com', 'Married', 'testing', 890789, 36, 'testing', 9000, 8999, 'testing', NULL, 'Screenshot_2023-12-27_1457111.png', 'Screenshot_2023-12-30_1551356.png'),
(70, 'Anu', 56, '12/1/1997', '6756453423', 'anubackupemail123@gmail.com', 'Married', 'testing', 789987, 36, 'testing', 9000, 8999, 'tetsing', NULL, 'license1713334464.png', 'license17133344641.png'),
(71, 'Anju', 44, '12/1/1998', '8990788990', 'anubackupemail123@gmail.com', 'Married', 'testing', 890890, 48, 'testing', 9000, 8999, 'testing', NULL, 'license1713351116.png', 'license17133511161.png'),
(72, 'Anu', 45, '12/1/1997', '8978788990', 'anubackupemail123@gmail.com', 'Married', 'testing', 909878, 36, 'testing', 9000, 8999, 'testing', NULL, 'license1713351388.png', 'license17133513881.png'),
(73, 'sruthi', 67, '1/2/1997', '8989788978', 'anubackupemail123@gmail.com', 'Married', 'testing', 890987, 36, 'testing', 9000, 8999, 'testing', NULL, 'license1713355597.png', 'license17133555971.png'),
(74, 'sruthi', 67, '1/2/1997', '8989788978', 'anubackupemail123@gmail.com', 'Married', 'testing', 890987, 36, 'testing', 9000, 8999, 'testing', NULL, 'license1713355597.png', 'license17133555971.png'),
(75, 'test', 66, '1/1/1997', '8978675645', 'anubackupemail123@gmail.com', 'Married', 'testing', 890789, 36, 'testing', 9000, 8999, 'testing', NULL, 'license1713360696png', 'license17133606961png'),
(76, 'Anu', 56, '1/1/1997', '8978675645', 'anubackupemail123@gmail.com', 'Married', 'testing', 890789, 36, 'testing', 9000, 8999, 'testing', NULL, 'license1713363410.png', 'license17133634101.png'),
(77, 'test', 25000, '31/07/1998', '07760510567', 'test@gmail.com', 'Single', '174 gardenia', 0, 36, 'salesman', 2500, 2100, 'dsfwe', NULL, 'license1713366938.jpg', 'license17133669381.jpg'),
(78, 'Test', 9000, '21/07/1996', '0763782722', 'test@gmail.com', 'Single', '174 gga', 0, 60, 'Test', 3500, 3200, 'hhsjw', NULL, 'license1713368311.png', 'license17133683111.png'),
(79, 'Anu Sushil', 34, '03/09/1997', '7306703710', 'anubackupemail123@gmail.com', 'Married', 'testing', 670650, 36, 'testing', 17000, 15900, NULL, NULL, 'license1714555318.png', 'license17145553181.png'),
(80, 'Anu', 89, '12/1/2009', '6778678978', 'anumohanonline97@gmail.com', 'Married', 'kgjh', 68767, 36, 'jhjk', 900, 798, NULL, NULL, 'license1714559739.png', 'license17145597391.png'),
(81, 'sdfsde', 322332, '12/22/2000', '5626656656', 'sdfsd@dsfdsf.vcom', 'Married', '545461', 0, 36, 'saf', 121212, 2112, NULL, NULL, 'license1715334416.jpg', 'license17153344161.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `finance_company`
--

CREATE TABLE `finance_company` (
  `id` int(11) NOT NULL,
  `company` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance_company`
--

INSERT INTO `finance_company` (`id`, `company`) VALUES
(1, 'CHOOSEMYCAR'),
(2, 'ADVANTAGE FINANCE'),
(3, 'MARSH FINANCE LTD'),
(4, 'LLOYDS BANK PLC'),
(5, 'HOLMESDALE FINANCE'),
(6, 'BURNLEY SAVINGS AND LOANS'),
(8, 'PREMIUM PLAN'),
(9, 'LLOYDS PARTNER FINANCE'),
(10, '1ST STOP CAR FINANCE'),
(11, 'ADMIRAL CAR FINANCE'),
(12, 'ADVANTAGE MOTOR FINANCE'),
(13, 'ALPHERA FINANCE SERVICES'),
(14, 'ANGLO SCOTTISH FINANCE'),
(15, 'BILLING FINANCE LIMITED'),
(16, 'BLUE MOTOR FINANCE'),
(17, 'BNP PARIBAS '),
(18, 'CAR LOANS 365'),
(19, 'CARMONEY'),
(20, 'CARFINANCE247 LTD'),
(21, 'CAR FINANCE 2 U'),
(22, 'CAR FINANCE PLAN'),
(23, 'CLOSE BROTHERS MOTOR FINANCE'),
(24, 'CREDITPLUS '),
(25, 'EVOLUTION FUNDING'),
(26, 'FIRST RESPONSE FINANCE'),
(27, 'HOLMESDALE FINANCE'),
(28, 'JIGSAW FINANCE'),
(29, 'KANDOO CAR CREDIT'),
(30, 'LLOYD BANK'),
(31, 'MARSH FINANCE'),
(32, 'MATCH ME'),
(33, 'MIDLAND CREDIT'),
(34, 'MIDLAND CREDIT'),
(35, 'MONEYBARN NO1 LIMITED'),
(36, 'MONEYWAY FINANCE'),
(37, 'MOTOR FINANCE 4U'),
(38, 'OODLE FINANCE'),
(39, 'OPTIMUM FUNDING'),
(40, 'ORANGE MOTOR FINANCE'),
(41, 'PCF BANK LTD'),
(42, 'PINNACLE FINANCIAL CONTRACTS LTD'),
(43, 'QUICK CAR FINANCE'),
(44, 'SANTANDER CONSUMER FINANCE'),
(45, 'SPECIALIST MOTOR FINANCE LIMITED'),
(46, 'VTG (RATESETTER)'),
(47, 'ZEBRA ASSET FINANCE'),
(48, 'ZUTO LIMITED');

-- --------------------------------------------------------

--
-- Table structure for table `finance_status`
--

CREATE TABLE `finance_status` (
  `fin_status_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `cust_enq_id` int(11) NOT NULL,
  `finance_company` int(11) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `accept` varchar(100) NOT NULL,
  `comment` varchar(100) DEFAULT NULL,
  `finstatus_confirmed` varchar(10) DEFAULT NULL,
  `enquiry_type_id` int(11) DEFAULT NULL,
  `finstatus_notes` varchar(100) DEFAULT NULL,
  `finstatus_accepted` varchar(10) DEFAULT NULL,
  `finstatus_sold` varchar(10) DEFAULT NULL,
  `callback_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `finance_status`
--

INSERT INTO `finance_status` (`fin_status_id`, `cust_id`, `cust_enq_id`, `finance_company`, `grade`, `date`, `accept`, `comment`, `finstatus_confirmed`, `enquiry_type_id`, `finstatus_notes`, `finstatus_accepted`, `finstatus_sold`, `callback_date`) VALUES
(5, 1, 9, 4, '1', '0000-00-00', '-1', 'vvvvvvvvvvvv', NULL, NULL, NULL, NULL, NULL, '0000-00-00'),
(6, 1, 9, 15, '1', '0000-00-00', '0', '111111111111111111111111', NULL, NULL, NULL, NULL, NULL, '0000-00-00'),
(8, 1, 9, 8, '1', '0000-00-00', '0', '0000000000000', NULL, NULL, NULL, NULL, NULL, '0000-00-00'),
(9, 0, 17, 0, '', '0000-00-00', '', '', '0', 0, '', '0', '0', '0000-00-00'),
(10, 0, 17, 1, '1', '0000-00-00', '-1', '', '0', 0, '', '0', '0', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `finance_tb`
--

CREATE TABLE `finance_tb` (
  `finance_id` int(11) NOT NULL,
  `cust_enquiry_id` int(11) NOT NULL,
  `finance_company` int(11) DEFAULT NULL,
  `agreement_no` int(11) DEFAULT NULL,
  `approval_date` date DEFAULT NULL,
  `finance_rate` int(11) DEFAULT NULL,
  `apr_rep` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `vb_amount` int(11) DEFAULT NULL,
  `repayments` int(11) DEFAULT NULL,
  `finance_amount` int(11) DEFAULT NULL,
  `finance_subsidy` int(11) DEFAULT NULL,
  `pex_settlement` int(11) DEFAULT NULL,
  `finance_total_amount` int(11) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `neg_enquity` int(11) DEFAULT NULL,
  `paid_out` int(11) DEFAULT NULL,
  `business_mngr` int(11) DEFAULT NULL,
  `payment_date` int(11) DEFAULT NULL,
  `banked_date` int(11) DEFAULT NULL,
  `payment_reference` int(11) DEFAULT NULL,
  `payment_type` int(11) DEFAULT NULL,
  `commision` int(11) DEFAULT NULL,
  `fin` int(11) DEFAULT NULL,
  `ppp` int(11) DEFAULT NULL,
  `gap` int(11) DEFAULT NULL,
  `vrip` int(11) DEFAULT NULL,
  `warr` int(11) DEFAULT NULL,
  `commision_received` int(11) DEFAULT NULL,
  `commision_banked` int(11) DEFAULT NULL,
  `broker` varchar(20) DEFAULT NULL,
  `pcp_gfv` int(11) DEFAULT NULL,
  `pcp_annualmilleage` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `finance_tb`
--

INSERT INTO `finance_tb` (`finance_id`, `cust_enquiry_id`, `finance_company`, `agreement_no`, `approval_date`, `finance_rate`, `apr_rep`, `duration`, `vb_amount`, `repayments`, `finance_amount`, `finance_subsidy`, `pex_settlement`, `finance_total_amount`, `grade`, `type`, `neg_enquity`, `paid_out`, `business_mngr`, `payment_date`, `banked_date`, `payment_reference`, `payment_type`, `commision`, `fin`, `ppp`, `gap`, `vrip`, `warr`, `commision_received`, `commision_banked`, `broker`, `pcp_gfv`, `pcp_annualmilleage`, `status`) VALUES
(1, 0, 0, 0, '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '0', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '0', 0, 0, 0),
(2, 0, 0, 0, '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '0', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '0', 0, 0, 0),
(3, 0, 0, 0, '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '0', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '0', 0, 0, 0),
(4, 0, 0, 0, '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '0', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '0', 0, 0, 0),
(5, 0, 0, 0, '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, '0', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '0', 0, 0, 0),
(6, 7, 0, 123, '2021-10-31', 0, 0, 0, 0, 123, 0, 0, 0, 0, 1, 'pcp', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, 'broker', 1234, 0, 0),
(7, 55, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'pcp', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 0, 0),
(8, 54, 0, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'pcp', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 0, 0),
(9, 56, 48, 100, NULL, 11, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'pcp', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 0, 0),
(10, 59, 1, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'pcp', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 0, 0),
(11, 1, 16, 0, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 'pcp', 0, 0, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, 0, 0, NULL, NULL, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `gap_tb`
--

CREATE TABLE `gap_tb` (
  `gap_id` int(11) NOT NULL,
  `fk_enquiry_id` int(11) NOT NULL,
  `gap_supplier` varchar(100) NOT NULL,
  `gap_duration` int(11) NOT NULL,
  `gap_start_date` date NOT NULL,
  `gap_policy_no` varchar(200) NOT NULL,
  `gap_cost` double NOT NULL,
  `gap_retail_price` double NOT NULL,
  `gap_profit` double NOT NULL,
  `mot_supplier` varchar(200) NOT NULL,
  `mot_duration` int(11) NOT NULL,
  `mot_start_date` date NOT NULL,
  `mot_policy_no` varchar(200) NOT NULL,
  `mot_cost` double NOT NULL,
  `mot_retailprice` int(11) NOT NULL,
  `mot_profit` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gen_expense_type`
--

CREATE TABLE `gen_expense_type` (
  `id` int(11) NOT NULL,
  `type` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gen_expense_type`
--

INSERT INTO `gen_expense_type` (`id`, `type`) VALUES
(1, 'Accountancy Fees'),
(2, 'Accruals'),
(3, 'Advertising'),
(4, 'Bad Debt Write Off'),
(5, 'Bank Charges'),
(6, 'Bank Interest'),
(7, 'Bank Overdraft Fee'),
(8, 'Biz Loans'),
(9, 'BizLoan Interest'),
(10, 'Car Hire'),
(11, 'Casual'),
(12, 'Charity Donations');

-- --------------------------------------------------------

--
-- Table structure for table `holiday`
--

CREATE TABLE `holiday` (
  `id` int(11) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `import`
--

CREATE TABLE `import` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `cost` float NOT NULL,
  `shipping` float NOT NULL,
  `duty` float NOT NULL,
  `subtotal` float NOT NULL,
  `vat` float NOT NULL,
  `total` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `import`
--

INSERT INTO `import` (`id`, `reg_no`, `cost`, `shipping`, `duty`, `subtotal`, `vat`, `total`) VALUES
(1, 'WK05YXR', 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `invoice_id` int(11) NOT NULL,
  `invoice_no` varchar(100) DEFAULT NULL,
  `invoice_date` date DEFAULT NULL,
  `invoice_type` int(11) DEFAULT NULL,
  `invoice_value` varchar(100) DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `warranty_no` varchar(100) NOT NULL,
  `claims_no` varchar(100) NOT NULL,
  `order_no` varchar(100) NOT NULL,
  `origin` varchar(100) NOT NULL,
  `registration` varchar(100) NOT NULL,
  `makemodel` text NOT NULL,
  `variant` text NOT NULL,
  `milleage` varchar(100) NOT NULL,
  `warranty_company` varchar(100) NOT NULL,
  `sales_person` int(11) NOT NULL,
  `cost_centre` int(11) NOT NULL,
  `standard_service` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`invoice_id`, `invoice_no`, `invoice_date`, `invoice_type`, `invoice_value`, `cust_id`, `warranty_no`, `claims_no`, `order_no`, `origin`, `registration`, `makemodel`, `variant`, `milleage`, `warranty_company`, `sales_person`, `cost_centre`, `standard_service`) VALUES
(1, 'inv2', '2021-10-02', 0, 'invoice_value', 2, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(2, 'inv2', '2021-10-02', 0, 'invoice_value', 2, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(3, 'inv2', '0000-00-00', 0, 'invoice_value', 2, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(4, 'inv2', '0000-00-00', 0, 'invoice_value', 2, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(5, 'inv2', '2021-10-02', 0, 'invoice_value', 2, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(6, 'inv1', '2021-10-13', 0, 'invoice_value', 1, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(7, 'inv1', '2021-10-13', 0, 'invoice_value', 1, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(8, 'inv1', '2021-10-14', 0, 'invoice_value', 1, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(9, 'inv14', '2021-10-15', 0, 'invoice_value', 14, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(10, 'inv14', '2021-10-15', 0, 'invoice_value', 14, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(11, 'inv1', '2021-10-15', 0, 'invoice_value', 1, '', '', '', '', 'WK05YXRR', '', '', '', '', 0, 0, ''),
(12, 'inv1', '2021-10-16', 0, 'invoice_value', 1, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(13, 'inv15', '2021-10-16', 0, 'invoice_value', 15, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(14, 'inv1', '2021-10-16', 0, 'invoice_value', 1, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(15, 'inv3', '2021-10-18', 0, 'invoice_value', 3, '', '', '', '', '', '', '', '', '', 0, 0, 'Alloys Refurb'),
(16, 'inv3', '2021-10-19', 0, 'invoice_value', 3, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(17, 'inv1', '2021-10-20', NULL, 'invoice_value', 1, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(18, 'inv1', '2021-10-21', 0, 'invoice_value', 1, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(19, NULL, '2021-10-28', NULL, NULL, 7, '', '', '', '', '', '', '', '', '', 3, 2, ''),
(20, '741poi', '2022-02-08', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', 0, 0, ''),
(21, '324', '2022-02-10', NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item`
--

CREATE TABLE `invoice_item` (
  `inv_item_id` int(11) NOT NULL,
  `inv_id` int(11) NOT NULL,
  `part_no` int(11) NOT NULL,
  `inv_item_type` varchar(3) NOT NULL,
  `unit_cost` int(11) NOT NULL,
  `unit_margin` int(11) NOT NULL,
  `unit_price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `vat_invoice` int(11) NOT NULL,
  `vat_amount` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_item`
--

INSERT INTO `invoice_item` (`inv_item_id`, `inv_id`, `part_no`, `inv_item_type`, `unit_cost`, `unit_margin`, `unit_price`, `quantity`, `subtotal`, `vat_invoice`, `vat_amount`, `total`, `description`) VALUES
(1, 14, 1234, 'T', 23, 23, 77, 1, 20, 3, 20, 20, 'asdfgh'),
(2, 14, 0, 'R', 0, 0, 0, 1, 0, 1, 0, 0, ''),
(3, 0, 0, 'R', 10000, -20000, 0, 2, 0, 1, 0, 0, ''),
(4, 0, 0, 'R', 0, 0, 0, 1, 0, 1, 0, 0, ''),
(5, 0, 0, 'R', 100, -1000, 0, 10, 0, 0, 0, 0, ''),
(6, 14, 0, 'R', 0, 0, 0, 1, 0, 1, 0, 0, ''),
(7, 14, 0, 'R', 0, 0, 0, 1, 0, 1, 0, 0, ''),
(8, 15, 0, 'R', 0, 0, 0, 1, 0, 1, 0, 0, ''),
(9, 15, 0, 'R', 0, 0, 0, 1, 0, 1, 0, 0, ''),
(10, 15, 0, 'R', 0, 0, 0, 1, 0, 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_item_type`
--

CREATE TABLE `invoice_item_type` (
  `value` varchar(5) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoice_item_type`
--

INSERT INTO `invoice_item_type` (`value`, `type`) VALUES
('P', 'Parts'),
('L', 'Labour'),
('W', 'Warranty'),
('O', 'Oil'),
('M', 'MOT'),
('D', 'Discount'),
('E', 'Extras'),
('T', 'Tyre'),
('H', 'Wheel'),
('I', 'Diagnostic'),
('A', 'Aircon'),
('X', 'Misc'),
('R', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `jobcard`
--

CREATE TABLE `jobcard` (
  `id` int(11) NOT NULL,
  `job` int(10) NOT NULL,
  `type` varchar(50) NOT NULL,
  `reg` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `customer` varchar(100) NOT NULL,
  `ser_description` text NOT NULL,
  `job_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jobcard`
--

INSERT INTO `jobcard` (`id`, `job`, `type`, `reg`, `date`, `customer`, `ser_description`, `job_status`) VALUES
(1, 100, 'Workshop', 'WK05YXR', '2020-12-01', 'GeorgeJoseph', ' ghjkl;\r\n  ', ''),
(2, 99, 'Workshop', 'yiu8978', '2022-02-17', 'test', '', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `joblist`
--

CREATE TABLE `joblist` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `job` int(10) NOT NULL,
  `duration` int(10) NOT NULL,
  `customer` text NOT NULL,
  `reg` varchar(50) NOT NULL,
  `job_des` text NOT NULL,
  `status` varchar(50) NOT NULL,
  `time` varchar(50) NOT NULL,
  `collect` varchar(10) NOT NULL,
  `collection_date` date NOT NULL,
  `waiting` varchar(10) NOT NULL,
  `lift` varchar(10) NOT NULL,
  `carloan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `joblist`
--

INSERT INTO `joblist` (`id`, `date`, `job`, `duration`, `customer`, `reg`, `job_des`, `status`, `time`, `collect`, `collection_date`, `waiting`, `lift`, `carloan`) VALUES
(3, '2022-02-17', 0, 22, 'jlkjkh', 'iiouhoiu089', 'jhkjhkjh', 'jjhjkh', '85', 'hjkjh', '2022-02-19', 'Y', 'Y', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `mot_tb`
--

CREATE TABLE `mot_tb` (
  `mot_id` int(11) NOT NULL,
  `enquiry_id` int(11) NOT NULL,
  `mot_date` date NOT NULL,
  `service_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mot_tb`
--

INSERT INTO `mot_tb` (`mot_id`, `enquiry_id`, `mot_date`, `service_date`) VALUES
(1, 1, '2022-07-09', '2022-07-14');

-- --------------------------------------------------------

--
-- Table structure for table `mot_times`
--

CREATE TABLE `mot_times` (
  `id` int(11) NOT NULL,
  `hours` int(10) NOT NULL,
  `minute` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `stock_no` int(100) NOT NULL,
  `deposit` double NOT NULL,
  `deposit_paid` int(10) NOT NULL,
  `order_date` date NOT NULL,
  `collection` varchar(100) NOT NULL,
  `pex_regno` int(10) NOT NULL,
  `time` time NOT NULL,
  `collected` varchar(100) NOT NULL,
  `salesperson` varchar(50) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `finance` varchar(50) NOT NULL,
  `paidout` varchar(10) NOT NULL,
  `engage` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `stock_no`, `deposit`, `deposit_paid`, `order_date`, `collection`, `pex_regno`, `time`, `collected`, `salesperson`, `customer`, `location`, `finance`, `paidout`, `engage`) VALUES
(1, 1234, 100000, 4000, '2021-10-28', '', 2345, '12:38:50', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `order_finance_prop`
--

CREATE TABLE `order_finance_prop` (
  `prop_id` int(11) NOT NULL,
  `cust_enq_id` int(11) DEFAULT NULL,
  `cust_id` int(11) DEFAULT NULL,
  `finance_amount` int(11) DEFAULT NULL,
  `proposal_date_day` int(11) DEFAULT NULL,
  `proposal_date_month` int(11) DEFAULT NULL,
  `proposal_date_year` int(11) DEFAULT NULL,
  `veh_id` int(11) DEFAULT NULL,
  `years_at_address` int(11) NOT NULL,
  `months_at_address` int(11) NOT NULL,
  `dob_day` int(11) NOT NULL,
  `dob_month` int(11) NOT NULL,
  `dob_year` int(11) NOT NULL,
  `marital_status` varchar(10) DEFAULT NULL,
  `dependents` varchar(10) DEFAULT NULL,
  `homeowner` varchar(10) DEFAULT NULL,
  `previous_address` varchar(100) DEFAULT NULL,
  `purchase_type` varchar(20) DEFAULT NULL,
  `on_road_price` int(11) DEFAULT NULL,
  `pex_allowance` varchar(30) DEFAULT NULL,
  `cash` int(11) DEFAULT NULL,
  `deposit` int(11) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `gap` int(11) DEFAULT NULL,
  `payment_protection` int(11) DEFAULT NULL,
  `baloon_repayment` varchar(20) DEFAULT NULL,
  `mileage` int(11) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `occupation` varchar(20) DEFAULT NULL,
  `occupation_years` int(11) DEFAULT NULL,
  `occupation_months` varchar(20) DEFAULT NULL,
  `employer_name` int(11) DEFAULT NULL,
  `service` varchar(20) DEFAULT NULL,
  `service_rank` varchar(20) DEFAULT NULL,
  `employer_postcode` int(11) DEFAULT NULL,
  `employer_address` varchar(100) DEFAULT NULL,
  `employer_telephone` varchar(10) DEFAULT NULL,
  `previous_occupation` varchar(20) DEFAULT NULL,
  `full_time` varchar(10) DEFAULT NULL,
  `previous_occupation_years` int(11) DEFAULT NULL,
  `previous_occupation_months` varchar(20) DEFAULT NULL,
  `previous_employer_name` varchar(40) DEFAULT NULL,
  `previous_service` varchar(20) DEFAULT NULL,
  `previous_service_rank` varchar(20) DEFAULT NULL,
  `previous_employer_postcode` int(11) DEFAULT NULL,
  `previous_employer_address` varchar(100) DEFAULT NULL,
  `previous_employer_telephone` int(11) DEFAULT NULL,
  `bank_name` varchar(20) DEFAULT NULL,
  `bank_years` int(11) DEFAULT NULL,
  `bank_months` varchar(10) DEFAULT NULL,
  `bank_branch` varchar(20) DEFAULT NULL,
  `account_type` varchar(20) DEFAULT NULL,
  `bank_account_number` varchar(20) DEFAULT NULL,
  `bank_sort_code` varchar(20) DEFAULT NULL,
  `total_monthly_income` int(11) DEFAULT NULL,
  `net_monthly_income` int(11) DEFAULT NULL,
  `credit_cards` varchar(20) DEFAULT NULL,
  `credit_card_type` varchar(20) DEFAULT NULL,
  `indemnifier_name` varchar(40) DEFAULT NULL,
  `indemnifier_address` varchar(100) DEFAULT NULL,
  `indemnifier_telephone` int(11) DEFAULT NULL,
  `indemnifier_dob_day` int(11) DEFAULT NULL,
  `indemnifier_dob_month` int(11) DEFAULT NULL,
  `indemnifier_dob_year` int(11) DEFAULT NULL,
  `indemnifier_marital_status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_finance_prop`
--

INSERT INTO `order_finance_prop` (`prop_id`, `cust_enq_id`, `cust_id`, `finance_amount`, `proposal_date_day`, `proposal_date_month`, `proposal_date_year`, `veh_id`, `years_at_address`, `months_at_address`, `dob_day`, `dob_month`, `dob_year`, `marital_status`, `dependents`, `homeowner`, `previous_address`, `purchase_type`, `on_road_price`, `pex_allowance`, `cash`, `deposit`, `credit`, `gap`, `payment_protection`, `baloon_repayment`, `mileage`, `notes`, `occupation`, `occupation_years`, `occupation_months`, `employer_name`, `service`, `service_rank`, `employer_postcode`, `employer_address`, `employer_telephone`, `previous_occupation`, `full_time`, `previous_occupation_years`, `previous_occupation_months`, `previous_employer_name`, `previous_service`, `previous_service_rank`, `previous_employer_postcode`, `previous_employer_address`, `previous_employer_telephone`, `bank_name`, `bank_years`, `bank_months`, `bank_branch`, `account_type`, `bank_account_number`, `bank_sort_code`, `total_monthly_income`, `net_monthly_income`, `credit_cards`, `credit_card_type`, `indemnifier_name`, `indemnifier_address`, `indemnifier_telephone`, `indemnifier_dob_day`, `indemnifier_dob_month`, `indemnifier_dob_year`, `indemnifier_marital_status`) VALUES
(1, 9, 1, 0, 1, 2, 0, 24, 0, 0, 0, 0, 0, '', '', NULL, '', NULL, 1202, '', 0, 0, 0, NULL, NULL, '', 0, '', '', 0, '', 0, '', '', 0, '', '9685748522', '', 'Full Time', 0, '', '', '', '', 0, '', 0, '', 0, '', '', '', '', '', 0, 0, '', 'hhhhhhh', '', '', 0, 0, 0, 0, ''),
(3, 7, 3, 0, 4, 5, 2016, 24, 0, 0, 0, 0, 0, '', '', NULL, '', NULL, 100000, '', 0, 0, 0, NULL, NULL, '', 5, '', '', 0, '', 0, '', '', 0, '', '', '', 'Full Time', 0, '', '', '', '', 0, '', 0, '', 0, '', '', '', '', '', 0, 0, '', 'mmmmm', '', '', 0, 0, 0, 0, ''),
(5, 11, 7, 0, 31, 12, 2006, 19, 0, 0, 17, 6, 1928, '', '', NULL, '', NULL, 0, '', 0, 0, 0, NULL, NULL, '', 0, '', '', 0, '', 0, '', '', 0, '', '', '', 'Full Time', 0, '', '', '', '', 0, '', 0, '', 0, '', '', '333', '', '', 3333333, 3333333, 'dfffff', 'hhhhhhh', '', '', 0, 0, 0, 0, ''),
(6, 6, 2, 0, 0, 0, 0, 134, 0, 0, 0, 0, 0, '', '', NULL, '', NULL, 0, '', 0, 0, 0, NULL, NULL, '', 0, '', '', 0, '', 0, '', '', 0, '', '', '', 'Full Time', 0, '', '', '', '', 0, '', 0, '', 0, '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, ''),
(7, 54, 0, 0, 0, 0, 0, 134, 0, 0, 0, 0, 0, '', '', NULL, '', NULL, 0, '', 0, 0, 0, NULL, NULL, '', 0, '', '', 0, '', 0, '', '', 0, '', '', '', 'Full Time', 0, '', '', '', '', 0, '', 0, '', 0, '', '', '', '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `part_exchange`
--

CREATE TABLE `part_exchange` (
  `part_exchange_id` int(11) NOT NULL,
  `part_no` int(11) NOT NULL,
  `description` varchar(100) NOT NULL,
  `sup_id` int(11) NOT NULL,
  `stock` varchar(20) NOT NULL,
  `avg_cost` int(11) NOT NULL,
  `retail_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `part_exchange`
--

INSERT INTO `part_exchange` (`part_exchange_id`, `part_no`, `description`, `sup_id`, `stock`, `avg_cost`, `retail_price`) VALUES
(1, 123, 'haii', 1, '0', 1000, 1000),
(2, 1234, 'haii', 1, 'ins', 1000, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `part_finance_tb`
--

CREATE TABLE `part_finance_tb` (
  `pf_id` int(11) NOT NULL,
  `fk_enquiry_id` int(11) NOT NULL,
  `settlement_amt` double NOT NULL,
  `finance_company` varchar(500) NOT NULL,
  `other_fin_company` varchar(500) NOT NULL,
  `agree_no` varchar(500) NOT NULL,
  `bal_date` date NOT NULL,
  `settle_date` date NOT NULL,
  `pay_ref` varchar(500) NOT NULL,
  `pay_date` date NOT NULL,
  `pay_type` varchar(500) NOT NULL,
  `fin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `part_finance_tb`
--

INSERT INTO `part_finance_tb` (`pf_id`, `fk_enquiry_id`, `settlement_amt`, `finance_company`, `other_fin_company`, `agree_no`, `bal_date`, `settle_date`, `pay_ref`, `pay_date`, `pay_type`, `fin_status`) VALUES
(3, 1, 200, 'ADVANTAGE FINANCE', '', '', '0000-00-00', '0000-00-00', '', '0000-00-00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_tb`
--

CREATE TABLE `payment_tb` (
  `pay_id` int(11) NOT NULL,
  `pay_date` date DEFAULT NULL,
  `pay_type` varchar(500) DEFAULT NULL,
  `in_dispute` varchar(100) DEFAULT NULL,
  `prepayment` varchar(100) DEFAULT NULL,
  `reconciled` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pdi`
--

CREATE TABLE `pdi` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `reg` varchar(50) NOT NULL,
  `customer` varchar(50) NOT NULL,
  `collection` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `pdi_docs`
--

CREATE TABLE `pdi_docs` (
  `pdi_doc_id` int(11) NOT NULL,
  `fk_enquiry_id` int(11) NOT NULL,
  `pdi_doc_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdi_docs`
--

INSERT INTO `pdi_docs` (`pdi_doc_id`, `fk_enquiry_id`, `pdi_doc_name`) VALUES
(2, 26, 'V5 Document Provided'),
(8, 1, 'Finance Documents Provided'),
(10, 1, 'offer');

-- --------------------------------------------------------

--
-- Table structure for table `pdi_items`
--

CREATE TABLE `pdi_items` (
  `pdi_item_id` int(11) NOT NULL,
  `fk_enquiry_id` int(11) NOT NULL,
  `pdi_item_name` varchar(200) NOT NULL,
  `del_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdi_items`
--

INSERT INTO `pdi_items` (`pdi_item_id`, `fk_enquiry_id`, `pdi_item_name`, `del_status`) VALUES
(1, 0, 'MOT', 1),
(2, 0, 'Cherished Transfer	', 1),
(3, 0, 'Full Service	', 1),
(4, 0, 'PDI Service	', 1),
(5, 0, '6 Months RFL	', 1),
(6, 0, '12 Months RFL	', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pdi_list_tb`
--

CREATE TABLE `pdi_list_tb` (
  `pdi_id` int(11) NOT NULL,
  `fk_enquiry_id` int(11) NOT NULL,
  `notes` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdi_list_tb`
--

INSERT INTO `pdi_list_tb` (`pdi_id`, `fk_enquiry_id`, `notes`) VALUES
(1, 15, ''),
(2, 15, '');

-- --------------------------------------------------------

--
-- Table structure for table `pdi_order_appear`
--

CREATE TABLE `pdi_order_appear` (
  `pdi_order_id` int(11) NOT NULL,
  `fk_enquiry_id` int(11) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `is_appear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pdi_order_appear`
--

INSERT INTO `pdi_order_appear` (`pdi_order_id`, `fk_enquiry_id`, `item_name`, `is_appear`) VALUES
(1, 26, '6 Months RFL	', 0),
(6, 26, 'yuuioo', 1),
(7, 26, '12 Months RFL	', 1),
(8, 26, 'hgcgfc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pex_vehicle`
--

CREATE TABLE `pex_vehicle` (
  `pex_veh_id` int(11) NOT NULL,
  `enquiry_id` int(11) DEFAULT NULL,
  `stock_no` varchar(500) DEFAULT NULL,
  `reg_no` varchar(500) DEFAULT NULL,
  `reg_date` date DEFAULT NULL,
  `make` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL,
  `variant` varchar(100) DEFAULT NULL,
  `mileage` int(11) DEFAULT NULL,
  `colour` varchar(100) DEFAULT NULL,
  `vin` varchar(100) DEFAULT NULL,
  `engine_no` varchar(100) DEFAULT NULL,
  `fuel` varchar(100) DEFAULT NULL,
  `co2Emissions` int(11) DEFAULT NULL,
  `engineCapacity` int(11) DEFAULT NULL,
  `markedForExport` int(11) DEFAULT NULL,
  `typeApproval` varchar(100) DEFAULT NULL,
  `yearOfManufacture` year(4) DEFAULT NULL,
  `taxDueDate` date DEFAULT NULL,
  `taxStatus` varchar(100) DEFAULT NULL,
  `dateOfLastV5CIssued` date DEFAULT NULL,
  `wheelplan` varchar(100) DEFAULT NULL,
  `monthOfFirstRegistration` varchar(100) DEFAULT NULL,
  `chasis` varchar(100) DEFAULT NULL,
  `amileage` int(11) DEFAULT NULL,
  `import` int(11) DEFAULT NULL,
  `body` varchar(100) DEFAULT NULL,
  `doors` int(11) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `gbox` int(11) DEFAULT NULL,
  `mot` varchar(100) DEFAULT NULL,
  `motnumber` varchar(100) DEFAULT NULL,
  `nextmot` date DEFAULT NULL,
  `motStatus` varchar(100) DEFAULT NULL,
  `motExpiryDate` varchar(100) DEFAULT NULL,
  `currentmot` date DEFAULT NULL,
  `nextservice` date DEFAULT NULL,
  `service_date` date DEFAULT NULL,
  `purdate` date DEFAULT NULL,
  `engtype` varchar(100) DEFAULT NULL,
  `bodytype` varchar(100) DEFAULT NULL,
  `noofseats` int(11) DEFAULT NULL,
  `transmission` varchar(100) DEFAULT NULL,
  `vehicle_grading` varchar(100) DEFAULT NULL,
  `history` varchar(100) DEFAULT NULL,
  `pex_notes` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pex_vehicle`
--

INSERT INTO `pex_vehicle` (`pex_veh_id`, `enquiry_id`, `stock_no`, `reg_no`, `reg_date`, `make`, `model`, `variant`, `mileage`, `colour`, `vin`, `engine_no`, `fuel`, `co2Emissions`, `engineCapacity`, `markedForExport`, `typeApproval`, `yearOfManufacture`, `taxDueDate`, `taxStatus`, `dateOfLastV5CIssued`, `wheelplan`, `monthOfFirstRegistration`, `chasis`, `amileage`, `import`, `body`, `doors`, `description`, `gbox`, `mot`, `motnumber`, `nextmot`, `motStatus`, `motExpiryDate`, `currentmot`, `nextservice`, `service_date`, `purdate`, `engtype`, `bodytype`, `noofseats`, `transmission`, `vehicle_grading`, `history`, `pex_notes`) VALUES
(1, 1, 'P500177', 'YF67ZWR', '2017-11-03', 'AUDI', 'RS 3 TFSI QUATTRO S-A', 'RS 3 TFSI QUATTRO', 100000, 'WHITE', 'WUAZZZ8V4JA903347', 'DAZA010351', 'PETROL', 189, 3, 0, 'M1', '2017', '2023-06-01', 'Taxed', '2021-08-05', '2 AXLE RIGID BODY', 'YF67ZWR', 'WUAZZZ8V4JA903347', 21445, 0, 'HATCHBACK', 5, 'RS 3 TFSI QUATTRO S-A', 7, 'Taxed', '660924554263', '2023-06-07', 'Taxed', '07 June 2023', '2023-06-07', '2023-06-07', '2022-07-06', '2017-11-03', '2.5 TFSI EU6-A RS3', 'HATCHBACK', 5, 'SEMI AUTO', 'Not retail', 'Service History', 'ghjfhg');

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `privilege_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `P1` int(2) NOT NULL,
  `P2` int(2) NOT NULL,
  `P3` int(2) NOT NULL,
  `P4` int(2) NOT NULL,
  `P5` int(2) NOT NULL,
  `P6` int(2) NOT NULL,
  `P7` int(2) NOT NULL,
  `P8` int(11) NOT NULL,
  `P9` int(11) NOT NULL,
  `P10` int(11) NOT NULL,
  `P11` int(11) NOT NULL,
  `P12` int(11) NOT NULL,
  `P13` int(11) NOT NULL,
  `P14` int(11) NOT NULL,
  `P15` int(11) NOT NULL,
  `P16` int(11) NOT NULL,
  `P17` int(11) NOT NULL,
  `P18` int(11) NOT NULL,
  `P19` int(11) NOT NULL,
  `P20` int(11) NOT NULL,
  `P21` int(11) NOT NULL,
  `P22` int(11) NOT NULL,
  `P23` int(11) NOT NULL,
  `P24` int(11) NOT NULL,
  `P25` int(2) NOT NULL,
  `P26` int(2) NOT NULL,
  `P27` int(11) NOT NULL,
  `P28` int(11) NOT NULL,
  `P29` int(11) NOT NULL,
  `P30` int(11) NOT NULL,
  `P31` int(11) NOT NULL,
  `P32` int(11) NOT NULL,
  `P33` int(11) NOT NULL,
  `P34` int(11) NOT NULL,
  `P35` int(11) NOT NULL,
  `P36` int(11) NOT NULL,
  `P37` int(11) NOT NULL,
  `P38` int(11) NOT NULL,
  `P39` int(11) NOT NULL,
  `P40` int(11) NOT NULL,
  `P41` int(11) NOT NULL,
  `P42` int(11) NOT NULL,
  `P43` int(11) NOT NULL,
  `P44` int(11) NOT NULL,
  `P45` int(11) NOT NULL,
  `P46` int(11) NOT NULL,
  `P47` int(11) NOT NULL,
  `P48` int(11) NOT NULL,
  `P49` int(11) NOT NULL,
  `P50` int(11) NOT NULL,
  `P51` int(11) NOT NULL,
  `P52` int(11) NOT NULL,
  `P53` int(2) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`privilege_id`, `user_id`, `P1`, `P2`, `P3`, `P4`, `P5`, `P6`, `P7`, `P8`, `P9`, `P10`, `P11`, `P12`, `P13`, `P14`, `P15`, `P16`, `P17`, `P18`, `P19`, `P20`, `P21`, `P22`, `P23`, `P24`, `P25`, `P26`, `P27`, `P28`, `P29`, `P30`, `P31`, `P32`, `P33`, `P34`, `P35`, `P36`, `P37`, `P38`, `P39`, `P40`, `P41`, `P42`, `P43`, `P44`, `P45`, `P46`, `P47`, `P48`, `P49`, `P50`, `P51`, `P52`, `P53`, `status`) VALUES
(1, 6, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(3, 4, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2),
(6, 7, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(7, 8, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2),
(8, 9, 1, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `id` int(11) NOT NULL,
  `reg` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`id`, `reg`, `name`, `phone`, `email`, `contact`, `comments`) VALUES
(1, '', 'johnss1111 johnss1111', '03554365778', 'john@gmail.com', 'Email', 'n m,');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(10) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `rating` int(10) NOT NULL,
  `platform` varchar(100) NOT NULL,
  `vehicle` varchar(100) NOT NULL,
  `review` text NOT NULL,
  `review_date` date NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `sales_person`
--

CREATE TABLE `sales_person` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_person`
--

INSERT INTO `sales_person` (`id`, `name`) VALUES
(1, 'Akash T P'),
(2, 'Shahid K'),
(3, 'Kelvin');

-- --------------------------------------------------------

--
-- Table structure for table `siv_expense_type`
--

CREATE TABLE `siv_expense_type` (
  `id` int(11) NOT NULL,
  `type` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siv_expense_type`
--

INSERT INTO `siv_expense_type` (`id`, `type`) VALUES
(1, 'Accessories'),
(2, 'Auction Fee'),
(3, 'Bodywork'),
(4, 'Buyers Fee'),
(5, 'Checkover Fee'),
(6, 'Cherished Transfer'),
(7, 'Delivery'),
(8, 'ESVA 180'),
(9, 'Export'),
(10, 'HPI'),
(11, 'Import Duty'),
(12, 'Indemnity Fee');

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `post` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `standard_service`
--

CREATE TABLE `standard_service` (
  `id` int(11) NOT NULL,
  `invoice_name` varchar(100) NOT NULL,
  `invoice_des` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `standard_service`
--

INSERT INTO `standard_service` (`id`, `invoice_name`, `invoice_des`) VALUES
(3, 'test', 'testdemo  ');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `sup_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `sage_code` varchar(50) NOT NULL,
  `nominal_code` varchar(200) DEFAULT NULL,
  `type` varchar(200) DEFAULT NULL,
  `stock_plan` int(11) DEFAULT NULL,
  `brokerage` int(11) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `address` varchar(2000) DEFAULT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `fax` varchar(1000) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pro_email` varchar(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`sup_id`, `name`, `short_name`, `sage_code`, `nominal_code`, `type`, `stock_plan`, `brokerage`, `postcode`, `address`, `telephone`, `fax`, `email`, `pro_email`, `status`) VALUES
(1, 'sup', 'supp', 'hgjhg', 'ko889', 'Parts', 0, 0, '856900', 'abc2,ooo,ooo,ooo', '741852900', 'fffff', 'ff@gmail.com', 'ffff@gmail.com', 1),
(2, 'test', 'weq', '23e', 'ewq', 'Auction', 0, 0, '3e42eeq', 'qwe,qwe,,weq', '213312', '12332123', '122@da.com', 'q@dd.com', 1),
(3, 'Demo', 'Demop', 'ert345', 'hgjh87', 'Main Dealer', NULL, NULL, '741852', 'jhgfh,hgfhg,gfhg,gfgh', '0490244885', '', 'demo@demo.com', 'demo@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `supplier_contact`
--

CREATE TABLE `supplier_contact` (
  `id` int(11) NOT NULL,
  `fk_supplier_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `telephone` varchar(10) DEFAULT NULL,
  `mobile` varchar(10) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier_contact`
--

INSERT INTO `supplier_contact` (`id`, `fk_supplier_id`, `name`, `email`, `telephone`, `mobile`, `status`) VALUES
(1, 1, 'AA', 'aa@gmail.com', '741852963', '852741963', 1),
(2, 1, 'AAs', 'aas@gmail.com', '852456965', '856965412', 0),
(3, 1, 'abc', 'abc@gmail.com', '741852963', '528963741', 1),
(4, 1, 'jhjg', 'jhkj@gmail.com', '748522555', '555444888', 1),
(5, 3, 'test', 'test@test.com', '7485967455', '8574859685', 0),
(6, 3, 'test1', 'test@gmail.com', '7414523685', '7485965263', 1);

-- --------------------------------------------------------

--
-- Table structure for table `technians`
--

CREATE TABLE `technians` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `mon` float NOT NULL,
  `tue` float NOT NULL,
  `wen` float NOT NULL,
  `thu` float NOT NULL,
  `fri` float NOT NULL,
  `sat` float NOT NULL,
  `sun` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `technians`
--

INSERT INTO `technians` (`id`, `name`, `type`, `mon`, `tue`, `wen`, `thu`, `fri`, `sat`, `sun`) VALUES
(1, '', 'Detailing', 10, 10, 10, 10, 10, 110, 10);

-- --------------------------------------------------------

--
-- Table structure for table `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `terms` text NOT NULL,
  `privacy` text NOT NULL,
  `about` text NOT NULL,
  `address` text NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `terms`
--

INSERT INTO `terms` (`id`, `terms`, `privacy`, `about`, `address`, `phone`, `email`) VALUES
(1, 'test\r\nhello', ' A and U Capital Limited T/A Tenby Car Supermarket are committed to protecting and respecting your privacy.\r\nThis policy (together with our Terms of Use and any other documents referred to on\r\n                it) sets out the basis on which any personal data we collect from you, or that you provide to us, will be processed by us. Please read the following carefully to understand our views and\r\n                practices regarding your personal data and how we will treat it.\r\n This is information about you that you give us by filling in forms on https://www.tenbytradecars.co.uk (our site) or by corresponding with us\r\n                    by phone, e-mail or otherwise. It includes information you provide when you register to use our site, subscribe to our service, search for a product, place an order on our site,\r\n                    participate in discussion boards or other social media functions on our site, enter a competition, promotion or survey, and when you report a problem with our site. The information you\r\n                    give us may include your name, address, e-mail address and phone number, financial and credit card information, personal description and photograph, dob, employment details,\r\n                    and address history.   ', ' abouttt\r\n\r\n  ', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `testimonial`
--

CREATE TABLE `testimonial` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(50) NOT NULL,
  `quote` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `testimonial`
--

INSERT INTO `testimonial` (`id`, `date`, `name`, `quote`) VALUES
(3, '2022-01-12', 'Lorem Ipsum', 'Lorem Ipsum');

-- --------------------------------------------------------

--
-- Table structure for table `trade`
--

CREATE TABLE `trade` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `cap_code` float NOT NULL,
  `cap_price` float NOT NULL,
  `glass_code` float NOT NULL,
  `glass_price` float NOT NULL,
  `miles_adjust` float NOT NULL,
  `trade_price` float NOT NULL,
  `retail_price` float NOT NULL,
  `original_price` float NOT NULL,
  `web_price` float NOT NULL,
  `ebay_price` float NOT NULL,
  `weekly_price` float NOT NULL,
  `process_date` date NOT NULL,
  `processed_by` text NOT NULL,
  `buyers_fee` float NOT NULL,
  `sellers_fee` float NOT NULL,
  `autotrader_price` float NOT NULL,
  `current_bid` text NOT NULL,
  `current_bidder` text NOT NULL,
  `bid_date` date NOT NULL,
  `disposal_code` varchar(50) NOT NULL,
  `comments` text NOT NULL,
  `autotrade_email` int(2) NOT NULL,
  `traderlink_email` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trade`
--

INSERT INTO `trade` (`id`, `reg_no`, `cap_code`, `cap_price`, `glass_code`, `glass_price`, `miles_adjust`, `trade_price`, `retail_price`, `original_price`, `web_price`, `ebay_price`, `weekly_price`, `process_date`, `processed_by`, `buyers_fee`, `sellers_fee`, `autotrader_price`, `current_bid`, `current_bidder`, `bid_date`, `disposal_code`, `comments`, `autotrade_email`, `traderlink_email`) VALUES
(1, 'WK05YXR', 1, 1, 11, 1, 1, 1, 1, 1, 1, 1, 11, '0000-00-00', '11', 1, 1, 11, '211', '4105577', '2021-09-22', '8', 'sxcvb ', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle`
--

CREATE TABLE `vehicle` (
  `veh_id` int(11) NOT NULL,
  `key_tag` varchar(5) NOT NULL,
  `stock_no` varchar(10) NOT NULL,
  `reg_no` varchar(10) NOT NULL,
  `chasis` varchar(30) NOT NULL,
  `regdate` date NOT NULL,
  `make` text NOT NULL,
  `make_image` varchar(50) DEFAULT NULL,
  `model` text NOT NULL,
  `model_image` varchar(100) DEFAULT NULL,
  `varient` text NOT NULL,
  `colour` varchar(20) NOT NULL,
  `mileage` int(10) NOT NULL,
  `body` varchar(30) NOT NULL,
  `doors` int(5) NOT NULL,
  `fuel` varchar(10) NOT NULL,
  `gbox` varchar(20) NOT NULL,
  `FSH` varchar(5) NOT NULL,
  `RFL` double DEFAULT NULL,
  `MOT` text NOT NULL,
  `price` double NOT NULL,
  `status` varchar(10) NOT NULL,
  `location` text NOT NULL,
  `co2Emissions` int(10) NOT NULL,
  `engineCapacity` int(10) NOT NULL,
  `markedForExport` varchar(10) NOT NULL,
  `motStatus` varchar(10) NOT NULL,
  `typeApproval` varchar(10) NOT NULL,
  `yearOfManufacture` varchar(10) NOT NULL,
  `taxDueDate` varchar(10) NOT NULL,
  `taxStatus` varchar(10) NOT NULL,
  `dateOfLastV5CIssued` varchar(10) NOT NULL,
  `motExpiryDate` varchar(10) NOT NULL,
  `wheelplan` varchar(50) NOT NULL,
  `monthOfFirstRegistration` varchar(20) NOT NULL,
  `regletter` varchar(50) NOT NULL,
  `privplate` varchar(50) NOT NULL,
  `retailprice` int(10) NOT NULL,
  `vehiclecost` int(10) NOT NULL,
  `engine_no` varchar(50) NOT NULL,
  `amileage` int(11) NOT NULL,
  `import` varchar(10) NOT NULL,
  `hidefin` varchar(10) NOT NULL,
  `insgroup` varchar(20) NOT NULL,
  `formerowner` varchar(30) NOT NULL,
  `hideformer` varchar(5) NOT NULL,
  `ownertype` varchar(20) NOT NULL,
  `grading` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `currentmot` date NOT NULL,
  `motnumber` varchar(15) NOT NULL,
  `nextmot` date NOT NULL,
  `nextservice` date NOT NULL,
  `mortable` text NOT NULL,
  `radiocode` varchar(20) NOT NULL,
  `alarmcode` varchar(20) NOT NULL,
  `igkeyno` varchar(20) NOT NULL,
  `doorkeyno` varchar(20) NOT NULL,
  `sparekey` varchar(10) NOT NULL,
  `vs` text NOT NULL,
  `vsno` varchar(20) NOT NULL,
  `Tax` varchar(20) NOT NULL,
  `HPI` varchar(10) NOT NULL,
  `milescheck` varchar(10) NOT NULL,
  `sercheck` varchar(20) NOT NULL,
  `purdate` date NOT NULL,
  `delerpi` text NOT NULL,
  `purprice` int(10) NOT NULL,
  `supinvno` varchar(20) NOT NULL,
  `dpayment` varchar(20) NOT NULL,
  `payref` varchar(20) NOT NULL,
  `paydate` date NOT NULL,
  `paytype` varchar(20) NOT NULL,
  `finance` varchar(20) NOT NULL,
  `agreeno` varchar(20) NOT NULL,
  `fincompny` varchar(50) NOT NULL,
  `amount` int(10) NOT NULL,
  `fpayref` varchar(20) NOT NULL,
  `fpaydate` date NOT NULL,
  `fpaytype` varchar(20) NOT NULL,
  `pexfin` varchar(20) NOT NULL,
  `pexagreementno` varchar(20) NOT NULL,
  `pexfinco` varchar(20) NOT NULL,
  `pexamnt` int(10) NOT NULL,
  `pexsettldate` date NOT NULL,
  `pexpayref` varchar(20) NOT NULL,
  `pexpaydate` date NOT NULL,
  `pexpaytype` text NOT NULL,
  `source` varchar(20) NOT NULL,
  `suplier` varchar(20) NOT NULL,
  `buyer` varchar(20) NOT NULL,
  `sudetails` varchar(20) NOT NULL,
  `stockcomments` text NOT NULL,
  `retdate` date NOT NULL,
  `salesorreturn` varchar(20) NOT NULL,
  `salestype` varchar(20) NOT NULL,
  `onsite` varchar(10) NOT NULL,
  `stoprem` varchar(20) NOT NULL,
  `stockplan` varchar(20) NOT NULL,
  `stockplanamount` int(11) NOT NULL,
  `stockplnsupp` varchar(20) NOT NULL,
  `stockplanstartdate` date NOT NULL,
  `history` text NOT NULL,
  `warranty` varchar(20) NOT NULL,
  `engtype` varchar(20) NOT NULL,
  `servicecomments` text NOT NULL,
  `comments` varchar(500) DEFAULT NULL,
  `bodytype` varchar(20) NOT NULL,
  `trimcolor` varchar(20) NOT NULL,
  `trimtype` varchar(20) NOT NULL,
  `metalic` varchar(20) NOT NULL,
  `youtubid` text NOT NULL,
  `prestige` varchar(20) NOT NULL,
  `noofseats` int(2) NOT NULL,
  `bhp` text NOT NULL,
  `hiderfl` varchar(5) NOT NULL,
  `nox` varchar(20) NOT NULL,
  `decatgory` varchar(30) NOT NULL,
  `webdisplay` varchar(30) NOT NULL,
  `transmission` varchar(50) NOT NULL,
  `margin_in` varchar(20) NOT NULL,
  `vat` varchar(20) NOT NULL,
  `sold_date` date NOT NULL,
  `sold_by` varchar(20) NOT NULL,
  `invoice_no` varchar(50) NOT NULL,
  `v5` varchar(20) NOT NULL,
  `v5num` varchar(50) NOT NULL,
  `unsold_reason` text NOT NULL,
  `is_exp_assign` varchar(10) NOT NULL,
  `deposit_taken` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle`
--

INSERT INTO `vehicle` (`veh_id`, `key_tag`, `stock_no`, `reg_no`, `chasis`, `regdate`, `make`, `make_image`, `model`, `model_image`, `varient`, `colour`, `mileage`, `body`, `doors`, `fuel`, `gbox`, `FSH`, `RFL`, `MOT`, `price`, `status`, `location`, `co2Emissions`, `engineCapacity`, `markedForExport`, `motStatus`, `typeApproval`, `yearOfManufacture`, `taxDueDate`, `taxStatus`, `dateOfLastV5CIssued`, `motExpiryDate`, `wheelplan`, `monthOfFirstRegistration`, `regletter`, `privplate`, `retailprice`, `vehiclecost`, `engine_no`, `amileage`, `import`, `hidefin`, `insgroup`, `formerowner`, `hideformer`, `ownertype`, `grading`, `description`, `currentmot`, `motnumber`, `nextmot`, `nextservice`, `mortable`, `radiocode`, `alarmcode`, `igkeyno`, `doorkeyno`, `sparekey`, `vs`, `vsno`, `Tax`, `HPI`, `milescheck`, `sercheck`, `purdate`, `delerpi`, `purprice`, `supinvno`, `dpayment`, `payref`, `paydate`, `paytype`, `finance`, `agreeno`, `fincompny`, `amount`, `fpayref`, `fpaydate`, `fpaytype`, `pexfin`, `pexagreementno`, `pexfinco`, `pexamnt`, `pexsettldate`, `pexpayref`, `pexpaydate`, `pexpaytype`, `source`, `suplier`, `buyer`, `sudetails`, `stockcomments`, `retdate`, `salesorreturn`, `salestype`, `onsite`, `stoprem`, `stockplan`, `stockplanamount`, `stockplnsupp`, `stockplanstartdate`, `history`, `warranty`, `engtype`, `servicecomments`, `comments`, `bodytype`, `trimcolor`, `trimtype`, `metalic`, `youtubid`, `prestige`, `noofseats`, `bhp`, `hiderfl`, `nox`, `decatgory`, `webdisplay`, `transmission`, `margin_in`, `vat`, `sold_date`, `sold_by`, `invoice_no`, `v5`, `v5num`, `unsold_reason`, `is_exp_assign`, `deposit_taken`) VALUES
(34, '0', '1', 'WX64ZDC', 'WAUZZZ8VXFA029555', '2014-09-02', 'AUDI', 'audi.png', 'A3', 'carbody5.png', 'S3 SPORTBACK QUATTRO', 'GREY', 100000, 'HATCHBACK', 5, 'PETROL', '6', '', 0, 'Untaxed', 222, ' ', '8', 159, 2, '', '', '', '2007', '', '', '', '2022-09-01', '', '', '', '', 12000, 0, 'CJXC029899', 13815, 'no', 'yes', '13', '0', 'yes', '', '', 'S3 QUATTRO S-A', '2022-09-01', '929393963036', '2022-09-01', '2022-09-01', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2014-09-02', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '295', '', '', 'CARS', 'normal', 'SEMI AUTO', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(35, '0', '1034', 'YF67ZWR', 'WUAZZZ8V4JA903347', '2017-11-03', 'AUDI', 'audi.png', 'A3', 'carbody5.png', 'RS 3 TFSI QUATTRO', 'WHITE', 100000, 'HATCHBACK', 5, 'PETROL', '7', '', 0, 'Untaxed', 1000, ' ', '8', 189, 3, '', '', '', '2017', '', '', '', '2022-11-02', '', '', '', '', 1000, 0, 'DAZA010351', 24562, 'no', 'yes', '13', '0', 'yes', '', '', 'RS 3 TFSI QUATTRO S-A', '2022-11-02', '712963252391', '2022-11-02', '2022-11-02', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2017-11-03', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '394', '', '', 'CARS', 'normal', 'SEMI AUTO', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(36, '58', '1034', 'HJ68ZBZ', 'WAUZZZF16KD014365', '2018-11-23', 'AUDI', 'audi.png', 'Q8', 'carbody4.png', 'TDI QUATTRO S LINE VORSPRUNG', 'WHITE', 10000, 'ESTATE', 5, 'DIESEL', '8', '', 0, 'Untaxed', 11000, 'ord', '8', 178, 3, '', '', '', '2018', '', '', '', '0000-00-00', '', '', '', '', 10009, 0, 'DHXA015755', 0, 'no', 'yes', '13', '0', 'yes', '', '', 'Q8 S-LN VORSPRUNG50 TDI QUAT A', '2022-07-09', '', '0000-00-00', '2022-07-14', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2018-11-23', '', 0, '', '', '', '0000-00-00', '', '', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '281', '', '', 'CARS', 'normal', 'Auto', '', '', '2022-07-05', '', '', '', '', '', '', 1),
(37, '41', '1036', 'K155KGK', 'WAUZZZ4L1CD036229', '2012-07-05', 'AUDI', 'audi.png', 'Q7', 'carbody4.png', 'TDI QUATTRO S LINE PLUS', 'BLUE', 100000, 'ESTATE', 5, 'DIESEL', '8', '', 0, 'Taxed', 2000, ' ', '7', 195, 3, '', '', '', '2010', '', '', '', '2022-07-22', '', '', '', '', 10000, 0, 'CRCA061619', 10644, 'no', 'yes', '13', '0', 'yes', '', '', 'Q7 S LINE + TDI QUATTRO AUTO', '2022-07-22', '987621515107', '2022-07-22', '2022-07-22', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2012-07-05', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 7, '245', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(38, '70', '1036', 'EA17KUY', 'WAUZZZFY3H2014969', '2017-04-28', 'AUDI', 'audi.png', 'Q5', 'carbody4.png', 'TFSI QUATTRO SPORT', 'GREY', 100000, 'ESTATE', 5, 'PETROL', '7', '', 0, 'Taxed', 1000, ' ', '7', 159, 2, '', '', '', '2017', '', '', '', '2022-08-25', '', '', '', '', 1000, 0, 'DAXB003766', 21843, 'no', 'yes', '13', '0', 'yes', '', '', 'Q5 SPORT TFSI QUATTRO S-A', '2022-08-25', '716682708612', '2022-08-25', '2022-08-25', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2017-04-28', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '248', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(39, '116', '1038', 'WU15KBZ', 'WAUZZZ4GXFN055542', '2015-03-02', 'AUDI', 'audi.png', 'A7', 'carbody5.png', 'SPORTBACK TDI QUATTRO S LINE', 'BLACK', 100000, 'HATCHBACK', 5, 'DIESEL', '7', '', 0, 'Untaxed', 222, ' ', '7', 136, 3, '', '', '', '2015', '', '', '', '2022-06-14', '', '', '', '', 1000, 0, 'CRTE008529', 14855, 'no', 'yes', '13', '0', 'yes', '', '', 'A7 S LINE TDI QUATTRO S-A', '2022-06-14', '371005005162', '2022-06-14', '2022-06-14', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-03-02', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '215', '', '', 'CARS', 'normal', 'Semi Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(40, '153', '1038', 'FM12FFR', 'WAUZZZ4G2DN023360', '2012-08-08', 'AUDI', 'audi.png', 'A7', 'carbody5.png', 'TDI QUATTRO S LINE', 'BLACK', 100000, 'HATCHBACK', 5, 'DIESEL', '8', '', 0, 'Taxed', 7410, ' ', '8', 169, 3, '', '', '', '2012', '', '', '', '2022-07-07', '', '', '', '', 1000, 0, 'CGQB008743', 10747, 'no', 'yes', '13', '0', 'yes', '', '', 'A7 S LINE TDI QUATTRO AUTO', '2022-07-07', '544208169580', '2022-07-07', '2022-07-07', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2012-08-08', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '313', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(41, '149', '1038', 'SG64NKO', 'WAUZZZ4G8EN135565', '2014-09-04', 'AUDI', 'audi.png', 'A7', 'carbody5.png', 'TDI QUATTRO S LINE', 'BLUE', 100000, 'HATCHBACK', 5, 'DIESEL', '8', '', 0, 'Untaxed', 45963, ' ', '8', 166, 3, '', '', '', '2014', '', '', '', '2022-09-11', '', '', '', '', 10000, 0, 'CGQB046261', 13825, 'no', 'yes', '13', '0', 'yes', '', '', 'A7 S LINE TDI QUATTRO AUTO', '2022-09-11', '443859251081', '2022-09-11', '2022-09-11', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2014-09-04', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '313', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(42, '14', '1038', 'PE63XGU', 'WAUZZZ4G9EN012437', '2013-09-17', 'AUDI', 'audi.png', 'A7', 'carbody5.png', 'TDI QUATTRO S LINE', 'BLACK', 100000, 'HATCHBACK', 5, 'DIESEL', '7', '', 0, 'Untaxed', 7410, ' ', '7', 156, 3, '', '', '', '2013', '', '', '', '2022-06-17', '', '', '', '', 1000, 0, 'CDUD113334', 12199, 'no', 'yes', '13', '0', 'yes', '', '', 'A7 S LINE TDI QUATTRO AUTO', '2022-06-17', '105323441670', '2022-06-17', '2022-06-17', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2013-09-17', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '245', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(43, '86', '1038', 'EN12NUA', 'WAUZZZ4G4CN159620', '2012-06-28', 'AUDI', 'audi.png', 'A7', 'carbody5.png', 'TDI QUATTRO S LINE', 'BLACK', 100000, 'HATCHBACK', 5, 'DIESEL', '7', '', 0, 'Untaxed', 4111, ' ', '8', 152, 3, '', '', '', '2012', '', '', '', '2022-02-05', '', '', '', '', 1000, 0, 'CLAA034306', 10622, 'no', 'yes', '13', '0', 'yes', '', '', 'A7 S LINE TDI QUATTRO AUTO', '2022-02-05', '741402282213', '2022-02-05', '2022-02-05', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2012-06-28', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '204', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(44, '171', '1043', 'AF13WFB', 'WAUZZZ4G2DN102205', '2013-03-28', 'AUDI', 'audi.png', 'A6', 'carbody6.png', 'TDI S LINE', 'BLUE', 100000, 'SALOON', 4, 'DIESEL', '6', '', 0, 'Untaxed', 7523, ' ', '7', 129, 2, '', '', '', '2013', '', '', '', '2022-04-02', '', '', '', '', 1000, 0, 'CGLC242406', 11546, 'no', 'yes', '13', '0', 'yes', '', '', 'A6 S LINE TDI', '2022-04-02', '721247827882', '2022-04-02', '2022-04-02', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2013-03-28', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '174', '', '', 'CARS', 'normal', 'CVT', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(45, '150', '1043', 'BU63ZZK', 'WAUZZZ4G9EN031196', '2013-09-03', 'AUDI', 'audi.png', 'A6', 'carbody6.png', 'TDI SE', 'BLACK', 100000, 'SALOON', 4, 'DIESEL', '8', '', 0, 'Taxed', 1000, ' ', '8', 132, 2, '', '', '', '2013', '', '', '', '2021-12-11', '', '', '', '', 1000, 0, 'CGLC314895', 12142, 'no', 'yes', '13', '0', 'yes', '', '', 'A6 SE TDI CVT', '2021-12-11', '872072486237', '2021-12-11', '2021-12-11', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2013-09-03', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '174', '', '', 'CARS', 'normal', 'Semi Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(46, '137', '1043', 'WF68JZR', 'WAUZZZF2XKN037070', '2018-11-17', 'AUDI', 'audi.png', 'A6', 'carbody6.png', 'TDI S LINE', 'WHITE', 100000, 'SALOON', 4, 'DIESEL', '7', '', 0, 'Untaxed', 1000, ' ', '7', 117, 2, '', '', '', '2018', '', '', '', '', '', '', '', '', 10000, 0, 'DFBA009785', 32972, 'no', 'yes', '13', '0', 'yes', '', '', 'A6 S LINE 40 TDI S-A', '2021-11-16', '', '0000-00-00', '0000-00-00', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2018-11-17', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 100, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '201', '', '', 'CARS', 'normal', 'Semi Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(47, '41', '1043', 'OV65EHO', 'WAUZZZ8T3GA018705', '2015-10-27', 'AUDI', 'audi.png', 'A5', 'carbody5.png', 'TDI QUATTRO S LINE BLACK EDITION PLUS', 'BLUE', 100000, 'HATCHBACK', 5, 'DIESEL', '7', '', 0, 'Untaxed', 2000, ' ', '8', 164, 3, '', '', '', '2015', '', '', '', '2022-11-23', '', '', '', '', 10000, 0, 'CKVC009029', 16426, 'no', 'yes', '13', '0', 'yes', '', '', 'A5 S LINE BLK ED + TDI QUAT SA', '2022-11-23', '296108815217', '2022-11-23', '2022-11-23', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-10-27', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '242', '', '', 'CARS', 'normal', 'Semi AUto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(48, '72', '1043', 'SY17OUW', 'WAUZZZF59HA021968', '2017-03-21', 'AUDI', 'audi.png', 'A5', 'carbody5.png', 'SPORTBACK TDI S LINE', 'GREY', 100000, 'HATCHBACK', 5, 'DIESEL', '7', '', 0, 'Untaxed', 3000, ' ', '7', 112, 2, '', '', '', '2017', '', '', '', '2022-11-11', '', '', '', '', 1000, 0, 'DETA110561', 21370, 'no', 'yes', '13', '0', 'yes', '', '', 'A5 S LINE TDI S-A', '2022-11-11', '599776152018', '2022-11-11', '2022-11-11', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2017-03-21', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '188', '', '', 'CARS', 'normal', 'Manual', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(50, '169', '1043', 'FN67ZKP', 'WAUZZZF5XJA033021', '2017-09-05', 'AUDI', 'audi.png', 'A5', 'carbody5.png', 'SPORTBACK TDI ULTRA SPORT', 'WHITE', 100000, 'HATCHBACK', 5, 'DIESEL', '6', '', 0, 'Untaxed', 1000, ' ', '8', 108, 2, '', '', '', '2017', '', '', '', '2022-09-04', '', '', '', '', 10000, 0, 'DETA166684', 23639, 'no', 'yes', '13', '0', 'yes', '', '', 'A5 SPORT TDI ULTRA', '2022-09-04', '855432384833', '2022-09-04', '2022-09-04', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2017-09-05', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '188', '', '', 'CARS', 'normal', 'Semi Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(51, '70', '1050', 'OU64NEF', 'WAUZZZ8T7FA003185', '2014-10-22', 'AUDI', 'audi.png', 'A5', 'carbody5.png', 'SPORTBACK TDI S LINE BLACK EDITION', 'GREY', 100000, 'HATCHBACK', 5, 'DIESEL', '8', '', 0, 'Taxed', 1000, ' ', '7', 127, 2, '', '', '', '2014', '', '', '', '2022-09-18', '', '', '', '', 10001, 0, 'CGLC430500', 14081, 'no', 'yes', '13', '0', 'yes', '', '', 'A5 S LINE BLACK EDITION TDICVT', '2022-09-18', '755117098571', '2022-09-18', '2022-09-18', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2014-10-22', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '175', '', '', 'CARS', 'normal', 'Manual', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(52, '0', '1050', 'AK67EEV', 'WAUZZZF41HA167207', '2017-10-20', 'AUDI', 'audi.png', 'A4', 'carbody6.png', 'TDI ULTRA SPORT', 'GREY', 100000, 'SALOON', 4, 'DIESEL', '7', '', 0, 'Untaxed', 2000, ' ', '8', 101, 2, '', '', '', '2020', '', '', '', '2022-10-19', '', '', '', '', 2000, 0, 'DEUA104836', 24349, 'no', 'yes', '13', '0', 'yes', '', '', 'A4 SPORT ULTRA TDI S-A', '2022-10-19', '502651205231', '2022-10-19', '2022-10-19', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2017-10-20', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '148', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(53, '153', '1050', 'FV57MMO', 'WAUZZZ8P38A031071', '2007-12-14', 'AUDI', 'audi.png', 'A3', 'carbody5.png', 'TDI S LINE', 'SILVER', 100000, 'HATCHBACK', 5, 'DIESEL', '6', '', 0, 'Untaxed', 2000, ' ', '8', 143, 2, '', '', '', '2021', '', '', '', '2022-01-26', '', '', '', '', 3000, 0, 'BKD B80551', 7170, 'no', 'yes', '13', '0', 'yes', '', '', 'A3 S LINE TDI S/BACK', '2022-01-26', '653620447070', '2022-01-26', '2022-01-26', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2007-12-14', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '140', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(54, '149', '1050', 'MA16XKP', 'WBAKV420600S36440', '2016-03-23', 'BMW', 'bmw.png', 'X6', 'carbody3.png', 'XDRIVE40D M SPORT', 'BLACK', 100000, 'COUPE', 4, 'DIESEL', '8', '', 0, 'Untaxed', 50000, ' ', '7', 165, 3, '', '', '', '2016', '', '', '', '2022-11-19', '', '', '', '', 16984, 0, '58109469', 17624, 'no', 'yes', '13', '0', 'yes', '', '', 'X6 XDRIVE40D M SPORT AUTO', '2022-11-19', '715147862906', '2022-11-19', '2022-11-19', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-03-23', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '308', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(55, '14', '1050', 'R444DGH', 'WBAKV420500S36929', '2016-07-29', 'BMW', 'bmw.png', 'X6', 'carbody3.png', 'XDRIVE40D M SPORT', 'WHITE', 100000, 'COUPE', 4, 'DIESEL', '8', '', 0, 'Untaxed', 2000, ' ', '7', 165, 3, '', '', '', '2016', '', '', '', '2022-08-25', '', '', '', '', 3000, 0, '58499631', 18766, 'no', 'yes', '13', '0', 'yes', '', '', 'X6 XDRIVE40D M SPORT AUTO', '2022-08-25', '940356052118', '2022-08-25', '2022-08-25', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-07-29', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '308', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(56, '86', '1050', 'YD09XGT', 'WBAFF020X0L290684', '2009-03-20', 'BMW', 'bmw.png', 'X5', 'carbody4.png', 'XDRIVE35D M SPORT', 'SILVER', 100000, 'ESTATE', 5, 'DIESEL', '6', '', 0, 'Untaxed', 3000, ' ', '7', 216, 3, '', '', '', '2009', '', '', '', '2022-07-13', '', '', '', '', 5000, 0, '24656949', 7885, 'no', 'yes', '13', '0', 'yes', '', '', 'X5 XDRIVE 35D MSPORT 7S A', '2022-07-13', '522022012592', '2022-07-13', '2022-07-13', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2009-03-20', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 7, '281', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(57, '171', '1056', 'GX66XKB', 'WBAKS820200S44048', '2016-09-01', 'BMW', 'bmw.png', 'X5', 'carbody4.png', 'M50D', 'BLACK', 100000, 'ESTATE', 5, 'DIESEL', '8', '', 0, 'Untaxed', 20000, ' ', '7', 173, 3, '', '', '', '2016', '', '', '', '2022-08-31', '', '', '', '', 10001, 0, '90011480', 19079, 'no', 'yes', '13', '0', 'yes', '', '', 'X5 M50D AUTO', '2022-08-31', '256984215387', '2022-08-31', '2022-08-31', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-09-01', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 7, '375', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(58, '150', '1056', 'LY15LLA', 'WBAKS420700J53530', '2015-06-30', 'BMW', 'bmw.png', 'X5', 'carbody4.png', 'XDRIVE30D M SPORT', 'WHITE', 100000, 'ESTATE', 5, 'DIESEL', '8', '', 0, 'Untaxed', 7111, ' ', '7', 158, 3, '', '', '', '2015', '', '', '', '2022-06-30', '', '', '', '', 3000, 0, '51739239', 15604, 'no', 'yes', '13', '0', 'yes', '', '', 'X5 XDRIVE30D M SPORT AUTO', '2022-06-30', '104841105666', '2022-06-30', '2022-06-30', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-06-30', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 7, '254', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(59, '137', '1056', 'YC14EJV', 'WBAKS820300G66140', '2014-04-29', 'BMW', 'bmw.png', 'X5', 'carbody4.png', 'M50D', 'BLACK', 100000, 'ESTATE', 5, 'DIESEL', '8', '', 0, 'Untaxed', 2000, ' ', '7', 177, 3, '', '', '', '2014', '', '', '', '2022-07-07', '', '', '', '', 2000, 0, '90250740', 13200, 'no', 'yes', '13', '0', 'yes', '', '', 'X5 M50D AUTO', '2022-07-07', '391894722777', '2022-07-07', '2022-07-07', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2014-04-29', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 7, '375', '', '', 'CARS', 'normal', 'Semi Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(60, '113', '1056', 'EO67CFG', 'WBAHT720505J95478', '2017-09-29', 'BMW', 'bmw.png', 'X1', 'carbody4.png', 'SDRIVE18D SE', 'WHITE', 100000, 'ESTATE', 5, 'DIESEL', '8', '', 0, 'Untaxed', 2000, ' ', '8', 114, 2, '', '', '', '2017', '', '', '', '2022-10-07', '', '', '', '', 15000, 0, '59585108', 24013, 'no', 'yes', '13', '0', 'yes', '', '', 'X1 SDRIVE18D SE AUTO', '2022-10-07', '446795035759', '2022-10-07', '2022-10-07', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2017-09-29', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '148', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(61, '72', '1056', 'VN64GXR', 'WBS3R92010K340856', '2014-10-22', 'BMW', 'bmw.png', '4 SERIES', 'carbody3.png', 'M4', 'YELLOW', 100000, 'COUPE', 2, 'PETROL', '7', '', 0, 'Untaxed', 1200, ' ', '8', 194, 3, '', '', '', '2014', '', '', '', '2022-02-01', '', '', '', '', 13000, 0, '07209028', 14081, 'no', 'yes', '13', '0', 'yes', '', '', 'M4 S-A', '2022-02-01', '354581454205', '2022-02-01', '2022-02-01', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2014-10-22', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 4, '425', '', '', 'CARS', 'normal', 'Semi Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(62, '148', '1056', 'PE65WWP', 'WBA1J72070V486071', '2015-09-30', 'BMW', 'bmw.png', '2 SERIES', 'carbody3.png', 'M235I', 'BLUE', 100000, 'COUPE', 2, 'PETROL', '8', '', 0, 'Untaxed', 2000, ' ', '7', 176, 3, '', '', '', '2020', '', '', '', '2021-09-29', '', '', '', '', 12000, 0, '02929359', 16229, 'no', 'yes', '13', '0', 'yes', '', '', 'M235I AUTO', '2021-09-29', '197493469532', '2021-09-29', '2021-09-29', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-09-30', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 4, '322', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(63, '169', '1062', 'KT16FNU', 'WDD2130042A037225', '2016-05-31', 'MERCEDES-BENZ', 'mercedes-benz.png', 'E CLASS', 'carbody6.png', 'E 220 D AMG LINE', 'WHITE', 100000, 'SALOON', 4, 'DIESEL', '9', '', 0, 'Untaxed', 4000, ' ', '7', 112, 2, '', '', '', '2016', '', '', '', '2022-12-02', '', '', '', '', 15000, 0, '65492080021390', 18213, 'no', 'yes', '13', '0', 'yes', '', '', 'E 220 D AMG LINE AUTO', '2022-12-02', '125348227738', '2022-12-02', '2022-12-02', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-05-31', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '191', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(64, '10', '1062', 'WK15HDU', 'WDD2189262A145056', '2015-03-09', 'MERCEDES-BENZ', 'mercedes-benz.png', 'CLS', 'carbody4.png', 'CLS350 BLUETEC AMG LINE PREMIUM PLUS', 'GREY', 100000, 'ESTATE', 5, 'DIESEL', '9', '', 0, 'Untaxed', 30000, ' ', '8', 149, 3, '', '', '', '2021', '', '', '', '2021-12-29', '', '', '', '', 1200, 0, '64285241661971', 14897, 'no', 'yes', '13', '0', 'yes', '', '', 'CLS350 AMGLINE PREM+ BLUETEC A', '2021-12-29', '873220709109', '2021-12-29', '2021-12-29', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-03-09', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '255', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(65, '0', '1062', 'RK63ZCE', 'WDD2183032A101646', '2013-09-23', 'MERCEDES-BENZ', 'mercedes-benz.png', 'CLS', 'carbody3.png', 'CLS250 CDI BLUEEFFICIENCY AMG SPORT', 'GREY', 100000, 'COUPE', 4, 'DIESEL', '7', '', 0, 'Untaxed', 1400, ' ', '8', 138, 2, '', '', '', '2013', '', '', '', '2021-10-04', '', '', '', '', 13000, 0, '65192431777926', 12223, 'no', 'yes', '13', '0', 'yes', '', '', 'CLS250 CDI AMG BLUE-CY SPORT A', '2021-10-04', '831093545853', '2021-10-04', '2021-10-04', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2013-09-23', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 4, '204', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(66, '167', '1062', 'EY08YKN', 'WDB2093082F237817', '2008-03-29', 'MERCEDES-BENZ', 'mercedes-benz.png', 'CLK', 'carbody3.png', 'CLK220 CDI SPORT', 'SILVER', 100000, 'COUPE', 2, 'DIESEL', '6', '', 0, 'Untaxed', 411, ' ', '7', 183, 2, '', '', '', '2008', '', '', '', '2022-05-28', '', '', '', '', 25000, 0, '64696630626625', 7321, 'no', 'yes', '13', '0', 'yes', '', '', 'CLK220 CDI SPORT AUTO', '2022-05-28', '914227383708', '2022-05-28', '2022-05-28', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2008-03-29', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 4, '147', '', '', 'CARS', 'normal', 'Semi Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(67, '144', '1062', 'DX15PKC', 'WDD1173522N155835', '2015-03-02', 'MERCEDES-BENZ', 'mercedes-benz.png', 'CLA', 'carbody6.png', 'CLA45 AMG 4MATIC', 'WHITE', 100000, 'SALOON', 4, 'PETROL', '7', '', 0, 'Untaxed', 1200, ' ', '7', 165, 2, '', '', '', '2016', '', '', '', '2022-03-24', '', '', '', '', 5222, 0, '13398080023968', 14855, 'no', 'yes', '13', '0', 'yes', '', '', 'CLA45 AMG 4MATIC AUTO', '2022-03-24', '893380919657', '2022-03-24', '2022-03-24', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-03-02', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '360', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(68, '73', '1062', 'NX14JUT', 'WDD1173522N084566', '2014-03-19', 'MERCEDES-BENZ', 'mercedes-benz.png', 'CLA', 'carbody6.png', 'CLA45 AMG 4MATIC', 'WHITE', 100000, 'SALOON', 4, 'PETROL', '7', '', 0, 'Untaxed', 1300, ' ', '8', 165, 2, '', '', '', '2014', '', '', '', '2022-02-24', '', '', '', '', 1300, 0, '13398080010066', 13012, 'no', 'yes', '13', '0', 'yes', '', '', 'CLA45 AMG 4MATIC AUTO', '2022-02-24', '358695142867', '2022-02-24', '2022-02-24', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2014-03-19', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '360', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(69, '62', '1068', 'AE17ZZS', 'WDD2050042R275088', '2017-03-28', 'MERCEDES-BENZ', 'mercedes-benz.png', 'C CLASS', 'carbody6.png', 'C 220 D AMG LINE PREMIUM', 'BLUE', 100000, 'SALOON', 4, 'DIESEL', '9', '', 0, 'Untaxed', 20004, ' ', '1', 117, 2, '', '', '', '2017', '', '', '', '2022-07-07', '', '', '', '', 1500, 0, '65192133896183', 21457, 'no', 'yes', '13', '0', 'yes', '', '', 'C 220 AMG LINE PREMIUM D AUTO', '2022-07-07', '630960841649', '2022-07-07', '2022-07-07', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2017-03-28', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '170', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(70, '179', '1068', 'KN64KTC', 'WDD2050042R012884', '2014-09-30', 'MERCEDES-BENZ', 'mercedes-benz.png', 'C CLASS', 'carbody6.png', 'C220 BLUETEC AMG LINE PREMIUM', 'WHITE', 100000, 'SALOON', 4, 'DIESEL', '7', '', 0, 'Untaxed', 3000, ' ', '1', 113, 2, '', '', '', '2014', '', '', '', '2022-01-29', '', '', '', '', 1300, 0, '65192132327385', 13963, 'no', 'yes', '13', '0', 'yes', '', '', 'C220 AMG LINE PREM BLUETEC A', '2022-01-29', '537491444322', '2022-01-29', '2022-01-29', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2014-09-30', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '170', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(71, '87', '1068', 'KT16LNC', 'WDD2050082R151268', '2016-06-23', 'MERCEDES-BENZ', 'mercedes-benz.png', 'C CLASS', 'carbody6.png', 'C250 D AMG LINE PREMIUM PLUS', 'SILVER', 100000, 'SALOON', 4, 'DIESEL', '7', '', 0, 'Untaxed', 100, ' ', '1', 121, 2, '', '', '', '2016', '', '', '', '2022-10-19', '', '', '', '', 1500, 0, '65192133182839', 18425, 'no', 'yes', '13', '0', 'yes', '', '', 'C250 D AMG LINE PREMIUM + AUTO', '2022-10-19', '147067572090', '2022-10-19', '2022-10-19', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-06-23', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '204', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(72, '13', 'R2116', 'YK66RXS', 'WBA1V72070V725073', '2016-09-13', 'BMW', 'bmw.png', '1 SERIES', 'carbody5.png', '116D M SPORT', 'SILVER', 36245, 'HATCHBACK', 5, 'DIESEL', '8', '', 0, 'Taxed', 300, ' ', '1', 107, 2, '', '', '', '2016', '', '', '', '2022-07-02', '', '', '', '', 15984, 0, '39739659', 19200, 'no', 'yes', '13', '0', 'yes', '', '', '116D M SPORT AUTO', '2022-07-02', '761883802948', '2022-07-02', '2022-07-02', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-09-13', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '114', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(73, '13', '1072', 'YK61JTZ', 'WBAUM72020VN74787', '2011-09-05', 'BMW', 'bmw.png', '1 SERIES', 'carbody2.png', '120D M SPORT', 'SILVER', 102000, 'CONVERTIBLE', 2, 'DIESEL', '6', '', 0, 'Taxed', 8000, ' ', '1', 132, 2, '', '', '', '2011', '', '', '', '2021-12-09', '', '', '', '', 4984, 0, '85637902', 9775, 'no', 'yes', '13', '0', 'yes', '', '', '120D M SPORT', '2021-12-09', '899588467297', '2021-12-09', '2021-12-09', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2011-09-05', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 4, '174', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(74, '151', '1073', 'YM15EGK', 'WF05XXGCC5FY89716', '2015-07-14', 'FORD', 'ford.png', 'FOCUS', 'carbody5.png', 'ST-3 TDCI', 'BLACK', 45000, 'HATCHBACK', 5, 'DIESEL', '6', '', 0, 'Taxed', 2100, ' ', '1', 110, 2, '', '', '', '2015', '', '', '', '2022-08-20', '', '', '', '', 13984, 0, 'FY89716', 15698, 'no', 'yes', '13', '0', 'yes', '', '', 'FOCUS ST-3 TDCI', '2022-08-20', '102423722926', '2022-08-20', '2022-08-20', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-07-14', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '182', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(75, '39', '1074', 'BJ65WWK', 'WF0CXXGAKCFJ06350', '2015-09-30', 'FORD', 'ford.png', 'FIESTA', 'carbody5.png', 'ST-2', 'ORANGE', 75000, 'HATCHBACK', 3, 'PETROL', '6', '', 0, 'Taxed', 1000, ' ', '1', 138, 2, '', '', '', '2015', '', '', '', '2022-10-05', '', '', '', '', 8484, 0, 'FJ06350', 16229, 'no', 'yes', '13', '0', 'yes', '', '', 'FIESTA ST-2 TURBO', '2022-10-05', '552388880960', '2022-10-05', '2022-10-05', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-09-30', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '180', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(76, '0', '1075', 'GJ63WMG', 'WF0DXXGAKDDC63604', '2013-10-31', 'FORD', 'ford.png', 'FIESTA', 'carbody5.png', 'TITANIUM', 'BLACK', 0, 'HATCHBACK', 5, 'PETROL', '5', '', 0, 'Untaxed', 2000, ' ', '1', 99, 1, '', '', '', '2014', '', '', '', '2022-11-26', '', '', '', '', 0, 0, 'DC63604', 12377, 'no', 'yes', '13', '0', 'yes', '', '', 'FIESTA TITANIUM', '2022-11-26', '571419136537', '2022-11-26', '2022-11-26', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2013-10-31', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '123', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(77, '0', '1076', 'WK05YXR', 'SHHEP23505U310531', '2005-05-21', 'HONDA', 'honda.png', 'CIVIC', 'carbody5.png', 'V-TEC SE', 'RED', 0, 'HATCHBACK', 3, 'PETROL', '5', '', 0, 'Taxed', 3500, ' ', '1', 157, 2, '', '', '', '2005', '', '', '', '2022-02-25', '', '', '', '', 0, 0, 'D16V15125453', 6055, 'no', 'yes', '13', '0', 'yes', '', '', 'CIVIC VTEC SE', '2022-02-25', '164929915277', '2022-02-25', '2022-02-25', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2005-05-21', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '108', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(78, '129', '1077', 'SA62HXB', 'SHHFK2760CU024016', '2012-10-30', 'HONDA', 'honda.png', 'CIVIC', 'carbody5.png', 'I-VTEC ES', 'WHITE', 76271, 'HATCHBACK', 5, 'PETROL', '6', '', 0, 'Untaxed', 100, ' ', '1', 143, 2, '', '', '', '2012', '', '', '', '2022-06-22', '', '', '', '', 170, 0, 'R18Z41028595', 11010, 'no', 'yes', '13', '0', 'yes', '', '', 'CIVIC I-VTEC ES', '2022-06-22', '941157550672', '2022-06-22', '2022-06-22', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2012-10-30', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '140', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(79, '61', '1078', 'EN18KYH', 'KMHC851CVJU098718', '2018-06-21', 'HYUNDAI', 'hyundai.png', 'IONIQ', 'carbody5.png', 'PREMIUM', 'BLACK', 48057, 'HATCHBACK', 5, 'PETROL/ELE', '6', '', 0, 'Untaxed', 10000, ' ', '1', 79, 2, '', '', '', '2018', '', '', '', '2021-12-06', '', '', '', '', 15984, 0, 'G4LEJU027499', 29130, 'no', 'yes', '13', '0', 'yes', '', '', 'IONIQ PREMIUM HEV S-A', '2021-12-06', '725299173720', '2021-12-06', '2021-12-06', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2018-06-21', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '139', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(80, '102', '1079', 'LT07GPK', 'SAJAC43R179B19070', '2007-05-23', 'JAGUAR', NULL, 'XK', 'carbody3.png', 'XKR', 'GREY', 71500, 'COUPE', 2, 'PETROL', '6', '', 0, 'Untaxed', 2000, ' ', '1', 294, 4, '', '', '', '2007', '', '', '', '2021-11-11', '', '', '', '', 14984, 0, '07032706599G', 6891, 'no', 'yes', '13', '0', 'yes', '', '', 'XKR 4.2 AUTO', '2021-11-11', '321575922664', '2021-11-11', '2021-11-11', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2007-05-23', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 4, '420', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(81, '52', '1080', 'YC60CKA', 'SALLSAAG3BA274113', '2010-11-17', 'LAND ROVER', 'land-rover.png', 'RANGE ROVER SPORT', 'carbody4.png', 'TDV6 HSE', 'GREY', 88660, 'ESTATE', 5, 'DIESEL', '6', '', 0, 'Taxed', 20000, ' ', '1', 243, 3, '', '', '', '2010', '', '', '', '2022-01-10', '', '', '', '', 11984, 0, '0499938306DT', 9063, 'no', 'yes', '13', '0', 'yes', '', '', 'RANGE ROVER SP HSE TDV6 A', '2022-01-10', '636478641278', '2022-01-10', '2022-01-10', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2010-11-17', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '245', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(82, '183', '1081', 'OV64RKE', 'SALWA2KE4FA603931', '2014-11-25', 'LAND ROVER', 'land-rover.png', 'RANGE ROVER SPORT', 'carbody4.png', 'SDV6 HSE', 'GREY', 111700, 'ESTATE', 5, 'DIESEL', '8', '', 0, 'Untaxed', 30000, ' ', '1', 199, 3, '', '', '', '2014', '', '', '', '2022-01-26', '', '', '', '', 23984, 0, '0874602306DT', 14263, 'no', 'yes', '13', '0', 'yes', '', '', 'RANGE ROVER SPORT HSE SDV6 A', '2022-01-26', '654532939963', '2022-01-26', '2022-01-26', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2014-11-25', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '288', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(83, '112', '1082', 'HG62DOA', 'SALLSAAG5DA783696', '2012-10-31', 'LAND ROVER', 'land-rover.png', 'RANGE ROVER SPORT', 'carbody4.png', 'SDV6 HSE', 'BLACK', 82000, 'ESTATE', 5, 'DIESEL', '6', '', 0, 'Untaxed', 18000, ' ', '1', 230, 3, '', '', '', '2012', '', '', '', '2022-04-22', '', '', '', '', 14984, 0, '0680564306DT', 11013, 'no', 'yes', '13', '0', 'yes', '', '', 'RANGE ROVER SPORT HSE SDV6 A', '2022-04-22', '982098989635', '2022-04-22', '2022-04-22', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2012-10-31', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '255', '', '', 'CARS', 'normal', '1 Speed Au', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(84, '0', '1083', 'LX65OXV', 'SALVA2ANXGH084860', '2015-09-01', 'LAND ROVER', 'land-rover.png', 'RANGE ROVER EVOQUE', 'carbody4.png', 'TD4 HSE DYNAMIC', 'BLACK', 100000, 'ESTATE', 5, 'DIESEL', '9', '', 0, 'Untaxed', 14000, ' ', '1', 134, 2, '', '', '', '2015', '', '', '', '2022-05-07', '', '', '', '', 7400, 0, '150520W0251204DT', 16022, 'no', 'yes', '13', '0', 'yes', '', '', 'R ROVER EVOQUE HSE DYN TD4 A', '2022-05-07', '390423438363', '2022-05-07', '2022-05-07', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-09-01', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '177', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(85, '156', '1084', 'NL65KMO', 'SALVA2AN9GH085174', '2015-10-03', 'LAND ROVER', 'land-rover.png', 'RANGE ROVER EVOQUE', 'carbody4.png', 'TD4 HSE DYNAMIC', 'WHITE', 100000, 'ESTATE', 5, 'DIESEL', '9', '', 0, 'Untaxed', 3000, ' ', '1', 134, 2, '', '', '', '2015', '', '', '', '2022-10-16', '', '', '', '', 9650, 0, '150518W0242204DT', 16251, 'no', 'yes', '13', '0', 'yes', '', '', 'R ROVER EVOQUE HSE DYN TD4 A', '2022-10-16', '266241144264', '2022-10-16', '2022-10-16', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-10-03', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '177', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(86, '57', '2733', 'WP16TFJ', 'WDD2050472F373374', '0000-00-00', 'MERCEDES-BENZ', 'mercedes-benz.png', 'BENZ', 'carbody6.png', '2.0 C350 E SPORT PREMIUM PLUS 4d 208 BHP   ', 'WHITE', 74127, 'SALOON', 4, 'Hyb Elec', 'Auto', 'N', 0, 'Untaxed', 18984, ' ', '1', 48, 2, '', '', '', '2018', '', '', '', '2022-06-03', '', '', '', '', 18984, 0, '27492030677370', 18892, 'no', 'yes', '13', '0', 'yes', '', '', 'C350 SPORT PREMIUM + E AUTO', '2022-06-03', '778038928530', '2022-06-03', '2022-06-03', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-08-12', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '274', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(105, '2', '1104', 'KN14VYO', 'WDD2220322A063674', '2014-03-21', 'MERCEDES-BENZ', 'mercedes-benz.png', 'S CLASS', 'carbody6.png', 'S350 BLUETEC SE LINE', 'SILVER', 100000, 'SALOON', 4, 'DIESEL', '7', '', 0, 'Untaxed', 1200, ' ', '1', 146, 3, '', '', '', '2017', '', '', '', '2022-02-15', '', '', '', '', 9200, 0, '64286141564938', 13021, 'no', 'yes', '13', '0', 'yes', '', '', 'S350 SE LINE BLUETEC AUTO', '2022-02-15', '457535200829', '2022-02-15', '2022-02-15', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2014-03-21', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '258', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(106, '164', '1105', 'KW14YYZ', 'WDD2221322A098723', '2014-08-06', 'MERCEDES-BENZ', 'mercedes-benz.png', 'S CLASS', 'carbody6.png', 'S350 BLUETEC L AMG LINE', 'BLACK', 100000, 'SALOON', 4, 'DIESEL', '7', '', 0, 'Untaxed', 15000, ' ', '1', 154, 3, '', '', '', '2014', '', '', '', '2022-11-04', '', '', '', '', 47000, 0, '64286141606619', 13680, 'no', 'yes', '13', '0', 'yes', '', '', 'S350 L AMG LINE BLUETEC AUTO', '2022-11-04', '306204995444', '2022-11-04', '2022-11-04', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2014-08-06', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '258', '', '', 'CARS', 'normal', 'Manual', '', '', '0000-00-00', '', '', '', '', '', '', 0);
INSERT INTO `vehicle` (`veh_id`, `key_tag`, `stock_no`, `reg_no`, `chasis`, `regdate`, `make`, `make_image`, `model`, `model_image`, `varient`, `colour`, `mileage`, `body`, `doors`, `fuel`, `gbox`, `FSH`, `RFL`, `MOT`, `price`, `status`, `location`, `co2Emissions`, `engineCapacity`, `markedForExport`, `motStatus`, `typeApproval`, `yearOfManufacture`, `taxDueDate`, `taxStatus`, `dateOfLastV5CIssued`, `motExpiryDate`, `wheelplan`, `monthOfFirstRegistration`, `regletter`, `privplate`, `retailprice`, `vehiclecost`, `engine_no`, `amileage`, `import`, `hidefin`, `insgroup`, `formerowner`, `hideformer`, `ownertype`, `grading`, `description`, `currentmot`, `motnumber`, `nextmot`, `nextservice`, `mortable`, `radiocode`, `alarmcode`, `igkeyno`, `doorkeyno`, `sparekey`, `vs`, `vsno`, `Tax`, `HPI`, `milescheck`, `sercheck`, `purdate`, `delerpi`, `purprice`, `supinvno`, `dpayment`, `payref`, `paydate`, `paytype`, `finance`, `agreeno`, `fincompny`, `amount`, `fpayref`, `fpaydate`, `fpaytype`, `pexfin`, `pexagreementno`, `pexfinco`, `pexamnt`, `pexsettldate`, `pexpayref`, `pexpaydate`, `pexpaytype`, `source`, `suplier`, `buyer`, `sudetails`, `stockcomments`, `retdate`, `salesorreturn`, `salestype`, `onsite`, `stoprem`, `stockplan`, `stockplanamount`, `stockplnsupp`, `stockplanstartdate`, `history`, `warranty`, `engtype`, `servicecomments`, `comments`, `bodytype`, `trimcolor`, `trimtype`, `metalic`, `youtubid`, `prestige`, `noofseats`, `bhp`, `hiderfl`, `nox`, `decatgory`, `webdisplay`, `transmission`, `margin_in`, `vat`, `sold_date`, `sold_by`, `invoice_no`, `v5`, `v5num`, `unsold_reason`, `is_exp_assign`, `deposit_taken`) VALUES
(107, '138', '1106', 'KM15VKL', 'WDD2221322A181569', '2015-04-13', 'MERCEDES-BENZ', 'mercedes-benz.png', 'S CLASS', 'carbody6.png', 'S350 BLUETEC L SE LINE', 'BLACK', 100000, 'SALOON', 4, 'DIESEL', '7', '', 0, 'Untaxed', 1500, ' ', '1', 148, 3, '', '', '', '2015', '', '', '', '2022-08-11', '', '', '', '', 48000, 0, '64286141700826', 15107, 'no', 'yes', '13', '0', 'yes', '', '', 'S350 L SE LINE BLUETEC AUTO', '2022-08-11', '861547631652', '2022-08-11', '2022-08-11', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-04-13', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '258', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(108, '0', '1107', 'T24RPL', 'WDC1660242A247135', '2014-01-28', 'MERCEDES-BENZ', 'mercedes-benz.png', 'M-CLASS', 'carbody4.png', 'ML350 BLUETEC SE', 'BLACK', 100000, 'ESTATE', 5, 'DIESEL', '7', '', 0, 'Untaxed', 15000, ' ', '1', 189, 3, '', '', '', '2014', '', '', '', '2022-06-28', '', '', '', '', 52000, 0, '64282641444370', 12780, 'no', 'yes', '13', '0', 'yes', '', '', 'ML350 SE BLUETEC AUTO', '2022-06-28', '477382137929', '2022-06-28', '2022-06-28', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2014-01-28', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '258', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(109, '180', '1108', 'BK15FHD', 'WDC1660742A504638', '2015-03-12', 'MERCEDES-BENZ', 'mercedes-benz.png', 'M-CLASS', 'carbody4.png', 'ML63 AMG PREMIUM', 'BLACK', 100000, 'ESTATE', 5, 'PETROL', '7', '', 0, 'Untaxed', 1500, ' ', '1', 276, 6, '', '', '', '2015', '', '', '', '2022-08-19', '', '', '', '', 65000, 0, '15798260056816', 14916, 'no', 'yes', '13', '0', 'yes', '', '', 'ML63 AMG PREMIUM AUTO', '2022-08-19', '385714909947', '2022-08-19', '2022-08-19', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-03-12', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '525', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(110, '93', '1109', 'OU66PVV', 'WDC2539052F142911', '2016-09-10', 'MERCEDES-BENZ', 'mercedes-benz.png', 'GLC-CLASS', 'carbody4.png', 'GLC 220 D 4MATIC SE EXECUTIVE', 'GREY', 100000, 'ESTATE', 5, 'DIESEL', '9', '', 0, 'Untaxed', 16574, ' ', '1', 129, 2, '', '', '', '2019', '', '', '', '2022-10-14', '', '', '', '', 66000, 0, '65192133678896', 19170, 'no', 'yes', '13', '0', 'yes', '', '', 'GLC 220 D 4MATIC SE EXEC AUTO', '2022-10-14', '912883442120', '2022-10-14', '2022-10-14', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-09-10', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '168', '', '', 'CARS', 'normal', 'Manual', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(111, '170', '1110', 'DC66EZJ', 'WDC2533052F167812', '2016-11-21', 'MERCEDES-BENZ', 'mercedes-benz.png', 'GLC-CLASS', 'carbody3.png', 'GLC 220 D 4MATIC AMG LINE PREMIUM', 'BLUE', 100000, 'COUPE', 4, 'DIESEL', '9', '', 0, 'Untaxed', 1400, ' ', '1', 143, 2, '', '', '', '2016', '', '', '', '2022-01-06', '', '', '', '', 54000, 0, '65192133755922', 19912, 'no', 'yes', '13', '0', 'yes', '', '', 'GLC 220 D 4M AMG LINE PREM A', '2022-01-06', '816296006073', '2022-01-06', '2022-01-06', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-11-21', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '168', '', '', 'CARS', 'normal', 'Manual', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(112, '91', '1111', 'KU11XXL', 'WDD2073032F140683', '2011-08-30', 'MERCEDES-BENZ', 'mercedes-benz.png', 'E CLASS', 'carbody3.png', 'E250 CDI BLUEEFFICIENCY SE EDITION 125', 'SILVER', 100000, 'COUPE', 2, 'DIESEL', '7', '', 0, 'Untaxed', 1500, ' ', '1', 134, 2, '', '', '', '2011', '', '', '', '2021-09-28', '', '', '', '', 12000, 0, '65191130738254', 9759, 'no', 'yes', '13', '0', 'yes', '', '', 'E250 SE ED 125 CDI BLUEEF-CY A', '2021-09-28', '257503179393', '2021-09-28', '2021-09-28', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2011-08-30', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 4, '204', '', '', 'CARS', 'normal', 'Manual', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(113, '16', '1112', 'LL14FSK', 'WDD2120032B017533', '2014-07-01', 'MERCEDES-BENZ', 'mercedes-benz.png', 'E CLASS', 'carbody6.png', 'E250 CDI AMG SPORT', 'SILVER', 100000, 'SALOON', 4, 'DIESEL', '7', '', 0, 'Taxed', 11400, ' ', '1', 134, 2, '', '', '', '2014', '', '', '', '2021-09-17', '', '', '', '', 22000, 0, '65192432209516', 13503, 'no', 'yes', '13', '0', 'yes', '', '', 'E250 AMG SPORT CDI AUTO', '2021-09-17', '532479784160', '2021-09-17', '2021-09-17', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2014-07-01', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '201', '', '', 'CARS', 'normal', 'Manual', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(114, '20', '1113', 'MV67OAC', 'WDD2383662F032770', '2017-10-27', 'MERCEDES-BENZ', 'mercedes-benz.png', 'E CLASS', 'carbody3.png', 'E 400 4MATIC AMG LINE PREMIUM PLUS', 'BLACK', 100000, 'COUPE', 2, 'PETROL', '9', '', 0, 'Untaxed', 1498, ' ', '1', 189, 3, '', '', '', '2017', '', '', '', '2022-11-11', '', '', '', '', 9900, 0, '27682330738008', 24463, 'no', 'yes', '13', '0', 'yes', '', '', 'E 400 AMG LINE PREMIUM + 4M A', '2022-11-11', '289076239628', '2022-11-11', '2022-11-11', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2017-10-27', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 4, '328', '', '', 'CARS', 'normal', 'Manual', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(115, '40', '1114', 'PO16YUX', 'WDD2130042A050140', '2016-06-30', 'MERCEDES-BENZ', 'mercedes-benz.png', 'E CLASS', 'carbody6.png', 'E 220 D AMG LINE', 'SILVER', 100000, 'SALOON', 4, 'DIESEL', '9', '', 0, 'Untaxed', 15600, ' ', '1', 112, 2, '', '', '', '2018', '', '', '', '2022-10-10', '', '', '', '', 8800, 0, '65492080025285', 18490, 'no', 'yes', '13', '0', 'yes', '', '', 'E 220 D AMG LINE AUTO', '2022-10-10', '306582897675', '2022-10-10', '2022-10-10', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-06-30', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '191', '', '', 'CARS', 'normal', 'Manual', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(116, '176', 'R2134', 'WR66PCV', 'WDD2050642F470388', '2016-11-23', 'MERCEDES-BENZ', 'mercedes-benz.png', 'C 43 AMG', 'carbody6.png', '3.0 AMG C 43 4MATIC PREMIUM PLUS 4d 362 BHP   ', 'GREY', 64394, 'SALOON', 4, 'PETROL', 'Auto', 'N', 275, 'Untaxed', 29484, ' ', '1', 183, 3, '', '', '', '2019', '', '', '', '2021-11-22', '', '', '', '', 29484, 0, '27682330505558', 19934, 'no', 'yes', '13', '0', 'yes', '', '', 'AMG C 43 PREMIUM + 4MATIC A', '2021-11-22', '988837661811', '2021-11-22', '2021-11-22', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-11-23', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '395', '', '', 'CARS', 'normal', 'Semi Auto', '', '', '0000-00-00', '', '', '', '', '', 'Assigned', 0),
(117, '0', '2516', 'AO16XEH', 'WDD1760522J469945', '2016-04-28', 'MERCEDES-BENZ', 'mercedes-benz.png', 'A45', 'carbody5.png', '2.0 AMG A 45 4MATIC PREMIUM 5d AUTO 375 BHP   ', 'BLACK', 56852, 'HATCHBACK', 5, 'PETROL', '7', 'N', 210, 'Taxed', 25984, ' ', '1', 162, 2, '', '', '', '2019', '', '', '', '2022-08-17', '', '', '', '', 25984, 333, '13398080066278', 17927, 'no', 'yes', '13', '0', 'yes', '', '', 'AMG A 45 4MATIC PREMIUM AUTO', '2022-08-17', '816626190379', '2022-08-17', '2022-08-17', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-04-28', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '375', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(118, '94', '1115', 'SG18OFR', 'WBS1J52080VD43441', '2018-03-11', 'BMW', 'bmw.png', '2 SERIES', 'carbody3.png', 'M2', 'YELLOW', 100000, 'COUPE', 2, 'PETROL', '7', '', 0, 'Untaxed', 33484, ' ', '1', 185, 3, '', '', '', '2019', '', '', '', '2022-04-15', '', '', '', '', 33484, 33484, '02525170', 26977, 'no', 'yes', '13', '0', 'yes', '', '', 'M2 AUTO', '2022-04-15', '738906960042', '2022-04-15', '2022-04-15', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2018-03-11', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 4, '365', '', '', 'BIKE', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(119, '118', '1117', 'KW65TNJ', 'WDD1760422V138224', '2016-02-27', 'MERCEDES-BENZ', 'mercedes-benz.png', 'A-CLASS', 'carbody5.png', 'A 180 SPORT 5d 121 BHP   ', 'BLUE', 61000, 'HATCHBACK', 5, 'PETROL', '7', '', 0, 'Untaxed', 0, ' ', '1', 124, 2, '', '', '', '2016', '', '', '', '2022-05-20', '', '', '', '', 14484, 333, '27091030930883', 17405, 'no', 'yes', '13', '0', 'yes', '', '', 'A 180 SPORT AUTO', '2022-05-20', '799938788877', '2022-05-20', '2022-05-20', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-02-27', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '121', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(120, '48', '1119', 'PJ18YMO', 'WDD1770872J002446', '2018-05-22', 'MERCEDES-BENZ', 'mercedes-benz.png', 'A-CLASS', 'carbody5.png', 'A 200 AMG LINE PREMIUM', 'BLACK', 100000, 'HATCHBACK', 5, 'PETROL', '7', '', 155, 'Untaxed', 0, ' ', '1', 123, 1, '', '', '', '2019', '', '', '', '2022-05-21', '', '', '', '', 23984, 333, '28291480002922', 28471, 'no', 'yes', '13', '0', 'yes', '', '', 'A 200 AMG LINE PREMIUM AUTO', '2022-05-21', '304304171537', '2022-05-21', '2022-05-21', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2018-05-22', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '160', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(122, '21', '1119', 'MA11APA', 'WBA7D020X0G510781', '2017-09-14', 'BMW', 'bmw.png', '7 SERIES', 'carbody6.png', '740E M SPORT', 'BLACK', 100000, 'SALOON', 4, 'PETROL/ELE', '8', '', 0, 'Taxed', 32984, ' ', '1', 50, 2, '', '', '', '2017', '', '', '', '2022-09-13', '', '', '', '', 32984, 32984, '23385050', 23778, 'no', 'yes', '13', '0', 'yes', '', '', '740E M SPORT AUTO', '2022-09-13', '968771676605', '2022-09-13', '2022-09-13', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2017-09-14', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '321', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(123, '0', '1122', 'PG16JUA', 'WBA7C42000G599500', '2016-05-16', 'BMW', 'bmw.png', '7 SERIES', 'carbody6.png', '730D XDRIVE M SPORT', 'WHITE', 100000, 'SALOON', 4, 'DIESEL', '8', '', 0, 'Untaxed', 28984, ' ', '1', 137, 3, '', '', '', '2016', '', '', '', '2022-11-29', '', '', '', '', 28984, 28984, '68019588', 18087, 'no', 'yes', '13', '0', 'yes', '', '', '730D XDRIVE M SPORT AUTO', '2022-11-29', '447616547255', '2022-11-29', '2022-11-29', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-05-16', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '261', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(124, '128', '1123', 'RF66RFE', 'WBA7C22080G766173', '2016-11-30', 'BMW', 'bmw.png', '7 SERIES', 'carbody6.png', '730D M SPORT', 'BLACK', 100000, 'SALOON', 4, 'DIESEL', '8', '', 0, 'Untaxed', 25984, ' ', '1', 129, 3, '', '', '', '2016', '', '', '', '2022-01-29', '', '', '', '', 25984, 25984, '58399764', 20065, 'no', 'yes', '13', '0', 'yes', '', '', '730D M SPORT AUTO', '2022-01-29', '457386389012', '2022-01-29', '2022-01-29', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-11-30', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '261', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(125, '67', '1122', 'YP16TFK', 'WDD1760082J474807', '2016-04-29', 'MERCEDES-BENZ', 'mercedes-benz.png', 'A-CLASS', 'carbody5.png', 'A 200 D AMG LINE EXECUTIVE', 'GREY', 95533, 'HATCHBACK', 5, 'DIESEL', '7', '', 20, 'Untaxed', 0, ' ', '1', 103, 2, '', '', '', '2017', '', '', '', '2022-07-05', '', '', '', '', 13984, 3, '65193033466486', 17936, 'no', 'yes', '13', '0', 'yes', '', '', 'A 200 D AMG LINE EXECUTIVE A', '2022-07-05', '869685142847', '2022-07-05', '2022-07-05', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-04-29', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '134', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(126, '25', '1125', 'AU67BYK', 'WBA7C62080G264349', '2017-09-15', 'BMW', 'bmw.png', '7 SERIES', 'carbody6.png', '740D XDRIVE M SPORT', 'GREY', 100000, 'SALOON', 4, 'DIESEL', '8', '', 0, 'Taxed', 29984, ' ', '1', 139, 3, '', '', '', '2017', '', '', '', '2022-03-03', '', '', '', '', 29984, 29984, '55685039', 23794, 'no', 'yes', '13', '0', 'yes', '', '', '740D XDRIVE M SPORT AUTO', '2022-03-03', '103496147247', '2022-03-03', '2022-03-03', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2017-09-15', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '315', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(128, '33', '1125', 'LP17JYK', 'WMWLN320302F63917', '2017-06-28', 'MINI', 'mitsubishi.png', 'MINI CLUBMAN', 'carbody4.png', 'COOPER BLACK', 'GREY', 25714, 'ESTATE', 5, 'PETROL', '6', '', 155, 'Untaxed', 0, ' ', '1', 121, 2, '', '', '', '2019', '', '', '', '2021-12-27', '', '', '', '', 13984, 13984, 'F981H519', 22656, 'no', 'yes', '13', '0', 'yes', '', '', 'CLUBMAN COOPER BLACK', '2021-12-27', '713312535619', '2021-12-27', '2021-12-27', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2017-06-28', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '134', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(129, '182', '1128', 'BJ62LHV', 'WBA6A62080DG65339', '2012-10-15', 'BMW', 'bmw.png', '6 SERIES', 'carbody3.png', '640D M SPORT GRAN COUPE', 'BLUE', 100000, 'COUPE', 4, 'DIESEL', '8', '', 0, 'Untaxed', 13984, ' ', '1', 149, 3, '', '', '', '2012', '', '', '', '2022-09-03', '', '', '', '', 13984, 13984, '33198249', 10964, 'no', 'yes', '13', '0', 'yes', '', '', '640D M SPORT GRAN COUPE AUTO', '2022-09-03', '719591150327', '2022-09-03', '2022-09-03', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2012-10-15', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '308', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(130, '161', '1128', 'SW65HBH', 'SJNFEAJ11U1581547', '2015-12-18', 'NISSAN', 'nissan.png', 'QASHQAI', 'carbody5.png', 'N-TEC DIG-T XTRONIC', 'BEIGE', 49312, 'HATCHBACK', 5, 'PETROL', '1', '', 0, 'Untaxed', 0, ' ', '1', 133, 1, '', '', '', '2021', '', '', '', '2021-12-22', '', '', '', '', 14484, 14484, '235787A', 16851, 'no', 'yes', '13', '0', 'yes', '', '', 'QASHQAI N-TEC DIG-T CVT', '2021-12-22', '578513641075', '2021-12-22', '2021-12-22', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-12-18', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '113', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(131, '97', '1129', 'CV13URX', 'WBAXA32090DY38415', '2013-06-14', 'BMW', 'bmw.png', '5 SERIES', 'carbody6.png', '525D M SPORT', 'BLACK', 100000, 'SALOON', 4, 'DIESEL', '8', '', 0, 'Untaxed', 10984, ' ', '1', 132, 2, '', '', '', '2013', '', '', '', '2022-09-06', '', '', '', '', 10984, 10984, '94068523', 11831, 'no', 'yes', '13', '0', 'yes', '', '', '525D M SPORT AUTO', '2022-09-06', '786755740061', '2022-09-06', '2022-09-06', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2013-06-14', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '214', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(132, '131', '1131', 'FSX38', 'WBAFW120X0C847230', '2012-06-29', 'BMW', 'bmw.png', '5 SERIES', 'carbody6.png', '520D M SPORT', 'GREY', 100000, 'SALOON', 4, 'DIESEL', '8', '', 0, 'Untaxed', 9984, ' ', '1', 129, 2, '', '', '', '2012', '', '', '', '2022-10-29', '', '', '', '', 9984, 9984, '86688176', 10625, 'no', 'yes', '13', '0', 'yes', '', '', '520D M SPORT AUTO', '2022-10-29', '871489388611', '2022-10-29', '2022-10-29', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2012-06-29', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '181', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(133, '57', '1132', 'NL63GJV', 'WBA5C32030D197585', '2013-09-27', 'BMW', 'bmw.png', '5 SERIES', 'carbody6.png', '520D M SPORT', 'GREY', 100000, 'SALOON', 4, 'DIESEL', '8', '', 0, 'Untaxed', 10984, ' ', '1', 129, 2, '', '', '', '2013', '', '', '', '2022-07-04', '', '', '', '', 10984, 10984, '89428589', 12240, 'no', 'yes', '13', '0', 'yes', '', '', '520D M SPORT AUTO', '2022-07-04', '121638736221', '2022-07-04', '2022-07-04', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2013-09-27', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '181', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(134, '6', '1133', 'NX18VVC', 'WBAJA120X0WC09151', '2018-03-06', 'BMW', 'bmw.png', '5 SERIES', 'carbody2.png', '520I M SPORT', 'GREY', 100000, 'CONVERTIBLE', 4, 'PETROL', '8', '', 0, 'Untaxed', 23784, ' ', '1', 129, 2, '', '', '', '2009', '', '', '', '2022-05-31', '', '', '', '', 27434, 23784, '19985235', 100000, 'no', 'yes', '13', '0', 'yes', '', '', '520I M SPORT AUTO', '2024-05-31', '814385019342', '2022-05-31', '2022-05-31', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2018-03-06', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '181', '', '', 'CARA', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 1),
(135, '142', '1134', 'YH64ZYX', 'WBA5K12070D342070', '2014-09-30', 'BMW', 'bmw.png', '5 SERIES', 'carbody4.png', '530D M SPORT TOURING', 'BLACK', 100000, 'ESTATE', 5, 'DIESEL', '8', '', 0, 'Untaxed', 15894, ' ', '1', 149, 3, '', '', '', '2014', '', '', '', '2022-02-25', '', '', '', '', 15894, 15894, '34218932', 13963, 'no', 'yes', '13', '0', 'yes', '', '', '530D M SPORT AUTO', '2022-02-25', '458578921517', '2022-02-25', '2022-02-25', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2014-09-30', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '254', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(136, '35', '1135', 'YE68VOJ', 'WBAJA92090BN76223', '2018-10-26', 'BMW', 'bmw.png', '5 SERIES', 'carbody6.png', '530E M SPORT', 'BLUE', 100000, 'SALOON', 4, 'PETROL/ELE', '8', '', 0, 'Untaxed', 27484, ' ', '7', 49, 2, '', '', '', '2018', '', '', '', '2022-10-25', '', '', '', '', 27484, 27484, '11825492', 32358, 'no', 'yes', '13', '0', 'yes', '', '', '530E M SPORT AUTO', '2022-10-25', '818574645178', '2022-10-25', '2022-10-25', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2018-10-26', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '248', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(137, '9', '1136', 'YK18WJS', 'WBAJA92080BN72812', '2018-07-27', 'BMW', 'bmw.png', '5 SERIES', 'carbody6.png', '530E M SPORT', 'BLACK', 100000, 'SALOON', 4, 'PETROL/ELE', '8', '', 0, 'Taxed', 23484, ' ', '1', 46, 2, '', '', '', '2018', '', '', '', '2022-07-04', '', '', '', '', 23484, 23485, '17275318', 29991, 'no', 'yes', '13', '0', 'yes', '', '', '530E M SPORT AUTO', '2022-07-04', '873335393453', '2022-07-04', '2022-07-04', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2018-07-27', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '248', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 1),
(138, '133', '1137', 'GJ65EUO', 'WBA4A520X0GT40611', '2015-09-29', 'BMW', 'bmw.png', '4 SERIES', 'carbody3.png', '428I M SPORT GRAN COUPE', 'BLACK', 100000, 'COUPE', 4, 'PETROL', '8', '', 0, 'Untaxed', 18984, ' ', '1', 149, 2, '', '', '', '2015', '', '', '', '2022-09-28', '', '', '', '', 18984, 18984, 'A3981241', 16222, 'no', 'yes', '13', '0', 'yes', '', '', '428I GRAN COUPE M SPORT AUTO', '2022-09-28', '298392632475', '2022-09-28', '2022-09-28', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-09-29', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '241', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(139, '174', '1138', 'MK16WFV', 'WBA3U52070P659175', '2016-03-11', 'BMW', 'bmw.png', '4 SERIES', 'carbody2.png', '430D M SPORT', 'WHITE', 100000, 'CONVERTIBLE', 2, 'DIESEL', '8', '', 0, 'Untaxed', 20984, ' ', '1', 144, 3, '', '', '', '2016', '', '', '', '2022-03-08', '', '', '', '', 20984, 20984, '67389518', 17522, 'no', 'yes', '13', '0', 'yes', '', '', '430D M SPORT AUTO', '2022-03-08', '411917951833', '2022-03-08', '2022-03-08', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-03-11', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 4, '254', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(140, '175', '1139', 'FH66SVK', 'WBA4G12010G746137', '2016-12-16', 'BMW', 'bmw.png', '4 SERIES', 'carbody3.png', '435D XDRIVE M SPORT GRAN COUPE', 'GREY', 100000, 'COUPE', 4, 'DIESEL', '8', '', 0, 'Untaxed', 18984, ' ', '1', 150, 3, '', '', '', '2016', '', '', '', '2021-12-15', '', '', '', '', 18984, 18984, '50719813', 20244, 'no', 'yes', '13', '0', 'yes', '', '', '435D XDRIVE GRANCOUPE MSPORT A', '2021-12-15', '737063777544', '2021-12-15', '2021-12-15', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-12-16', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '308', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(141, '159', '1140', 'KP16ODN', 'WBA3T32080P783771', '2016-03-30', 'BMW', 'bmw.png', '4 SERIES', 'carbody2.png', '435I M SPORT', 'WHITE', 100000, 'CONVERTIBLE', 2, 'PETROL', '8', '', 0, 'Untaxed', 22484, ' ', '1', 179, 3, '', '', '', '2016', '', '', '', '2022-01-10', '', '', '', '', 22484, 22484, '00089315', 17675, 'no', 'yes', '13', '0', 'yes', '', '', '435I M SPORT AUTO', '2022-01-10', '442483872851', '2022-01-10', '2022-01-10', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-03-30', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 4, '301', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(143, '143', '1142', 'YJ15VTC', 'WBA3Z520X0D697311', '2015-04-13', 'BMW', 'bmw.png', '3 SERIES', 'carbody5.png', '330D XDRIVE M SPORT GRAN TURISMO', 'GREY', 100000, 'HATCHBACK', 5, 'DIESEL', '8', '', 0, 'Untaxed', 13484, ' ', '1', 143, 3, '', '', '', '2015', '', '', '', '2022-05-17', '', '', '', '', 13484, 13484, '67479173', 15107, 'no', 'yes', '13', '0', 'yes', '', '', '330D XDRIVE M SPORT GT AUTO', '2022-05-17', '840577146107', '2022-05-17', '2022-05-17', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-04-13', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '254', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(144, '71', '1143', 'YH15UOK', 'WBA3Y32030D974453', '2015-05-11', 'BMW', 'bmw.png', '3 SERIES', 'carbody5.png', '320D M SPORT GRAN TURISMO', 'GREY', 100000, 'HATCHBACK', 5, 'DIESEL', '8', '', 0, 'Untaxed', 15784, ' ', '1', 130, 2, '', '', '', '2015', '', '', '', '2022-03-09', '', '', '', '', 15784, 15784, '75739209', 15284, 'no', 'yes', '13', '0', 'yes', '', '', '320D M SPORT GT AUTO', '2022-03-09', '741894387568', '2022-03-09', '2022-03-09', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-05-11', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '181', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(145, '8', '1144', 'BU16AHG', 'WBA8F72080K720848', '2016-03-01', 'BMW', 'bmw.png', '3 SERIES', 'carbody6.png', '335D XDRIVE M SPORT', 'BLUE', 100000, 'SALOON', 4, 'DIESEL', '8', '', 0, 'Untaxed', 20984, ' ', '1', 145, 3, '', '', '', '2016', '', '', '', '2022-03-19', '', '', '', '', 20984, 20984, '62569498', 17439, 'no', 'yes', '13', '0', 'yes', '', '', '335D XDRIVE M SPORT AUTO', '2022-03-19', '161857258597', '2022-03-19', '2022-03-19', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-03-01', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '308', '', '', 'CARS', 'normal', 'Semi Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(146, '56', '1145', 'GY60OJH', 'WBAPG120X0A913613', '2010-11-09', 'BMW', 'bmw.png', '3 SERIES', 'carbody6.png', '318D EXCLUSIVE EDITION', 'BLACK', 100000, 'SALOON', 4, 'DIESEL', '6', '', 0, 'Untaxed', 2484, ' ', '1', 119, 2, '', '', '', '2018', '', '', '', '2021-12-02', '', '', '', '', 2484, 2484, '72957607', 9045, 'no', 'yes', '13', '0', 'yes', '', '', '318D EXCLUSIVE EDITION', '2021-12-02', '927693474610', '2021-12-02', '2021-12-02', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2010-11-09', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '140', '', '', 'CARS', 'normal', 'Semi Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(147, '4', '1146', 'YK14AYV', 'WBA3E52010F815911', '2014-03-07', 'BMW', 'bmw.png', '3 SERIES', 'carbody6.png', '330D M SPORT', 'BLUE', 100000, 'SALOON', 4, 'DIESEL', '8', '', 0, 'Untaxed', 14984, ' ', '1', 129, 3, '', '', '', '2014', '', '', '', '2022-02-17', '', '', '', '', 14984, 14984, '34038729', 12957, 'no', 'yes', '13', '0', 'yes', '', '', '330D M SPORT AUTO', '2022-02-17', '536725863713', '2022-02-17', '2022-02-17', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2014-03-07', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '254', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(148, '134', '1147', 'GU15RYJ', 'WBA2C12060V373210', '2015-03-13', 'BMW', 'bmw.png', '2 SERIES', 'carbody5.png', '218D M SPORT ACTIVE TOURER', 'BLACK', 100000, 'HATCHBACK', 5, 'DIESEL', '8', '', 0, 'Untaxed', 14484, ' ', '1', 114, 2, '', '', '', '2015', '', '', '', '2022-03-16', '', '', '', '', 14484, 14484, '79319078', 14922, 'no', 'yes', '13', '0', 'yes', '', '', '218D M SPORT AUTO', '2022-03-16', '692225094360', '2022-03-16', '2022-03-16', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-03-13', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '148', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(149, '29', '1148', 'AK65JUA', 'WBA2G72050V652879', '2015-11-11', 'BMW', 'bmw.png', '2 SERIES', 'carbody3.png', '220D M SPORT', 'BLUE', 100000, 'COUPE', 2, 'DIESEL', '8', '', 0, 'Untaxed', 12484, ' ', '1', 107, 2, '', '', '', '2019', '', '', '', '2022-09-29', '', '', '', '', 12484, 12484, '73199398', 16530, 'no', 'yes', '13', '0', 'yes', '', '', '220D M SPORT AUTO', '2022-09-29', '365891288435', '2022-09-29', '2022-09-29', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-11-11', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 4, '188', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(150, '104', '1149', 'HV18OEG', 'WBA2A52030V495911', '2018-03-31', 'BMW', 'bmw.png', '2 SERIES', 'carbody5.png', '220D SPORT ACTIVE TOURER', 'BLACK', 27361, 'HATCHBACK', 5, 'DIESEL', '8', '', 0, 'Untaxed', 18484, ' ', '1', 130, 2, '', '', '', '2018', '', '', '', '2022-03-30', '', '', '', '', 18484, 18484, 'F662H728', 27361, 'no', 'yes', '13', '0', 'yes', '', '', '220D SPORT AUTO', '2022-03-30', '101191283176', '2022-03-30', '2022-03-30', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2018-03-31', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '188', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(151, '43', '1150', 'YK10LRF', 'WBAUH52020E342828', '2010-03-22', 'BMW', 'bmw.png', '1 SERIES', 'carbody5.png', '116D M SPORT', 'GREY', 100000, 'HATCHBACK', 5, 'DIESEL', '6', '', 0, 'Untaxed', 1984, ' ', '1', 118, 2, '', '', '', '2010', '', '', '', '2022-10-04', '', '', '', '', 1984, 1984, '90737360', 8564, 'no', 'yes', '13', '0', 'yes', '', '', '116D M SPORT', '2022-10-04', '604076165010', '2022-10-04', '2022-10-04', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2010-03-22', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '114', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(152, '60', '1151', 'D3LYK', 'WBAUR32010VF29613', '2010-05-28', 'BMW', 'bmw.png', '1 SERIES', 'carbody3.png', '120D M SPORT', 'RED', 100000, 'COUPE', 2, 'DIESEL', '6', '', 0, 'Untaxed', 3984, ' ', '1', 140, 2, '', '', '', '2010', '', '', '', '2021-10-12', '', '', '', '', 3984, 3984, '89197421', 8698, 'no', 'yes', '13', '0', 'yes', '', '', '120D M SPORT AUTO', '2021-10-12', '592827525870', '2021-10-12', '2021-10-12', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2010-05-28', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 4, '174', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(153, '', '1152', 'FA18FZZ', 'SJNFBAF15U8002839', '2018-07-26', 'NISSAN', 'nissan.png', 'JUKE', 'carbody5.png', 'TEKNA XTRONIC', 'BLACK', 17000, 'HATCHBACK', 5, 'PETROL', '5', 'N', 155, 'Taxed', 0, ' ', '1', 139, 2, '', '', '', '2018', '', '', '', '2022-07-27', '', '', '', '', 15488, 15484, '508655R', 0, 'no', 'yes', '13', '0', 'yes', '', '', 'JUKE TEKNA CVT', '2022-07-27', '891552236300', '2022-07-27', '2022-07-27', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2018-07-26', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '117', '', '', 'CARS', 'normal', '1 Speed Au', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(154, '140', '1152', 'LP15AMK', 'SJNFEAJ11U1427993', '2015-06-15', 'NISSAN', 'nissan.png', 'QASHQAI', 'carbody5.png', 'TEKNA DIG-T', 'BLACK', 34688, 'HATCHBACK', 5, 'PETROL', '6', 'N', 155, 'Untaxed', 0, ' ', '1', 133, 1, '', '', '', '2018', '', '', '', '2022-02-18', '', '', '', '', 13484, 13484, '161390A', 15505, 'no', 'yes', '13', '0', 'yes', '', '', 'QASHQAI TEKNA DIG-T', '2022-02-18', '494012806437', '2022-02-18', '2022-02-18', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-06-15', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '113', '', '', 'CARS', 'normal', 'manual', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(155, '24', '2466', 'MW17SXR', 'VF3LBBHZ3HS117211', '2017-05-31', 'PEUGEOT', 'peugeot.png', '308', 'carbody5.png', 'BLUE HDI S/S GT LINE', 'BLUE', 71482, 'HATCHBACK', 5, 'DIESEL', '6', 'N', 155, 'Untaxed', 0, ' ', '1', 98, 2, '', '', '', '2019', '', '', '', '2022-07-09', '', '', '', '', 8484, 8484, 'JCAN3077286', 22269, 'no', 'yes', '13', '0', 'yes', '', '', '308 GT LINE HDI BLUE S/S', '2022-07-09', '451012177833', '2022-07-09', '2022-07-09', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2017-05-31', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '120', '', '', 'CARS', 'normal', 'Semi Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(156, '65', 'R1974', 'RX63ETJ', 'WP0ZZZ97ZEL027240', '2013-12-02', 'PORSCHE', 'porsche.png', 'PANAMERA', 'carbody5.png', 'D V6 TIPTRONIC', 'WHITE', 47746, 'HATCHBACK', 5, 'DIESEL', '8', 'N', 250, 'Untaxed', 0, ' ', '1', 166, 3, '', '', '', '2018', '', '', '', '2021-12-18', '', '', '', '', 29984, 29984, '159104', 12534, 'no', 'yes', '13', '0', 'yes', '', '', 'PANAMERA D V6 TIPTRONIC', '2021-12-18', '458662079887', '2021-12-18', '2021-12-18', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2013-12-02', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 4, '250', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(157, '90', '2487', 'YF16UTE', 'WP1ZZZ92ZGLA67246', '2016-05-27', 'PORSCHE', 'porsche.png', 'CAYENNE', 'carbody4.png', 'D V8 S TIPTRONIC S', 'BLACK', 95532, 'ESTATE', 5, 'DIESEL', '8', 'N', 340, 'Untaxed', 0, ' ', '1', 209, 4, '', '', '', '2018', '', '', '', '2022-08-17', '', '', '', '', 32984, 32984, '016488', 18186, 'no', 'yes', '13', '0', 'yes', '', '', 'CAYENNE V8 D S TIPTRONIC S A', '2022-08-17', '248970877242', '2022-08-17', '2022-08-17', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-05-27', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '385', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(158, '77', '2724', 'BF06HOJ', 'VSSZZZ5PZ6R047227', '2006-05-31', 'SEAT', 'seat.png', 'ALTEA', 'carbody1.png', 'TDI STYLANCE', 'GREY', 156400, 'MPV', 5, 'DIESEL', '5', 'N', 170, 'Taxed', 0, ' ', '1', 149, 2, '', '', '', '2018', '', '', '', '2022-02-23', '', '', '', '', 1984, 1984, 'BKC905190', 6455, 'no', 'yes', '13', '0', 'yes', '', '', 'ALTEA STYLANCE TDI', '2022-02-23', '490816205964', '2022-02-23', '2022-02-23', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2006-05-31', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '103', '', '', 'CARS', 'normal', 'manual', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(159, '19', 'R1875', 'OV13RVY', 'TMBKG9NE5D0028170', '2013-05-24', 'SKODA', 'skoda.png', 'OCTAVIA', 'carbody4.png', 'SE TDI CR DSG', 'BLACK', 9669, 'ESTATE', 5, 'DIESEL', '7', 'N', 20, 'Untaxed', 0, ' ', '1', 104, 2, '', '', '', '2018', '', '', '', '2022-11-25', '', '', '', '', 6484, 6484, 'CLHA241128', 11755, 'no', 'yes', '13', '0', 'yes', '', '', 'OCTAVIA SE TDI CR S-A', '2022-11-25', '438833106521', '2022-11-25', '2022-11-25', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2013-05-24', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '103', '', '', 'CARS', 'normal', 'Semi Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(160, '', 'R2121', 'FA65EVF', 'TMBKK7NE8G0168074', '2016-02-22', 'SKODA', 'skoda.png', 'OCTAVIA', 'carbody4.png', 'VRS TDI DSG', 'BLACK', 9790, 'ESTATE', 5, 'DIESEL', '6', 'N', 130, 'Untaxed', 0, ' ', '1', 126, 2, '', '', '', '2019', '', '', '', '2022-11-09', '', '', '', '', 12484, 12484, 'CUNA348540', 17364, 'no', 'yes', '13', '0', 'yes', '', '', 'OCTAVIA VRS TDI S-A', '2022-11-09', '700296182786', '2022-11-09', '2022-11-09', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-02-22', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '181', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(161, '74', 'R1881', 'FD16UAL', 'TMBFM6NJ0GZ153275', '2016-05-15', 'SKODA', 'skoda.png', 'FABIA', 'carbody5.png', 'COLOUR EDITION TSI', 'BLUE', 7851, 'HATCHBACK', 5, 'PETROL', '5', 'N', 20, 'Untaxed', 0, ' ', '1', 107, 1, '', '', '', '2019', '', '', '', '2022-11-19', '', '', '', '', 7484, 7484, 'CJZC952337', 18078, 'no', 'yes', '13', '0', 'yes', '', '', 'FABIA COLOUR EDITION TSI', '2022-11-19', '657321898706', '2022-11-19', '2022-11-19', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-05-15', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '89', '', '', 'CARS', 'normal', 'manual', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(162, '30', '2626', 'AX54MKP', 'JSAFTB03V00209835', '2004-12-31', 'SUZUKI', 'suzuki.png', 'GRAND VITARA', 'carbody4.png', '16V SE', 'SILVER', 11000, 'ESTATE', 3, 'PETROL', '4', 'N', 340, 'Taxed', 0, ' ', '1', 220, 2, '', '', '', '2019', '', '', '', '2022-01-15', '', '', '', '', 1984, 1984, 'G16B-671830', 5916, 'no', 'yes', '13', '0', 'yes', '', '', 'GRAND VITARA 16V SE AUTO', '2022-01-15', '247073126987', '2022-01-15', '2022-01-15', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2004-12-31', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 4, '92', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0);
INSERT INTO `vehicle` (`veh_id`, `key_tag`, `stock_no`, `reg_no`, `chasis`, `regdate`, `make`, `make_image`, `model`, `model_image`, `varient`, `colour`, `mileage`, `body`, `doors`, `fuel`, `gbox`, `FSH`, `RFL`, `MOT`, `price`, `status`, `location`, `co2Emissions`, `engineCapacity`, `markedForExport`, `motStatus`, `typeApproval`, `yearOfManufacture`, `taxDueDate`, `taxStatus`, `dateOfLastV5CIssued`, `motExpiryDate`, `wheelplan`, `monthOfFirstRegistration`, `regletter`, `privplate`, `retailprice`, `vehiclecost`, `engine_no`, `amileage`, `import`, `hidefin`, `insgroup`, `formerowner`, `hideformer`, `ownertype`, `grading`, `description`, `currentmot`, `motnumber`, `nextmot`, `nextservice`, `mortable`, `radiocode`, `alarmcode`, `igkeyno`, `doorkeyno`, `sparekey`, `vs`, `vsno`, `Tax`, `HPI`, `milescheck`, `sercheck`, `purdate`, `delerpi`, `purprice`, `supinvno`, `dpayment`, `payref`, `paydate`, `paytype`, `finance`, `agreeno`, `fincompny`, `amount`, `fpayref`, `fpaydate`, `fpaytype`, `pexfin`, `pexagreementno`, `pexfinco`, `pexamnt`, `pexsettldate`, `pexpayref`, `pexpaydate`, `pexpaytype`, `source`, `suplier`, `buyer`, `sudetails`, `stockcomments`, `retdate`, `salesorreturn`, `salestype`, `onsite`, `stoprem`, `stockplan`, `stockplanamount`, `stockplnsupp`, `stockplanstartdate`, `history`, `warranty`, `engtype`, `servicecomments`, `comments`, `bodytype`, `trimcolor`, `trimtype`, `metalic`, `youtubid`, `prestige`, `noofseats`, `bhp`, `hiderfl`, `nox`, `decatgory`, `webdisplay`, `transmission`, `margin_in`, `vat`, `sold_date`, `sold_by`, `invoice_no`, `v5`, `v5num`, `unsold_reason`, `is_exp_assign`, `deposit_taken`) VALUES
(163, '29', 'R1263', 'NA14LCO', 'JTDZS3EUX03042785', '2014-04-24', 'TOYOTA', 'toyota.png', 'PRIUS PLUS', 'carbody1.png', 'T4', 'WHITE', 63474, 'MPV', 5, 'PETROL/ELE', '1', 'N', 0, 'Untaxed', 0, ' ', '1', 96, 2, '', '', '', '2020', '', '', '', '2021-01-18', '', '', '', '', 12984, 63474, '2ZRU552271', 13176, 'no', 'yes', '13', '0', 'yes', '', '', 'PRIUS+ T4 CVT', '2021-01-18', '985485860586', '2021-01-18', '2021-01-18', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2014-04-24', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 7, '135', '', '', 'CARS', 'normal', 'CVT', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(164, '36', '2507', 'DG58WMF', 'W0L0AHL4898012429', '2008-11-28', 'VAUXHALL', 'vauxhall.png', 'ASTRA', 'carbody5.png', 'LIFE AC 16V E4', 'SILVER', 44400, 'HATCHBACK', 5, 'PETROL', '4', 'N', 315, 'Untaxed', 0, ' ', '1', 186, 2, '', '', '', '2019', '', '', '', '2022-01-05', '', '', '', '', 1984, 1984, '20MT5561', 7690, 'no', 'yes', '13', '0', 'yes', '', '', 'ASTRA LIFE A/C A', '2022-01-05', '163811976455', '2022-01-05', '2022-01-05', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2008-11-28', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '140', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(165, '87', 'R2143', 'RX16CVW', 'WVWZZZ3CZGP025483', '2016-03-02', 'VOLKSWAGEN', 'volkswagen.png', 'PASSAT', 'carbody4.png', 'GT TDI BLUEMOTION TECHNOLOGY DSG', 'BLUE', 9040, 'ESTATE', 5, 'DIESEL', '6', 'N', 130, 'Untaxed', 0, ' ', '1', 122, 2, '', '', '', '2020', '', '', '', '2022-09-22', '', '', '', '', 12484, 12484, 'CRLB313106', 17447, 'no', 'yes', '13', '0', 'yes', '', '', 'PASSAT GT TDI BMOTION TECH S-A', '2022-09-22', '268619123677', '2022-09-22', '2022-09-22', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-03-02', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '147', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(166, '99', 'R2202', 'FM17OAS', 'WVWZZZ3CZJE011520', '2017-07-18', 'VOLKSWAGEN', 'volkswagen.png', 'PASSAT', 'carbody4.png', 'SE BUSINESS TDI BLUEMOTION TECH DSG', 'BLUE', 8333, 'ESTATE', 5, 'DIESEL', '6', 'N', 155, 'Untaxed', 0, ' ', '1', 121, 2, '', '', '', '2020', '', '', '', '2022-01-18', '', '', '', '', 12984, 12984, 'CRLB716242', 22941, 'no', 'yes', '13', '0', 'yes', '', '', 'PASSAT SE BUSINESS TDI BMT S-A', '2022-01-18', '698284204564', '2022-01-18', '2022-01-18', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2017-07-18', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '147', '', '', 'CARS', 'normal', 'dvla1', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(167, '0', '2657', 'YT58XUH', 'WVWZZZ1KZ9W085016', '2008-09-10', 'VOLKSWAGEN', 'volkswagen.png', 'GOLF', 'carbody5.png', 'GT SPORT TDI 140', 'BLACK', 9900, 'HATCHBACK', 5, 'DIESEL', '6', 'N', 210, 'Taxed', 0, ' ', '1', 159, 2, '', '', '', '2019', '', '', '', '2021-12-05', '', '', '', '', 3484, 3484, 'BKD C72300', 7566, 'no', 'yes', '13', '0', 'yes', '', '', 'GOLF GT SPORT TDI 140 S-A', '2021-12-05', '827748851664', '2021-12-05', '2021-12-05', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2008-09-10', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '138', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(168, '11', '2682', 'HF65WDN', 'WVWZZZAUZGP025619', '2015-09-09', 'VOLKSWAGEN', 'volkswagen.png', 'GOLF', 'carbody5.png', 'GT TDI BLUEMOTION TECHNOLOGY DSG', 'WHITE', 10800, 'HATCHBACK', 5, 'DIESEL', '6', 'N', 30, 'Taxed', 0, ' ', '1', 119, 2, '', '', '', '2020', '', '', '', '2022-03-17', '', '', '', '', 9984, 9984, 'CRLB216667', 16079, 'no', 'yes', '13', '0', 'yes', '', '', 'GOLF GT TDI BMT S-A', '2022-03-17', '375888451964', '2022-03-17', '2022-03-17', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-09-09', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '147', '', '', 'CARS', 'normal', 'dvla12', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(169, '12', '2713', 'NL65ZNZ', 'WVWZZZAUZGW063509', '2015-10-16', 'VOLKSWAGEN', 'volkswagen.png', 'GOLF', 'carbody5.png', 'GTD', 'BLACK', 48877, 'HATCHBACK', 5, 'DIESEL', '6', 'N', 20, 'Taxed', 0, ' ', '1', 109, 2, '', '', '', '2019', '', '', '', '2022-02-18', '', '', '', '', 15484, 15484, 'CUNA319464', 16345, 'no', 'yes', '13', '0', 'yes', '', '', 'GOLF GTD', '2022-02-18', '427260423198', '2022-02-18', '2022-02-18', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-10-16', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '182', '', '', 'CARS', 'normal', 'manual', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(170, '54', 'R2200', 'MK16WTZ', 'WVWZZZAUZGW232888', '2016-03-03', 'VOLKSWAGEN', 'volkswagen.png', 'GOLF', 'carbody5.png', 'R DSG', 'WHITE', 82947, 'HATCHBACK', 5, 'PETROL', '6', 'N', 210, 'Taxed', 0, ' ', '1', 159, 2, '', '', '', '2021', '', '', '', '2022-07-06', '', '', '', '', 18984, 18984, 'CJXC106074', 17455, 'no', 'yes', '13', '0', 'yes', '', '', 'GOLF R DSG', '2022-07-06', '810687203870', '2022-07-06', '2022-07-06', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2016-03-03', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '298', '', '', 'CARS', 'normal', 'dvla12', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(171, '43', '2736', 'SL09WHD', 'WVWZZZ1KZ9W536808', '2009-05-09', 'VOLKSWAGEN', 'volkswagen.png', 'GOLF', 'carbody5.png', 'GT TDI', 'RED', 9900, 'HATCHBACK', 5, 'DIESEL', '6', 'N', 0, 'Taxed', 0, ' ', '1', 129, 2, '', '', '', '2021', '', '', '', '2021-12-07', '', '', '', '', 2984, 2984, 'CBA 195467', 7969, 'no', 'yes', '13', '0', 'yes', '', '', 'GOLF GT TDI 140', '2021-12-07', '832916955129', '2021-12-07', '2021-12-07', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2009-05-09', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '140', '', '', 'CARS', 'normal', 'manual', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(172, '77', 'R2150', 'LT67JEJ', 'WVWZZZ3HZJE502859', '2017-09-08', 'VOLKSWAGEN', 'volkswagen.png', 'ARTEON', 'carbody5.png', 'R-LINE TSI 4MOTION DSG', 'YELLOW', 47000, 'HATCHBACK', 5, 'PETROL', '7', 'N', 155, 'Untaxed', 0, ' ', '8', 164, 2, '', '', '', '2021', '', '', '', '2022-09-07', '', '', '', '', 23484, 23484, 'DJHC022199', 23685, 'no', 'yes', '13', '0', 'yes', '', '', 'ARTEON R-LINE TSI 4MOTION S-A', '2022-09-07', '354672337912', '2022-09-07', '2022-09-07', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2017-09-08', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '278', '', '', 'CARS', 'normal', 'dvla12', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(173, '99', 'R2197', 'GU65JYE', 'YV1DZA8CDG2807785', '2015-09-24', 'VOLVO', 'volvo.png', 'XC60', 'carbody4.png', 'D4 R-DESIGN NAV', 'GREY', 74749, 'ESTATE', 5, 'DIESEL', '6', 'N', 130, 'Untaxed', 0, ' ', '1', 124, 2, '', '', '', '2019', '', '', '', '2022-08-04', '', '', '', '', 16984, 16984, '1304383', 16186, 'no', 'yes', '13', '0', 'yes', '', '', 'XC60 R-DESIGN NAV D4 AUTO', '2022-08-04', '498107567674', '2022-08-04', '2022-08-04', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2015-09-24', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '187', '', '', 'CARS', 'normal', 'Auto', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(176, '', '1173', 'YB66KBF', 'WBA3P720X0K485182', '2017-02-07', 'BMW', 'bmw.png', '430D M SPORT AUTO', 'carbody3.png', '430D M SPORT', 'WHITE', 10000, 'COUPE', 2, 'DIESEL', '8', '', 0, 'Untaxed', 0, ' ', '1', 134, 3, '', '', '', '2017', '', '', '', '2022-05-17', '', '', '', '', 12000, 11000, '50279821', 20833, 'no', 'yes', '13', '0', 'yes', '', '', '430D M SPORT AUTO', '2022-05-17', '640559731158', '2022-05-17', '2022-05-17', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2017-02-07', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 4, '254', '', '', 'CARS', 'normal', '1 Speed Au', '', '', '0000-00-00', '', '', '', '', '', '', 0),
(177, '', '1176', 'CA67RXS', 'WVWZZZ3HZJE514926', '2018-01-11', 'VOLKSWAGEN', 'volkswagen.png', 'ARTEON R-LINE TSI S-A', 'carbody5.png', 'R-LINE TSI DSG', 'YELLOW', 100000, 'HATCHBACK', 5, 'PETROL', '7', '', 0, 'Untaxed', 0, ' ', '1', 135, 2, '', '', '', '', '', '', '', '2023-06-18', '', '', '', '', 20000, 33333, 'CZPB096416', 22727, 'yes', 'yes', '13', '0', 'yes', '', '', 'ARTEON R-LINE TSI S-A', '0000-00-00', '', '2023-06-18', '2023-06-18', 'yes', '', '', '', '', 'yes', '0', '', 'yes', '0', '', '', '2018-01-11', '', 0, '', '', '', '0000-00-00', '', 'yes', '', '', 0, '', '0000-00-00', '', '', '', '', 0, '0000-00-00', '', '0000-00-00', '', 'trade', '', '', '', '', '0000-00-00', 'yes', 'retail', 'yes', 'yes', 'yes', 0, '', '0000-00-00', '', '', 'injection', '', NULL, 'hat', '', '', 'yes', '', 'yes', 5, '187', '', '', 'CARS', 'normal', '1 Speed Au', '', '', '0000-00-00', '', '', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_advertspec`
--

CREATE TABLE `vehicle_advertspec` (
  `id` int(5) NOT NULL,
  `veh_no` varchar(20) NOT NULL,
  `dealer_strapline` longtext NOT NULL,
  `feature_1` varchar(250) NOT NULL,
  `feature_2` varchar(250) NOT NULL,
  `feature_3` varchar(250) NOT NULL,
  `feature_4` varchar(250) NOT NULL,
  `feature_5` varchar(250) NOT NULL,
  `attention_grabber` varchar(250) NOT NULL,
  `key_sellingpoint` varchar(250) NOT NULL,
  `key_facts` varchar(250) NOT NULL,
  `features` varchar(100) NOT NULL,
  `subtitle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_advertspec`
--

INSERT INTO `vehicle_advertspec` (`id`, `veh_no`, `dealer_strapline`, `feature_1`, `feature_2`, `feature_3`, `feature_4`, `feature_5`, `attention_grabber`, `key_sellingpoint`, `key_facts`, `features`, `subtitle`) VALUES
(3, 'WK05YXR', 'as', '', '        ', '  f3      ', '        ', '        ', 'aa', 'keyss', 'asa', '1', ''),
(4, 'WK05YXS', 'sad', 'sad', 'asd  ', ' asd  ', ' asd  ', ' asd  ', 'sad', 'asd', 'sad', '1,2', 'sad'),
(5, 'WK05YXRR', 'Dealer strapliner', 'f1', 'f2   ', 'f3   dfeg. egeg', 'f4   ', 'f5   ', 'Attt', 'keyyy', 'key facts', '2,3,4', '');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_advert_features`
--

CREATE TABLE `vehicle_advert_features` (
  `id` int(11) NOT NULL,
  `feature` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_advert_features`
--

INSERT INTO `vehicle_advert_features` (`id`, `feature`) VALUES
(1, 'Feature 1 '),
(2, 'Feature 2'),
(3, 'Feature 3'),
(4, 'Feature 4');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_expense`
--

CREATE TABLE `vehicle_expense` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `type` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `amount` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_expense`
--

INSERT INTO `vehicle_expense` (`id`, `reg_no`, `date`, `type`, `description`, `amount`) VALUES
(1, 'WK05YXR', '2021-09-01', 'Audio', 'sample1', '1.2'),
(2, 'WK05YXR', '0000-00-00', 'Audio', 'sample1', '1.2'),
(3, 'WK05YXR', '0000-00-00', 'Commission', 'sample1', '1.25');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_feature_tb`
--

CREATE TABLE `vehicle_feature_tb` (
  `feature_id` int(11) NOT NULL,
  `reg_no` varchar(100) NOT NULL,
  `features` varchar(1000) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_feature_tb`
--

INSERT INTO `vehicle_feature_tb` (`feature_id`, `reg_no`, `features`, `status`) VALUES
(4, 'WK05YXRR', 'A Bars,22,25,30,31,44,49,59,62,75,76', 1),
(5, 'WK05gYXR', 'A Bars,5,9', 1),
(6, 'NX18VVC', 'BMW 5 SERIES 2.0 520I M SPORT 4d 181 BHP! COMES WITH :-SAT NAV-FRONT HEATED SEATS-FULL BLACK LEATHER SEATS-BLUETOOTH-XENON LIGHTS-FRONT AND REAR PARKING SENSORS-DAB/FM-DUAL CLIMATE CONTROL-ELECTRIC PARKING BREAK-CRUISE CONTROL-SPEED LIMITER-LEATHER STEERING WITH COMMANDS -START/STOP-AUTO LIGHTS', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_image`
--

CREATE TABLE `vehicle_image` (
  `id` int(11) NOT NULL,
  `veh_id` varchar(20) NOT NULL,
  `title` varchar(164) DEFAULT NULL,
  `image` varchar(164) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vehicle_image`
--

INSERT INTO `vehicle_image` (`id`, `veh_id`, `title`, `image`) VALUES
(9, 'WK05YXRR', 'swws', '783788635.jpg'),
(32, 'WK05YXRI', 'Standard Image', 'standard_image5.jpg'),
(35, 'BU63ZZK', 'AUDI A5', 'Audi-A5.jpg'),
(36, 'RJ18DZY', 'BMW_5series', 'BMW-5-Series.jpg'),
(37, 'WU64RHO', 'AUDI Q8', '20201014044819_Q8-plug-in-hybrid.jpg'),
(38, 'YE68VOJ', 'BMW 5 series', 'bmw-5-sedan-models-equipment-lines-04-01.jpg'),
(39, 'YK66RXS', 'img', 'img.jpg'),
(40, 'YK61JTZ', 'img1', 'img1.jpg'),
(41, 'YM15EGK', 'img2', 'img2.jpg'),
(42, 'BJ65WWK', 'img3', 'img3.jpeg'),
(43, 'GJ63WMG', 'hgh', 'g5.jpeg'),
(46, 'EN18KYH', 'huu', 'hyu.jpg'),
(47, 'LT07GPK', 'jq', 'jq.jpg'),
(48, 'YC60CKA', 'rv', 'rv.jpg'),
(49, 'OV64RKE', 'rc2', 'rv2.jpg'),
(50, 'HG62DOA', 'rv23', 'rv1.jpg'),
(51, 'WP16TFJ', 'MERCEDES_C-CLASS', 'c-class.jfif'),
(52, 'GU65JYE', 'VOLVO', 'feature-3.png\n'),
(53, 'WP16TFJ', 'c_43', 'c_43amg.jpg'),
(54, 'AO16XEH', 'A45', 'A_45.jpg'),
(55, 'KW65TNJ', 'ACLASS', 'a_class.jpg'),
(56, 'LP17JYK', 'MINI', 'mini_clubman.jpg\r\n'),
(57, 'FA18FZZ', 'NISSAN_JUKE', 'nissan_juke.jpg'),
(58, 'LP15AMK', 'QASHQAI', 'nissan_quashqai.jpg'),
(59, 'MW17SXR', 'PEUGEOT', 'peugeot_308.jpg'),
(60, 'RX63ETJ', 'PANAMERA', 'porche_panamera.jpg\r\n'),
(61, 'AK64GKU', 'CAYENNE', 'porche_cayanne.jpg'),
(62, 'BF06HOJ', 'SEAT_ALTEA', 'seat_altea.jpg\r\n'),
(63, 'OV13RVY', 'skoda_octavia', 'skoda_octavia.jpg'),
(64, 'FD16UAL', 'SKODA_FABIA', 'skoda_fabia.jpg'),
(65, 'AX54MKP', 'SUZUKI', 'suzuki_grand_vitara.jpg\r\n'),
(66, 'NA14LCO', NULL, 'feature-1.png\n'),
(67, 'DG58WM', NULL, 'Vauxhall_astra.jpg'),
(68, 'RX16CVW', NULL, 'feature-1.png\n'),
(69, 'YT58XUH', NULL, 'feature-2.png\n'),
(70, 'LT67JEJ', 'image', 'feature-4.png\n'),
(71, 'YF67ZWR', 'audi rs 3', 'audi-rs3.jpg'),
(72, 'HJ68ZBZ', 'AUDI Q8', 'Audi_Q8.JPG'),
(73, 'K155KGK', 'audi-Q7', 'audi-Q7.jpg\r\n'),
(74, 'EA17KUY', 'audi-q5', 'audi-q5.jpg'),
(75, 'EN12NUA', 'Audi_A7\r\n', 'Audi_A7.jpg\r\n'),
(76, 'WU15KBZ', 'AUDI_A7', 'audi_a7_black.jpg'),
(77, 'FM12FFR', 'audi_a7_2012', 'audi_a7-2012.jpg'),
(78, 'SG64NKO', 'audi_a7', 'audi_a7-2014.jpg'),
(79, 'PE63XGU', 'audi_a7', 'audi_a7_2013.jpg'),
(80, 'AF13WFB', 'audi_a6', 'audi_a6_2013.jpg'),
(81, 'BU63ZZK', 'AUDI_A6_BLACK.JPG', 'AUDI_A6_BLACK.JPG'),
(83, 'OV65EHO', 'Audi A5 S Line BLK ED + TDI Quat SA', 'audi_a5_2015.jpg'),
(84, 'SY17OUW', 'AUDI', 'AUDI_A5_2017.JPG'),
(86, 'FN67ZKP', 'AUDI_A5', 'audi_a5_white_2017.jpg'),
(87, 'OU64NEF', 'AUDI', 'audi_a5_2014.jpg'),
(88, 'MA16XKP', 'MA16XKP', 'BMW_X6_2016.JPG'),
(89, 'R444DGH', 'R444DGH.JPG', 'R444DGH.JPG'),
(90, 'YD09XGT', 'YD09XGT.JPG', 'YD09XGT.JPG'),
(91, 'GX66XKB', 'GX66XKB.jpg', 'GX66XKB.jpg'),
(92, 'YC14EJV', NULL, 'YC14EJV.jpg'),
(93, 'LY15LLA', NULL, 'LY15LLA.jpg'),
(94, 'EO67CFG', NULL, 'EO67CFG.jpg'),
(95, 'VN64GXR', NULL, 'VN64GXRJPG.jpg'),
(96, 'PE65WWR', NULL, 'PE65WWR.jpg'),
(97, 'SG180FR', NULL, 'SG180FR.jpg'),
(98, 'MA11APA', NULL, 'MA11APA.jpg'),
(99, 'PG16JUA', NULL, 'PG16JUA.jpg'),
(100, 'RF66RFE', NULL, 'RF66RFE.jpg'),
(101, 'AU67BYK', NULL, 'AU67BYK.jpg'),
(102, 'BJ62LHV', NULL, 'BJ62LHV.jpg'),
(103, 'CV13URX', NULL, 'CV13URX.jpg'),
(104, 'FSX38', NULL, 'FSX38.jpg'),
(105, 'NL63GJV', NULL, 'NL63GJV.jpg'),
(106, 'YH64ZYX', NULL, 'YH64ZYX.jpg'),
(107, 'YE68VOJ', NULL, 'YE68VOJ.jpg'),
(108, 'YK18WJS', NULL, 'YK18WJS.jpg'),
(109, 'GJ65EUO', NULL, 'GJ65EUO.jpg'),
(110, 'MK16WFV', NULL, 'MK16WFV.jpg'),
(111, 'FH66SVK', NULL, 'FH66SVK.jpg'),
(112, 'KP16ODN', NULL, 'KP16ODN.jpg'),
(113, 'YB66KBF', 'image', 'feature-2.png\n'),
(114, 'YJ15VTC', NULL, 'YJ15VTC.jpg'),
(115, 'YH15UOK', NULL, 'YH15UOK.jpg'),
(116, 'BU16AHG', NULL, 'BU16AHG.jpg'),
(117, 'YK14AYV', NULL, 'YK14AYV.jpg'),
(118, 'GU15RYJ', NULL, 'GU15RYJ.JPG'),
(119, 'HV18OEG', NULL, 'HV180EG.jpg'),
(120, 'YK10LRF', NULL, 'YK1OLRF.JPG'),
(121, 'D3LYK', NULL, 'D3LYK.jpg'),
(122, 'YK66RXS', NULL, 'YK66RXS.jpg'),
(123, 'YK61JTZ', NULL, 'YK61JTZ.JPG'),
(124, 'YM15EGK', NULL, 'YM15EGK.JPG'),
(125, 'BJ65WWK', NULL, 'BJ65WWK.JPG'),
(126, 'GJ63WMC', NULL, 'GJ63WMC.JPG'),
(127, 'BL16JUU', NULL, 'BL16JUU.JPG'),
(128, 'WK05YXR', NULL, 'WK05YXR.JPG'),
(129, 'SA62HXB', NULL, 'SA62HXB.JPG'),
(130, 'EN18KYH', NULL, 'EN18KYH.JPG'),
(131, 'LT07GPK', NULL, 'LTO7GPK.JPG'),
(132, 'YC60CKA', NULL, 'YC60CKA.JPG'),
(133, 'OV64RKE', NULL, 'OV64RKE.JPG'),
(134, 'HG62DOA', NULL, 'HG62DOA.JPG'),
(135, 'LX65OXV', NULL, 'LX65OXV.JPG'),
(136, 'NL65KMO', NULL, 'NL65KMO.JPG'),
(137, 'KW14YYZ', NULL, 'KW14YYZ.JPG'),
(138, 'KM15VKL', NULL, 'KM15VKL.JPG'),
(139, 'T24RPL', NULL, 'T24RPL.JPG'),
(140, 'BK15FHD', NULL, 'BK15FHD.JPG'),
(141, 'DC66EZJ', NULL, 'DC66EZJ.JPG'),
(142, 'KU11XXL', NULL, 'KU11XXL.JPG'),
(143, 'LL14FSK', NULL, 'LL14FSK.JPG'),
(144, 'MV67OAC', NULL, 'MV67OAC.JPG'),
(145, 'KT16FNU', NULL, 'KT16FNU.JPG'),
(146, 'RK63ZCE', NULL, 'RK63ZCE.JPG'),
(147, 'EY08YKN', NULL, 'EY08YKN.JPG'),
(148, 'NX14JUT', NULL, 'NX14JUT.JPG'),
(149, 'AE17ZZS', NULL, 'AE17ZZS.JPG'),
(150, 'KT16LNU', NULL, 'KT16LNU.JPG'),
(151, 'KN64KTC', NULL, 'KN64KTC.JPG'),
(152, 'WF68JZR', 'audi_a6_2018.jpg', 'audi_a6_2018.jpg'),
(153, 'WF68JZR', 'a6_2018', 'a6_2018.jpg'),
(154, 'CA67RXS ', 'Standard Image', 'feature-1.png\n'),
(155, 'CA67RXS ', 'Standard Image', 'feature-1.png\n'),
(156, 'WX64ZDC', 'audi a3', '20200507052054_Audi-A3-1.jpg'),
(157, 'SL09WHD', 'golf', 'feature-1.png\n'),
(158, 'FM17OAS', 'golf', 'feature-4.png\n'),
(159, 'DG58WMF', 'golf', 'feature-2.png\n'),
(160, 'MK16WTZ', 'golf', 'feature-4.png\n'),
(161, 'NL65ZNZ', 'golf', 'feature-3.png\n'),
(162, 'HF65WDN', 'golf', 'feature-4.png\n'),
(163, 'DG58WMF', 'golf', 'feature-2.png\n');

-- --------------------------------------------------------

--
-- Table structure for table `warantty_tb`
--

CREATE TABLE `warantty_tb` (
  `w_id` int(11) NOT NULL,
  `fk_enquiry_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `warantty_type` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `claims_limit` double NOT NULL,
  `excess` double NOT NULL,
  `policy_number` varchar(200) NOT NULL,
  `cost` double NOT NULL,
  `free_charge` int(11) NOT NULL,
  `retail_price` double NOT NULL,
  `ipt_amt` double NOT NULL,
  `profit` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `warantty_tb`
--

INSERT INTO `warantty_tb` (`w_id`, `fk_enquiry_id`, `supplier_id`, `warantty_type`, `duration`, `start_date`, `claims_limit`, `excess`, `policy_number`, `cost`, `free_charge`, `retail_price`, `ipt_amt`, `profit`) VALUES
(2, 1, 1, 50, 0, '2022-07-05', 0, 0, '', 0, 0, 0, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories_tb`
--
ALTER TABLE `accessories_tb`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `accessories_type`
--
ALTER TABLE `accessories_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `action_history`
--
ALTER TABLE `action_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `action_type`
--
ALTER TABLE `action_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `all_privileges`
--
ALTER TABLE `all_privileges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balance_tb`
--
ALTER TABLE `balance_tb`
  ADD PRIMARY KEY (`bal_id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bonus`
--
ALTER TABLE `bonus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `car_enquiry`
--
ALTER TABLE `car_enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms`
--
ALTER TABLE `cms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collection_steps`
--
ALTER TABLE `collection_steps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission`
--
ALTER TABLE `commission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_logo`
--
ALTER TABLE `company_logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaint_list`
--
ALTER TABLE `complaint_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_user`
--
ALTER TABLE `contact_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `customer_enquiry`
--
ALTER TABLE `customer_enquiry`
  ADD PRIMARY KEY (`cust_enquiry_id`);

--
-- Indexes for table `deal_tb`
--
ALTER TABLE `deal_tb`
  ADD PRIMARY KEY (`deal_id`);

--
-- Indexes for table `deleted_vehicle`
--
ALTER TABLE `deleted_vehicle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposit_tb`
--
ALTER TABLE `deposit_tb`
  ADD PRIMARY KEY (`deposit_id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry_source`
--
ALTER TABLE `enquiry_source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry_type`
--
ALTER TABLE `enquiry_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expense_assign`
--
ALTER TABLE `expense_assign`
  ADD PRIMARY KEY (`assign_id`);

--
-- Indexes for table `expense_tb`
--
ALTER TABLE `expense_tb`
  ADD PRIMARY KEY (`exp_id`);

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance_company`
--
ALTER TABLE `finance_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `finance_status`
--
ALTER TABLE `finance_status`
  ADD PRIMARY KEY (`fin_status_id`);

--
-- Indexes for table `finance_tb`
--
ALTER TABLE `finance_tb`
  ADD PRIMARY KEY (`finance_id`);

--
-- Indexes for table `gap_tb`
--
ALTER TABLE `gap_tb`
  ADD PRIMARY KEY (`gap_id`);

--
-- Indexes for table `gen_expense_type`
--
ALTER TABLE `gen_expense_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holiday`
--
ALTER TABLE `holiday`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `import`
--
ALTER TABLE `import`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `invoice_item`
--
ALTER TABLE `invoice_item`
  ADD PRIMARY KEY (`inv_item_id`);

--
-- Indexes for table `jobcard`
--
ALTER TABLE `jobcard`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `joblist`
--
ALTER TABLE `joblist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mot_tb`
--
ALTER TABLE `mot_tb`
  ADD PRIMARY KEY (`mot_id`);

--
-- Indexes for table `mot_times`
--
ALTER TABLE `mot_times`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_finance_prop`
--
ALTER TABLE `order_finance_prop`
  ADD PRIMARY KEY (`prop_id`);

--
-- Indexes for table `part_exchange`
--
ALTER TABLE `part_exchange`
  ADD PRIMARY KEY (`part_exchange_id`);

--
-- Indexes for table `part_finance_tb`
--
ALTER TABLE `part_finance_tb`
  ADD PRIMARY KEY (`pf_id`);

--
-- Indexes for table `payment_tb`
--
ALTER TABLE `payment_tb`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `pdi`
--
ALTER TABLE `pdi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdi_docs`
--
ALTER TABLE `pdi_docs`
  ADD PRIMARY KEY (`pdi_doc_id`);

--
-- Indexes for table `pdi_items`
--
ALTER TABLE `pdi_items`
  ADD PRIMARY KEY (`pdi_item_id`);

--
-- Indexes for table `pdi_list_tb`
--
ALTER TABLE `pdi_list_tb`
  ADD PRIMARY KEY (`pdi_id`);

--
-- Indexes for table `pdi_order_appear`
--
ALTER TABLE `pdi_order_appear`
  ADD PRIMARY KEY (`pdi_order_id`);

--
-- Indexes for table `pex_vehicle`
--
ALTER TABLE `pex_vehicle`
  ADD PRIMARY KEY (`pex_veh_id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`privilege_id`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_person`
--
ALTER TABLE `sales_person`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `siv_expense_type`
--
ALTER TABLE `siv_expense_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `standard_service`
--
ALTER TABLE `standard_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`sup_id`);

--
-- Indexes for table `supplier_contact`
--
ALTER TABLE `supplier_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `technians`
--
ALTER TABLE `technians`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonial`
--
ALTER TABLE `testimonial`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trade`
--
ALTER TABLE `trade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle`
--
ALTER TABLE `vehicle`
  ADD PRIMARY KEY (`veh_id`);

--
-- Indexes for table `vehicle_advertspec`
--
ALTER TABLE `vehicle_advertspec`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_advert_features`
--
ALTER TABLE `vehicle_advert_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_expense`
--
ALTER TABLE `vehicle_expense`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_feature_tb`
--
ALTER TABLE `vehicle_feature_tb`
  ADD PRIMARY KEY (`feature_id`);

--
-- Indexes for table `vehicle_image`
--
ALTER TABLE `vehicle_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `warantty_tb`
--
ALTER TABLE `warantty_tb`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accessories_tb`
--
ALTER TABLE `accessories_tb`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `accessories_type`
--
ALTER TABLE `accessories_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `action_history`
--
ALTER TABLE `action_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `action_type`
--
ALTER TABLE `action_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `all_privileges`
--
ALTER TABLE `all_privileges`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `balance_tb`
--
ALTER TABLE `balance_tb`
  MODIFY `bal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bonus`
--
ALTER TABLE `bonus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `car_enquiry`
--
ALTER TABLE `car_enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cms`
--
ALTER TABLE `cms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `collection_steps`
--
ALTER TABLE `collection_steps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commission`
--
ALTER TABLE `commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_logo`
--
ALTER TABLE `company_logo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `complaint_list`
--
ALTER TABLE `complaint_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contact_user`
--
ALTER TABLE `contact_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `customer_enquiry`
--
ALTER TABLE `customer_enquiry`
  MODIFY `cust_enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `deal_tb`
--
ALTER TABLE `deal_tb`
  MODIFY `deal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `deleted_vehicle`
--
ALTER TABLE `deleted_vehicle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposit_tb`
--
ALTER TABLE `deposit_tb`
  MODIFY `deposit_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `enquiry_source`
--
ALTER TABLE `enquiry_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `enquiry_type`
--
ALTER TABLE `enquiry_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `expense_assign`
--
ALTER TABLE `expense_assign`
  MODIFY `assign_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `expense_tb`
--
ALTER TABLE `expense_tb`
  MODIFY `exp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `finance_company`
--
ALTER TABLE `finance_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `finance_status`
--
ALTER TABLE `finance_status`
  MODIFY `fin_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `finance_tb`
--
ALTER TABLE `finance_tb`
  MODIFY `finance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `gap_tb`
--
ALTER TABLE `gap_tb`
  MODIFY `gap_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gen_expense_type`
--
ALTER TABLE `gen_expense_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `holiday`
--
ALTER TABLE `holiday`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `import`
--
ALTER TABLE `import`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `invoice_item`
--
ALTER TABLE `invoice_item`
  MODIFY `inv_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `jobcard`
--
ALTER TABLE `jobcard`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `joblist`
--
ALTER TABLE `joblist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mot_tb`
--
ALTER TABLE `mot_tb`
  MODIFY `mot_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mot_times`
--
ALTER TABLE `mot_times`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_finance_prop`
--
ALTER TABLE `order_finance_prop`
  MODIFY `prop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `part_exchange`
--
ALTER TABLE `part_exchange`
  MODIFY `part_exchange_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `part_finance_tb`
--
ALTER TABLE `part_finance_tb`
  MODIFY `pf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `payment_tb`
--
ALTER TABLE `payment_tb`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pdi`
--
ALTER TABLE `pdi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pdi_docs`
--
ALTER TABLE `pdi_docs`
  MODIFY `pdi_doc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pdi_items`
--
ALTER TABLE `pdi_items`
  MODIFY `pdi_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pdi_list_tb`
--
ALTER TABLE `pdi_list_tb`
  MODIFY `pdi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pdi_order_appear`
--
ALTER TABLE `pdi_order_appear`
  MODIFY `pdi_order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pex_vehicle`
--
ALTER TABLE `pex_vehicle`
  MODIFY `pex_veh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `privilege_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reserve`
--
ALTER TABLE `reserve`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_person`
--
ALTER TABLE `sales_person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siv_expense_type`
--
ALTER TABLE `siv_expense_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `standard_service`
--
ALTER TABLE `standard_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `sup_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplier_contact`
--
ALTER TABLE `supplier_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `technians`
--
ALTER TABLE `technians`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonial`
--
ALTER TABLE `testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trade`
--
ALTER TABLE `trade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vehicle`
--
ALTER TABLE `vehicle`
  MODIFY `veh_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=178;

--
-- AUTO_INCREMENT for table `vehicle_advertspec`
--
ALTER TABLE `vehicle_advertspec`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vehicle_advert_features`
--
ALTER TABLE `vehicle_advert_features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vehicle_expense`
--
ALTER TABLE `vehicle_expense`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_feature_tb`
--
ALTER TABLE `vehicle_feature_tb`
  MODIFY `feature_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vehicle_image`
--
ALTER TABLE `vehicle_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `warantty_tb`
--
ALTER TABLE `warantty_tb`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
