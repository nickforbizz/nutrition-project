-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 05, 2018 at 09:37 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nutrition_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `cereals_table`
--

CREATE TABLE `cereals_table` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `carbohydrates` float NOT NULL,
  `protein` float NOT NULL,
  `fats` float NOT NULL,
  `vitamins` float NOT NULL,
  `water` float NOT NULL,
  `minerals` float NOT NULL,
  `Total_Calories` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `cereals_table`
--

INSERT INTO `cereals_table` (`id`, `name`, `carbohydrates`, `protein`, `fats`, `vitamins`, `water`, `minerals`, `Total_Calories`) VALUES
(1, 'white bread', 46.1, 7.9, 1.6, 0, 0, 207.44, 263.04),
(2, 'brown bread', 42.1, 7.9, 2, 0, 0, 238.32, 290.32),
(3, ' one cup maize', 29.29, 4.96, 1.82, 0, 0, 0, 132),
(4, 'wheat', 23.64, 3.86, 2.48, 0, 0, 0, 128),
(5, 'beans', 26.8, 18.9, 7.7, 0, 0, 0, 53.4),
(6, ' a cup of cooked white rice', 44.08, 4.2, 0.44, 0, 0, 0, 204),
(7, ' a cup of barley', 44.31, 3.55, 0.69, 0, 0, 0, 193),
(8, 'peas', 102, 29.8, 2.9, 0, 0, 0, 134),
(9, 'cup porrige ', 143.29, 21.7, 6.34, 0, 0, 0, 651),
(10, 'a cup of millet', 41.01, 6.09, 1.74, 0, 0, 0, 205),
(11, 'green grams', 19.2, 7, 0.4, 0, 0, 0, 105),
(12, 'sunflower', 0, 0, 13.6, 0, 0, 0, 120);

-- --------------------------------------------------------

--
-- Table structure for table `dairly_table`
--

CREATE TABLE `dairly_table` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `carbohydrates` float NOT NULL,
  `protein` float NOT NULL,
  `fats` float NOT NULL,
  `vitamins` float NOT NULL,
  `water` float NOT NULL,
  `minerals` float NOT NULL,
  `Total_Calories` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `dairly_table`
--

INSERT INTO `dairly_table` (`id`, `name`, `carbohydrates`, `protein`, `fats`, `vitamins`, `water`, `minerals`, `Total_Calories`) VALUES
(1, 'cheese', 1.3, 3.7, 10.7, 0, 0, 0, 115),
(2, '100 ml of milk', 4.66, 3.32, 3.35, 0, 0, 0, 62),
(3, 'butter', 0.01, 0.12, 11.52, 0, 0, 0, 102),
(4, 'yoghurt', 15.98, 11.92, 3.52, 0, 0, 0, 143),
(5, 'sour milk', 11.4, 8.1, 4.8, 0, 0, 0, 122);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `fruits` int(11) NOT NULL,
  `cereals` int(11) NOT NULL,
  `meat` int(11) NOT NULL,
  `dairy` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `time_of_day` varchar(50) NOT NULL,
  `user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `time`, `fruits`, `cereals`, `meat`, `dairy`, `status`, `time_of_day`, `user`) VALUES
(1, '2018-03-29 12:57:25', 3, 0, 0, 0, 0, 'mid_morning', 0),
(2, '2018-03-29 13:13:20', 7, 0, 0, 0, 1, 'evening', 7),
(3, '2018-03-29 15:05:33', 0, 9, 0, 0, 1, 'evening', 7),
(4, '2018-03-30 17:56:42', 0, 0, 0, 2, 1, 'morning', 1),
(5, '2018-03-30 18:00:03', 0, 0, 1, 0, 1, 'evening', 1),
(6, '2018-03-30 18:00:36', 7, 0, 0, 0, 1, 'evening', 1),
(7, '2018-04-01 13:26:11', 0, 11, 0, 0, 1, 'lunch', 1),
(8, '2018-04-04 06:56:45', 1, 0, 0, 0, 1, 'lunch', 9),
(9, '2018-04-05 10:08:13', 0, 0, 4, 0, 1, 'lunch', 10);

-- --------------------------------------------------------

--
-- Table structure for table `food_type`
--

CREATE TABLE `food_type` (
  `id` int(11) NOT NULL,
  `cereals` int(11) NOT NULL,
  `dairy` int(11) NOT NULL,
  `Meat` int(11) NOT NULL,
  `friuts` int(11) NOT NULL,
  `vegetables` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

-- --------------------------------------------------------

--
-- Table structure for table `fruits_table`
--

CREATE TABLE `fruits_table` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `carbohydrates` float NOT NULL,
  `protein` float NOT NULL,
  `fats` float NOT NULL,
  `vitamins` float NOT NULL,
  `water` float NOT NULL,
  `minerals` float NOT NULL,
  `Total_Calories` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fruits_table`
--

INSERT INTO `fruits_table` (`id`, `name`, `carbohydrates`, `protein`, `fats`, `vitamins`, `water`, `minerals`, `Total_Calories`) VALUES
(1, 'orange', 15.36, 1.23, 0.16, 0, 0, 0, 62),
(2, 'apple', 19.06, 0.36, 0.23, 0, 0, 0, 72),
(3, 'banana', 26.95, 1.29, 0.39, 0, 0, 0, 105),
(4, 'a cup of strawberries', 11.67, 1.02, 0.46, 0, 0, 0, 49),
(5, 'a cup of diced pineapple', 19.58, 0.84, 0.19, 0, 0, 0, 74),
(6, 'one mango', 35.19, 1.06, 0.56, 0, 0, 0, 135),
(7, 'one cup cubed avocado', 12.8, 3, 21.99, 0, 0, 0, 240);

-- --------------------------------------------------------

--
-- Table structure for table `meat_table`
--

CREATE TABLE `meat_table` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `carbohydrates` float NOT NULL,
  `protein` float NOT NULL,
  `fats` float NOT NULL,
  `vitamins` float NOT NULL,
  `water` float NOT NULL,
  `minerals` float NOT NULL,
  `Total_Calories` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `meat_table`
--

INSERT INTO `meat_table` (`id`, `name`, `carbohydrates`, `protein`, `fats`, `vitamins`, `water`, `minerals`, `Total_Calories`) VALUES
(1, 'mutton', 7.06, 11.46, 8.77, 0, 0, 9, 154),
(2, 'beef', 0, 31.86, 23.64, 0, 0, 0, 348),
(3, 'chicken meat', 0, 24.82, 6.48, 0, 0, 0, 164),
(4, 'pork', 0, 23.29, 6.13, 0, 0, 0, 154),
(5, 'fish', 0.31, 25.53, 1.33, 0, 0, 0, 123),
(6, 'veal', 0, 21.94, 7.68, 0, 0, 0, 163);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `imageTitle` text NOT NULL,
  `status` int(11) NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `imageTitle`, `status`, `date_created`) VALUES
(1, 'Nick', 'nicholaswaruingi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'userImg/1522083608', 0, '2018-03-26 19:00:08'),
(2, 'Mosee', 'email@d', '81dc9bdb52d04dc20036dbd8313ed055', 'userImg/1522149961', 0, '2018-03-27 13:26:01'),
(3, 'jackie', 'jackie@gmail.c', '81a57538bea3f6e953f6a459eb767357', 'userImg/img_default.png', 0, '2018-03-28 12:47:33'),
(4, 'kamaa', 'kamaa@mail.v', '81dc9bdb52d04dc20036dbd8313ed055', 'userImg/img_default.png', 0, '2018-03-28 12:49:18'),
(5, 'ben', 'ben@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'userImg/img_default.png', 0, '2018-03-28 13:35:41'),
(6, 'timo', 'nicholaswaruingi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'userImg/img_default.png', 0, '2018-03-28 13:36:33'),
(7, 'njuguna', 'nicholaswaruingi@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'userImg/1522237169', 0, '2018-03-28 13:39:29'),
(8, 'victor', 'victor@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 'userImg/img_default.png', 0, '2018-04-01 15:36:12'),
(9, 'admin', 'nickfoo@gmail.com', '58b4e38f66bcdb546380845d6af27187', 'userImg/1522752429', 0, '2018-04-03 12:47:09'),
(10, 'jackie', 'jackie@gmail.c', '81dc9bdb52d04dc20036dbd8313ed055', 'userImg/1522920388', 0, '2018-04-05 11:26:28'),
(11, 'vin', 'kk@gmail.com', '535649b032069346b35d260a6b086bc0', 'userImg/1522923550', 0, '2018-04-05 12:19:10'),
(12, 'ken', 'x@ken.com', 'c20ad4d76fe97759aa27a0c99bff6710', 'userImg/1522936564', 0, '2018-04-05 15:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `age` int(11) NOT NULL,
  `preferences` int(11) NOT NULL,
  `weight` float NOT NULL,
  `bmi` float NOT NULL,
  `Location` text NOT NULL,
  `height` float NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `goals` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`id`, `name`, `age`, `preferences`, `weight`, `bmi`, `Location`, `height`, `user_id`, `activity`, `gender`, `goals`) VALUES
(1, 'Njuguna', 21, 0, 60, 12.3967, 'Kitale', 2.2, 7, 'very_active', 'male', 'maintenance'),
(2, 'Nick', 21, 0, 52, 17.9931, 'Kagwe', 1.7, 1, 'sedentary', 'male', 'bodybuilding'),
(3, 'Victor', 12, 0, 59, 12.1901, 'chuka', 2.2, 8, 'bodyBuilding', 'male', 'fat_loss'),
(4, 'Admin', 20, 0, 62, 21.4533, 'chuka', 1.7, 9, 'sedentary', 'female', 'fat_loss'),
(5, 'Jackie', 20, 0, 55, 21.4844, 'meru', 1.6, 10, 'moderate_activity', 'female', 'maintenance'),
(6, 'Ken', 34, 0, 65, 28.8889, 'x', 1.5, 12, 'moderate_activity', 'male', 'maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `user_preferences`
--

CREATE TABLE `user_preferences` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `calories` int(11) NOT NULL,
  `carbs` int(11) NOT NULL,
  `protein` float NOT NULL,
  `fat` float NOT NULL,
  `requiredCarbs` float NOT NULL,
  `requiredProtein` float NOT NULL,
  `requiredFat` float NOT NULL,
  `meal_at` varchar(50) NOT NULL,
  `user` int(11) NOT NULL,
  `favMealsID` int(11) NOT NULL,
  `class` varchar(50) NOT NULL,
  `post` varchar(50) NOT NULL,
  `goals` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_preferences`
--

INSERT INTO `user_preferences` (`id`, `name`, `calories`, `carbs`, `protein`, `fat`, `requiredCarbs`, `requiredProtein`, `requiredFat`, `meal_at`, `user`, `favMealsID`, `class`, `post`, `goals`) VALUES
(2, 'one cup cubed avocado', 240, 13, 3, 21.99, 45, 130, 45, 'evening', 9, 1, 'addFav', 'insert', 'fat_loss'),
(3, 'orange', 62, 15, 1.23, 0.16, 67, 114, 38, 'lunch', 9, 7, 'addFav', 'insert', 'fat_loss'),
(8, 'apple', 72, 19, 0.36, 0.23, 0, 0, 0, 'morning', 1, 3, 'addFav', 'insert', 'bodybuilding'),
(9, 'green grams', 105, 19, 7, 0.4, 0, 0, 0, 'lunch', 1, 6, 'addFav', 'insert', 'bodybuilding'),
(19, 'green grams', 105, 19, 7, 0.4, 124, 84, 39, 'lunch', 10, 6, 'addFav', 'insert', 'maintenance'),
(21, 'green grams', 105, 19, 7, 0.4, 287, 201, 67, 'lunch', 12, 6, 'addFav', 'insert', 'maintenance'),
(22, 'one cup cubed avocado', 240, 13, 3, 21.99, 184, 161, 87, 'evening', 12, 5, 'addFav', 'insert', 'maintenance'),
(23, 'one cup cubed avocado', 240, 13, 3, 21.99, 287, 172, 67, 'evening', 12, 1, 'addFav', 'insert', 'maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `vegetables_table`
--

CREATE TABLE `vegetables_table` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `carbohydrates` float NOT NULL,
  `protein` float NOT NULL,
  `fats` float NOT NULL,
  `vitamins` float NOT NULL,
  `water` float NOT NULL,
  `minerals` float NOT NULL,
  `Total_Calories` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `vegetables_table`
--

INSERT INTO `vegetables_table` (`id`, `name`, `carbohydrates`, `protein`, `fats`, `vitamins`, `water`, `minerals`, `Total_Calories`) VALUES
(1, 'pumpkin', 6.5, 1, 0.1, 0, 0, 0, 26),
(2, 'spinach', 1.6, 2, 0.8, 0, 0, 0, 25),
(3, 'tomato', 3.32, 1.08, 0.16, 0, 0, 0, 19.22),
(4, 'pepper', 2.6, 0.8, 0.3, 0, 0, 0, 15),
(5, 'onion', 8, 1.2, 0.2, 0, 0, 0, 38.2),
(6, 'mushroom', 0.5, 2.34, 0.44, 0, 0, 0, 14.8),
(7, 'kales', 1, 2.4, 1.1, 0, 0, 0, 24),
(8, 'cabbage', 2.2, 1, 0.3, 0, 0, 0, 15.3),
(9, 'carrots', 10.1, 1.03, 0.19, 0, 0, 0, 43),
(10, 'cucumber', 1.5, 0.7, 0.1, 0, 0, 0, 100),
(11, 'green beans', 3.15, 1.8, 0.41, 0, 0, 0, 23.5),
(12, 'lettuce', 1.8, 8, 0.3, 0, 0, 0, 13.1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cereals_table`
--
ALTER TABLE `cereals_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dairly_table`
--
ALTER TABLE `dairly_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_type`
--
ALTER TABLE `food_type`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_food_type_cereals_table` (`cereals`),
  ADD KEY `FK_food_type_dairly_table` (`dairy`),
  ADD KEY `FK_food_type_meat_table` (`Meat`),
  ADD KEY `FK_food_type_fruits_table` (`friuts`),
  ADD KEY `FK_food_type_vegetables_table` (`vegetables`);

--
-- Indexes for table `fruits_table`
--
ALTER TABLE `fruits_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `meat_table`
--
ALTER TABLE `meat_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_users_user_preferences` (`preferences`);

--
-- Indexes for table `user_preferences`
--
ALTER TABLE `user_preferences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vegetables_table`
--
ALTER TABLE `vegetables_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cereals_table`
--
ALTER TABLE `cereals_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `dairly_table`
--
ALTER TABLE `dairly_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `food_type`
--
ALTER TABLE `food_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fruits_table`
--
ALTER TABLE `fruits_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `meat_table`
--
ALTER TABLE `meat_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `user_preferences`
--
ALTER TABLE `user_preferences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `vegetables_table`
--
ALTER TABLE `vegetables_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `food_type`
--
ALTER TABLE `food_type`
  ADD CONSTRAINT `FK_food_type_cereals_table` FOREIGN KEY (`cereals`) REFERENCES `cereals_table` (`id`),
  ADD CONSTRAINT `FK_food_type_dairly_table` FOREIGN KEY (`dairy`) REFERENCES `dairly_table` (`id`),
  ADD CONSTRAINT `FK_food_type_fruits_table` FOREIGN KEY (`friuts`) REFERENCES `fruits_table` (`id`),
  ADD CONSTRAINT `FK_food_type_meat_table` FOREIGN KEY (`Meat`) REFERENCES `meat_table` (`id`),
  ADD CONSTRAINT `FK_food_type_vegetables_table` FOREIGN KEY (`vegetables`) REFERENCES `vegetables_table` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
