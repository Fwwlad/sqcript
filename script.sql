USE skstudio
CREATE TABLE Achievements(
	id int AUTO_INCREMENT NOT NULL,
	employeeId int NOT NULL,
	name nvarchar(100) NOT NULL,
	description nvarchar(4000) NULL,
	photo nvarchar(100) NULL,
 CONSTRAINT PK_Achievements PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table Appointments    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Appointments(
	id int AUTO_INCREMENT NOT NULL,
	clientId int NOT NULL,
	employeeId int NOT NULL,
	serviceId int NOT NULL,
	startDateTime datetime NOT NULL,
	statusId int NOT NULL,
	price int NOT NULL,
	endDateTime datetime NULL,
 CONSTRAINT PK_Appointments PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table Categories    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Categories(
	id int AUTO_INCREMENT NOT NULL,
	name nvarchar(50) NOT NULL,
	UIColor nvarchar(7) NULL,
 CONSTRAINT PK_Categories PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table Characteristics    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Characteristics(
	id int AUTO_INCREMENT NOT NULL,
	name nvarchar(100) NOT NULL,
 CONSTRAINT PK_Characteristics PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table Clients    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Clients(
	id int AUTO_INCREMENT NOT NULL,
	surname nvarchar(50) NOT NULL,
	name nvarchar(50) NOT NULL,
	patonymic nvarchar(50) NULL,
	birthday date NOT NULL,
	gender nvarchar(1) NOT NULL,
	phone nvarchar(10) NOT NULL,
	notes nvarchar(4000) NULL,
 CONSTRAINT PK_Clients PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table Employees    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Employees(
	id int AUTO_INCREMENT NOT NULL,
	surname nvarchar(50) NOT NULL,
	name nvarchar(50) NOT NULL,
	patronymic nvarchar(50) NULL,
	phone nvarchar(10) NULL,
	birthday date NULL,
	dateOfHire date NOT NULL,
	gender nvarchar(1) NOT NULL,
	email nvarchar(50) NULL,
	salaryPercent float NOT NULL,
 CONSTRAINT PK_Employees PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table EmployeesJobTitles    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE EmployeesJobTitles(
	EmployeeId int NOT NULL,
	JobTitleId int NOT NULL,
 CONSTRAINT PK_EmployeesJobTitles PRIMARY KEY CLUSTERED 
(
	EmployeeId ASC,
	JobTitleId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table EmployeesMobileAppPages    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE EmployeesMobileAppPages(
	employeeId int NOT NULL,
	mobileAppPageId int NOT NULL,
	canView bit NOT NULL,
	canAdd bit NOT NULL,
	canEdit bit NOT NULL,
	canDelete bit NOT NULL,
 CONSTRAINT PK_EmployeesMobileAppPages PRIMARY KEY CLUSTERED 
(
	employeeId ASC,
	mobileAppPageId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table EmployeesPasswords    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE EmployeesPasswords(
	id int AUTO_INCREMENT NOT NULL,
	employeeId int NOT NULL,
	password nvarchar(4000) NOT NULL,
 CONSTRAINT PK_EmployeesPasswords PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table Experience    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Experience(
	id int AUTO_INCREMENT NOT NULL,
	employeeId int NOT NULL,
	name nvarchar(50) NOT NULL,
	startDate date NOT NULL,
	endDate date NULL,
 CONSTRAINT PK_Experience PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table ExpirationDates    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE ExpirationDates(
	id int AUTO_INCREMENT NOT NULL,
	materialId int NOT NULL,
	startDate date NOT NULL,
	endDate date NOT NULL,
	purchaseDate date NOT NULL,
	disposalDate date NULL,
 CONSTRAINT PK_ExpirationDates PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table JobTitles    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE JobTitles(
	id int AUTO_INCREMENT NOT NULL,
	name nvarchar(50) NOT NULL,
 CONSTRAINT PK_JobTitles PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table Materials    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Materials(
	id int AUTO_INCREMENT NOT NULL,
	name nvarchar(50) NOT NULL,
	color nvarchar(50) NOT NULL,
	number int NOT NULL,
 CONSTRAINT PK_Materials PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table MaterialsCharacteristics    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE MaterialsCharacteristics(
	materialId int NOT NULL,
	characteristicId int NOT NULL,
	value nvarchar(200) NOT NULL,
 CONSTRAINT PK_MaterialsCharacteristics PRIMARY KEY CLUSTERED 
(
	materialId ASC,
	characteristicId ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table MessagesTemplates    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE MessagesTemplates(
	id int AUTO_INCREMENT NOT NULL,
	categoryId int NOT NULL,
	text nvarchar(4000) NOT NULL,
	before bit NOT NULL,
	hoursCount int NULL,
	timestamp time(7) NULL,
 CONSTRAINT PK_MessagesTemplates PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY TEXTIMAGE_ON PRIMARY
GO
/****** Object:  Table MobileAppPages    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE MobileAppPages(
	id int AUTO_INCREMENT NOT NULL,
	nameEN nvarchar(50) NOT NULL,
	nameRU nvarchar(50) NOT NULL,
 CONSTRAINT PK_MobileAppPages PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table PhotosOfEmployees    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE PhotosOfEmployees(
	id int AUTO_INCREMENT NOT NULL,
	employeeId int NOT NULL,
	source nvarchar(100) NOT NULL,
 CONSTRAINT PK_PhotosOfEmployees PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table Services    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE Services(
	id int AUTO_INCREMENT NOT NULL,
	name nvarchar(100) NOT NULL,
	baseTimeMinutes int NOT NULL,
	baseCost int NOT NULL,
	categoryId int NOT NULL,
 CONSTRAINT PK_Services PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table StatusesOfAppointments    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE StatusesOfAppointments(
	id int AUTO_INCREMENT NOT NULL,
	name nvarchar(50) NOT NULL,
 CONSTRAINT PK_StatusesOfAppointments PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
/****** Object:  Table TypesOfMaterials    Script Date: 04.05.2024 17:14:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE TypesOfMaterials(
	id int AUTO_INCREMENT NOT NULL,
	name nvarchar(50) NOT NULL,
 CONSTRAINT PK_TypesOfMaterials PRIMARY KEY CLUSTERED 
(
	id ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON PRIMARY
) ON PRIMARY
GO
ALTER TABLE EmployeesMobileAppPages ADD  CONSTRAINT DF_EmployeesMobileAppPages_view  DEFAULT ((0)) FOR canView
GO
ALTER TABLE EmployeesMobileAppPages ADD  CONSTRAINT DF_EmployeesMobileAppPages_add  DEFAULT ((0)) FOR canAdd
GO
ALTER TABLE EmployeesMobileAppPages ADD  CONSTRAINT DF_EmployeesMobileAppPages_edit  DEFAULT ((0)) FOR canEdit
GO
ALTER TABLE EmployeesMobileAppPages ADD  CONSTRAINT DF_EmployeesMobileAppPages_delite  DEFAULT ((0)) FOR canDelete
GO
ALTER TABLE Achievements  WITH CHECK ADD  CONSTRAINT FK_Achievements_Employees FOREIGN KEY(employeeId)
REFERENCES Employees (id)
GO
ALTER TABLE Achievements CHECK CONSTRAINT FK_Achievements_Employees
GO
ALTER TABLE Appointments  WITH CHECK ADD  CONSTRAINT FK_Appointments_Clients FOREIGN KEY(clientId)
REFERENCES Clients (id)
GO
ALTER TABLE Appointments CHECK CONSTRAINT FK_Appointments_Clients
GO
ALTER TABLE Appointments  WITH CHECK ADD  CONSTRAINT FK_Appointments_Employees FOREIGN KEY(employeeId)
REFERENCES Employees (id)
GO
ALTER TABLE Appointments CHECK CONSTRAINT FK_Appointments_Employees
GO
ALTER TABLE Appointments  WITH CHECK ADD  CONSTRAINT FK_Appointments_Services FOREIGN KEY(serviceId)
REFERENCES Services (id)
GO
ALTER TABLE Appointments CHECK CONSTRAINT FK_Appointments_Services
GO
ALTER TABLE Appointments  WITH CHECK ADD  CONSTRAINT FK_Appointments_StatusesOfAppointments FOREIGN KEY(statusId)
REFERENCES StatusesOfAppointments (id)
GO
ALTER TABLE Appointments CHECK CONSTRAINT FK_Appointments_StatusesOfAppointments
GO
ALTER TABLE EmployeesJobTitles  WITH CHECK ADD  CONSTRAINT FK_EmployeesJobTitles_Employees FOREIGN KEY(EmployeeId)
REFERENCES Employees (id)
GO
ALTER TABLE EmployeesJobTitles CHECK CONSTRAINT FK_EmployeesJobTitles_Employees
GO
ALTER TABLE EmployeesJobTitles  WITH CHECK ADD  CONSTRAINT FK_EmployeesJobTitles_JobTitles FOREIGN KEY(JobTitleId)
REFERENCES JobTitles (id)
GO
ALTER TABLE EmployeesJobTitles CHECK CONSTRAINT FK_EmployeesJobTitles_JobTitles
GO
ALTER TABLE EmployeesMobileAppPages  WITH CHECK ADD  CONSTRAINT FK_EmployeesMobileAppPages_Employees FOREIGN KEY(employeeId)
REFERENCES Employees (id)
GO
ALTER TABLE EmployeesMobileAppPages CHECK CONSTRAINT FK_EmployeesMobileAppPages_Employees
GO
ALTER TABLE EmployeesMobileAppPages  WITH CHECK ADD  CONSTRAINT FK_EmployeesMobileAppPages_MobileAppPages FOREIGN KEY(mobileAppPageId)
REFERENCES MobileAppPages (id)
GO
ALTER TABLE EmployeesMobileAppPages CHECK CONSTRAINT FK_EmployeesMobileAppPages_MobileAppPages
GO
ALTER TABLE EmployeesPasswords  WITH CHECK ADD  CONSTRAINT FK_EmployeesPasswords_Employees FOREIGN KEY(employeeId)
REFERENCES Employees (id)
GO
ALTER TABLE EmployeesPasswords CHECK CONSTRAINT FK_EmployeesPasswords_Employees
GO
ALTER TABLE Experience  WITH CHECK ADD  CONSTRAINT FK_Experience_Employees FOREIGN KEY(employeeId)
REFERENCES Employees (id)
GO
ALTER TABLE Experience CHECK CONSTRAINT FK_Experience_Employees
GO
ALTER TABLE ExpirationDates  WITH CHECK ADD  CONSTRAINT FK_ExpirationDates_Materials FOREIGN KEY(materialId)
REFERENCES Materials (id)
GO
ALTER TABLE ExpirationDates CHECK CONSTRAINT FK_ExpirationDates_Materials
GO
ALTER TABLE MaterialsCharacteristics  WITH CHECK ADD  CONSTRAINT FK_MaterialsCharacteristics_Characteristics FOREIGN KEY(characteristicId)
REFERENCES Characteristics (id)
GO
ALTER TABLE MaterialsCharacteristics CHECK CONSTRAINT FK_MaterialsCharacteristics_Characteristics
GO
ALTER TABLE MaterialsCharacteristics  WITH CHECK ADD  CONSTRAINT FK_MaterialsCharacteristics_Materials FOREIGN KEY(materialId)
REFERENCES Materials (id)
GO
ALTER TABLE MaterialsCharacteristics CHECK CONSTRAINT FK_MaterialsCharacteristics_Materials
GO
ALTER TABLE MessagesTemplates  WITH CHECK ADD  CONSTRAINT FK_MessagesTemplates_Categories FOREIGN KEY(categoryId)
REFERENCES Categories (id)
GO
ALTER TABLE MessagesTemplates CHECK CONSTRAINT FK_MessagesTemplates_Categories
GO
ALTER TABLE PhotosOfEmployees  WITH CHECK ADD  CONSTRAINT FK_PhotosOfEmployees_Employees FOREIGN KEY(employeeId)
REFERENCES Employees (id)
GO
ALTER TABLE PhotosOfEmployees CHECK CONSTRAINT FK_PhotosOfEmployees_Employees
GO
ALTER TABLE Services  WITH CHECK ADD  CONSTRAINT FK_Services_Categories FOREIGN KEY(categoryId)
REFERENCES Categories (id)
GO
ALTER TABLE Services CHECK CONSTRAINT FK_Services_Categories
GO
USE master
GO
ALTER DATABASE SKstudio SET  READ_WRITE 
GO
