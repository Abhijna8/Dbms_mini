-- Create database if not exists
CREATE DATABASE IF NOT EXISTS zmsdb;

-- Use the created database
USE zmsdb;

-- Drop tables if they exist
DROP TABLE IF EXISTS `tbladmin`;
DROP TABLE IF EXISTS `tblanimal`;
DROP TABLE IF EXISTS `tblpage`;
DROP TABLE IF EXISTS `tblticforeigner`;
DROP TABLE IF EXISTS `tblticindian`;
DROP TABLE IF EXISTS `tbltickettype`;

-- Table structure for table `tbladmin`
CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Table structure for table `tblanimal`
CREATE TABLE `tblanimal` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `AnimalName` varchar(200) DEFAULT NULL,
  `CageNumber` int(10) DEFAULT NULL,
  `FeedNumber` varchar(200) DEFAULT NULL,
  `Breed` varchar(200) DEFAULT NULL,
  `AnimalImage` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `tblpage`
CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Table structure for table `tblticforeigner`
CREATE TABLE `tblticforeigner` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `TicketID` varchar(200) DEFAULT NULL,
  `visitorName` varchar(250) DEFAULT NULL,
  `NoAdult` int(10) DEFAULT NULL,
  `NoChildren` int(10) DEFAULT NULL,
  `AdultUnitprice` varchar(50) DEFAULT NULL,
  `ChildUnitprice` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  UNIQUE KEY `TicketID` (`TicketID`),
  KEY `TicketID_2` (`TicketID`),
  KEY `priceid` (`AdultUnitprice`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Table structure for table `tblticindian`
CREATE TABLE `tblticindian` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `TicketID` varchar(100) NOT NULL,
  `visitorName` varchar(255) DEFAULT NULL,
  `NoAdult` int(10) DEFAULT NULL,
  `NoChildren` int(10) DEFAULT NULL,
  `AdultUnitprice` varchar(50) DEFAULT NULL,
  `ChildUnitprice` varchar(50) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `TicketID` (`TicketID`),
  KEY `pidddd` (`ChildUnitprice`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Table structure for table `tbltickettype`
CREATE TABLE `tbltickettype` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `TicketType` varchar(200) DEFAULT NULL,
  `Price` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`ID`),
  KEY `TicketType` (`TicketType`),
  KEY `Price` (`Price`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Insert data into tables

-- tbladmin
INSERT INTO `tbladmin` (`AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
('Admin', 'admin', 1234567890, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-01-31 21:38:00');

-- tblanimal
INSERT INTO `tblanimal` (`ID`, `AnimalName`, `CageNumber`, `FeedNumber`, `Breed`, `AnimalImage`, `Description`, `CreationDate`) VALUES
(1, 'Giraffe', 12300, 'FN-123', 'Masai giraffe', '694cb29edd30cd1d86dda55dd904ee4b1596609931.jpg', 'The Masai giraffe (Giraffa camelopardalis tippelskirchii), also spelled Maasai giraffe, also called Kilimanjaro giraffe, is the largest subspecies of giraffe. It is native to East Africa. The Masai giraffe can be found in central and southern Kenya and in Tanzania.', '2024-02-14 18:30:00'),
(2, 'Giraffe', 12301, 'F-5688', 'Reticulated giraffe', '7fdc1a630c238af0815181f9faa190f51596609868.jpg', 'The reticulated giraffe (Giraffa camelopardalis reticulata), also known as the Somali giraffe, is a subspecies of giraffe native to the Horn of Africa. It lives in Somalia, southern Ethiopia, and northern Kenya. There are approximately 8,500 individuals living in the wild.', '2024-02-14 18:30:00'),
(3, 'Tiger', 12302, 'FN-809', 'Bengal Tiger', 'e692bd84570d9f467b75af761bf15c7c1596609789.jpg', 'The Bengal tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to the Indian subcontinent. It is threatened by poaching, loss, and fragmentation of habitat, and was estimated at comprising fewer than 2,500 individuals by 2011.', '2024-02-14 18:30:00'),
(4, 'Tiger', 12303, 'FN-798', ' Indochinese Tiger', '031a51aa205bd3138f7afeb0d86999e51596611280.png', 'The Indochinese tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to Southeast Asia. This population occurs in Myanmar, Thailand, Laos, Vietnam, Cambodia and southwestern China.', '2024-02-14 18:30:00'),
(5, 'Tiger', 12304, 'FN-787', 'Siberian Tiger', '1e6ae4ada992769567b71815f124fac51596609708.jpg', 'The Siberian tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to the Russian Far East, Northeast China, and possibly North Korea. It once ranged throughout the Korean Peninsula, north China, Russian Far East, and eastern Mongolia.', '2024-02-14 18:30:00'),
(6, 'Tiger', 12305, 'FN-345', 'Indochinese Tiger', '37b3f2f8b979f990fbe8bbf02fb87ddb1596609488.jpg', 'The Indochinese tiger is a tiger from a specific population of the Panthera tigris tigris subspecies that is native to Southeast Asia. This population occurs in Myanmar, Thailand, Laos, Vietnam, Cambodia and southwestern China.', '2024-02-14 18:30:00'),
(7, 'Bear', 12307, 'FN-0123', 'Sloth Bear', 'efc1a80c391be252d7d777a437f868701596611141.jpg', 'The sloth bear (Melursus ursinus) is a myrmecophagous bear species native to the Indian subcontinent. It feeds on fruits, ants and termites. It is listed as Vulnerable on the IUCN Red List, mainly because of habitat loss and degradation.', '2024-02-14 18:30:00'),
(8, 'Bear', 12308, 'FN-090', 'Sun Bear', '6c09a06117fd4daa8fd74f6d1560d6a01596609406.jpg', 'The sun bear (Helarctos malayanus) is a species in the family Ursidae occurring in the tropical forests of Southeast Asia. It is the smallest bear, standing nearly 70 centimetres (28 inches) at the shoulder and weighing 25–65 kilograms (55–143 pounds). It is stockily built, with large paws, strongly curved claws, small rounded ears and a short snout. The fur is generally jet-black, but can vary from grey to red. Sun bears get their name from the characteristic orange to cream coloured chest patch. Its unique morphology—inward-turned front feet, flattened chest, powerful forelimbs with large claws—suggests adaptations for climbing.', '2024-02-14 18:30:00');


-- tblpage
INSERT INTO `tblpage` (`PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
('aboutus', 'About us', 'We understand that running your business is hard work. This is a game-changer when it comes to family activity center software. Clubspeed develops and adapts our solution specifically for the needs of your business; simply sit back, relax, and let us do all the heavy lifting. Then the fun will truly begin!<div><br></div>', NULL, NULL, '2024-02-10 02:59:31'),
('contactus', 'Contact Us', '#890 CFG Apartment, Mayur Vihar, Delhi-India.', 'info@gmail.com', 1111111111, '2024-02-10 02:59:31');

-- tblticforeigner
INSERT INTO `tblticforeigner` (`TicketID`, `visitorName`, `NoAdult`, `NoChildren`, `AdultUnitprice`, `ChildUnitprice`, `PostingDate`) VALUES
('425693290', 'JohnDoe', 6, 3, '1100', '800', '2024-02-16 16:43:43');
-- Insert more foreign ticket data if needed

-- tblticindian
INSERT INTO `tblticindian` (`TicketID`, `visitorName`, `NoAdult`, `NoChildren`, `AdultUnitprice`, `ChildUnitprice`, `PostingDate`) VALUES
('911666414', 'Atul singh', 2, 0, '350', '80', '2024-02-17 01:39:41');
-- Insert more Indian ticket data if needed

-- tbltickettype
INSERT INTO `tbltickettype` (`TicketType`, `Price`, `CreationDate`) VALUES
('Normal Adult', '300', '2024-02-16 06:42:56'),
('Normal Child', '80', '2024-02-16 06:42:56'),
('Foreigner Adult', '1100', '2024-02-16 06:42:56'),
('Foreigner Child', '800', '2024-02-16 06:42:56');

-- Trigger to update ticket price when a new ticket type is added or updated
DELIMITER //
CREATE TRIGGER update_ticket_price AFTER INSERT ON tbltickettype
FOR EACH ROW
BEGIN
    UPDATE tblticforeigner
    SET AdultUnitprice = NEW.Price;

    UPDATE tblticindian
    SET ChildUnitprice = NEW.Price;
END;
//
DELIMITER ;

-- Create stored procedure
DELIMITER //

CREATE PROCEDURE AddTicketType(
    IN p_TicketType VARCHAR(200),
    IN p_Price VARCHAR(50)
)
BEGIN
    -- Insert new ticket type
    INSERT INTO tbltickettype (TicketType, Price, CreationDate)
    VALUES (p_TicketType, p_Price, CURRENT_TIMESTAMP());
END;
//

DELIMITER ;

-- Trigger to update ticket price when a new ticket type is added
DELIMITER //
CREATE TRIGGER update_ticket_price AFTER INSERT ON tbltickettype
FOR EACH ROW
BEGIN
    -- Update foreign ticket price
    UPDATE tblticforeigner
    SET AdultUnitprice = NEW.Price;

    -- Update Indian ticket price
    UPDATE tblticindian
    SET ChildUnitprice = NEW.Price;
END;
//
DELIMITER ;

