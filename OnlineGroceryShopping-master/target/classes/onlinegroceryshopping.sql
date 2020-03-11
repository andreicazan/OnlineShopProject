-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Gazdă: localhost
-- Timp de generare: mart. 10, 2020 la 08:46 PM
-- Versiune server: 10.4.11-MariaDB
-- Versiune PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Bază de date: `onlinegroceryshopping`
--

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `SO_CART`
--

CREATE TABLE `SO_CART` (
  `ID` bigint(20) NOT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(225) DEFAULT NULL,
  `productId` bigint(20) DEFAULT NULL,
  `pruductName` varchar(225) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `finalAmount` double DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `SO_CART`
--

INSERT INTO `SO_CART` (`ID`, `userId`, `userName`, `productId`, `pruductName`, `quantity`, `finalAmount`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(1, 3, 'user user', 2, 'pepper', 0, 0, NULL, NULL, '2020-03-10 19:40:42', '2020-03-10 19:40:42');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `SO_CATEGORY`
--

CREATE TABLE `SO_CATEGORY` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `description` varchar(755) DEFAULT NULL,
  `image` varchar(755) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `SO_CATEGORY`
--

INSERT INTO `SO_CATEGORY` (`ID`, `name`, `description`, `image`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(2, 'Vegetables', '', 'download (1).jpg', 'admin@gmail.com', 'admin@gmail.com', '2020-03-10 19:02:33', '2019-11-10 05:57:30'),
(3, 'Fruits', '', 'images (1).jpg', 'admin@gmail.com', 'admin@gmail.com', '2020-03-10 19:03:02', '2019-11-10 05:57:55');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `SO_CONTACT`
--

CREATE TABLE `SO_CONTACT` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `message` varchar(755) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `SO_CONTACT`
--

INSERT INTO `SO_CONTACT` (`ID`, `name`, `email`, `message`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(1, 'admin', 'admin@gmail.com', 'message', 'root', 'root', '2020-03-10 18:54:43', '2019-07-28 20:40:02');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `SO_INVOICE`
--

CREATE TABLE `SO_INVOICE` (
  `ID` bigint(20) NOT NULL,
  `orderId` bigint(20) DEFAULT NULL,
  `userId` bigint(20) DEFAULT NULL,
  `userName` varchar(225) DEFAULT NULL,
  `productId` bigint(20) DEFAULT NULL,
  `productName` varchar(225) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `shippingAddress` varchar(755) DEFAULT NULL,
  `billingAddress` varchar(755) DEFAULT NULL,
  `emailId` varchar(225) DEFAULT NULL,
  `productDescription` varchar(755) DEFAULT NULL,
  `productImage` varchar(755) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `SO_INVOICE`
--

INSERT INTO `SO_INVOICE` (`ID`, `orderId`, `userId`, `userName`, `productId`, `productName`, `date`, `amount`, `mobileNo`, `shippingAddress`, `billingAddress`, `emailId`, `productDescription`, `productImage`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(1, 200101, 3, 'Jack Oliver', 4, 'Apples', '2019-07-29', 155, '9565415598', 'London Street', 'London Street', 'Hariom@gmail.com', '', 'istockphoto-809275266-612x612.jpg', NULL, NULL, '2020-03-10 19:13:40', '2019-07-29 08:46:59');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `SO_PRODUCT`
--

CREATE TABLE `SO_PRODUCT` (
  `ID` bigint(20) NOT NULL,
  `categoryId` bigint(20) DEFAULT NULL,
  `categoryName` varchar(225) DEFAULT NULL,
  `productCode` bigint(20) DEFAULT NULL,
  `name` varchar(225) DEFAULT NULL,
  `description` varchar(755) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image` varchar(755) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `SO_PRODUCT`
--

INSERT INTO `SO_PRODUCT` (`ID`, `categoryId`, `categoryName`, `productCode`, `name`, `description`, `price`, `image`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(2, 2, 'Vegs', 100102, 'pepper', '', 20, 'images.jpg', 'Admin@gmail.com', 'Admin@gmail.com', '2020-03-10 19:11:29', '2019-11-10 05:59:36');

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `SO_ROLE`
--

CREATE TABLE `SO_ROLE` (
  `ID` bigint(20) NOT NULL,
  `name` varchar(225) DEFAULT NULL,
  `description` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structură tabel pentru tabel `SO_USER`
--

CREATE TABLE `SO_USER` (
  `ID` bigint(20) NOT NULL,
  `firstName` varchar(225) DEFAULT NULL,
  `lastName` varchar(225) DEFAULT NULL,
  `login` varchar(225) DEFAULT NULL,
  `password` varchar(225) DEFAULT NULL,
  `mobileNo` varchar(225) DEFAULT NULL,
  `roleId` bigint(20) DEFAULT NULL,
  `shippingAddress` varchar(755) DEFAULT NULL,
  `billingAddress` varchar(755) DEFAULT NULL,
  `emailAddress` varchar(225) DEFAULT NULL,
  `createdBy` varchar(225) DEFAULT NULL,
  `modifiedBy` varchar(225) DEFAULT NULL,
  `createdDatetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `modifiedDatetime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Eliminarea datelor din tabel `SO_USER`
--

INSERT INTO `SO_USER` (`ID`, `firstName`, `lastName`, `login`, `password`, `mobileNo`, `roleId`, `shippingAddress`, `billingAddress`, `emailAddress`, `createdBy`, `modifiedBy`, `createdDatetime`, `modifiedDatetime`) VALUES
(2, 'admin', 'admin', 'admin@gmail.com', 'admin@123', '9165415598', 1, NULL, NULL, 'admin@gmail.com', 'admin@gmail.com', 'admin@gmail.com', '2020-03-10 18:58:49', '2019-07-24 08:43:15'),
(3, 'user', 'user', 'user@gmail.com', 'user@123', '9565415598', 2, 'user', 'user', 'user@gmail.com', 'root', 'root', '2020-03-10 19:00:58', '2019-07-26 15:02:04'),
(7, 'Jack', 'Oliver', 'jack@gmail.com', 'jack@123', '7858258965', 2, 'London Street ', 'London Street ', 'jack@gmail.com', 'root', 'root', '2020-03-10 19:00:39', '2019-11-10 07:01:51');

--
-- Indexuri pentru tabele eliminate
--

--
-- Indexuri pentru tabele `SO_CART`
--
ALTER TABLE `SO_CART`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_so_cart` (`userId`),
  ADD KEY `productId` (`productId`);

--
-- Indexuri pentru tabele `SO_CATEGORY`
--
ALTER TABLE `SO_CATEGORY`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `SO_CONTACT`
--
ALTER TABLE `SO_CONTACT`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `SO_INVOICE`
--
ALTER TABLE `SO_INVOICE`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `SO_PRODUCT`
--
ALTER TABLE `SO_PRODUCT`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_so_product` (`categoryId`);

--
-- Indexuri pentru tabele `SO_ROLE`
--
ALTER TABLE `SO_ROLE`
  ADD PRIMARY KEY (`ID`);

--
-- Indexuri pentru tabele `SO_USER`
--
ALTER TABLE `SO_USER`
  ADD PRIMARY KEY (`ID`);

--
-- Constrângeri pentru tabele eliminate
--

--
-- Constrângeri pentru tabele `SO_CART`
--
ALTER TABLE `SO_CART`
  ADD CONSTRAINT `FK_so_cart` FOREIGN KEY (`userId`) REFERENCES `SO_USER` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `SO_CART_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `SO_PRODUCT` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constrângeri pentru tabele `SO_PRODUCT`
--
ALTER TABLE `SO_PRODUCT`
  ADD CONSTRAINT `FK_so_product` FOREIGN KEY (`categoryId`) REFERENCES `SO_CATEGORY` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
