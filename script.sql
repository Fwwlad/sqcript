USE `skstudio`;
/****** Object:  Table `Achievements`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `Achievements`(
	`id` int AUTO_INCREMENT NOT NULL,
	`employeeId` int NOT NULL,
	`name` varchar(100) NOT NULL,
	`description` varchar(4000) NULL,
	`photo` varchar(100) NULL,
CONSTRAINT `PK_Achievements` PRIMARY KEY 
(
	`id` ASC
)
)
;
/****** Object:  Table `Appointments`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `Appointments`(
	`id` int AUTO_INCREMENT NOT NULL,
	`clientId` int NOT NULL,
	`employeeId` int NOT NULL,
	`serviceId` int NOT NULL,
	`startDateTime` datetime NOT NULL,
	`statusId` int NOT NULL,
	`price` int NOT NULL,
	`endDateTime` datetime NULL,
 CONSTRAINT `PK_Appointments` PRIMARY KEY 
(
	`id` ASC
)
)
;
/****** Object:  Table `Categories`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `Categories`(
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(50) NOT NULL,
	`UIColor` varchar(7) NULL,
CONSTRAINT `PK_Categories` PRIMARY KEY 
(
	`id` ASC
)
)
;
/****** Object:  Table `Characteristics`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `Characteristics`(
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(100) NOT NULL,
CONSTRAINT `PK_Characteristics` PRIMARY KEY 
(
	`id` ASC
)
)
;
/****** Object:  Table `Clients`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `Clients`(
	`id` int AUTO_INCREMENT NOT NULL,
	`surname` varchar(50) NOT NULL,
	`name` varchar(50) NOT NULL,
	`patonymic` varchar(50) NULL,
	`birthday` `date` NOT NULL,
	`gender` varchar(1) NOT NULL,
	`phone` varchar(10) NOT NULL,
	`notes` varchar(4000) NULL,
CONSTRAINT `PK_Clients` PRIMARY KEY 
(
	`id` ASC
)
)
;
/****** Object:  Table `Employees`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `Employees`(
	`id` int AUTO_INCREMENT NOT NULL,
	`surname` varchar(50) NOT NULL,
	`name` varchar(50) NOT NULL,
	`patronymic` varchar(50) NULL,
	`phone` varchar(10) NULL,
	`birthday` `date` NULL,
	`dateOfHire` `date` NOT NULL,
	`gender` varchar(1) NOT NULL,
	`email` varchar(50) NULL,
	`salaryPercent` double NOT NULL,
CONSTRAINT `PK_Employees` PRIMARY KEY 
(
	`id` ASC
)
)
;
/****** Object:  Table `EmployeesJobTitles`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `EmployeesJobTitles`(
	`EmployeeId` int NOT NULL,
	`JobTitleId` int NOT NULL,
CONSTRAINT `PK_EmployeesJobTitles` PRIMARY KEY 
(
	`EmployeeId` ASC,
	`JobTitleId` ASC
)
)
;
/****** Object:  Table `EmployeesMobileAppPages`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `EmployeesMobileAppPages`(
	`employeeId` int NOT NULL,
	`mobileAppPageId` int NOT NULL,
	`canView` tinyint NOT NULL,
	`canAdd` tinyint NOT NULL,
	`canEdit` tinyint NOT NULL,
	`canDelete` tinyint NOT NULL,
CONSTRAINT `PK_EmployeesMobileAppPages` PRIMARY KEY 
(
	`employeeId` ASC,
	`mobileAppPageId` ASC
)
)
;
/****** Object:  Table `EmployeesPasswords`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `EmployeesPasswords`(
	`id` int AUTO_INCREMENT NOT NULL,
	`employeeId` int NOT NULL,
	`password` varchar(4000) NOT NULL,
 CONSTRAINT `PK_EmployeesPasswords` PRIMARY KEY 
(
	`id` ASC
)
)
;
/****** Object:  Table `Experience`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `Experience`(
	`id` int AUTO_INCREMENT NOT NULL,
	`employeeId` int NOT NULL,
	`name` varchar(50) NOT NULL,
	`startDate` `date` NOT NULL,
	`endDate` `date` NULL,
 CONSTRAINT `PK_Experience` PRIMARY KEY 
(
	`id` ASC
)
)
;
/****** Object:  Table `ExpirationDates`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `ExpirationDates`(
	`id` int AUTO_INCREMENT NOT NULL,
	`materialId` int NOT NULL,
	`startDate` `date` NOT NULL,
	`endDate` `date` NOT NULL,
	`purchaseDate` `date` NOT NULL,
	`disposalDate` `date` NULL,
CONSTRAINT `PK_ExpirationDates` PRIMARY KEY 
(
	`id` ASC
)
)
;
/****** Object:  Table `JobTitles`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `JobTitles`(
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(50) NOT NULL,
CONSTRAINT `PK_JobTitles` PRIMARY KEY 
(
	`id` ASC
)
)
;
/****** Object:  Table `Materials`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `Materials`(
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(50) NOT NULL,
	`color` varchar(50) NOT NULL,
	`number` int NOT NULL,
CONSTRAINT `PK_Materials` PRIMARY KEY 
(
	`id` ASC
)
)
;
/****** Object:  Table `MaterialsCharacteristics`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `MaterialsCharacteristics`(
	`materialId` int NOT NULL,
	`characteristicId` int NOT NULL,
	`value` varchar(200) NOT NULL,
CONSTRAINT `PK_MaterialsCharacteristics` PRIMARY KEY 
(
	`materialId` ASC,
	`characteristicId` ASC
)
)
;
/****** Object:  Table `MessagesTemplates`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `MessagesTemplates`(
	`id` int AUTO_INCREMENT NOT NULL,
	`categoryId` int NOT NULL,
	text varchar(4000) NOT NULL,
	`before` tinyint NOT NULL,
	`hoursCount` int NULL,
	`timestamp` `time`(7) NULL,
CONSTRAINT `PK_MessagesTemplates` PRIMARY KEY 
(
	`id` ASC
)
)
;
/****** Object:  Table `MobileAppPages`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `MobileAppPages`(
	`id` int AUTO_INCREMENT NOT NULL,
	`nameEN` varchar(50) NOT NULL,
	`nameRU` varchar(50) NOT NULL,
CONSTRAINT `PK_MobileAppPages` PRIMARY KEY 
(
	`id` ASC
)
)
;
/****** Object:  Table `PhotosOfEmployees`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `PhotosOfEmployees`(
	`id` int AUTO_INCREMENT NOT NULL,
	`employeeId` int NOT NULL,
	`source` varchar(100) NOT NULL,
CONSTRAINT `PK_PhotosOfEmployees` PRIMARY KEY 
(
	`id` ASC
)
)
;
/****** Object:  Table `Services`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `Services`(
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(100) NOT NULL,
	`baseTimeMinutes` int NOT NULL,
	`baseCost` int NOT NULL,
	`categoryId` int NOT NULL,
CONSTRAINT `PK_Services` PRIMARY KEY 
(
	`id` ASC
)
)
;
/****** Object:  Table `StatusesOfAppointments`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `StatusesOfAppointments`(
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(50) NOT NULL,
CONSTRAINT `PK_StatusesOfAppointments` PRIMARY KEY 
(
	`id` ASC
)
)
;
/****** Object:  Table `TypesOfMaterials`    Script Date: 04.05.2024 18:40:29 ******/
CREATE TABLE `TypesOfMaterials`(
	`id` int AUTO_INCREMENT NOT NULL,
	`name` varchar(50) NOT NULL,
CONSTRAINT `PK_TypesOfMaterials` PRIMARY KEY 
(
	`id` ASC
)
)
;
ALTER TABLE `Achievements`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`employeeId`)
REFERENCES `Employees` (`id`)
;
ALTER TABLE `Achievements` CHECK CONSTRAINT `FK_Achievements_Employees`
;
ALTER TABLE `Appointments`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`clientId`)
REFERENCES `Clients` (`id`)
;
ALTER TABLE `Appointments` CHECK CONSTRAINT `FK_Appointments_Clients`
;
ALTER TABLE `Appointments`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`employeeId`)
REFERENCES `Employees` (`id`)
;
ALTER TABLE `Appointments` CHECK CONSTRAINT `FK_Appointments_Employees`
;
ALTER TABLE `Appointments`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`serviceId`)
REFERENCES `Services` (`id`)
;
ALTER TABLE `Appointments` CHECK CONSTRAINT `FK_Appointments_Services`
;
ALTER TABLE `Appointments`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`statusId`)
REFERENCES `StatusesOfAppointments` (`id`)
;
ALTER TABLE `Appointments` CHECK CONSTRAINT `FK_Appointments_StatusesOfAppointments`
;
ALTER TABLE `EmployeesJobTitles`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`EmployeeId`)
REFERENCES `Employees` (`id`)
;
ALTER TABLE `EmployeesJobTitles` CHECK CONSTRAINT `FK_EmployeesJobTitles_Employees`
;
ALTER TABLE `EmployeesJobTitles`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`JobTitleId`)
REFERENCES `JobTitles` (`id`)
;
ALTER TABLE `EmployeesJobTitles` CHECK CONSTRAINT `FK_EmployeesJobTitles_JobTitles`
;
ALTER TABLE `EmployeesMobileAppPages`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`employeeId`)
REFERENCES `Employees` (`id`)
;
ALTER TABLE `EmployeesMobileAppPages` CHECK CONSTRAINT `FK_EmployeesMobileAppPages_Employees`
;
ALTER TABLE `EmployeesMobileAppPages`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`mobileAppPageId`)
REFERENCES `MobileAppPages` (`id`)
;
ALTER TABLE `EmployeesMobileAppPages` CHECK CONSTRAINT `FK_EmployeesMobileAppPages_MobileAppPages`
;
ALTER TABLE `EmployeesPasswords`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`employeeId`)
REFERENCES `Employees` (`id`)
;
ALTER TABLE `EmployeesPasswords` CHECK CONSTRAINT `FK_EmployeesPasswords_Employees`
;
ALTER TABLE `Experience`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`employeeId`)
REFERENCES `Employees` (`id`)
;
ALTER TABLE `Experience` CHECK CONSTRAINT `FK_Experience_Employees`
;
ALTER TABLE `ExpirationDates`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`materialId`)
REFERENCES `Materials` (`id`)
;
ALTER TABLE `ExpirationDates` CHECK CONSTRAINT `FK_ExpirationDates_Materials`
;
ALTER TABLE `MaterialsCharacteristics`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`characteristicId`)
REFERENCES `Characteristics` (`id`)
;
ALTER TABLE `MaterialsCharacteristics` CHECK CONSTRAINT `FK_MaterialsCharacteristics_Characteristics`
;
ALTER TABLE `MaterialsCharacteristics`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`materialId`)
REFERENCES `Materials` (`id`)
;
ALTER TABLE `MaterialsCharacteristics` CHECK CONSTRAINT `FK_MaterialsCharacteristics_Materials`
;
ALTER TABLE `MessagesTemplates`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`categoryId`)
REFERENCES `Categories` (`id`)
;
ALTER TABLE `MessagesTemplates` CHECK CONSTRAINT `FK_MessagesTemplates_Categories`
;
ALTER TABLE `PhotosOfEmployees`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`employeeId`)
REFERENCES `Employees` (`id`)
;
ALTER TABLE `PhotosOfEmployees` CHECK CONSTRAINT `FK_PhotosOfEmployees_Employees`
;
ALTER TABLE `Services`  WITH CHECK ADD  CONSTRAINT FOREIGN KEY (`categoryId`)
REFERENCES `Categories` (`id`)
;
ALTER TABLE `Services` CHECK CONSTRAINT `FK_Services_Categories`
;
