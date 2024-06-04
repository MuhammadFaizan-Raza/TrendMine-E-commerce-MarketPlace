-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 06:33 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trendmine_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `administration`
--

CREATE TABLE `administration` (
  `AdminID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Role` enum('SuperAdmin','Moderator','Support') NOT NULL,
  `IsActive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banktransferpayments`
--

CREATE TABLE `banktransferpayments` (
  `BankTransferID` int(11) NOT NULL,
  `PaymentID` int(11) DEFAULT NULL,
  `BankName` varchar(255) DEFAULT NULL,
  `AccountHolderName` varchar(255) DEFAULT NULL,
  `AccountNumber` varchar(20) DEFAULT NULL,
  `IBAN` varchar(34) DEFAULT NULL,
  `TransferAmount` decimal(10,2) DEFAULT NULL,
  `TransferDate` date DEFAULT NULL,
  `TransferStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bundletable`
--

CREATE TABLE `bundletable` (
  `bundleID` int(11) NOT NULL,
  `productID` int(11) DEFAULT NULL,
  `offerID` int(11) DEFAULT NULL,
  `bundlePrice` decimal(10,2) DEFAULT NULL,
  `discountPercent` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cardpayments`
--

CREATE TABLE `cardpayments` (
  `CardPaymentID` int(11) NOT NULL,
  `PaymentID` int(11) DEFAULT NULL,
  `CardType` varchar(50) DEFAULT NULL,
  `CardNumber` varchar(16) DEFAULT NULL,
  `ExpiryDate` date DEFAULT NULL,
  `CVV` int(11) DEFAULT NULL,
  `CardHolderName` varchar(255) DEFAULT NULL,
  `BillingAddress` varchar(255) DEFAULT NULL,
  `CardPaymentAmount` decimal(10,2) DEFAULT NULL,
  `CardPaymentDate` date DEFAULT NULL,
  `CardPaymentStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cashondeliverypayments`
--

CREATE TABLE `cashondeliverypayments` (
  `CODPaymentID` int(11) NOT NULL,
  `PaymentID` int(11) DEFAULT NULL,
  `COD_Received` tinyint(1) DEFAULT NULL,
  `COD_PaidAmount` decimal(10,2) DEFAULT NULL,
  `COD_PaymentStatus` varchar(50) DEFAULT NULL,
  `COD_PaidDate` date DEFAULT NULL,
  `COD_ReceiverName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `citydeliveryfee`
--

CREATE TABLE `citydeliveryfee` (
  `CityDeliveryFeeID` int(11) NOT NULL,
  `Fee` decimal(10,2) DEFAULT NULL,
  `CityName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `citydeliveryfee`
--

INSERT INTO `citydeliveryfee` (`CityDeliveryFeeID`, `Fee`, `CityName`) VALUES
(1, 5.00, 'City A'),
(2, 8.00, 'City B'),
(3, 6.50, 'City C'),
(4, 7.00, 'City D'),
(5, 4.00, 'City E'),
(6, 9.50, 'City F'),
(7, 6.00, 'City G'),
(8, 7.50, 'City H'),
(9, 3.50, 'City I'),
(10, 8.50, 'City J'),
(11, 4.50, 'City K'),
(12, 6.50, 'City L'),
(13, 5.50, 'City M'),
(14, 7.50, 'City N'),
(15, 5.00, 'City O'),
(16, 6.00, 'City P'),
(17, 4.00, 'City Q'),
(18, 5.50, 'City R'),
(19, 3.00, 'City S'),
(20, 8.00, 'City T');

-- --------------------------------------------------------

--
-- Table structure for table `collectioncenter`
--

CREATE TABLE `collectioncenter` (
  `CenterID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `OrderStatus` varchar(50) DEFAULT NULL,
  `ReturnID` int(11) DEFAULT NULL,
  `ReturnStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `ColorID` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `ColorValue` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customeroffersorders`
--

CREATE TABLE `customeroffersorders` (
  `CustomerOfferID` int(11) NOT NULL,
  `OrderId` int(11) DEFAULT NULL,
  `OfferID` int(11) DEFAULT NULL,
  `PurchaseDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customersupportrequests`
--

CREATE TABLE `customersupportrequests` (
  `RequestID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `RequestType` varchar(50) DEFAULT NULL,
  `RequestDate` date DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `RiderID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `CustomerName` varchar(255) DEFAULT NULL,
  `ShippingAddress` varchar(255) DEFAULT NULL,
  `ContactInformation` varchar(20) DEFAULT NULL,
  `OrderStatus` varchar(50) DEFAULT NULL,
  `ReturnID` int(11) DEFAULT NULL,
  `ReturnStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqanswers`
--

CREATE TABLE `faqanswers` (
  `AnswerID` int(11) NOT NULL,
  `FAQID` int(11) DEFAULT NULL,
  `AnswerText` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `FAQID` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Question` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `FeedbackID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `FeedbackText` text DEFAULT NULL,
  `FeedbackDate` date DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gatewaypayment`
--

CREATE TABLE `gatewaypayment` (
  `GatewayPaymentID` int(11) NOT NULL,
  `PaymentID` int(11) DEFAULT NULL,
  `PaymentGateway` varchar(50) DEFAULT NULL,
  `GatewayTransactionID` int(11) DEFAULT NULL,
  `GatewayAmount` decimal(10,2) DEFAULT NULL,
  `GatewayDate` date DEFAULT NULL,
  `GatewayStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gifthampers`
--

CREATE TABLE `gifthampers` (
  `hamper_id` int(11) NOT NULL,
  `hamper_name` varchar(255) DEFAULT NULL,
  `hamper_description` text DEFAULT NULL,
  `hamper_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `guestuser`
--

CREATE TABLE `guestuser` (
  `GuestUserID` int(11) NOT NULL,
  `SessionID` int(11) DEFAULT NULL,
  `Timestamps` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hamperrecipient`
--

CREATE TABLE `hamperrecipient` (
  `recipient_id` int(11) NOT NULL,
  `hamper_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `recipient_name` varchar(255) DEFAULT NULL,
  `recipient_address` varchar(255) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `interactiontable`
--

CREATE TABLE `interactiontable` (
  `interaction_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `InteractionType` varchar(255) DEFAULT NULL,
  `InteractionTimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `InteractionDetails` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `inventories`
--

CREATE TABLE `inventories` (
  `InventoryID` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `SupplierName` varchar(255) DEFAULT NULL,
  `DateOfAddition` date DEFAULT NULL,
  `ExpireDate` date DEFAULT NULL,
  `WarehouseID` int(11) DEFAULT NULL,
  `PricePerPiece` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `luckydraw`
--

CREATE TABLE `luckydraw` (
  `draw_id` int(11) NOT NULL,
  `draw_name` varchar(255) DEFAULT NULL,
  `draw_start_date` date DEFAULT NULL,
  `draw_end_date` date DEFAULT NULL,
  `prize_description` text DEFAULT NULL,
  `participants_limit` int(11) DEFAULT NULL,
  `registration_status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mobilewalletpayments`
--

CREATE TABLE `mobilewalletpayments` (
  `MobileWalletPaymentID` int(11) NOT NULL,
  `PaymentID` int(11) DEFAULT NULL,
  `MobileWalletService` varchar(50) DEFAULT NULL,
  `MobileWalletNumber` varchar(255) DEFAULT NULL,
  `MobileWalletAmount` decimal(10,2) DEFAULT NULL,
  `MobileWalletDate` date DEFAULT NULL,
  `MobileWalletStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offertypes`
--

CREATE TABLE `offertypes` (
  `OfferTypeID` int(11) NOT NULL,
  `OfferTypeName` varchar(50) DEFAULT NULL,
  `OfferTypeDescription` text DEFAULT NULL,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL,
  `DefaultDiscountPercentage` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `OrderDetailID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `Cart_id` int(11) DEFAULT NULL,
  `FinalPrice` decimal(10,2) DEFAULT NULL,
  `PaymentID` int(11) DEFAULT NULL,
  `OrderDate` date DEFAULT NULL,
  `OrderStatus` tinyint(1) DEFAULT NULL,
  `DiscountApplied` decimal(5,2) DEFAULT NULL,
  `CityDeliveryFeeID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `participant`
--

CREATE TABLE `participant` (
  `participant_id` int(11) NOT NULL,
  `draw_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL,
  `participant_name` varchar(255) DEFAULT NULL,
  `participant_email` varchar(255) DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `winner` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paymentcentral`
--

CREATE TABLE `paymentcentral` (
  `PaymentID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `TransactionID` int(11) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `PaymentDate` date DEFAULT NULL,
  `PaymentStatus` varchar(50) DEFAULT NULL,
  `PaymentMethod` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paypalpayment`
--

CREATE TABLE `paypalpayment` (
  `PayPalPaymentID` int(11) NOT NULL,
  `PaymentID` int(11) DEFAULT NULL,
  `PayPalEmail` varchar(255) DEFAULT NULL,
  `PayPalTransactionID` int(11) DEFAULT NULL,
  `PayPalAmount` decimal(10,2) DEFAULT NULL,
  `PayPalDate` date DEFAULT NULL,
  `PayPalStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productcategory`
--

CREATE TABLE `productcategory` (
  `CategoryID` int(11) NOT NULL,
  `Prod_Category` varchar(255) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `TaxPercentage` decimal(5,2) DEFAULT NULL,
  `ReturnPolicyInfo` text DEFAULT NULL,
  `WarrantyInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productinformation`
--

CREATE TABLE `productinformation` (
  `Prod_Id` int(11) NOT NULL,
  `Inventory` int(11) DEFAULT NULL,
  `Prod_Name` varchar(255) DEFAULT NULL,
  `Prod_Description` text DEFAULT NULL,
  `Prod_Manufacturer` varchar(255) DEFAULT NULL,
  `Prod_Price` decimal(10,2) DEFAULT NULL,
  `Image` blob DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `NumberOfPoints` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productissues`
--

CREATE TABLE `productissues` (
  `IssueID` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `IssueType` varchar(50) DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `Statuses` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productoffers`
--

CREATE TABLE `productoffers` (
  `OfferID` int(11) NOT NULL,
  `OfferTypeID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `SpecialOfferPrice` decimal(10,2) DEFAULT NULL,
  `OfferDescription` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `CategoryID` int(11) NOT NULL,
  `Prod_Category` varchar(255) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `TaxPercentage` decimal(5,2) DEFAULT NULL,
  `ReturnPolicyInfo` text DEFAULT NULL,
  `WarrantyInfo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`CategoryID`, `Prod_Category`, `ProductID`, `TaxPercentage`, `ReturnPolicyInfo`, `WarrantyInfo`) VALUES
(101, 'Electronics', 1, 7.50, '30-day return policy', '1-year warranty'),
(102, 'Electronics', 2, 8.00, '15-day return policy', '2-year warranty'),
(103, 'Electronics', 3, 9.50, 'No return policy', '3-year warranty'),
(104, 'Audio', 4, 7.00, '45-day return policy', '1-year warranty'),
(105, 'Cameras', 5, 8.50, '60-day return policy', '2-year warranty'),
(106, 'Electronics', 6, 7.50, '30-day return policy', '1-year warranty'),
(107, 'Wearables', 7, 6.00, '15-day return policy', '1-year warranty'),
(108, 'Gaming', 8, 10.00, 'No return policy', '2-year warranty');

-- --------------------------------------------------------

--
-- Table structure for table `product_information`
--

CREATE TABLE `product_information` (
  `Prod_Id` int(11) NOT NULL,
  `InventoryID` int(11) DEFAULT NULL,
  `Prod_Name` varchar(255) DEFAULT NULL,
  `Prod_Description` text DEFAULT NULL,
  `Prod_Manufacturer` varchar(255) DEFAULT NULL,
  `Prod_Price` decimal(10,2) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `NumberOfPoints` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_information`
--

INSERT INTO `product_information` (`Prod_Id`, `InventoryID`, `Prod_Name`, `Prod_Description`, `Prod_Manufacturer`, `Prod_Price`, `Image`, `IsActive`, `NumberOfPoints`) VALUES
(1, 1001, 'Laptop XYZ', 'Powerful laptop with high-end specs', 'ABC Electronics', 1299.99, 'https://drive.google.com/file/d/1zLBw41hb0u0cbcs9rSTnkGKLHh7aXRWt/view?usp=sharing', 1, 100),
(2, 1002, 'Smartphone ABC', 'Flagship smartphone with dual cameras', 'XYZ Mobiles', 799.99, 'https://drive.google.com/file/d/1whHLfLj0jKEOn67vkxXfT9Tno--D2eG3/view?usp=drive_link', 1, 75),
(3, 1003, 'Smart TV 4K', 'Ultra HD Smart TV with smart features', 'Tech Innovations', 899.99, NULL, 1, 120),
(4, 1004, 'Wireless Headphones', 'Noise-canceling wireless headphones', 'Audio Tech', 149.99, NULL, 1, 50),
(5, 1005, 'Digital Camera', 'Professional-grade digital camera', 'Photo Genius', 999.99, NULL, 1, 90),
(6, 1006, 'Home Theater System', 'Immersive audio experience for your home', 'Sound Masters', 499.99, NULL, 1, 80),
(7, 1007, 'Fitness Tracker', 'Tracks your activity and health metrics', 'Health Tech', 79.99, NULL, 1, 30),
(8, 1008, 'Gaming Console', 'Next-gen gaming console for gamers', 'GameTech', 399.99, NULL, 1, 150);

-- --------------------------------------------------------

--
-- Table structure for table `referrals`
--

CREATE TABLE `referrals` (
  `ReferralID` int(11) NOT NULL,
  `ReferrerUserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `returnexchange`
--

CREATE TABLE `returnexchange` (
  `ReturnID` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `ExchangeReturnDate` date DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviewsandratings`
--

CREATE TABLE `reviewsandratings` (
  `ReviewID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `ReviewText` text DEFAULT NULL,
  `ReviewDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salestrends`
--

CREATE TABLE `salestrends` (
  `SalesTrendID` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `TrendDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seasonalproducts`
--

CREATE TABLE `seasonalproducts` (
  `SeasonalProductID` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `SeasonStart` date DEFAULT NULL,
  `SeasonEnd` date DEFAULT NULL,
  `Description` text DEFAULT NULL,
  `IsActive` tinyint(1) DEFAULT NULL,
  `CreatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seasonaltrends`
--

CREATE TABLE `seasonaltrends` (
  `SeasonalTrendID` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `TrendDescription` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shopping_cart`
--

CREATE TABLE `shopping_cart` (
  `CartID` int(11) NOT NULL,
  `SessionID` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `PerProductTotalPrice` decimal(10,2) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `SizeID` int(11) NOT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `SizeValue` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `supportresponses`
--

CREATE TABLE `supportresponses` (
  `ResponseID` int(11) NOT NULL,
  `RequestID` int(11) DEFAULT NULL,
  `ResponderName` varchar(255) DEFAULT NULL,
  `ResponseType` varchar(50) DEFAULT NULL,
  `ResponseDate` date DEFAULT NULL,
  `ResponseText` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `userprofile`
--

CREATE TABLE `userprofile` (
  `UserID` int(11) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `UserName` varchar(255) NOT NULL,
  `UserPassword` varchar(255) NOT NULL,
  `MobileNumber` varchar(20) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `VerificationCode` varchar(10) NOT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `NumberOfPoints` int(11) DEFAULT NULL,
  `ProfileCompletionPercent` int(11) DEFAULT NULL,
  `CreatedAccountDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `UpdatedAccountDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `userprofile`
--

INSERT INTO `userprofile` (`UserID`, `FullName`, `UserName`, `UserPassword`, `MobileNumber`, `Email`, `DateOfBirth`, `VerificationCode`, `Address`, `Gender`, `NumberOfPoints`, `ProfileCompletionPercent`, `CreatedAccountDate`, `UpdatedAccountDate`) VALUES
(1, 'Ali Khan', 'alikhan123', 'password123', '03001234567', 'ali@example.com', '1990-05-15', 'VCode123', '123 Main St, Lahore', 'Male', 100, 80, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(2, 'Sara Ahmed', 'sara_ahmed', 'pass1234', '03111234567', 'sara@example.com', '1988-08-22', 'VCode456', '456 Park Rd, Karachi', 'Female', 150, 95, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(3, 'Ahmed Malik', 'ahmedmalik', 'securepass', '03221234567', 'ahmed@example.com', '1995-02-10', 'VCode789', '789 Street 7, Islamabad', 'Male', 200, 100, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(4, 'Aisha Hassan', 'aishahassan', 'aisha123', '03441234567', 'aisha@example.com', '1993-11-05', 'VCodeABC', 'ABC Avenue, Lahore', 'Female', 180, 90, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(5, 'Imran Khan', 'imrankhan1', 'imranpass', '03351234567', 'imran@example.com', '1980-09-30', 'VCodeDEF', 'DEF Heights, Karachi', 'Male', 120, 75, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(6, 'Nida Shah', 'nidashah23', 'nida456', '03261234567', 'nida@example.com', '1992-04-18', 'VCodeGHI', 'GHI Lane, Islamabad', 'Female', 90, 60, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(7, 'Usman Ali', 'usman1234', 'usmanpass', '03461234567', 'usman@example.com', '1985-07-25', 'VCodeJKL', 'JKL Street 9, Lahore', 'Male', 160, 85, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(8, 'Ayesha Farooq', 'ayesha_f', 'ayesha789', '03071234567', 'ayesha@example.com', '1998-01-03', 'VCodeMNO', 'MNO Road, Karachi', 'Female', 140, 88, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(9, 'Faisal Khan', 'faisalk123', 'faisalpass', '03181234567', 'faisal@example.com', '1987-12-12', 'VCodePQR', 'PQR Colony, Islamabad', 'Male', 110, 70, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(10, 'Zainab Malik', 'zainabm', 'zainab456', '03291234567', 'zainab@example.com', '1994-06-28', 'VCodeSTU', 'STU Plaza, Lahore', 'Female', 130, 78, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(11, 'Adnan Ahmed', 'adnan_ahmed', 'adnanpass', '03401234567', 'adnan@example.com', '1983-03-20', 'VCodeVWX', 'VWX Street, Karachi', 'Male', 170, 92, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(12, 'Sadaf Hussain', 'sadafh', 'sadafpass', '03011234567', 'sadaf@example.com', '1991-08-08', 'VCodeYZA', 'YZA Tower, Islamabad', 'Female', 190, 98, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(13, 'Kamran Ali', 'kamran_a', 'kamran123', '03121234567', 'kamran@example.com', '1986-04-22', 'VCodeBCD', 'BCD Lane, Lahore', 'Male', 105, 65, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(14, 'Hira Qureshi', 'hiraq', 'hira789', '03231234567', 'hira@example.com', '1997-02-15', 'VCodeEFG', 'EFG Street 12, Karachi', 'Female', 115, 72, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(15, 'Imtiaz Malik', 'imtiaz_m', 'imtiaz456', '03331234567', 'imtiaz@example.com', '1989-10-10', 'VCodeHIJ', 'HIJ Avenue, Islamabad', 'Male', 125, 68, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(16, 'Amina Khan', 'aminak', 'amina123', '03441234567', 'amina@example.com', '1996-07-05', 'VCodeKLM', 'KLM Plaza, Lahore', 'Female', 175, 94, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(17, 'Bilal Ahmed', 'bilala', 'bilalpass', '03051234567', 'bilal@example.com', '1984-05-18', 'VCodeNOP', 'NOP Road, Karachi', 'Male', 150, 82, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(18, 'Sadia Qazi', 'sadiaq', 'sadia456', '03151234567', 'sadia@example.com', '1992-12-01', 'VCodeQRS', 'QRS Street, Islamabad', 'Female', 135, 77, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(19, 'Naveed Iqbal', 'naveedi', 'naveed123', '03251234567', 'naveed@example.com', '1982-09-08', 'VCodeTUV', 'TUV Lane, Lahore', 'Male', 155, 88, '2024-01-08 15:27:19', '2024-01-08 15:27:19'),
(20, 'Fariha Khan', 'farihak', 'fariha789', '03351234567', 'fariha@example.com', '1990-04-25', 'VCodeWXYZ', 'WXYZ Colony, Karachi', 'Female', 165, 96, '2024-01-08 15:27:19', '2024-01-08 15:27:19');

-- --------------------------------------------------------

--
-- Table structure for table `usersearchhistory`
--

CREATE TABLE `usersearchhistory` (
  `SearchID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `SearchText` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `usersession`
--

CREATE TABLE `usersession` (
  `SessionID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `SessionToken` varchar(50) DEFAULT NULL,
  `LastActivity` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `WarehouseID` int(11) NOT NULL,
  `OrderID` int(11) DEFAULT NULL,
  `OrderStatus` varchar(50) DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  `ReturnID` int(11) DEFAULT NULL,
  `ReturnStatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `websitetraffic`
--

CREATE TABLE `websitetraffic` (
  `VisitID` int(11) NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `PageURL` varchar(255) DEFAULT NULL,
  `UserID` int(11) DEFAULT NULL,
  `SourceName` varchar(50) DEFAULT NULL,
  `PlatformName` varchar(50) DEFAULT NULL,
  `ConversionType` varchar(50) DEFAULT NULL,
  `ConversionValue` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `WishlistID` int(11) NOT NULL,
  `UserID` int(11) DEFAULT NULL,
  `ProductID` int(11) DEFAULT NULL,
  `DateAdded` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administration`
--
ALTER TABLE `administration`
  ADD PRIMARY KEY (`AdminID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `banktransferpayments`
--
ALTER TABLE `banktransferpayments`
  ADD PRIMARY KEY (`BankTransferID`),
  ADD KEY `PaymentID` (`PaymentID`);

--
-- Indexes for table `bundletable`
--
ALTER TABLE `bundletable`
  ADD PRIMARY KEY (`bundleID`),
  ADD KEY `productID` (`productID`),
  ADD KEY `offerID` (`offerID`);

--
-- Indexes for table `cardpayments`
--
ALTER TABLE `cardpayments`
  ADD PRIMARY KEY (`CardPaymentID`),
  ADD KEY `PaymentID` (`PaymentID`);

--
-- Indexes for table `cashondeliverypayments`
--
ALTER TABLE `cashondeliverypayments`
  ADD PRIMARY KEY (`CODPaymentID`),
  ADD KEY `PaymentID` (`PaymentID`);

--
-- Indexes for table `citydeliveryfee`
--
ALTER TABLE `citydeliveryfee`
  ADD PRIMARY KEY (`CityDeliveryFeeID`),
  ADD UNIQUE KEY `CityName` (`CityName`);

--
-- Indexes for table `collectioncenter`
--
ALTER TABLE `collectioncenter`
  ADD PRIMARY KEY (`CenterID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ReturnID` (`ReturnID`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`ColorID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `customeroffersorders`
--
ALTER TABLE `customeroffersorders`
  ADD PRIMARY KEY (`CustomerOfferID`),
  ADD KEY `OrderId` (`OrderId`),
  ADD KEY `OfferID` (`OfferID`);

--
-- Indexes for table `customersupportrequests`
--
ALTER TABLE `customersupportrequests`
  ADD PRIMARY KEY (`RequestID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`RiderID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ReturnID` (`ReturnID`);

--
-- Indexes for table `faqanswers`
--
ALTER TABLE `faqanswers`
  ADD PRIMARY KEY (`AnswerID`),
  ADD KEY `FAQID` (`FAQID`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`FAQID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`FeedbackID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `gatewaypayment`
--
ALTER TABLE `gatewaypayment`
  ADD PRIMARY KEY (`GatewayPaymentID`),
  ADD KEY `PaymentID` (`PaymentID`);

--
-- Indexes for table `gifthampers`
--
ALTER TABLE `gifthampers`
  ADD PRIMARY KEY (`hamper_id`);

--
-- Indexes for table `guestuser`
--
ALTER TABLE `guestuser`
  ADD PRIMARY KEY (`GuestUserID`),
  ADD KEY `SessionID` (`SessionID`);

--
-- Indexes for table `hamperrecipient`
--
ALTER TABLE `hamperrecipient`
  ADD PRIMARY KEY (`recipient_id`),
  ADD KEY `hamper_id` (`hamper_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `interactiontable`
--
ALTER TABLE `interactiontable`
  ADD PRIMARY KEY (`interaction_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `inventories`
--
ALTER TABLE `inventories`
  ADD PRIMARY KEY (`InventoryID`),
  ADD KEY `WarehouseID` (`WarehouseID`);

--
-- Indexes for table `luckydraw`
--
ALTER TABLE `luckydraw`
  ADD PRIMARY KEY (`draw_id`);

--
-- Indexes for table `mobilewalletpayments`
--
ALTER TABLE `mobilewalletpayments`
  ADD PRIMARY KEY (`MobileWalletPaymentID`),
  ADD KEY `PaymentID` (`PaymentID`);

--
-- Indexes for table `offertypes`
--
ALTER TABLE `offertypes`
  ADD PRIMARY KEY (`OfferTypeID`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`OrderDetailID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `PaymentID` (`PaymentID`),
  ADD KEY `CityDeliveryFeeID` (`CityDeliveryFeeID`);

--
-- Indexes for table `participant`
--
ALTER TABLE `participant`
  ADD PRIMARY KEY (`participant_id`),
  ADD KEY `draw_id` (`draw_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `paymentcentral`
--
ALTER TABLE `paymentcentral`
  ADD PRIMARY KEY (`PaymentID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `paypalpayment`
--
ALTER TABLE `paypalpayment`
  ADD PRIMARY KEY (`PayPalPaymentID`),
  ADD KEY `PaymentID` (`PaymentID`);

--
-- Indexes for table `productcategory`
--
ALTER TABLE `productcategory`
  ADD PRIMARY KEY (`CategoryID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `productinformation`
--
ALTER TABLE `productinformation`
  ADD PRIMARY KEY (`Prod_Id`);

--
-- Indexes for table `productissues`
--
ALTER TABLE `productissues`
  ADD PRIMARY KEY (`IssueID`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `productoffers`
--
ALTER TABLE `productoffers`
  ADD PRIMARY KEY (`OfferID`),
  ADD KEY `OfferTypeID` (`OfferTypeID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `referrals`
--
ALTER TABLE `referrals`
  ADD PRIMARY KEY (`ReferralID`),
  ADD KEY `ReferrerUserID` (`ReferrerUserID`);

--
-- Indexes for table `returnexchange`
--
ALTER TABLE `returnexchange`
  ADD PRIMARY KEY (`ReturnID`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `OrderID` (`OrderID`);

--
-- Indexes for table `reviewsandratings`
--
ALTER TABLE `reviewsandratings`
  ADD PRIMARY KEY (`ReviewID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `salestrends`
--
ALTER TABLE `salestrends`
  ADD PRIMARY KEY (`SalesTrendID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `seasonalproducts`
--
ALTER TABLE `seasonalproducts`
  ADD PRIMARY KEY (`SeasonalProductID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `seasonaltrends`
--
ALTER TABLE `seasonaltrends`
  ADD PRIMARY KEY (`SeasonalTrendID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD PRIMARY KEY (`CartID`),
  ADD KEY `SessionID` (`SessionID`),
  ADD KEY `ProductID` (`ProductID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`SizeID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- Indexes for table `supportresponses`
--
ALTER TABLE `supportresponses`
  ADD PRIMARY KEY (`ResponseID`),
  ADD KEY `RequestID` (`RequestID`);

--
-- Indexes for table `userprofile`
--
ALTER TABLE `userprofile`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `usersearchhistory`
--
ALTER TABLE `usersearchhistory`
  ADD PRIMARY KEY (`SearchID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `usersession`
--
ALTER TABLE `usersession`
  ADD PRIMARY KEY (`SessionID`),
  ADD UNIQUE KEY `SessionToken` (`SessionToken`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`WarehouseID`),
  ADD KEY `OrderID` (`OrderID`),
  ADD KEY `ReturnID` (`ReturnID`);

--
-- Indexes for table `websitetraffic`
--
ALTER TABLE `websitetraffic`
  ADD PRIMARY KEY (`VisitID`),
  ADD KEY `UserID` (`UserID`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`WishlistID`),
  ADD KEY `UserID` (`UserID`),
  ADD KEY `ProductID` (`ProductID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banktransferpayments`
--
ALTER TABLE `banktransferpayments`
  MODIFY `BankTransferID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bundletable`
--
ALTER TABLE `bundletable`
  MODIFY `bundleID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cardpayments`
--
ALTER TABLE `cardpayments`
  MODIFY `CardPaymentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cashondeliverypayments`
--
ALTER TABLE `cashondeliverypayments`
  MODIFY `CODPaymentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `citydeliveryfee`
--
ALTER TABLE `citydeliveryfee`
  MODIFY `CityDeliveryFeeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `collectioncenter`
--
ALTER TABLE `collectioncenter`
  MODIFY `CenterID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customeroffersorders`
--
ALTER TABLE `customeroffersorders`
  MODIFY `CustomerOfferID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customersupportrequests`
--
ALTER TABLE `customersupportrequests`
  MODIFY `RequestID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `RiderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqanswers`
--
ALTER TABLE `faqanswers`
  MODIFY `AnswerID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `FAQID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `FeedbackID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gatewaypayment`
--
ALTER TABLE `gatewaypayment`
  MODIFY `GatewayPaymentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gifthampers`
--
ALTER TABLE `gifthampers`
  MODIFY `hamper_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guestuser`
--
ALTER TABLE `guestuser`
  MODIFY `GuestUserID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hamperrecipient`
--
ALTER TABLE `hamperrecipient`
  MODIFY `recipient_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `interactiontable`
--
ALTER TABLE `interactiontable`
  MODIFY `interaction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `inventories`
--
ALTER TABLE `inventories`
  MODIFY `InventoryID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `luckydraw`
--
ALTER TABLE `luckydraw`
  MODIFY `draw_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mobilewalletpayments`
--
ALTER TABLE `mobilewalletpayments`
  MODIFY `MobileWalletPaymentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offertypes`
--
ALTER TABLE `offertypes`
  MODIFY `OfferTypeID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `participant`
--
ALTER TABLE `participant`
  MODIFY `participant_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paymentcentral`
--
ALTER TABLE `paymentcentral`
  MODIFY `PaymentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `paypalpayment`
--
ALTER TABLE `paypalpayment`
  MODIFY `PayPalPaymentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productinformation`
--
ALTER TABLE `productinformation`
  MODIFY `Prod_Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `productissues`
--
ALTER TABLE `productissues`
  MODIFY `IssueID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productoffers`
--
ALTER TABLE `productoffers`
  MODIFY `OfferID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `returnexchange`
--
ALTER TABLE `returnexchange`
  MODIFY `ReturnID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reviewsandratings`
--
ALTER TABLE `reviewsandratings`
  MODIFY `ReviewID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salestrends`
--
ALTER TABLE `salestrends`
  MODIFY `SalesTrendID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seasonalproducts`
--
ALTER TABLE `seasonalproducts`
  MODIFY `SeasonalProductID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seasonaltrends`
--
ALTER TABLE `seasonaltrends`
  MODIFY `SeasonalTrendID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  MODIFY `CartID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `supportresponses`
--
ALTER TABLE `supportresponses`
  MODIFY `ResponseID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userprofile`
--
ALTER TABLE `userprofile`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `usersearchhistory`
--
ALTER TABLE `usersearchhistory`
  MODIFY `SearchID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usersession`
--
ALTER TABLE `usersession`
  MODIFY `SessionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `WarehouseID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `websitetraffic`
--
ALTER TABLE `websitetraffic`
  MODIFY `VisitID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `WishlistID` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `administration`
--
ALTER TABLE `administration`
  ADD CONSTRAINT `administration_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `userprofile` (`UserID`);

--
-- Constraints for table `banktransferpayments`
--
ALTER TABLE `banktransferpayments`
  ADD CONSTRAINT `banktransferpayments_ibfk_1` FOREIGN KEY (`PaymentID`) REFERENCES `paymentcentral` (`PaymentID`);

--
-- Constraints for table `bundletable`
--
ALTER TABLE `bundletable`
  ADD CONSTRAINT `bundletable_ibfk_1` FOREIGN KEY (`productID`) REFERENCES `productinformation` (`Prod_Id`),
  ADD CONSTRAINT `bundletable_ibfk_2` FOREIGN KEY (`offerID`) REFERENCES `productoffers` (`OfferID`);

--
-- Constraints for table `cardpayments`
--
ALTER TABLE `cardpayments`
  ADD CONSTRAINT `cardpayments_ibfk_1` FOREIGN KEY (`PaymentID`) REFERENCES `paymentcentral` (`PaymentID`);

--
-- Constraints for table `cashondeliverypayments`
--
ALTER TABLE `cashondeliverypayments`
  ADD CONSTRAINT `cashondeliverypayments_ibfk_1` FOREIGN KEY (`PaymentID`) REFERENCES `paymentcentral` (`PaymentID`);

--
-- Constraints for table `collectioncenter`
--
ALTER TABLE `collectioncenter`
  ADD CONSTRAINT `collectioncenter_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `collectioncenter_ibfk_2` FOREIGN KEY (`ReturnID`) REFERENCES `returnexchange` (`ReturnID`);

--
-- Constraints for table `color`
--
ALTER TABLE `color`
  ADD CONSTRAINT `color_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `productinformation` (`Prod_Id`);

--
-- Constraints for table `customeroffersorders`
--
ALTER TABLE `customeroffersorders`
  ADD CONSTRAINT `customeroffersorders_ibfk_1` FOREIGN KEY (`OrderId`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `customeroffersorders_ibfk_2` FOREIGN KEY (`OfferID`) REFERENCES `productoffers` (`OfferID`);

--
-- Constraints for table `customersupportrequests`
--
ALTER TABLE `customersupportrequests`
  ADD CONSTRAINT `customersupportrequests_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `userprofile` (`UserID`);

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`ReturnID`) REFERENCES `returnexchange` (`ReturnID`);

--
-- Constraints for table `faqanswers`
--
ALTER TABLE `faqanswers`
  ADD CONSTRAINT `faqanswers_ibfk_1` FOREIGN KEY (`FAQID`) REFERENCES `faqs` (`FAQID`);

--
-- Constraints for table `faqs`
--
ALTER TABLE `faqs`
  ADD CONSTRAINT `faqs_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `productinformation` (`Prod_Id`);

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `userprofile` (`UserID`);

--
-- Constraints for table `gatewaypayment`
--
ALTER TABLE `gatewaypayment`
  ADD CONSTRAINT `gatewaypayment_ibfk_1` FOREIGN KEY (`PaymentID`) REFERENCES `paymentcentral` (`PaymentID`);

--
-- Constraints for table `guestuser`
--
ALTER TABLE `guestuser`
  ADD CONSTRAINT `guestuser_ibfk_1` FOREIGN KEY (`SessionID`) REFERENCES `usersession` (`SessionID`);

--
-- Constraints for table `hamperrecipient`
--
ALTER TABLE `hamperrecipient`
  ADD CONSTRAINT `hamperrecipient_ibfk_1` FOREIGN KEY (`hamper_id`) REFERENCES `gifthampers` (`hamper_id`),
  ADD CONSTRAINT `hamperrecipient_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`OrderID`);

--
-- Constraints for table `interactiontable`
--
ALTER TABLE `interactiontable`
  ADD CONSTRAINT `interactiontable_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userprofile` (`UserID`),
  ADD CONSTRAINT `interactiontable_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `productinformation` (`Prod_Id`);

--
-- Constraints for table `inventories`
--
ALTER TABLE `inventories`
  ADD CONSTRAINT `inventories_ibfk_1` FOREIGN KEY (`WarehouseID`) REFERENCES `warehouse` (`WarehouseID`);

--
-- Constraints for table `mobilewalletpayments`
--
ALTER TABLE `mobilewalletpayments`
  ADD CONSTRAINT `mobilewalletpayments_ibfk_1` FOREIGN KEY (`PaymentID`) REFERENCES `paymentcentral` (`PaymentID`);

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `productinformation` (`Prod_Id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `userprofile` (`UserID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`Cart_id`) REFERENCES `shopping_cart` (`CartID`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`PaymentID`) REFERENCES `paymentcentral` (`PaymentID`),
  ADD CONSTRAINT `orders_ibfk_4` FOREIGN KEY (`CityDeliveryFeeID`) REFERENCES `citydeliveryfee` (`CityDeliveryFeeID`);

--
-- Constraints for table `participant`
--
ALTER TABLE `participant`
  ADD CONSTRAINT `participant_ibfk_1` FOREIGN KEY (`draw_id`) REFERENCES `luckydraw` (`draw_id`),
  ADD CONSTRAINT `participant_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`OrderID`);

--
-- Constraints for table `paymentcentral`
--
ALTER TABLE `paymentcentral`
  ADD CONSTRAINT `paymentcentral_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `userprofile` (`UserID`);

--
-- Constraints for table `paypalpayment`
--
ALTER TABLE `paypalpayment`
  ADD CONSTRAINT `paypalpayment_ibfk_1` FOREIGN KEY (`PaymentID`) REFERENCES `paymentcentral` (`PaymentID`);

--
-- Constraints for table `productcategory`
--
ALTER TABLE `productcategory`
  ADD CONSTRAINT `productcategory_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `productinformation` (`Prod_Id`);

--
-- Constraints for table `productinformation`
--
ALTER TABLE `productinformation`
  ADD CONSTRAINT `fk_ProductInformation_Inventory` FOREIGN KEY (`Inventory`) REFERENCES `inventories` (`InventoryID`);

--
-- Constraints for table `productissues`
--
ALTER TABLE `productissues`
  ADD CONSTRAINT `productissues_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `productinformation` (`Prod_Id`),
  ADD CONSTRAINT `productissues_ibfk_2` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`);

--
-- Constraints for table `productoffers`
--
ALTER TABLE `productoffers`
  ADD CONSTRAINT `productoffers_ibfk_1` FOREIGN KEY (`OfferTypeID`) REFERENCES `offertypes` (`OfferTypeID`),
  ADD CONSTRAINT `productoffers_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `productinformation` (`Prod_Id`);

--
-- Constraints for table `referrals`
--
ALTER TABLE `referrals`
  ADD CONSTRAINT `referrals_ibfk_1` FOREIGN KEY (`ReferrerUserID`) REFERENCES `userprofile` (`UserID`);

--
-- Constraints for table `returnexchange`
--
ALTER TABLE `returnexchange`
  ADD CONSTRAINT `returnexchange_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `productinformation` (`Prod_Id`),
  ADD CONSTRAINT `returnexchange_ibfk_2` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`);

--
-- Constraints for table `reviewsandratings`
--
ALTER TABLE `reviewsandratings`
  ADD CONSTRAINT `reviewsandratings_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `userprofile` (`UserID`),
  ADD CONSTRAINT `reviewsandratings_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `productinformation` (`Prod_Id`);

--
-- Constraints for table `salestrends`
--
ALTER TABLE `salestrends`
  ADD CONSTRAINT `salestrends_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `productinformation` (`Prod_Id`);

--
-- Constraints for table `seasonalproducts`
--
ALTER TABLE `seasonalproducts`
  ADD CONSTRAINT `seasonalproducts_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `productinformation` (`Prod_Id`);

--
-- Constraints for table `seasonaltrends`
--
ALTER TABLE `seasonaltrends`
  ADD CONSTRAINT `seasonaltrends_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `productinformation` (`Prod_Id`);

--
-- Constraints for table `shopping_cart`
--
ALTER TABLE `shopping_cart`
  ADD CONSTRAINT `shopping_cart_ibfk_1` FOREIGN KEY (`SessionID`) REFERENCES `usersession` (`SessionID`),
  ADD CONSTRAINT `shopping_cart_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `productinformation` (`Prod_Id`),
  ADD CONSTRAINT `shopping_cart_ibfk_3` FOREIGN KEY (`UserID`) REFERENCES `userprofile` (`UserID`);

--
-- Constraints for table `size`
--
ALTER TABLE `size`
  ADD CONSTRAINT `size_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `productinformation` (`Prod_Id`);

--
-- Constraints for table `supportresponses`
--
ALTER TABLE `supportresponses`
  ADD CONSTRAINT `supportresponses_ibfk_1` FOREIGN KEY (`RequestID`) REFERENCES `customersupportrequests` (`RequestID`);

--
-- Constraints for table `usersearchhistory`
--
ALTER TABLE `usersearchhistory`
  ADD CONSTRAINT `usersearchhistory_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `userprofile` (`UserID`);

--
-- Constraints for table `usersession`
--
ALTER TABLE `usersession`
  ADD CONSTRAINT `usersession_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `userprofile` (`UserID`);

--
-- Constraints for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD CONSTRAINT `warehouse_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `warehouse_ibfk_2` FOREIGN KEY (`ReturnID`) REFERENCES `returnexchange` (`ReturnID`);

--
-- Constraints for table `websitetraffic`
--
ALTER TABLE `websitetraffic`
  ADD CONSTRAINT `websitetraffic_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `userprofile` (`UserID`);

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `userprofile` (`UserID`),
  ADD CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`ProductID`) REFERENCES `productinformation` (`Prod_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
