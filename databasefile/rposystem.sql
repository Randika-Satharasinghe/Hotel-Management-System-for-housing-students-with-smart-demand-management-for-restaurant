-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 11, 2023 at 07:49 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rposystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu_data`
--

CREATE TABLE `menu_data` (
  `ID` int(11) NOT NULL,
  `ItemName` varchar(255) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `SubCategory` varchar(50) NOT NULL,
  `PopularityRating` float NOT NULL,
  `DayOfWeek` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu_data`
--

INSERT INTO `menu_data` (`ID`, `ItemName`, `Category`, `SubCategory`, `PopularityRating`, `DayOfWeek`) VALUES
(1, 'Americano', 'Beverages', 'Coffee', 0.864, 'Monday'),
(2, 'Cappuccino', 'Beverages', 'Coffee', 0.739, 'Monday'),
(3, 'Double Espresso', 'Beverages', 'Coffee', 0.621, 'Monday'),
(4, 'Long Espresso', 'Beverages', 'Coffee', 0.573, 'Monday'),
(5, 'Latte', 'Beverages', 'Coffee', 0.792, 'Monday'),
(6, 'Latte Macchiato', 'Beverages', 'Coffee', 0.678, 'Monday'),
(7, 'Macchiato', 'Beverages', 'Coffee', 0.521, 'Monday'),
(8, 'Sri Lankan Coffee', 'Beverages', 'Coffee', 0.483, 'Monday'),
(9, 'Hot Chocolate', 'Beverages', 'Coffee', 0.713, 'Monday'),
(10, 'Iced Coffee', 'Beverages', 'Coffee', 0.655, 'Monday'),
(11, 'Black Tea', 'Beverages', 'Tea', 0.824, 'Monday'),
(12, 'Cinnamon Tea', 'Beverages', 'Tea', 0.697, 'Monday'),
(13, 'Ginger Tea', 'Beverages', 'Tea', 0.588, 'Monday'),
(14, 'Green Tea', 'Beverages', 'Tea', 0.549, 'Monday'),
(15, 'Lemon Tea', 'Beverages', 'Tea', 0.789, 'Monday'),
(16, 'Mint Tea', 'Beverages', 'Tea', 0.654, 'Monday'),
(17, 'Iced Tea', 'Beverages', 'Tea', 0.503, 'Monday'),
(18, 'Avocado Juice', 'Beverages', 'Fresh Juices', 0.768, 'Monday'),
(19, 'Banana Juice', 'Beverages', 'Fresh Juices', 0.632, 'Monday'),
(20, 'Lime Juice', 'Beverages', 'Fresh Juices', 0.531, 'Monday'),
(21, 'Mango Juice', 'Beverages', 'Fresh Juices', 0.483, 'Monday'),
(22, 'Orange Juice', 'Beverages', 'Fresh Juices', 0.702, 'Monday'),
(23, 'Papaya Juice', 'Beverages', 'Fresh Juices', 0.587, 'Monday'),
(24, 'Passion Fruit Juice', 'Beverages', 'Fresh Juices', 0.514, 'Monday'),
(25, 'Pineapple Juice', 'Beverages', 'Fresh Juices', 0.721, 'Monday'),
(26, 'Avocado Milk Shake', 'Beverages', 'Milk Shake', 0.835, 'Monday'),
(27, 'Banana Milk Shake', 'Beverages', 'Milk Shake', 0.716, 'Monday'),
(28, 'Chocolate Milk Shake', 'Beverages', 'Milk Shake', 0.601, 'Monday'),
(29, 'Mango Milk Shake', 'Beverages', 'Milk Shake', 0.555, 'Monday'),
(30, 'Passion Fruit Milk Shake', 'Beverages', 'Milk Shake', 0.772, 'Monday'),
(31, 'Pineapple Milk Shake', 'Beverages', 'Milk Shake', 0.659, 'Monday'),
(32, 'Vanilla Milk Shake', 'Beverages', 'Milk Shake', 0.519, 'Monday'),
(33, 'Avocado Lassi', 'Beverages', 'Lassi', 0.483, 'Monday'),
(34, 'Banana Lassi', 'Beverages', 'Lassi', 0.652, 'Monday'),
(35, 'Mango Lassi', 'Beverages', 'Lassi', 0.718, 'Monday'),
(36, 'Pineapple Lassi', 'Beverages', 'Lassi', 0.595, 'Monday'),
(37, 'Americano', 'Beverages', 'Coffee', 0.845, 'Tuesday'),
(38, 'Cappuccino', 'Beverages', 'Coffee', 0.721, 'Tuesday'),
(39, 'Double Espresso', 'Beverages', 'Coffee', 0.609, 'Tuesday'),
(40, 'Long Espresso', 'Beverages', 'Coffee', 0.562, 'Tuesday'),
(41, 'Latte', 'Beverages', 'Coffee', 0.778, 'Tuesday'),
(42, 'Latte Macchiato', 'Beverages', 'Coffee', 0.663, 'Tuesday'),
(43, 'Macchiato', 'Beverages', 'Coffee', 0.511, 'Tuesday'),
(44, 'Sri Lankan Coffee', 'Beverages', 'Coffee', 0.476, 'Tuesday'),
(45, 'Hot Chocolate', 'Beverages', 'Coffee', 0.693, 'Tuesday'),
(46, 'Iced Coffee', 'Beverages', 'Coffee', 0.636, 'Tuesday'),
(47, 'Black Tea', 'Beverages', 'Tea', 0.811, 'Tuesday'),
(48, 'Cinnamon Tea', 'Beverages', 'Tea', 0.689, 'Tuesday'),
(49, 'Ginger Tea', 'Beverages', 'Tea', 0.581, 'Tuesday'),
(50, 'Green Tea', 'Beverages', 'Tea', 0.543, 'Tuesday'),
(51, 'Lemon Tea', 'Beverages', 'Tea', 0.761, 'Tuesday'),
(52, 'Mint Tea', 'Beverages', 'Tea', 0.635, 'Tuesday'),
(53, 'Iced Tea', 'Beverages', 'Tea', 0.493, 'Tuesday'),
(54, 'Avocado Juice', 'Beverages', 'Fresh Juices', 0.745, 'Tuesday'),
(55, 'Banana Juice', 'Beverages', 'Fresh Juices', 0.613, 'Tuesday'),
(56, 'Lime Juice', 'Beverages', 'Fresh Juices', 0.514, 'Tuesday'),
(57, 'Mango Juice', 'Beverages', 'Fresh Juices', 0.468, 'Tuesday'),
(58, 'Orange Juice', 'Beverages', 'Fresh Juices', 0.683, 'Tuesday'),
(59, 'Papaya Juice', 'Beverages', 'Fresh Juices', 0.573, 'Tuesday'),
(60, 'Passion Fruit Juice', 'Beverages', 'Fresh Juices', 0.499, 'Tuesday'),
(61, 'Pineapple Juice', 'Beverages', 'Fresh Juices', 0.705, 'Tuesday'),
(62, 'Avocado Milk Shake', 'Beverages', 'Milk Shake', 0.815, 'Tuesday'),
(63, 'Banana Milk Shake', 'Beverages', 'Milk Shake', 0.697, 'Tuesday'),
(64, 'Chocolate Milk Shake', 'Beverages', 'Milk Shake', 0.589, 'Tuesday'),
(65, 'Mango Milk Shake', 'Beverages', 'Milk Shake', 0.543, 'Tuesday'),
(66, 'Passion Fruit Milk Shake', 'Beverages', 'Milk Shake', 0.759, 'Tuesday'),
(67, 'Pineapple Milk Shake', 'Beverages', 'Milk Shake', 0.645, 'Tuesday'),
(68, 'Vanilla Milk Shake', 'Beverages', 'Milk Shake', 0.507, 'Tuesday'),
(69, 'Avocado Lassi', 'Beverages', 'Lassi', 0.468, 'Tuesday'),
(70, 'Banana Lassi', 'Beverages', 'Lassi', 0.635, 'Tuesday'),
(71, 'Mango Lassi', 'Beverages', 'Lassi', 0.701, 'Tuesday'),
(72, 'Pineapple Lassi', 'Beverages', 'Lassi', 0.582, 'Tuesday'),
(73, 'Americano', 'Beverages', 'Coffee', 0.736, 'Wednesday'),
(74, 'Cappuccino', 'Beverages', 'Coffee', 0.621, 'Wednesday'),
(75, 'Double Espresso', 'Beverages', 'Coffee', 0.543, 'Wednesday'),
(76, 'Long Espresso', 'Beverages', 'Coffee', 0.498, 'Wednesday'),
(77, 'Latte', 'Beverages', 'Coffee', 0.687, 'Wednesday'),
(78, 'Latte Macchiato', 'Beverages', 'Coffee', 0.576, 'Wednesday'),
(79, 'Macchiato', 'Beverages', 'Coffee', 0.442, 'Wednesday'),
(80, 'Sri Lankan Coffee', 'Beverages', 'Coffee', 0.419, 'Wednesday'),
(81, 'Hot Chocolate', 'Beverages', 'Coffee', 0.632, 'Wednesday'),
(82, 'Iced Coffee', 'Beverages', 'Coffee', 0.581, 'Wednesday'),
(83, 'Black Tea', 'Beverages', 'Tea', 0.702, 'Wednesday'),
(84, 'Cinnamon Tea', 'Beverages', 'Tea', 0.587, 'Wednesday'),
(85, 'Ginger Tea', 'Beverages', 'Tea', 0.498, 'Wednesday'),
(86, 'Green Tea', 'Beverages', 'Tea', 0.459, 'Wednesday'),
(87, 'Lemon Tea', 'Beverages', 'Tea', 0.645, 'Wednesday'),
(88, 'Mint Tea', 'Beverages', 'Tea', 0.539, 'Wednesday'),
(89, 'Iced Tea', 'Beverages', 'Tea', 0.417, 'Wednesday'),
(90, 'Avocado Juice', 'Beverages', 'Fresh Juices', 0.654, 'Wednesday'),
(91, 'Banana Juice', 'Beverages', 'Fresh Juices', 0.543, 'Wednesday'),
(92, 'Lime Juice', 'Beverages', 'Fresh Juices', 0.459, 'Wednesday'),
(93, 'Mango Juice', 'Beverages', 'Fresh Juices', 0.419, 'Wednesday'),
(94, 'Orange Juice', 'Beverages', 'Fresh Juices', 0.612, 'Wednesday'),
(95, 'Papaya Juice', 'Beverages', 'Fresh Juices', 0.514, 'Wednesday'),
(96, 'Passion Fruit Juice', 'Beverages', 'Fresh Juices', 0.448, 'Wednesday'),
(97, 'Pineapple Juice', 'Beverages', 'Fresh Juices', 0.632, 'Wednesday'),
(98, 'Avocado Milk Shake', 'Beverages', 'Milk Shake', 0.741, 'Wednesday'),
(99, 'Banana Milk Shake', 'Beverages', 'Milk Shake', 0.629, 'Wednesday'),
(100, 'Chocolate Milk Shake', 'Beverages', 'Milk Shake', 0.531, 'Wednesday'),
(101, 'Mango Milk Shake', 'Beverages', 'Milk Shake', 0.489, 'Wednesday'),
(102, 'Passion Fruit Milk Shake', 'Beverages', 'Milk Shake', 0.682, 'Wednesday'),
(103, 'Pineapple Milk Shake', 'Beverages', 'Milk Shake', 0.576, 'Wednesday'),
(104, 'Vanilla Milk Shake', 'Beverages', 'Milk Shake', 0.452, 'Wednesday'),
(105, 'Avocado Lassi', 'Beverages', 'Lassi', 0.419, 'Wednesday'),
(106, 'Banana Lassi', 'Beverages', 'Lassi', 0.567, 'Wednesday'),
(107, 'Mango Lassi', 'Beverages', 'Lassi', 0.632, 'Wednesday'),
(108, 'Pineapple Lassi', 'Beverages', 'Lassi', 0.523, 'Wednesday'),
(109, 'Americano', 'Beverages', 'Coffee', 0.729, 'Thursday'),
(110, 'Cappuccino', 'Beverages', 'Coffee', 0.615, 'Thursday'),
(111, 'Double Espresso', 'Beverages', 'Coffee', 0.538, 'Thursday'),
(112, 'Long Espresso', 'Beverages', 'Coffee', 0.492, 'Thursday'),
(113, 'Latte', 'Beverages', 'Coffee', 0.679, 'Thursday'),
(114, 'Latte Macchiato', 'Beverages', 'Coffee', 0.57, 'Thursday'),
(115, 'Macchiato', 'Beverages', 'Coffee', 0.437, 'Thursday'),
(116, 'Sri Lankan Coffee', 'Beverages', 'Coffee', 0.404, 'Thursday'),
(117, 'Hot Chocolate', 'Beverages', 'Coffee', 0.621, 'Thursday'),
(118, 'Iced Coffee', 'Beverages', 'Coffee', 0.569, 'Thursday'),
(119, 'Black Tea', 'Beverages', 'Tea', 0.696, 'Thursday'),
(120, 'Cinnamon Tea', 'Beverages', 'Tea', 0.581, 'Thursday'),
(121, 'Ginger Tea', 'Beverages', 'Tea', 0.492, 'Thursday'),
(122, 'Green Tea', 'Beverages', 'Tea', 0.453, 'Thursday'),
(123, 'Lemon Tea', 'Beverages', 'Tea', 0.639, 'Thursday'),
(124, 'Mint Tea', 'Beverages', 'Tea', 0.533, 'Thursday'),
(125, 'Iced Tea', 'Beverages', 'Tea', 0.411, 'Thursday'),
(126, 'Avocado Juice', 'Beverages', 'Fresh Juices', 0.644, 'Thursday'),
(127, 'Banana Juice', 'Beverages', 'Fresh Juices', 0.533, 'Thursday'),
(128, 'Lime Juice', 'Beverages', 'Fresh Juices', 0.449, 'Thursday'),
(129, 'Mango Juice', 'Beverages', 'Fresh Juices', 0.409, 'Thursday'),
(130, 'Orange Juice', 'Beverages', 'Fresh Juices', 0.602, 'Thursday'),
(131, 'Papaya Juice', 'Beverages', 'Fresh Juices', 0.504, 'Thursday'),
(132, 'Passion Fruit Juice', 'Beverages', 'Fresh Juices', 0.438, 'Thursday'),
(133, 'Pineapple Juice', 'Beverages', 'Fresh Juices', 0.621, 'Thursday'),
(134, 'Avocado Milk Shake', 'Beverages', 'Milk Shake', 0.731, 'Thursday'),
(135, 'Banana Milk Shake', 'Beverages', 'Milk Shake', 0.619, 'Thursday'),
(136, 'Chocolate Milk Shake', 'Beverages', 'Milk Shake', 0.521, 'Thursday'),
(137, 'Mango Milk Shake', 'Beverages', 'Milk Shake', 0.479, 'Thursday'),
(138, 'Passion Fruit Milk Shake', 'Beverages', 'Milk Shake', 0.672, 'Thursday'),
(139, 'Pineapple Milk Shake', 'Beverages', 'Milk Shake', 0.566, 'Thursday'),
(140, 'Vanilla Milk Shake', 'Beverages', 'Milk Shake', 0.442, 'Thursday'),
(141, 'Avocado Lassi', 'Beverages', 'Lassi', 0.411, 'Thursday'),
(142, 'Banana Lassi', 'Beverages', 'Lassi', 0.559, 'Thursday'),
(143, 'Mango Lassi', 'Beverages', 'Lassi', 0.624, 'Thursday'),
(144, 'Pineapple Lassi', 'Beverages', 'Lassi', 0.515, 'Thursday'),
(145, 'Americano', 'Beverages', 'Coffee', 0.712, 'Friday'),
(146, 'Cappuccino', 'Beverages', 'Coffee', 0.597, 'Friday'),
(147, 'Double Espresso', 'Beverages', 'Coffee', 0.52, 'Friday'),
(148, 'Long Espresso', 'Beverages', 'Coffee', 0.475, 'Friday'),
(149, 'Latte', 'Beverages', 'Coffee', 0.664, 'Friday'),
(150, 'Latte Macchiato', 'Beverages', 'Coffee', 0.555, 'Friday'),
(151, 'Macchiato', 'Beverages', 'Coffee', 0.421, 'Friday'),
(152, 'Sri Lankan Coffee', 'Beverages', 'Coffee', 0.398, 'Friday'),
(153, 'Hot Chocolate', 'Beverages', 'Coffee', 0.603, 'Friday'),
(154, 'Iced Coffee', 'Beverages', 'Coffee', 0.551, 'Friday'),
(155, 'Black Tea', 'Beverages', 'Tea', 0.678, 'Friday'),
(156, 'Cinnamon Tea', 'Beverages', 'Tea', 0.563, 'Friday'),
(157, 'Ginger Tea', 'Beverages', 'Tea', 0.474, 'Friday'),
(158, 'Green Tea', 'Beverages', 'Tea', 0.435, 'Friday'),
(159, 'Lemon Tea', 'Beverages', 'Tea', 0.621, 'Friday'),
(160, 'Mint Tea', 'Beverages', 'Tea', 0.515, 'Friday'),
(161, 'Iced Tea', 'Beverages', 'Tea', 0.393, 'Friday'),
(162, 'Avocado Juice', 'Beverages', 'Fresh Juices', 0.632, 'Friday'),
(163, 'Banana Juice', 'Beverages', 'Fresh Juices', 0.521, 'Friday'),
(164, 'Lime Juice', 'Beverages', 'Fresh Juices', 0.437, 'Friday'),
(165, 'Mango Juice', 'Beverages', 'Fresh Juices', 0.397, 'Friday'),
(166, 'Orange Juice', 'Beverages', 'Fresh Juices', 0.59, 'Friday'),
(167, 'Papaya Juice', 'Beverages', 'Fresh Juices', 0.492, 'Friday'),
(168, 'Passion Fruit Juice', 'Beverages', 'Fresh Juices', 0.426, 'Friday'),
(169, 'Pineapple Juice', 'Beverages', 'Fresh Juices', 0.609, 'Friday'),
(170, 'Avocado Milk Shake', 'Beverages', 'Milk Shake', 0.701, 'Friday'),
(171, 'Banana Milk Shake', 'Beverages', 'Milk Shake', 0.589, 'Friday'),
(172, 'Chocolate Milk Shake', 'Beverages', 'Milk Shake', 0.491, 'Friday'),
(173, 'Mango Milk Shake', 'Beverages', 'Milk Shake', 0.449, 'Friday'),
(174, 'Passion Fruit Milk Shake', 'Beverages', 'Milk Shake', 0.642, 'Friday'),
(175, 'Pineapple Milk Shake', 'Beverages', 'Milk Shake', 0.536, 'Friday'),
(176, 'Vanilla Milk Shake', 'Beverages', 'Milk Shake', 0.412, 'Friday'),
(177, 'Avocado Lassi', 'Beverages', 'Lassi', 0.381, 'Friday'),
(178, 'Banana Lassi', 'Beverages', 'Lassi', 0.529, 'Friday'),
(179, 'Mango Lassi', 'Beverages', 'Lassi', 0.594, 'Friday'),
(180, 'Pineapple Lassi', 'Beverages', 'Lassi', 0.485, 'Friday'),
(181, 'Americano', 'Beverages', 'Coffee', 0.695, 'Saturday'),
(182, 'Cappuccino', 'Beverages', 'Coffee', 0.58, 'Saturday'),
(183, 'Double Espresso', 'Beverages', 'Coffee', 0.503, 'Saturday'),
(184, 'Long Espresso', 'Beverages', 'Coffee', 0.458, 'Saturday'),
(185, 'Latte', 'Beverages', 'Coffee', 0.647, 'Saturday'),
(186, 'Latte Macchiato', 'Beverages', 'Coffee', 0.538, 'Saturday'),
(187, 'Macchiato', 'Beverages', 'Coffee', 0.404, 'Saturday'),
(188, 'Sri Lankan Coffee', 'Beverages', 'Coffee', 0.381, 'Saturday'),
(189, 'Hot Chocolate', 'Beverages', 'Coffee', 0.576, 'Saturday'),
(190, 'Iced Coffee', 'Beverages', 'Coffee', 0.524, 'Saturday'),
(191, 'Black Tea', 'Beverages', 'Tea', 0.651, 'Saturday'),
(192, 'Cinnamon Tea', 'Beverages', 'Tea', 0.536, 'Saturday'),
(193, 'Ginger Tea', 'Beverages', 'Tea', 0.447, 'Saturday'),
(194, 'Green Tea', 'Beverages', 'Tea', 0.408, 'Saturday'),
(195, 'Lemon Tea', 'Beverages', 'Tea', 0.594, 'Saturday'),
(196, 'Mint Tea', 'Beverages', 'Tea', 0.488, 'Saturday'),
(197, 'Iced Tea', 'Beverages', 'Tea', 0.366, 'Saturday'),
(198, 'Avocado Juice', 'Beverages', 'Fresh Juices', 0.616, 'Saturday'),
(199, 'Banana Juice', 'Beverages', 'Fresh Juices', 0.505, 'Saturday'),
(200, 'Lime Juice', 'Beverages', 'Fresh Juices', 0.421, 'Saturday'),
(201, 'Mango Juice', 'Beverages', 'Fresh Juices', 0.381, 'Saturday'),
(202, 'Orange Juice', 'Beverages', 'Fresh Juices', 0.574, 'Saturday'),
(203, 'Papaya Juice', 'Beverages', 'Fresh Juices', 0.476, 'Saturday'),
(204, 'Passion Fruit Juice', 'Beverages', 'Fresh Juices', 0.41, 'Saturday'),
(205, 'Pineapple Juice', 'Beverages', 'Fresh Juices', 0.591, 'Saturday'),
(206, 'Avocado Milk Shake', 'Beverages', 'Milk Shake', 0.682, 'Saturday'),
(207, 'Banana Milk Shake', 'Beverages', 'Milk Shake', 0.57, 'Saturday'),
(208, 'Chocolate Milk Shake', 'Beverages', 'Milk Shake', 0.472, 'Saturday'),
(209, 'Mango Milk Shake', 'Beverages', 'Milk Shake', 0.43, 'Saturday'),
(210, 'Passion Fruit Milk Shake', 'Beverages', 'Milk Shake', 0.623, 'Saturday'),
(211, 'Pineapple Milk Shake', 'Beverages', 'Milk Shake', 0.517, 'Saturday'),
(212, 'Vanilla Milk Shake', 'Beverages', 'Milk Shake', 0.393, 'Saturday'),
(213, 'Avocado Lassi', 'Beverages', 'Lassi', 0.362, 'Saturday'),
(214, 'Banana Lassi', 'Beverages', 'Lassi', 0.51, 'Saturday'),
(215, 'Mango Lassi', 'Beverages', 'Lassi', 0.575, 'Saturday'),
(216, 'Pineapple Lassi', 'Beverages', 'Lassi', 0.466, 'Saturday'),
(217, 'Americano', 'Beverages', 'Coffee', 0.675, 'Sunday'),
(218, 'Cappuccino', 'Beverages', 'Coffee', 0.56, 'Sunday'),
(219, 'Double Espresso', 'Beverages', 'Coffee', 0.483, 'Sunday'),
(220, 'Long Espresso', 'Beverages', 'Coffee', 0.438, 'Sunday'),
(221, 'Latte', 'Beverages', 'Coffee', 0.626, 'Sunday'),
(222, 'Latte Macchiato', 'Beverages', 'Coffee', 0.517, 'Sunday'),
(223, 'Macchiato', 'Beverages', 'Coffee', 0.383, 'Sunday'),
(224, 'Sri Lankan Coffee', 'Beverages', 'Coffee', 0.36, 'Sunday'),
(225, 'Hot Chocolate', 'Beverages', 'Coffee', 0.545, 'Sunday'),
(226, 'Iced Coffee', 'Beverages', 'Coffee', 0.493, 'Sunday'),
(227, 'Black Tea', 'Beverages', 'Tea', 0.621, 'Sunday'),
(228, 'Cinnamon Tea', 'Beverages', 'Tea', 0.506, 'Sunday'),
(229, 'Ginger Tea', 'Beverages', 'Tea', 0.417, 'Sunday'),
(230, 'Green Tea', 'Beverages', 'Tea', 0.378, 'Sunday'),
(231, 'Lemon Tea', 'Beverages', 'Tea', 0.564, 'Sunday'),
(232, 'Mint Tea', 'Beverages', 'Tea', 0.458, 'Sunday'),
(233, 'Iced Tea', 'Beverages', 'Tea', 0.336, 'Sunday'),
(234, 'Avocado Juice', 'Beverages', 'Fresh Juices', 0.601, 'Sunday'),
(235, 'Banana Juice', 'Beverages', 'Fresh Juices', 0.49, 'Sunday'),
(236, 'Lime Juice', 'Beverages', 'Fresh Juices', 0.406, 'Sunday'),
(237, 'Mango Juice', 'Beverages', 'Fresh Juices', 0.366, 'Sunday'),
(238, 'Orange Juice', 'Beverages', 'Fresh Juices', 0.559, 'Sunday'),
(239, 'Papaya Juice', 'Beverages', 'Fresh Juices', 0.461, 'Sunday'),
(240, 'Passion Fruit Juice', 'Beverages', 'Fresh Juices', 0.395, 'Sunday'),
(241, 'Pineapple Juice', 'Beverages', 'Fresh Juices', 0.576, 'Sunday'),
(242, 'Avocado Milk Shake', 'Beverages', 'Milk Shake', 0.663, 'Sunday'),
(243, 'Banana Milk Shake', 'Beverages', 'Milk Shake', 0.551, 'Sunday'),
(244, 'Chocolate Milk Shake', 'Beverages', 'Milk Shake', 0.453, 'Sunday'),
(245, 'Mango Milk Shake', 'Beverages', 'Milk Shake', 0.411, 'Sunday'),
(246, 'Passion Fruit Milk Shake', 'Beverages', 'Milk Shake', 0.604, 'Sunday'),
(247, 'Pineapple Milk Shake', 'Beverages', 'Milk Shake', 0.498, 'Sunday'),
(248, 'Vanilla Milk Shake', 'Beverages', 'Milk Shake', 0.374, 'Sunday'),
(249, 'Avocado Lassi', 'Beverages', 'Lassi', 0.343, 'Sunday'),
(250, 'Banana Lassi', 'Beverages', 'Lassi', 0.491, 'Sunday'),
(251, 'Mango Lassi', 'Beverages', 'Lassi', 0.556, 'Sunday'),
(252, 'Pineapple Lassi', 'Beverages', 'Lassi', 0.447, 'Sunday'),
(253, 'Cheese & tomato sandwich', 'Menu', 'Snacks', 0.061, 'Monday'),
(254, 'Cheese omelet', 'Menu', 'Snacks', 0.459, 'Monday'),
(255, 'Chicken panini', 'Menu', 'Snacks', 0.111, 'Monday'),
(256, 'Chicken shawarma', 'Menu', 'Snacks', 0.178, 'Monday'),
(257, 'Club sandwich', 'Menu', 'Snacks', 0.557, 'Monday'),
(258, 'Croque monsieur', 'Menu', 'Snacks', 0.253, 'Monday'),
(259, 'Egg sandwich', 'Menu', 'Snacks', 0.594, 'Monday'),
(260, 'French fries', 'Menu', 'Snacks', 0.209, 'Monday'),
(261, 'Fried cashew nuts', 'Menu', 'Snacks', 0.266, 'Monday'),
(262, 'Ham omelet', 'Menu', 'Snacks', 0.7, 'Monday'),
(263, 'Onion rings', 'Menu', 'Snacks', 0.703, 'Monday'),
(264, 'Onion pakora', 'Menu', 'Snacks', 0.416, 'Monday'),
(265, 'Sri Lankan omelet', 'Menu', 'Snacks', 0.972, 'Monday'),
(266, 'Tuna sandwich', 'Menu', 'Snacks', 0.611, 'Monday'),
(267, 'Vegetable spring rolls', 'Menu', 'Snacks', 0.139, 'Monday'),
(268, 'Vegetable sandwich', 'Menu', 'Snacks', 0.861, 'Monday'),
(269, 'Veggie panini', 'Menu', 'Snacks', 0.889, 'Monday'),
(270, 'Calamari', 'Menu', 'Salads', 0.86, 'Monday'),
(271, 'Chicken & pineapple', 'Menu', 'Salads', 0.636, 'Monday'),
(272, 'Mirissa bistro', 'Menu', 'Salads', 0.6, 'Monday'),
(273, 'Prawns', 'Menu', 'Salads', 0.089, 'Monday'),
(274, 'Vegetables', 'Menu', 'Salads', 0.648, 'Monday'),
(275, 'Chickpea', 'Menu', 'Salads', 0.971, 'Monday'),
(276, 'Niçoise', 'Menu', 'Salads', 0.913, 'Monday'),
(277, 'Chicken & vegetable broth', 'Menu', 'Soup', 0.649, 'Monday'),
(278, 'Creamy pumpkin', 'Menu', 'Soup', 0.509, 'Monday'),
(279, 'Cream of tomato', 'Menu', 'Soup', 0.595, 'Monday'),
(280, 'Seafood tom yum', 'Menu', 'Soup', 0.449, 'Monday'),
(281, 'Mushroom', 'Menu', 'Soup', 0.461, 'Monday'),
(282, 'Crispy prawns', 'Menu', 'Grilled Seafood', 0.958, 'Monday'),
(283, 'Grilled calamari', 'Menu', 'Grilled Seafood', 0.408, 'Monday'),
(284, 'Grilled prawns', 'Menu', 'Grilled Seafood', 0.165, 'Monday'),
(285, 'Grilled tuna', 'Menu', 'Grilled Seafood', 0.602, 'Monday'),
(286, 'Seafood platter', 'Menu', 'Grilled Seafood', 0.513, 'Monday'),
(287, 'Crispy chicken', 'Menu', 'Grilled Meats', 0.761, 'Monday'),
(288, 'Grilled chicken', 'Menu', 'Grilled Meats', 0.264, 'Monday'),
(289, 'Honey mustard grilled pork', 'Menu', 'Grilled Meats', 0.037, 'Monday'),
(290, 'Mixed platter', 'Menu', 'Grilled Meats', 0.394, 'Monday'),
(291, 'Carbonara', 'Menu', 'Pasta & Burgers', 0.861, 'Monday'),
(292, 'Marinara', 'Menu', 'Pasta & Burgers', 0.119, 'Monday'),
(293, 'Mushroom & basil', 'Menu', 'Pasta & Burgers', 0.015, 'Monday'),
(294, 'Napolitan', 'Menu', 'Pasta & Burgers', 0.717, 'Monday'),
(295, 'Pesto', 'Menu', 'Pasta & Burgers', 0.539, 'Monday'),
(296, 'Prawn & garlic', 'Menu', 'Pasta & Burgers', 0.543, 'Monday'),
(297, 'Chicken burger', 'Menu', 'Pasta & Burgers', 0.101, 'Monday'),
(298, 'Veggie burger', 'Menu', 'Pasta & Burgers', 0.874, 'Monday'),
(299, 'Chicken', 'Menu', 'Fried Rice', 0.068, 'Monday'),
(300, 'Mixed', 'Menu', 'Fried Rice', 0.716, 'Monday'),
(301, 'Seafood', 'Menu', 'Fried Rice', 0.377, 'Monday'),
(302, 'Vegetables', 'Menu', 'Fried Rice', 0.738, 'Monday'),
(303, 'Chicken rice & curry', 'Menu', 'Traditional Sri Lankan', 0.557, 'Monday'),
(304, 'Fish rice & curry', 'Menu', 'Traditional Sri Lankan', 0.571, 'Monday'),
(305, 'Pork rice & curry', 'Menu', 'Traditional Sri Lankan', 0.185, 'Monday'),
(306, 'Prawn rice & curry', 'Menu', 'Traditional Sri Lankan', 0.211, 'Monday'),
(307, 'Chicken curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.502, 'Monday'),
(308, 'Dhal curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.874, 'Monday'),
(309, 'Fish curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.865, 'Monday'),
(310, 'Pork curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.705, 'Monday'),
(311, 'Prawn curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.928, 'Monday'),
(312, 'Calamari', 'Menu', 'Devilled', 0.526, 'Monday'),
(313, 'Cashew nuts', 'Menu', 'Devilled', 0.846, 'Monday'),
(314, 'Chicken', 'Menu', 'Devilled', 0.65, 'Monday'),
(315, 'Prawns', 'Menu', 'Devilled', 0.713, 'Monday'),
(316, 'Mix', 'Menu', 'Devilled', 0.617, 'Monday'),
(317, 'Cheese & tomato sandwich', 'Menu', 'Snacks', 0.943, 'Tuesday'),
(318, 'Cheese omelet', 'Menu', 'Snacks', 0.865, 'Tuesday'),
(319, 'Chicken panini', 'Menu', 'Snacks', 0.494, 'Tuesday'),
(320, 'Chicken shawarma', 'Menu', 'Snacks', 0.877, 'Tuesday'),
(321, 'Club sandwich', 'Menu', 'Snacks', 0.904, 'Tuesday'),
(322, 'Croque monsieur', 'Menu', 'Snacks', 0.886, 'Tuesday'),
(323, 'Egg sandwich', 'Menu', 'Snacks', 0.721, 'Tuesday'),
(324, 'French fries', 'Menu', 'Snacks', 0.945, 'Tuesday'),
(325, 'Fried cashew nuts', 'Menu', 'Snacks', 0.561, 'Tuesday'),
(326, 'Ham omelet', 'Menu', 'Snacks', 0.971, 'Tuesday'),
(327, 'Onion rings', 'Menu', 'Snacks', 0.171, 'Tuesday'),
(328, 'Onion pakora', 'Menu', 'Snacks', 0.944, 'Tuesday'),
(329, 'Sri Lankan omelet', 'Menu', 'Snacks', 0.208, 'Tuesday'),
(330, 'Tuna sandwich', 'Menu', 'Snacks', 0.205, 'Tuesday'),
(331, 'Vegetable spring rolls', 'Menu', 'Snacks', 0.403, 'Tuesday'),
(332, 'Vegetable sandwich', 'Menu', 'Snacks', 0.401, 'Tuesday'),
(333, 'Veggie panini', 'Menu', 'Snacks', 0.796, 'Tuesday'),
(334, 'Calamari', 'Menu', 'Salads', 0.776, 'Tuesday'),
(335, 'Chicken & pineapple', 'Menu', 'Salads', 0.492, 'Tuesday'),
(336, 'Mirissa bistro', 'Menu', 'Salads', 0.134, 'Tuesday'),
(337, 'Prawns', 'Menu', 'Salads', 0.193, 'Tuesday'),
(338, 'Vegetables', 'Menu', 'Salads', 0.561, 'Tuesday'),
(339, 'Chickpea', 'Menu', 'Salads', 0.229, 'Tuesday'),
(340, 'Niçoise', 'Menu', 'Salads', 0.462, 'Tuesday'),
(341, 'Chicken & vegetable broth', 'Menu', 'Soup', 0.623, 'Tuesday'),
(342, 'Creamy pumpkin', 'Menu', 'Soup', 0.727, 'Tuesday'),
(343, 'Cream of tomato', 'Menu', 'Soup', 0.767, 'Tuesday'),
(344, 'Seafood tom yum', 'Menu', 'Soup', 0.653, 'Tuesday'),
(345, 'Mushroom', 'Menu', 'Soup', 0.964, 'Tuesday'),
(346, 'Crispy prawns', 'Menu', 'Grilled Seafood', 0.859, 'Tuesday'),
(347, 'Grilled calamari', 'Menu', 'Grilled Seafood', 0.406, 'Tuesday'),
(348, 'Grilled prawns', 'Menu', 'Grilled Seafood', 0.454, 'Tuesday'),
(349, 'Grilled tuna', 'Menu', 'Grilled Seafood', 0.051, 'Tuesday'),
(350, 'Seafood platter', 'Menu', 'Grilled Seafood', 0.895, 'Tuesday'),
(351, 'Crispy chicken', 'Menu', 'Grilled Meats', 0.32, 'Tuesday'),
(352, 'Grilled chicken', 'Menu', 'Grilled Meats', 0.914, 'Tuesday'),
(353, 'Honey mustard grilled pork', 'Menu', 'Grilled Meats', 0.609, 'Tuesday'),
(354, 'Mixed platter', 'Menu', 'Grilled Meats', 0.304, 'Tuesday'),
(355, 'Carbonara', 'Menu', 'Pasta & Burgers', 0.691, 'Tuesday'),
(356, 'Marinara', 'Menu', 'Pasta & Burgers', 0.546, 'Tuesday'),
(357, 'Mushroom & basil', 'Menu', 'Pasta & Burgers', 0.655, 'Tuesday'),
(358, 'Napolitan', 'Menu', 'Pasta & Burgers', 0.637, 'Tuesday'),
(359, 'Pesto', 'Menu', 'Pasta & Burgers', 0.222, 'Tuesday'),
(360, 'Prawn & garlic', 'Menu', 'Pasta & Burgers', 0.2, 'Tuesday'),
(361, 'Chicken burger', 'Menu', 'Pasta & Burgers', 0.332, 'Tuesday'),
(362, 'Veggie burger', 'Menu', 'Pasta & Burgers', 0.062, 'Tuesday'),
(363, 'Chicken', 'Menu', 'Fried Rice', 0.311, 'Tuesday'),
(364, 'Mixed', 'Menu', 'Fried Rice', 0.371, 'Tuesday'),
(365, 'Seafood', 'Menu', 'Fried Rice', 0.922, 'Tuesday'),
(366, 'Vegetables', 'Menu', 'Fried Rice', 0.496, 'Tuesday'),
(367, 'Chicken rice & curry', 'Menu', 'Traditional Sri Lankan', 0.712, 'Tuesday'),
(368, 'Fish rice & curry', 'Menu', 'Traditional Sri Lankan', 0.075, 'Tuesday'),
(369, 'Pork rice & curry', 'Menu', 'Traditional Sri Lankan', 0.24, 'Tuesday'),
(370, 'Prawn rice & curry', 'Menu', 'Traditional Sri Lankan', 0.975, 'Tuesday'),
(371, 'Chicken curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.153, 'Tuesday'),
(372, 'Dhal curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.84, 'Tuesday'),
(373, 'Fish curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.74, 'Tuesday'),
(374, 'Pork curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.18, 'Tuesday'),
(375, 'Prawn curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.683, 'Tuesday'),
(376, 'Calamari', 'Menu', 'Devilled', 0.872, 'Tuesday'),
(377, 'Cashew nuts', 'Menu', 'Devilled', 0.31, 'Tuesday'),
(378, 'Chicken', 'Menu', 'Devilled', 0.936, 'Tuesday'),
(379, 'Prawns', 'Menu', 'Devilled', 0.749, 'Tuesday'),
(380, 'Mix', 'Menu', 'Devilled', 0.936, 'Tuesday'),
(381, 'Cheese & tomato sandwich', 'Menu', 'Snacks', 0.432, 'Wednesday'),
(382, 'Cheese omelet', 'Menu', 'Snacks', 0.354, 'Wednesday'),
(383, 'Chicken panini', 'Menu', 'Snacks', 0.473, 'Wednesday'),
(384, 'Chicken shawarma', 'Menu', 'Snacks', 0.303, 'Wednesday'),
(385, 'Club sandwich', 'Menu', 'Snacks', 0.095, 'Wednesday'),
(386, 'Croque monsieur', 'Menu', 'Snacks', 0.567, 'Wednesday'),
(387, 'Egg sandwich', 'Menu', 'Snacks', 0.548, 'Wednesday'),
(388, 'French fries', 'Menu', 'Snacks', 0.041, 'Wednesday'),
(389, 'Fried cashew nuts', 'Menu', 'Snacks', 0.562, 'Wednesday'),
(390, 'Ham omelet', 'Menu', 'Snacks', 0.685, 'Wednesday'),
(391, 'Onion rings', 'Menu', 'Snacks', 0.741, 'Wednesday'),
(392, 'Onion pakora', 'Menu', 'Snacks', 0.649, 'Wednesday'),
(393, 'Sri Lankan omelet', 'Menu', 'Snacks', 0.021, 'Wednesday'),
(394, 'Tuna sandwich', 'Menu', 'Snacks', 0.16, 'Wednesday'),
(395, 'Vegetable spring rolls', 'Menu', 'Snacks', 0.735, 'Wednesday'),
(396, 'Vegetable sandwich', 'Menu', 'Snacks', 0.197, 'Wednesday'),
(397, 'Veggie panini', 'Menu', 'Snacks', 0.781, 'Wednesday'),
(398, 'Calamari', 'Menu', 'Salads', 0.313, 'Wednesday'),
(399, 'Chicken & pineapple', 'Menu', 'Salads', 0.221, 'Wednesday'),
(400, 'Mirissa bistro', 'Menu', 'Salads', 0.167, 'Wednesday'),
(401, 'Prawns', 'Menu', 'Salads', 0.173, 'Wednesday'),
(402, 'Vegetables', 'Menu', 'Salads', 0.361, 'Wednesday'),
(403, 'Chickpea', 'Menu', 'Salads', 0.288, 'Wednesday'),
(404, 'Niçoise', 'Menu', 'Salads', 0.355, 'Wednesday'),
(405, 'Chicken & vegetable broth', 'Menu', 'Soup', 0.914, 'Wednesday'),
(406, 'Creamy pumpkin', 'Menu', 'Soup', 0.503, 'Wednesday'),
(407, 'Cream of tomato', 'Menu', 'Soup', 0.774, 'Wednesday'),
(408, 'Seafood tom yum', 'Menu', 'Soup', 0.36, 'Wednesday'),
(409, 'Mushroom', 'Menu', 'Soup', 0.478, 'Wednesday'),
(410, 'Crispy prawns', 'Menu', 'Grilled Seafood', 0.312, 'Wednesday'),
(411, 'Grilled calamari', 'Menu', 'Grilled Seafood', 0.126, 'Wednesday'),
(412, 'Grilled prawns', 'Menu', 'Grilled Seafood', 0.694, 'Wednesday'),
(413, 'Grilled tuna', 'Menu', 'Grilled Seafood', 0.091, 'Wednesday'),
(414, 'Seafood platter', 'Menu', 'Grilled Seafood', 0.372, 'Wednesday'),
(415, 'Crispy chicken', 'Menu', 'Grilled Meats', 0.588, 'Wednesday'),
(416, 'Grilled chicken', 'Menu', 'Grilled Meats', 0.822, 'Wednesday'),
(417, 'Honey mustard grilled pork', 'Menu', 'Grilled Meats', 0.349, 'Wednesday'),
(418, 'Mixed platter', 'Menu', 'Grilled Meats', 0.277, 'Wednesday'),
(419, 'Carbonara', 'Menu', 'Pasta & Burgers', 0.34, 'Wednesday'),
(420, 'Marinara', 'Menu', 'Pasta & Burgers', 0.867, 'Wednesday'),
(421, 'Mushroom & basil', 'Menu', 'Pasta & Burgers', 0.315, 'Wednesday'),
(422, 'Napolitan', 'Menu', 'Pasta & Burgers', 0.972, 'Wednesday'),
(423, 'Pesto', 'Menu', 'Pasta & Burgers', 0.918, 'Wednesday'),
(424, 'Prawn & garlic', 'Menu', 'Pasta & Burgers', 0.674, 'Wednesday'),
(425, 'Chicken burger', 'Menu', 'Pasta & Burgers', 0.617, 'Wednesday'),
(426, 'Veggie burger', 'Menu', 'Pasta & Burgers', 0.062, 'Wednesday'),
(427, 'Chicken', 'Menu', 'Fried Rice', 0.458, 'Wednesday'),
(428, 'Mixed', 'Menu', 'Fried Rice', 0.103, 'Wednesday'),
(429, 'Seafood', 'Menu', 'Fried Rice', 0.143, 'Wednesday'),
(430, 'Vegetables', 'Menu', 'Fried Rice', 0.406, 'Wednesday'),
(431, 'Chicken rice & curry', 'Menu', 'Traditional Sri Lankan', 0.602, 'Wednesday'),
(432, 'Fish rice & curry', 'Menu', 'Traditional Sri Lankan', 0.793, 'Wednesday'),
(433, 'Pork rice & curry', 'Menu', 'Traditional Sri Lankan', 0.156, 'Wednesday'),
(434, 'Prawn rice & curry', 'Menu', 'Traditional Sri Lankan', 0.402, 'Wednesday'),
(435, 'Chicken curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.541, 'Wednesday'),
(436, 'Dhal curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.501, 'Wednesday'),
(437, 'Fish curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.88, 'Wednesday'),
(438, 'Pork curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.898, 'Wednesday'),
(439, 'Prawn curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.848, 'Wednesday'),
(440, 'Calamari', 'Menu', 'Devilled', 0.548, 'Wednesday'),
(441, 'Cashew nuts', 'Menu', 'Devilled', 0.195, 'Wednesday'),
(442, 'Chicken', 'Menu', 'Devilled', 0.333, 'Wednesday'),
(443, 'Prawns', 'Menu', 'Devilled', 0.077, 'Wednesday'),
(444, 'Mix', 'Menu', 'Devilled', 0.386, 'Wednesday'),
(445, 'Cheese & tomato sandwich', 'Menu', 'Snacks', 0.701, 'Thursday'),
(446, 'Cheese omelet', 'Menu', 'Snacks', 0.344, 'Thursday'),
(447, 'Chicken panini', 'Menu', 'Snacks', 0.62, 'Thursday'),
(448, 'Chicken shawarma', 'Menu', 'Snacks', 0.066, 'Thursday'),
(449, 'Club sandwich', 'Menu', 'Snacks', 0.471, 'Thursday'),
(450, 'Croque monsieur', 'Menu', 'Snacks', 0.159, 'Thursday'),
(451, 'Egg sandwich', 'Menu', 'Snacks', 0.378, 'Thursday'),
(452, 'French fries', 'Menu', 'Snacks', 0.417, 'Thursday'),
(453, 'Fried cashew nuts', 'Menu', 'Snacks', 0.948, 'Thursday'),
(454, 'Ham omelet', 'Menu', 'Snacks', 0.491, 'Thursday'),
(455, 'Onion rings', 'Menu', 'Snacks', 0.612, 'Thursday'),
(456, 'Onion pakora', 'Menu', 'Snacks', 0.584, 'Thursday'),
(457, 'Sri Lankan omelet', 'Menu', 'Snacks', 0.086, 'Thursday'),
(458, 'Tuna sandwich', 'Menu', 'Snacks', 0.678, 'Thursday'),
(459, 'Vegetable spring rolls', 'Menu', 'Snacks', 0.133, 'Thursday'),
(460, 'Vegetable sandwich', 'Menu', 'Snacks', 0.63, 'Thursday'),
(461, 'Veggie panini', 'Menu', 'Snacks', 0.749, 'Thursday'),
(462, 'Calamari', 'Menu', 'Salads', 0.857, 'Thursday'),
(463, 'Chicken & pineapple', 'Menu', 'Salads', 0.037, 'Thursday'),
(464, 'Mirissa bistro', 'Menu', 'Salads', 0.613, 'Thursday'),
(465, 'Prawns', 'Menu', 'Salads', 0.955, 'Thursday'),
(466, 'Vegetables', 'Menu', 'Salads', 0.938, 'Thursday'),
(467, 'Chickpea', 'Menu', 'Salads', 0.822, 'Thursday'),
(468, 'Niçoise', 'Menu', 'Salads', 0.296, 'Thursday'),
(469, 'Chicken & vegetable broth', 'Menu', 'Soup', 0.014, 'Thursday'),
(470, 'Creamy pumpkin', 'Menu', 'Soup', 0.182, 'Thursday'),
(471, 'Cream of tomato', 'Menu', 'Soup', 0.867, 'Thursday'),
(472, 'Seafood tom yum', 'Menu', 'Soup', 0.791, 'Thursday'),
(473, 'Mushroom', 'Menu', 'Soup', 0.354, 'Thursday'),
(474, 'Crispy prawns', 'Menu', 'Grilled Seafood', 0.395, 'Thursday'),
(475, 'Grilled calamari', 'Menu', 'Grilled Seafood', 0.912, 'Thursday'),
(476, 'Grilled prawns', 'Menu', 'Grilled Seafood', 0.376, 'Thursday'),
(477, 'Grilled tuna', 'Menu', 'Grilled Seafood', 0.145, 'Thursday'),
(478, 'Seafood platter', 'Menu', 'Grilled Seafood', 0.599, 'Thursday'),
(479, 'Crispy chicken', 'Menu', 'Grilled Meats', 0.556, 'Thursday'),
(480, 'Grilled chicken', 'Menu', 'Grilled Meats', 0.985, 'Thursday'),
(481, 'Honey mustard grilled pork', 'Menu', 'Grilled Meats', 0.257, 'Thursday'),
(482, 'Mixed platter', 'Menu', 'Grilled Meats', 0.332, 'Thursday'),
(483, 'Carbonara', 'Menu', 'Pasta & Burgers', 0.887, 'Thursday'),
(484, 'Marinara', 'Menu', 'Pasta & Burgers', 0.439, 'Thursday'),
(485, 'Mushroom & basil', 'Menu', 'Pasta & Burgers', 0.533, 'Thursday'),
(486, 'Napolitan', 'Menu', 'Pasta & Burgers', 0.35, 'Thursday'),
(487, 'Pesto', 'Menu', 'Pasta & Burgers', 0.151, 'Thursday'),
(488, 'Prawn & garlic', 'Menu', 'Pasta & Burgers', 0.705, 'Thursday'),
(489, 'Chicken burger', 'Menu', 'Pasta & Burgers', 0.072, 'Thursday'),
(490, 'Veggie burger', 'Menu', 'Pasta & Burgers', 0.246, 'Thursday'),
(491, 'Chicken', 'Menu', 'Fried Rice', 0.012, 'Thursday'),
(492, 'Mixed', 'Menu', 'Fried Rice', 0.325, 'Thursday'),
(493, 'Seafood', 'Menu', 'Fried Rice', 0.586, 'Thursday'),
(494, 'Vegetables', 'Menu', 'Fried Rice', 0.957, 'Thursday'),
(495, 'Chicken rice & curry', 'Menu', 'Traditional Sri Lankan', 0.026, 'Thursday'),
(496, 'Fish rice & curry', 'Menu', 'Traditional Sri Lankan', 0.259, 'Thursday'),
(497, 'Pork rice & curry', 'Menu', 'Traditional Sri Lankan', 0.218, 'Thursday'),
(498, 'Prawn rice & curry', 'Menu', 'Traditional Sri Lankan', 0.312, 'Thursday'),
(499, 'Chicken curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.908, 'Thursday'),
(500, 'Dhal curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.604, 'Thursday'),
(501, 'Fish curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.297, 'Thursday'),
(502, 'Pork curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.671, 'Thursday'),
(503, 'Prawn curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.465, 'Thursday'),
(504, 'Calamari', 'Menu', 'Devilled', 0.313, 'Thursday'),
(505, 'Cashew nuts', 'Menu', 'Devilled', 0.17, 'Thursday'),
(506, 'Chicken', 'Menu', 'Devilled', 0.91, 'Thursday'),
(507, 'Prawns', 'Menu', 'Devilled', 0.042, 'Thursday'),
(508, 'Mix', 'Menu', 'Devilled', 0.48, 'Thursday'),
(509, 'Cheese & tomato sandwich', 'Menu', 'Snacks', 0.272, 'Friday'),
(510, 'Cheese omelet', 'Menu', 'Snacks', 0.92, 'Friday'),
(511, 'Chicken panini', 'Menu', 'Snacks', 0.785, 'Friday'),
(512, 'Chicken shawarma', 'Menu', 'Snacks', 0.166, 'Friday'),
(513, 'Club sandwich', 'Menu', 'Snacks', 0.473, 'Friday'),
(514, 'Croque monsieur', 'Menu', 'Snacks', 0.867, 'Friday'),
(515, 'Egg sandwich', 'Menu', 'Snacks', 0.918, 'Friday'),
(516, 'French fries', 'Menu', 'Snacks', 0.987, 'Friday'),
(517, 'Fried cashew nuts', 'Menu', 'Snacks', 0.181, 'Friday'),
(518, 'Ham omelet', 'Menu', 'Snacks', 0.947, 'Friday'),
(519, 'Onion rings', 'Menu', 'Snacks', 0.188, 'Friday'),
(520, 'Onion pakora', 'Menu', 'Snacks', 0.101, 'Friday'),
(521, 'Sri Lankan omelet', 'Menu', 'Snacks', 0.942, 'Friday'),
(522, 'Tuna sandwich', 'Menu', 'Snacks', 0.406, 'Friday'),
(523, 'Vegetable spring rolls', 'Menu', 'Snacks', 0.205, 'Friday'),
(524, 'Vegetable sandwich', 'Menu', 'Snacks', 0.805, 'Friday'),
(525, 'Veggie panini', 'Menu', 'Snacks', 0.409, 'Friday'),
(526, 'Calamari', 'Menu', 'Salads', 0.633, 'Friday'),
(527, 'Chicken & pineapple', 'Menu', 'Salads', 0.937, 'Friday'),
(528, 'Mirissa bistro', 'Menu', 'Salads', 0.788, 'Friday'),
(529, 'Prawns', 'Menu', 'Salads', 0.127, 'Friday'),
(530, 'Vegetables', 'Menu', 'Salads', 0.273, 'Friday'),
(531, 'Chickpea', 'Menu', 'Salads', 0.984, 'Friday'),
(532, 'Niçoise', 'Menu', 'Salads', 0.099, 'Friday'),
(533, 'Chicken & vegetable broth', 'Menu', 'Soup', 0.544, 'Friday'),
(534, 'Creamy pumpkin', 'Menu', 'Soup', 0.425, 'Friday'),
(535, 'Cream of tomato', 'Menu', 'Soup', 0.49, 'Friday'),
(536, 'Seafood tom yum', 'Menu', 'Soup', 0.174, 'Friday'),
(537, 'Mushroom', 'Menu', 'Soup', 0.403, 'Friday'),
(538, 'Crispy prawns', 'Menu', 'Grilled Seafood', 0.491, 'Friday'),
(539, 'Grilled calamari', 'Menu', 'Grilled Seafood', 0.248, 'Friday'),
(540, 'Grilled prawns', 'Menu', 'Grilled Seafood', 0.767, 'Friday'),
(541, 'Grilled tuna', 'Menu', 'Grilled Seafood', 0.091, 'Friday'),
(542, 'Seafood platter', 'Menu', 'Grilled Seafood', 0.153, 'Friday'),
(543, 'Crispy chicken', 'Menu', 'Grilled Meats', 0.49, 'Friday'),
(544, 'Grilled chicken', 'Menu', 'Grilled Meats', 0.994, 'Friday'),
(545, 'Honey mustard grilled pork', 'Menu', 'Grilled Meats', 0.501, 'Friday'),
(546, 'Mixed platter', 'Menu', 'Grilled Meats', 0.52, 'Friday'),
(547, 'Carbonara', 'Menu', 'Pasta & Burgers', 0.1, 'Friday'),
(548, 'Marinara', 'Menu', 'Pasta & Burgers', 0.937, 'Friday'),
(549, 'Mushroom & basil', 'Menu', 'Pasta & Burgers', 0.386, 'Friday'),
(550, 'Napolitan', 'Menu', 'Pasta & Burgers', 0.118, 'Friday'),
(551, 'Pesto', 'Menu', 'Pasta & Burgers', 0.431, 'Friday'),
(552, 'Prawn & garlic', 'Menu', 'Pasta & Burgers', 0.803, 'Friday'),
(553, 'Chicken burger', 'Menu', 'Pasta & Burgers', 0.722, 'Friday'),
(554, 'Veggie burger', 'Menu', 'Pasta & Burgers', 0.2, 'Friday'),
(555, 'Chicken', 'Menu', 'Fried Rice', 0.832, 'Friday'),
(556, 'Mixed', 'Menu', 'Fried Rice', 0.563, 'Friday'),
(557, 'Seafood', 'Menu', 'Fried Rice', 0.319, 'Friday'),
(558, 'Vegetables', 'Menu', 'Fried Rice', 0.907, 'Friday'),
(559, 'Chicken rice & curry', 'Menu', 'Traditional Sri Lankan', 0.577, 'Friday'),
(560, 'Fish rice & curry', 'Menu', 'Traditional Sri Lankan', 0.165, 'Friday'),
(561, 'Pork rice & curry', 'Menu', 'Traditional Sri Lankan', 0.094, 'Friday'),
(562, 'Prawn rice & curry', 'Menu', 'Traditional Sri Lankan', 0.974, 'Friday'),
(563, 'Chicken curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.588, 'Friday'),
(564, 'Dhal curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.02, 'Friday'),
(565, 'Fish curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.335, 'Friday'),
(566, 'Pork curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.614, 'Friday'),
(567, 'Prawn curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.067, 'Friday'),
(568, 'Calamari', 'Menu', 'Devilled', 0.49, 'Friday'),
(569, 'Cashew nuts', 'Menu', 'Devilled', 0.25, 'Friday'),
(570, 'Chicken', 'Menu', 'Devilled', 0.782, 'Friday'),
(571, 'Prawns', 'Menu', 'Devilled', 0.157, 'Friday'),
(572, 'Mix', 'Menu', 'Devilled', 0.44, 'Friday'),
(573, 'Cheese & tomato sandwich', 'Menu', 'Snacks', 0.729, 'Saturday'),
(574, 'Cheese omelet', 'Menu', 'Snacks', 0.325, 'Saturday'),
(575, 'Chicken panini', 'Menu', 'Snacks', 0.437, 'Saturday'),
(576, 'Chicken shawarma', 'Menu', 'Snacks', 0.209, 'Saturday'),
(577, 'Club sandwich', 'Menu', 'Snacks', 0.734, 'Saturday'),
(578, 'Croque monsieur', 'Menu', 'Snacks', 0.043, 'Saturday'),
(579, 'Egg sandwich', 'Menu', 'Snacks', 0.013, 'Saturday'),
(580, 'French fries', 'Menu', 'Snacks', 0.937, 'Saturday'),
(581, 'Fried cashew nuts', 'Menu', 'Snacks', 0.647, 'Saturday'),
(582, 'Ham omelet', 'Menu', 'Snacks', 0.421, 'Saturday'),
(583, 'Onion rings', 'Menu', 'Snacks', 0.167, 'Saturday'),
(584, 'Onion pakora', 'Menu', 'Snacks', 0.572, 'Saturday'),
(585, 'Sri Lankan omelet', 'Menu', 'Snacks', 0.357, 'Saturday'),
(586, 'Tuna sandwich', 'Menu', 'Snacks', 0.07, 'Saturday'),
(587, 'Vegetable spring rolls', 'Menu', 'Snacks', 0.28, 'Saturday'),
(588, 'Vegetable sandwich', 'Menu', 'Snacks', 0.188, 'Saturday'),
(589, 'Veggie panini', 'Menu', 'Snacks', 0.102, 'Saturday'),
(590, 'Calamari', 'Menu', 'Salads', 0.944, 'Saturday'),
(591, 'Chicken & pineapple', 'Menu', 'Salads', 0.415, 'Saturday'),
(592, 'Mirissa bistro', 'Menu', 'Salads', 0.243, 'Saturday'),
(593, 'Prawns', 'Menu', 'Salads', 0.968, 'Saturday'),
(594, 'Vegetables', 'Menu', 'Salads', 0.113, 'Saturday'),
(595, 'Chickpea', 'Menu', 'Salads', 0.659, 'Saturday'),
(596, 'Niçoise', 'Menu', 'Salads', 0.957, 'Saturday'),
(597, 'Chicken & vegetable broth', 'Menu', 'Soup', 0.809, 'Saturday'),
(598, 'Creamy pumpkin', 'Menu', 'Soup', 0.175, 'Saturday'),
(599, 'Cream of tomato', 'Menu', 'Soup', 0.448, 'Saturday'),
(600, 'Seafood tom yum', 'Menu', 'Soup', 0.712, 'Saturday'),
(601, 'Mushroom', 'Menu', 'Soup', 0.22, 'Saturday'),
(602, 'Crispy prawns', 'Menu', 'Grilled Seafood', 0.96, 'Saturday'),
(603, 'Grilled calamari', 'Menu', 'Grilled Seafood', 0.143, 'Saturday'),
(604, 'Grilled prawns', 'Menu', 'Grilled Seafood', 0.833, 'Saturday'),
(605, 'Grilled tuna', 'Menu', 'Grilled Seafood', 0.736, 'Saturday'),
(606, 'Seafood platter', 'Menu', 'Grilled Seafood', 0.179, 'Saturday'),
(607, 'Crispy chicken', 'Menu', 'Grilled Meats', 0.691, 'Saturday'),
(608, 'Grilled chicken', 'Menu', 'Grilled Meats', 0.915, 'Saturday'),
(609, 'Honey mustard grilled pork', 'Menu', 'Grilled Meats', 0.502, 'Saturday'),
(610, 'Mixed platter', 'Menu', 'Grilled Meats', 0.764, 'Saturday'),
(611, 'Carbonara', 'Menu', 'Pasta & Burgers', 0.315, 'Saturday'),
(612, 'Marinara', 'Menu', 'Pasta & Burgers', 0.282, 'Saturday'),
(613, 'Mushroom & basil', 'Menu', 'Pasta & Burgers', 0.465, 'Saturday'),
(614, 'Napolitan', 'Menu', 'Pasta & Burgers', 0.481, 'Saturday'),
(615, 'Pesto', 'Menu', 'Pasta & Burgers', 0.011, 'Saturday'),
(616, 'Prawn & garlic', 'Menu', 'Pasta & Burgers', 0.611, 'Saturday'),
(617, 'Chicken burger', 'Menu', 'Pasta & Burgers', 0.02, 'Saturday'),
(618, 'Veggie burger', 'Menu', 'Pasta & Burgers', 0.266, 'Saturday'),
(619, 'Chicken', 'Menu', 'Fried Rice', 0.273, 'Saturday'),
(620, 'Mixed', 'Menu', 'Fried Rice', 0.568, 'Saturday'),
(621, 'Seafood', 'Menu', 'Fried Rice', 0.02, 'Saturday'),
(622, 'Vegetables', 'Menu', 'Fried Rice', 0.394, 'Saturday'),
(623, 'Chicken rice & curry', 'Menu', 'Traditional Sri Lankan', 0.913, 'Saturday'),
(624, 'Fish rice & curry', 'Menu', 'Traditional Sri Lankan', 0.382, 'Saturday'),
(625, 'Pork rice & curry', 'Menu', 'Traditional Sri Lankan', 0.17, 'Saturday'),
(626, 'Prawn rice & curry', 'Menu', 'Traditional Sri Lankan', 0.703, 'Saturday'),
(627, 'Chicken curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.004, 'Saturday'),
(628, 'Dhal curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.913, 'Saturday'),
(629, 'Fish curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.551, 'Saturday'),
(630, 'Pork curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.018, 'Saturday'),
(631, 'Prawn curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.437, 'Saturday'),
(632, 'Calamari', 'Menu', 'Devilled', 0.13, 'Saturday'),
(633, 'Cashew nuts', 'Menu', 'Devilled', 0.338, 'Saturday'),
(634, 'Chicken', 'Menu', 'Devilled', 0.301, 'Saturday'),
(635, 'Prawns', 'Menu', 'Devilled', 0.492, 'Saturday'),
(636, 'Mix', 'Menu', 'Devilled', 0.556, 'Saturday'),
(637, 'Cheese & tomato sandwich', 'Menu', 'Snacks', 0.303, 'Sunday'),
(638, 'Cheese omelet', 'Menu', 'Snacks', 0.848, 'Sunday'),
(639, 'Chicken panini', 'Menu', 'Snacks', 0.331, 'Sunday'),
(640, 'Chicken shawarma', 'Menu', 'Snacks', 0.111, 'Sunday'),
(641, 'Club sandwich', 'Menu', 'Snacks', 0.561, 'Sunday'),
(642, 'Croque monsieur', 'Menu', 'Snacks', 0.472, 'Sunday'),
(643, 'Egg sandwich', 'Menu', 'Snacks', 0.676, 'Sunday'),
(644, 'French fries', 'Menu', 'Snacks', 0.966, 'Sunday'),
(645, 'Fried cashew nuts', 'Menu', 'Snacks', 0.802, 'Sunday'),
(646, 'Ham omelet', 'Menu', 'Snacks', 0.111, 'Sunday'),
(647, 'Onion rings', 'Menu', 'Snacks', 0.148, 'Sunday'),
(648, 'Onion pakora', 'Menu', 'Snacks', 0.41, 'Sunday'),
(649, 'Sri Lankan omelet', 'Menu', 'Snacks', 0.604, 'Sunday'),
(650, 'Tuna sandwich', 'Menu', 'Snacks', 0.792, 'Sunday'),
(651, 'Vegetable spring rolls', 'Menu', 'Snacks', 0.145, 'Sunday'),
(652, 'Vegetable sandwich', 'Menu', 'Snacks', 0.35, 'Sunday'),
(653, 'Veggie panini', 'Menu', 'Snacks', 0.314, 'Sunday'),
(654, 'Calamari', 'Menu', 'Salads', 0.52, 'Sunday'),
(655, 'Chicken & pineapple', 'Menu', 'Salads', 0.657, 'Sunday'),
(656, 'Mirissa bistro', 'Menu', 'Salads', 0.728, 'Sunday'),
(657, 'Prawns', 'Menu', 'Salads', 0.667, 'Sunday'),
(658, 'Vegetables', 'Menu', 'Salads', 0.153, 'Sunday'),
(659, 'Chickpea', 'Menu', 'Salads', 0.762, 'Sunday'),
(660, 'Niçoise', 'Menu', 'Salads', 0.354, 'Sunday'),
(661, 'Chicken & vegetable broth', 'Menu', 'Soup', 0.481, 'Sunday'),
(662, 'Creamy pumpkin', 'Menu', 'Soup', 0.344, 'Sunday'),
(663, 'Cream of tomato', 'Menu', 'Soup', 0.279, 'Sunday'),
(664, 'Seafood tom yum', 'Menu', 'Soup', 0.361, 'Sunday'),
(665, 'Mushroom', 'Menu', 'Soup', 0.967, 'Sunday'),
(666, 'Crispy prawns', 'Menu', 'Grilled Seafood', 0.754, 'Sunday'),
(667, 'Grilled calamari', 'Menu', 'Grilled Seafood', 0.867, 'Sunday'),
(668, 'Grilled prawns', 'Menu', 'Grilled Seafood', 0.076, 'Sunday'),
(669, 'Grilled tuna', 'Menu', 'Grilled Seafood', 0.777, 'Sunday'),
(670, 'Seafood platter', 'Menu', 'Grilled Seafood', 0.656, 'Sunday'),
(671, 'Crispy chicken', 'Menu', 'Grilled Meats', 0.951, 'Sunday'),
(672, 'Grilled chicken', 'Menu', 'Grilled Meats', 0.785, 'Sunday'),
(673, 'Honey mustard grilled pork', 'Menu', 'Grilled Meats', 0.075, 'Sunday'),
(674, 'Mixed platter', 'Menu', 'Grilled Meats', 0.019, 'Sunday'),
(675, 'Carbonara', 'Menu', 'Pasta & Burgers', 0.868, 'Sunday'),
(676, 'Marinara', 'Menu', 'Pasta & Burgers', 0.283, 'Sunday'),
(677, 'Mushroom & basil', 'Menu', 'Pasta & Burgers', 0.813, 'Sunday'),
(678, 'Napolitan', 'Menu', 'Pasta & Burgers', 0.216, 'Sunday'),
(679, 'Pesto', 'Menu', 'Pasta & Burgers', 0.64, 'Sunday'),
(680, 'Prawn & garlic', 'Menu', 'Pasta & Burgers', 0.554, 'Sunday'),
(681, 'Chicken burger', 'Menu', 'Pasta & Burgers', 0.85, 'Sunday'),
(682, 'Veggie burger', 'Menu', 'Pasta & Burgers', 0.586, 'Sunday'),
(683, 'Chicken', 'Menu', 'Fried Rice', 0.382, 'Sunday'),
(684, 'Mixed', 'Menu', 'Fried Rice', 0.149, 'Sunday'),
(685, 'Seafood', 'Menu', 'Fried Rice', 0.602, 'Sunday'),
(686, 'Vegetables', 'Menu', 'Fried Rice', 0.561, 'Sunday'),
(687, 'Chicken rice & curry', 'Menu', 'Traditional Sri Lankan', 0.999, 'Sunday'),
(688, 'Fish rice & curry', 'Menu', 'Traditional Sri Lankan', 0.311, 'Sunday'),
(689, 'Pork rice & curry', 'Menu', 'Traditional Sri Lankan', 0.56, 'Sunday'),
(690, 'Prawn rice & curry', 'Menu', 'Traditional Sri Lankan', 0.867, 'Sunday'),
(691, 'Chicken curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.653, 'Sunday'),
(692, 'Dhal curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.665, 'Sunday'),
(693, 'Fish curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.367, 'Sunday'),
(694, 'Pork curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.841, 'Sunday'),
(695, 'Prawn curry & plain rice', 'Menu', 'Traditional Sri Lankan', 0.101, 'Sunday'),
(696, 'Calamari', 'Menu', 'Devilled', 0.984, 'Sunday'),
(697, 'Cashew nuts', 'Menu', 'Devilled', 0.617, 'Sunday'),
(698, 'Chicken', 'Menu', 'Devilled', 0.133, 'Sunday'),
(699, 'Prawns', 'Menu', 'Devilled', 0.813, 'Sunday'),
(700, 'Mix', 'Menu', 'Devilled', 0.665, 'Sunday'),
(701, 'Banana Fritters', 'Desserts', 'Desserts', 0.886, 'Monday'),
(702, 'Caramel pudding', 'Desserts', 'Desserts', 0.434, 'Monday'),
(703, 'Chocolate mousse', 'Desserts', 'Desserts', 0.515, 'Monday'),
(704, 'Curd & kithul Treacle', 'Desserts', 'Desserts', 0.273, 'Monday'),
(705, 'Fruit Salad', 'Desserts', 'Desserts', 0.82, 'Monday'),
(706, 'Chocolate crepe', 'Desserts', 'Desserts', 0.282, 'Monday'),
(707, 'Fruit & nut ice cream', 'Desserts', 'Desserts', 0.95, 'Monday'),
(708, 'Vanilla ice cream', 'Desserts', 'Desserts', 0.904, 'Monday'),
(709, '3 scoop ice cream', 'Desserts', 'Desserts', 0.668, 'Monday'),
(710, 'Banana Fritters', 'Desserts', 'Desserts', 0.629, 'Tuesday'),
(711, 'Caramel pudding', 'Desserts', 'Desserts', 0.141, 'Tuesday'),
(712, 'Chocolate mousse', 'Desserts', 'Desserts', 0.818, 'Tuesday'),
(713, 'Curd & kithul Treacle', 'Desserts', 'Desserts', 0.665, 'Tuesday'),
(714, 'Fruit Salad', 'Desserts', 'Desserts', 0.872, 'Tuesday'),
(715, 'Chocolate crepe', 'Desserts', 'Desserts', 0.366, 'Tuesday'),
(716, 'Fruit & nut ice cream', 'Desserts', 'Desserts', 0.212, 'Tuesday'),
(717, 'Vanilla ice cream', 'Desserts', 'Desserts', 0.964, 'Tuesday'),
(718, '3 scoop ice cream', 'Desserts', 'Desserts', 0.185, 'Tuesday'),
(719, 'Banana Fritters', 'Desserts', 'Desserts', 0.032, 'Wednesday'),
(720, 'Caramel pudding', 'Desserts', 'Desserts', 0.603, 'Wednesday'),
(721, 'Chocolate mousse', 'Desserts', 'Desserts', 0.921, 'Wednesday'),
(722, 'Curd & kithul Treacle', 'Desserts', 'Desserts', 0.795, 'Wednesday'),
(723, 'Fruit Salad', 'Desserts', 'Desserts', 0.212, 'Wednesday'),
(724, 'Chocolate crepe', 'Desserts', 'Desserts', 0.677, 'Wednesday'),
(725, 'Fruit & nut ice cream', 'Desserts', 'Desserts', 0.749, 'Wednesday'),
(726, 'Vanilla ice cream', 'Desserts', 'Desserts', 0.714, 'Wednesday'),
(727, '3 scoop ice cream', 'Desserts', 'Desserts', 0.324, 'Wednesday'),
(728, 'Banana Fritters', 'Desserts', 'Desserts', 0.479, 'Thursday'),
(729, 'Caramel pudding', 'Desserts', 'Desserts', 0.421, 'Thursday'),
(730, 'Chocolate mousse', 'Desserts', 'Desserts', 0.67, 'Thursday'),
(731, 'Curd & kithul Treacle', 'Desserts', 'Desserts', 0.087, 'Thursday'),
(732, 'Fruit Salad', 'Desserts', 'Desserts', 0.426, 'Thursday'),
(733, 'Chocolate crepe', 'Desserts', 'Desserts', 0.866, 'Thursday'),
(734, 'Fruit & nut ice cream', 'Desserts', 'Desserts', 0.052, 'Thursday'),
(735, 'Vanilla ice cream', 'Desserts', 'Desserts', 0.664, 'Thursday'),
(736, '3 scoop ice cream', 'Desserts', 'Desserts', 0.165, 'Thursday'),
(737, 'Banana Fritters', 'Desserts', 'Desserts', 0.831, 'Friday'),
(738, 'Caramel pudding', 'Desserts', 'Desserts', 0.659, 'Friday'),
(739, 'Chocolate mousse', 'Desserts', 'Desserts', 0.803, 'Friday'),
(740, 'Curd & kithul Treacle', 'Desserts', 'Desserts', 0.037, 'Friday'),
(741, 'Fruit Salad', 'Desserts', 'Desserts', 0.776, 'Friday'),
(742, 'Chocolate crepe', 'Desserts', 'Desserts', 0.772, 'Friday'),
(743, 'Fruit & nut ice cream', 'Desserts', 'Desserts', 0.528, 'Friday'),
(744, 'Vanilla ice cream', 'Desserts', 'Desserts', 0.326, 'Friday'),
(745, '3 scoop ice cream', 'Desserts', 'Desserts', 0.046, 'Friday'),
(746, 'Banana Fritters', 'Desserts', 'Desserts', 0.253, 'Saturday'),
(747, 'Caramel pudding', 'Desserts', 'Desserts', 0.126, 'Saturday'),
(748, 'Chocolate mousse', 'Desserts', 'Desserts', 0.87, 'Saturday'),
(749, 'Curd & kithul Treacle', 'Desserts', 'Desserts', 0.973, 'Saturday'),
(750, 'Fruit Salad', 'Desserts', 'Desserts', 0.254, 'Saturday'),
(751, 'Chocolate crepe', 'Desserts', 'Desserts', 0.353, 'Saturday'),
(752, 'Fruit & nut ice cream', 'Desserts', 'Desserts', 0.003, 'Saturday'),
(753, 'Vanilla ice cream', 'Desserts', 'Desserts', 0.956, 'Saturday'),
(754, '3 scoop ice cream', 'Desserts', 'Desserts', 0.769, 'Saturday'),
(755, 'Banana Fritters', 'Desserts', 'Desserts', 0.979, 'Sunday'),
(756, 'Caramel pudding', 'Desserts', 'Desserts', 0.588, 'Sunday'),
(757, 'Chocolate mousse', 'Desserts', 'Desserts', 0.004, 'Sunday'),
(758, 'Curd & kithul Treacle', 'Desserts', 'Desserts', 0.257, 'Sunday'),
(759, 'Fruit Salad', 'Desserts', 'Desserts', 0.27, 'Sunday'),
(760, 'Chocolate crepe', 'Desserts', 'Desserts', 0.58, 'Sunday'),
(761, 'Fruit & nut ice cream', 'Desserts', 'Desserts', 0.088, 'Sunday'),
(762, 'Vanilla ice cream', 'Desserts', 'Desserts', 0.702, 'Sunday'),
(763, '3 scoop ice cream', 'Desserts', 'Desserts', 0.247, 'Sunday');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_admin`
--

CREATE TABLE `rpos_admin` (
  `admin_id` varchar(200) NOT NULL,
  `admin_name` varchar(200) NOT NULL,
  `admin_email` varchar(200) NOT NULL,
  `admin_password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_admin`
--

INSERT INTO `rpos_admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
('10e0b6dc958adfb5b094d8935a13aeadbe783c25', 'System Admin', 'admin@mail.com', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_category`
--

CREATE TABLE `rpos_category` (
  `category_id` varchar(100) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `status` char(100) NOT NULL,
  `main_category` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_category`
--

INSERT INTO `rpos_category` (`category_id`, `category_name`, `status`, `main_category`) VALUES
('C001', 'Coffee', 'Active', 'Beverage'),
('C002', 'Tea', 'Active', 'Beverage'),
('C003', 'Fresh Juice', 'Active', 'Beverage'),
('C004', 'Milk Shake', 'Active', 'Beverage'),
('C005', 'Lassi', 'Active', 'Beverage'),
('C006', 'Snacks', 'Active', 'Menu'),
('C007', 'Salads', 'Active', 'Menu'),
('C008', 'Soup', 'Active', 'Menu'),
('C009', 'Grilled Seafood', 'Active', 'Menu'),
('C010', 'Grilled Meats', 'Active', 'Menu'),
('C011', 'Pasta & Burgers', 'Active', 'Menu'),
('C012', 'Fride Rice', 'Active', 'Menu'),
('C013', 'Traditional Sri Lankan', 'Active', 'Menu'),
('C014', 'Devilled', 'Active', 'Menu'),
('C015', 'Desserts', 'Active', 'Desserts');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_customers`
--

CREATE TABLE `rpos_customers` (
  `customer_id` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `customer_phoneno` varchar(200) NOT NULL,
  `customer_email` varchar(200) NOT NULL,
  `customer_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_customers`
--

INSERT INTO `rpos_customers` (`customer_id`, `customer_name`, `customer_phoneno`, `customer_email`, `customer_password`, `created_at`) VALUES
('C001', 'abc', '0332316545', 'abc@mail.com', '7ba80c3cb4f187c314c43cbf778e009b940ef3ef', '2023-08-26 13:40:05.206834'),
('C002', 'customer 2', '1234567890', 'customer2@mail.com', '7ba80c3cb4f187c314c43cbf778e009b940ef3ef', '2023-08-26 13:50:24.781610'),
('C003', 'customer 3', '0123456783', 'customer3@mail.com', '7ba80c3cb4f187c314c43cbf778e009b940ef3ef', '2023-08-26 13:51:14.457836'),
('C004', 'customer 4', '4561237890', 'customer4@mail.com', '7ba80c3cb4f187c314c43cbf778e009b940ef3ef', '2023-08-26 13:52:30.662538'),
('C005', 'customer 5', '6549873210', 'customer5@mail.com', '7ba80c3cb4f187c314c43cbf778e009b940ef3ef', '2023-08-26 13:53:06.335412'),
('C006', 'Customer 6', '7894563210', 'customer6@mail.com', '7ba80c3cb4f187c314c43cbf778e009b940ef3ef', '2023-08-26 13:53:47.561030');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_orders`
--

CREATE TABLE `rpos_orders` (
  `order_id` varchar(200) NOT NULL,
  `order_code` varchar(200) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `customer_name` varchar(200) NOT NULL,
  `prod_id` varchar(200) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_price` varchar(200) NOT NULL,
  `prod_qty` varchar(200) NOT NULL,
  `order_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_orders`
--

INSERT INTO `rpos_orders` (`order_id`, `order_code`, `customer_id`, `customer_name`, `prod_id`, `prod_name`, `prod_price`, `prod_qty`, `order_status`, `created_at`) VALUES
('42140def43', 'JVRG-7563', 'C002', 'customer 2', 'PROD011', 'Onion Rings', '10', '2', '', '2023-09-10 19:08:01.694243'),
('bb74885337', 'HDME-0614', 'C002', 'customer 2', 'PROD001', 'Chees and tomato sandwich', '16', '2', '', '2023-09-10 19:08:08.708732'),
('fdfc695d57', 'ICUV-7946', 'C004', 'customer 4', 'PROD001', 'Chees and tomato sandwich', '15', '1', '', '2023-09-10 19:08:29.063647');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_pass_resets`
--

CREATE TABLE `rpos_pass_resets` (
  `reset_id` int(20) NOT NULL,
  `reset_code` varchar(200) NOT NULL,
  `reset_token` varchar(200) NOT NULL,
  `reset_email` varchar(200) NOT NULL,
  `reset_status` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rpos_payments`
--

CREATE TABLE `rpos_payments` (
  `pay_id` varchar(200) NOT NULL,
  `pay_code` varchar(200) NOT NULL,
  `order_code` varchar(200) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `pay_amt` varchar(200) NOT NULL,
  `pay_method` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_payments`
--

INSERT INTO `rpos_payments` (`pay_id`, `pay_code`, `order_code`, `customer_id`, `pay_amt`, `pay_method`, `created_at`) VALUES
('0bf592', '9UMWLG4BF8', 'EJKA-4501', '35135b319ce3', '8', 'Cash', '2022-09-04 16:31:54.525284'),
('213685', 'EOJLR7QWKV', 'NFUY-7189', 'C002', '78', 'Cash', '2023-08-20 15:55:51.827954'),
('3106ea', 'fdfdfdfdfd', 'LOTC-9375', '8b2e3346228f', '9', 'Cash', '2023-07-23 09:32:29.112042'),
('4423d7', 'QWERT0YUZ1', 'JFMB-0731', '35135b319ce3', '11', 'Cash', '2022-09-04 16:37:03.655834'),
('442865', '146XLFSC9V', 'INHG-0875', '9c7fcc067bda', '10', 'Paypal', '2022-09-04 16:35:22.470600'),
('5192fe', 'C3N6F7QUML', 'TPUC-1723', '57b7541814ed', '6', 'Cash', '2023-07-23 09:25:23.918410'),
('65891b', 'MF2TVJA1PY', 'ZPXD-6951', 'e711dcc579d9', '16', 'Cash', '2022-09-03 13:12:46.959558'),
('6cd723', 'F5YNIZJ98M', 'UZVI-6248', 'C001', '45', 'Cash', '2023-08-04 06:51:56.814382'),
('75ae21', '1QIKVO69SA', 'IUSP-9453', 'fe6bb69bdd29', '10', 'Cash', '2022-09-03 11:50:40.496625'),
('7aeb62', '234B7F5ZVT', 'FOBG-8025', '35135b319ce3', '35', 'Cash', '2023-07-23 19:00:21.799657'),
('7e1989', 'KLTF3YZHJP', 'QOEH-8613', '29c759d624f9', '9', 'Cash', '2022-09-03 12:02:32.926529'),
('968488', '5E31DQ2NCG', 'COXP-6018', '7c8f2100d552', '22', 'Cash', '2022-09-03 12:17:44.639979'),
('984539', 'LSBNK1WRFU', 'FNAB-9142', '35135b319ce3', '18', 'Paypal', '2022-09-04 16:32:14.852482'),
('9fcee7', 'AZSUNOKEI7', 'OTEV-8532', '3859d26cd9a5', '15', 'Cash', '2022-09-03 13:13:38.855058'),
('b8a837', 'S1V9TY5RJL', 'MPGJ-9046', '57b7541814ed', '42', 'Paypal', '2023-07-17 14:25:58.043270'),
('c81d2e', 'WERGFCXZSR', 'AEHM-0653', '06549ea58afd', '8', 'Cash', '2022-09-03 13:26:00.331494'),
('e46e29', 'QMCGSNER3T', 'ONSY-2465', '57b7541814ed', '12', 'Cash', '2022-09-03 08:35:50.172062'),
('f97563', 'OY8ZXTUF4M', 'OIEK-0564', 'C001', '54', 'Cash', '2023-08-04 06:52:52.970447');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_products`
--

CREATE TABLE `rpos_products` (
  `category_id` char(100) NOT NULL,
  `prod_id` varchar(200) NOT NULL,
  `prod_code` varchar(200) NOT NULL,
  `prod_name` varchar(200) NOT NULL,
  `prod_img` varchar(200) NOT NULL,
  `prod_desc` longtext NOT NULL,
  `prod_price` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_products`
--

INSERT INTO `rpos_products` (`category_id`, `prod_id`, `prod_code`, `prod_name`, `prod_img`, `prod_desc`, `prod_price`, `created_at`) VALUES
('C006', 'PROD001', '001', 'Chees and tomato sandwich', '', 'chees, tomato tosted', '16', '2023-08-26 13:54:24.657082'),
('C006', 'PROD002', '002', 'Chicken Omlet', '05432784a9de4d140120c648a0968fd7_devilled-chicken-omelette_944_531.jpg', 'chicken', '18', '2023-08-03 11:35:16.068503'),
('C006', 'PROD003', '003', 'Chicken Panini', 'grilled-chicken-panini-sandwich-recipe-2097378-hero-01-09e7d3d7e8604a8a90217e6f9e356648.jpg', 'chicken', '20', '2023-08-03 11:36:25.497261'),
('C006', 'PROD004', '004', 'Chicken Shawarma', 'shutterstock_1339636625-1.webp', 'chicken', '12', '2023-08-03 11:37:20.511326'),
('C006', 'PROD005', '005', 'Club Sandwich', 'Club-sandwich.jpg', 'sandwich', '15', '2023-08-03 11:38:37.582689'),
('C006', 'PROD006', '006', 'Croque Monsieur', 'download.jpeg', 'sandwich', '14', '2023-08-03 11:40:03.736398'),
('C006', 'PROD007', '007', 'Egg Sandwich', 'download (1).jpeg', 'egg', '10', '2023-08-03 11:41:13.442777'),
('C006', 'PROD008', '008', 'French Fries', 'Copycat-McDonalds-French-Fries-.jpg', 'tomato', '13', '2023-08-03 11:42:33.325536'),
('C006', 'PROD009', '009', 'Fried Cashew nuts', '1-24-500x427.jpeg', 'cashew', '25', '2023-08-03 11:43:51.317618'),
('C006', 'PROD010', '010', 'Ham Omlet', 'download (2).jpeg', 'omlet', '14', '2023-08-03 11:44:47.254492'),
('C006', 'PROD011', '011', 'Onion Rings', 'Onion-Rings-Recipe-5.jpg', 'onion', '10', '2023-08-03 11:45:42.229312'),
('C006', 'PROD012', '012', 'Onion Pakora', 'onion-pakoda-pakora.jpg', 'pakora', '14', '2023-08-03 11:46:46.360869'),
('C006', 'PROD013', '013', 'Srilanka Omlet', 'download (3).jpeg', 'omlet', '17', '2023-08-03 11:47:42.331751'),
('C006', 'PROD014', '014', 'Tuna Sandwich', 'download (4).jpeg', 'tuna', '21', '2023-08-03 11:48:47.438108'),
('C006', 'PROD015', '015', 'Vegitable Spring rolls', 'download (5).jpeg', 'spring', '24', '2023-08-03 11:50:06.953556'),
('C006', 'PROD016', '016', 'Vegitable sandwich', 'download (6).jpeg', 'veg', '23', '2023-08-03 11:53:19.207394'),
('C006', 'PROD017', '017', 'Veggie Panini', 'veggie-panini-resize-3.jpg', 'panini', '26', '2023-08-03 11:54:23.238500'),
('C007', 'PROD018', '018', 'Calamari', 'download (7).jpeg', 'salad', '21', '2023-08-03 11:55:26.859948'),
('C007', 'PROD019', '019', 'Checken and pinaple ', 'download (8).jpeg', 'chicken', '34', '2023-08-03 11:56:41.351065'),
('C007', 'PROD020', '019', 'Mirissa bistro', 'download (9).jpeg', 'bistro', '36', '2023-08-03 11:58:06.751509'),
('C007', 'PROD021', '020', 'prawns', 'prawn-salad-resized-shutterstock_166735733.jpg', 'prawn', '32', '2023-08-03 11:59:13.470433'),
('C007', 'PROD022', '021', 'Vegetable', 'download (10).jpeg', 'vege', '18', '2023-08-03 12:00:29.833851'),
('C007', 'PROD023', '021', 'Chickpea', 'download.jpeg', 'chicken', '32', '2023-08-03 12:01:32.896635'),
('C007', 'PROD024', '022', 'Nicoise', 'download (1).jpeg', 'nic', '22', '2023-08-03 12:02:47.923660'),
('C008', 'PROD025', '023', 'Chicken & Vegitable broth', 'download (2).jpeg', 'veg', '25', '2023-08-03 12:03:53.716667'),
('C008', 'PROD026', '024', 'Creamy Pumpkin soup', 'download (3).jpeg', 'pumkin', '27', '2023-08-03 12:05:02.841760'),
('C008', 'PROD027', '025', 'Cream of Tomato soup', 'cream-of-tomato-soup-recipe-1-500x375.webp', 'tomato', '28', '2023-08-03 12:06:01.184247'),
('C008', 'PROD028', '026', 'Sea Food Tom Yum soup', 'download (4).jpeg', 'seafood', '35', '2023-08-03 12:07:13.580221'),
('C008', 'PROD029', '027', 'Mushroom soup', 'download (5).jpeg', 'mushroom', '28', '2023-08-03 12:08:11.548766'),
('C009', 'PROD030', '028', 'Crispy Prawns', 'coconut-prawns-02.jpg', 'prawns', '45', '2023-08-03 12:09:28.989439'),
('C009', 'PROD031', '029', 'Grillrd Caramari', 'download (6).jpeg', 'grill', '32', '2023-08-03 12:10:35.084215'),
('C009', 'PROD032', '030', 'Grilled Prawns', 'grilledshrimp-1525299887.jpg', 'prawn', '38', '2023-08-03 12:11:34.605746'),
('C009', 'PROD033', '031', 'Grilled Tuna', 'download (7).jpeg', 'tuna', '45', '2023-08-03 12:12:24.830242'),
('C009', 'PROD034', '032', 'Seafood platter', 'seafood-platter-taste-156004-2.jpg', 'platter', '54', '2023-08-03 12:13:50.223740'),
('C010', 'PROD035', '033', 'Crispy Chicken', 'download (8).jpeg', 'chicken', '38', '2023-08-03 12:14:45.267693'),
('C010', 'PROD036', '034', 'Grilled Chicken', 'download (9).jpeg', 'chicken', '43', '2023-08-03 12:15:46.792540'),
('C010', 'PROD037', '035', 'Huney Mustard Grilled Pork', 'Grilled-Pork-Chops-with-Honey-Mustard-Glaze-square.jpg', 'pork', '45', '2023-08-03 12:17:00.346029'),
('C010', 'PROD038', '036', 'Mixed Platter', 'download (11).jpeg', 'mix', '50', '2023-08-03 12:18:05.370673'),
('C011', 'PROD039', '037', 'Carbonara', 'carbonara-horizontal-master768-v2.jpg', 'cab', '28', '2023-08-03 12:19:03.336689'),
('C011', 'PROD040', '038', 'Marinara', 'download.jpeg', 'ma', '29', '2023-08-03 12:20:22.156310'),
('C011', 'PROD041', '039', 'Mushroom and basil', 'download (1).jpeg', 'mush', '36', '2023-08-03 12:21:30.122587'),
('C011', 'PROD042', '040', 'Napolitan', 'download (2).jpeg', 'p', '34', '2023-08-03 12:22:16.746415'),
('C011', 'PROD043', '041', 'Pesto', 'download (3).jpeg', 'pes', '45', '2023-08-03 12:23:05.684887'),
('C011', 'PROD044', '042', 'Prawn and Garlic', 'download (4).jpeg', 'prawn', '31', '2023-08-03 12:24:21.349947'),
('C011', 'PROD045', '043', 'Chicken Burger', 'download (5).jpeg', 'cj', '29', '2023-08-03 12:25:14.962546'),
('C011', 'PROD046', '044', 'Veggie Burger', 'veggie-burgers-1-2.webp', 'veg', '30', '2023-08-03 12:26:17.064423'),
('C012', 'PROD047', '045', 'Chicken Friedrice', 'download (6).jpeg', 'rice', '37', '2023-08-03 12:27:36.221587'),
('C012', 'PROD048', '046', 'Mixed Friedrice', 'maxresdefault.jpg', 'mix', '38', '2023-08-03 12:30:38.626207'),
('C012', 'PROD049', '047', 'seafood friedrice', 'maxresdefault.jpg', 'seafood', '45', '2023-08-06 10:21:22.250697'),
('C012', 'PROD050', '048', 'vegetable friedrice', 'Fried-Rice-Recipe-2.jpg', 'vege', '32', '2023-08-06 10:23:01.133450'),
('C013', 'PROD051', '049', 'Chicken rice and curry', 'download (7).jpeg', 'rice', '47', '2023-08-06 10:24:30.753537'),
('C013', 'PROD052', '050', 'Fish rice and curry', 'download (8).jpeg', 'fish', '43', '2023-08-06 10:25:49.110650'),
('C013', 'PROD053', '051', 'Pork rice and curry', 'EiqiaWIX0AEZJ2E.jpeg', 'pork', '48', '2023-08-06 10:27:11.823386'),
('C013', 'PROD054', '052', 'prawn rice and curry', 'sri-lankan-prawn-curry.jpg', 'prawn', '48', '2023-08-06 10:28:31.576875'),
('C013', 'PROD055', '053', 'Chicken curry and plain rice', 'maxresdefault (3).jpg', 'chiken', '43', '2023-08-06 10:30:01.552740'),
('C013', 'PROD056', '054', 'Dhal curry and plain rice', 'download (9).jpeg', 'dhal', '29', '2023-08-06 10:31:32.748095'),
('C013', 'PROD057', '055', 'Fish curry and plain rice', 'fish-rice-recipe.jpg', 'fish', '39', '2023-08-06 10:32:56.490184'),
('C013', 'PROD058', '056', 'pork curry and plain rice', 'rice1001.JPG', 'pork', '41', '2023-08-06 10:34:14.044755'),
('C013', 'PROD059', '057', 'prawn curry and plain rice', 'download (10).jpeg', 'prawn', '43', '2023-08-06 10:35:28.253870'),
('C014', 'PROD060', '058', 'Calamari', 'download (11).jpeg', 'calamari', '48', '2023-08-06 10:36:42.903022'),
('C014', 'PROD061', '059', 'cashew nuts deviled', 'images.jpeg', 'c', '59', '2023-08-06 10:38:27.325327'),
('C014', 'PROD062', '060', 'chicken deviled', 'Sr-Lankan-Deviled-Chicken-21500-072f0c162d-1617328178.jpg', 'chicken', '45', '2023-08-06 10:39:43.677944'),
('C014', 'PROD063', '061', 'prawn deviled', 'download (12).jpeg', 'prawn', '38', '2023-08-06 10:40:42.958945'),
('C013', 'PROD064', '062', 'mix deviled', 'download (13).jpeg', 'mix', '56', '2023-08-06 10:42:45.102673'),
('C015', 'PROD065', '063', 'Banana fitters', 'banana-fritter-500x375.jpg', 'banana', '39', '2023-08-06 10:44:40.736846'),
('C015', 'PROD066', '064', 'cramel pudding', 'download (14).jpeg', 'pudin', '40', '2023-08-06 10:45:49.056352'),
('C015', 'PROD067', '065', 'Chocolate mousse', 'chocolate-mousse-3.jpg', 'choc', '45', '2023-08-06 10:47:01.040760'),
('C015', 'PROD068', '066', 'curd and kithul Treacle', 'download (15).jpeg', 'curd', '46', '2023-08-06 10:48:29.140424'),
('C015', 'PROD069', '067', 'Fruit Salad', 'Fruit-Salad-7-500x500.jpg', 'salad', '38', '2023-08-06 10:49:51.910143'),
('C015', 'PROD070', '068', 'Chocolate Creap', 'download (16).jpeg', 'choc', '50', '2023-08-06 10:50:56.912447'),
('C015', 'PROD071', '069', 'Fruit and Nut Ice cream', 'maxresdefault (4).jpg', 'fruir', '25', '2023-08-06 10:52:00.553109'),
('C015', 'PROD072', '070', 'Vanila ice cream', 'download (17).jpeg', 'vanila', '23', '2023-08-06 10:53:09.600479'),
('C015', 'PROD074', '071', '3 scoop ice cream', 'download (18).jpeg', 'sch', '39', '2023-08-06 11:15:34.882181');

-- --------------------------------------------------------

--
-- Table structure for table `rpos_staff`
--

CREATE TABLE `rpos_staff` (
  `staff_id` int(20) NOT NULL,
  `staff_name` varchar(200) NOT NULL,
  `staff_number` varchar(200) NOT NULL,
  `staff_email` varchar(200) NOT NULL,
  `staff_password` varchar(200) NOT NULL,
  `created_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rpos_staff`
--

INSERT INTO `rpos_staff` (`staff_id`, `staff_name`, `staff_number`, `staff_email`, `staff_password`, `created_at`) VALUES
(2, 'Cashier Trevor', 'QEUY-9042', 'cashier@mail.com', '903b21879b4a60fc9103c3334e4f6f62cf6c3a2d', '2022-09-04 16:11:30.581882'),
(3, 'hffff', 'TPSZ-7308', 'hhh@ghjk.com', 'adcd7048512e64b48da55b027577886ee5a36350', '2023-07-23 12:34:35.784805'),
(4, 'cashier 1', 'ZGSX-6045', 'cashier1@mail.com', '7ba80c3cb4f187c314c43cbf778e009b940ef3ef', '2023-09-11 17:03:07.656536');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu_data`
--
ALTER TABLE `menu_data`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `rpos_admin`
--
ALTER TABLE `rpos_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `rpos_category`
--
ALTER TABLE `rpos_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `rpos_customers`
--
ALTER TABLE `rpos_customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `rpos_orders`
--
ALTER TABLE `rpos_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `CustomerOrder` (`customer_id`),
  ADD KEY `ProductOrder` (`prod_id`);

--
-- Indexes for table `rpos_pass_resets`
--
ALTER TABLE `rpos_pass_resets`
  ADD PRIMARY KEY (`reset_id`);

--
-- Indexes for table `rpos_payments`
--
ALTER TABLE `rpos_payments`
  ADD PRIMARY KEY (`pay_id`),
  ADD KEY `order` (`order_code`);

--
-- Indexes for table `rpos_products`
--
ALTER TABLE `rpos_products`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `rpos_staff`
--
ALTER TABLE `rpos_staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu_data`
--
ALTER TABLE `menu_data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=764;

--
-- AUTO_INCREMENT for table `rpos_staff`
--
ALTER TABLE `rpos_staff`
  MODIFY `staff_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `rpos_orders`
--
ALTER TABLE `rpos_orders`
  ADD CONSTRAINT `CustomerOrder` FOREIGN KEY (`customer_id`) REFERENCES `rpos_customers` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ProductOrder` FOREIGN KEY (`prod_id`) REFERENCES `rpos_products` (`prod_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
