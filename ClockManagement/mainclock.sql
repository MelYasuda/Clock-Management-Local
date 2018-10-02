-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Sep 30, 2018 at 03:02 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `clock_management`
--
CREATE DATABASE IF NOT EXISTS `clock_management` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `clock_management`;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`) VALUES
(1, 'Marketing'),
(2, 'Operations'),
(3, 'Finance'),
(4, 'HR');

-- --------------------------------------------------------

--
-- Table structure for table `departments_employees`
--

CREATE TABLE `departments_employees` (
  `id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `username`, `password`) VALUES
(1, 'Mel Yasuda', 'mel', 'yasuda'),
(2, 'Akjol Jaenbai', 'akjol', 'jaenbai'),
(3, 'Chan Lee', 'chan', 'lee'),
(4, 'Connor McCarthy', 'connor', 'mccarthy'),
(5, 'Ahmed Khokar', 'ahmed', 'khokar'),
(6, 'Chris Crow', 'chris', 'crow'),
(7, 'David Mortkowitz', 'david', 'mortkowitz'),
(8, 'Hyewon Cho', 'hyewon', 'cho'),
(9, 'Hyung Lee', 'hyung', 'lee'),
(10, 'Julius Bade', 'julius', 'bade'),
(11, 'Kenneth Du', 'kenneth', 'du'),
(12, 'David Zhu', 'david', 'zhu'),
(13, 'Brian Nelson', 'brian', 'nelson'),
(14, 'Mark Mangahas', 'mark', 'mangahas'),
(15, 'Panatada Catlin', 'panatada', 'catlin'),
(16, 'Vera Weikel', 'vera', 'weikel'),
(17, 'Regina Nurieva', 'regina', 'nurieva'),
(18, 'Skye Nguyen', 'skye', 'nguyen'),
(19, 'Derek Smith', 'derek', 'smith'),
(20, 'Catherine Bradley', 'catherine', 'bradley'),
(21, 'Victoria Oh', 'victoria', 'oh');

-- --------------------------------------------------------

--
-- Table structure for table `employees_hours`
--

CREATE TABLE `employees_hours` (
  `id` int(11) NOT NULL,
  `clock_in` datetime NOT NULL,
  `clock_out` datetime NOT NULL,
  `hours` time NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments_employees`
--
ALTER TABLE `departments_employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees_hours`
--
ALTER TABLE `employees_hours`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `departments_employees`
--
ALTER TABLE `departments_employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
