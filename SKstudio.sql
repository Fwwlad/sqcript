CREATE DATABASE [SKstudio];
GO
USE [SKstudio]
GO
CREATE LOGIN production with password = ;
GO
CREATE USER production FOR LOGIN production;
GO
ALTER ROLE db_datareader ADD MEMBER production;
GO
ALTER ROLE db_datawriter ADD MEMBER production;
GO
/****** Object:  Table [dbo].[Achievements]    Script Date: 09.05.2024 19:11:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Achievements](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employeeId] [int] NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[description] [nvarchar](max) NULL,
	[photo] [nvarchar](100) NULL,
 CONSTRAINT [PK_Achievements] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointments]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[clientId] [int] NOT NULL,
	[employeeId] [int] NOT NULL,
	[serviceId] [int] NOT NULL,
	[startDateTime] [datetime] NOT NULL,
	[statusId] [int] NOT NULL,
	[price] [int] NOT NULL,
	[endDateTime] [datetime] NULL,
 CONSTRAINT [PK_Appointments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[UIColor] [nvarchar](7) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Characteristics]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Characteristics](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Characteristics] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Clients]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clients](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[patonymic] [nvarchar](50) NULL,
	[birthday] [date] NULL,
	[gender] [nvarchar](7) NOT NULL,
	[phone] [nvarchar](20) NOT NULL,
	[notes] [nvarchar](max) NULL,
 CONSTRAINT [PK_Clients] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[patronymic] [nvarchar](50) NULL,
	[phone] [nvarchar](20) NULL,
	[birthday] [date] NULL,
	[dateOfHire] [date] NOT NULL,
	[gender] [nvarchar](7) NOT NULL,
	[email] [nvarchar](50) NULL,
	[salaryPercent] [float] NOT NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeesJobTitles]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeesJobTitles](
	[EmployeeId] [int] NOT NULL,
	[JobTitleId] [int] NOT NULL,
 CONSTRAINT [PK_EmployeesJobTitles] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC,
	[JobTitleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeesMobileAppPages]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeesMobileAppPages](
	[employeeId] [int] NOT NULL,
	[mobileAppPageId] [int] NOT NULL,
	[canView] [bit] NOT NULL,
	[canAdd] [bit] NOT NULL,
	[canEdit] [bit] NOT NULL,
	[canDelete] [bit] NOT NULL,
 CONSTRAINT [PK_EmployeesMobileAppPages] PRIMARY KEY CLUSTERED 
(
	[employeeId] ASC,
	[mobileAppPageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeesPasswords]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeesPasswords](
	[login] [nvarchar](50) NOT NULL,
	[employeeId] [int] NOT NULL,
	[password] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_EmployeesPasswords] PRIMARY KEY CLUSTERED 
(
	[login] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Experience]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Experience](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employeeId] [int] NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[startDate] [date] NOT NULL,
	[endDate] [date] NULL,
 CONSTRAINT [PK_Experience] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExpirationDates]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExpirationDates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[materialId] [int] NOT NULL,
	[startDate] [date] NOT NULL,
	[endDate] [date] NOT NULL,
	[purchaseDate] [date] NOT NULL,
	[disposalDate] [date] NULL,
 CONSTRAINT [PK_ExpirationDates] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[JobTitles]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[JobTitles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_JobTitles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Materials]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Materials](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[color] [nvarchar](50) NOT NULL,
	[number] [int] NOT NULL,
 CONSTRAINT [PK_Materials] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MaterialsCharacteristics]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MaterialsCharacteristics](
	[materialId] [int] NOT NULL,
	[characteristicId] [int] NOT NULL,
	[value] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_MaterialsCharacteristics] PRIMARY KEY CLUSTERED 
(
	[materialId] ASC,
	[characteristicId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MessagesTemplates]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MessagesTemplates](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[categoryId] [int] NOT NULL,
	[text] [nvarchar](max) NOT NULL,
	[before] [bit] NOT NULL,
	[hoursCount] [int] NULL,
	[timestamp] [time](7) NULL,
 CONSTRAINT [PK_MessagesTemplates] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MobileAppPages]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MobileAppPages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nameEN] [nvarchar](50) NOT NULL,
	[nameRU] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_MobileAppPages] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhotosOfEmployees]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotosOfEmployees](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[employeeId] [int] NOT NULL,
	[source] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PhotosOfEmployees] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NOT NULL,
	[baseTimeMinutes] [int] NOT NULL,
	[baseCost] [int] NOT NULL,
	[categoryId] [int] NOT NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StatusesOfAppointments]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StatusesOfAppointments](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_StatusesOfAppointments] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypesOfMaterials]    Script Date: 09.05.2024 19:11:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypesOfMaterials](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TypesOfMaterials] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[EmployeesMobileAppPages] ADD  CONSTRAINT [DF_EmployeesMobileAppPages_view]  DEFAULT ((0)) FOR [canView]
GO
ALTER TABLE [dbo].[EmployeesMobileAppPages] ADD  CONSTRAINT [DF_EmployeesMobileAppPages_add]  DEFAULT ((0)) FOR [canAdd]
GO
ALTER TABLE [dbo].[EmployeesMobileAppPages] ADD  CONSTRAINT [DF_EmployeesMobileAppPages_edit]  DEFAULT ((0)) FOR [canEdit]
GO
ALTER TABLE [dbo].[EmployeesMobileAppPages] ADD  CONSTRAINT [DF_EmployeesMobileAppPages_delite]  DEFAULT ((0)) FOR [canDelete]
GO
ALTER TABLE [dbo].[Achievements]  WITH CHECK ADD  CONSTRAINT [FK_Achievements_Employees] FOREIGN KEY([employeeId])
REFERENCES [dbo].[Employees] ([id])
GO
ALTER TABLE [dbo].[Achievements] CHECK CONSTRAINT [FK_Achievements_Employees]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Clients] FOREIGN KEY([clientId])
REFERENCES [dbo].[Clients] ([id])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Clients]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Employees] FOREIGN KEY([employeeId])
REFERENCES [dbo].[Employees] ([id])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Employees]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_Services] FOREIGN KEY([serviceId])
REFERENCES [dbo].[Services] ([id])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_Services]
GO
ALTER TABLE [dbo].[Appointments]  WITH CHECK ADD  CONSTRAINT [FK_Appointments_StatusesOfAppointments] FOREIGN KEY([statusId])
REFERENCES [dbo].[StatusesOfAppointments] ([id])
GO
ALTER TABLE [dbo].[Appointments] CHECK CONSTRAINT [FK_Appointments_StatusesOfAppointments]
GO
ALTER TABLE [dbo].[EmployeesJobTitles]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesJobTitles_Employees] FOREIGN KEY([EmployeeId])
REFERENCES [dbo].[Employees] ([id])
GO
ALTER TABLE [dbo].[EmployeesJobTitles] CHECK CONSTRAINT [FK_EmployeesJobTitles_Employees]
GO
ALTER TABLE [dbo].[EmployeesJobTitles]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesJobTitles_JobTitles] FOREIGN KEY([JobTitleId])
REFERENCES [dbo].[JobTitles] ([id])
GO
ALTER TABLE [dbo].[EmployeesJobTitles] CHECK CONSTRAINT [FK_EmployeesJobTitles_JobTitles]
GO
ALTER TABLE [dbo].[EmployeesMobileAppPages]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesMobileAppPages_Employees] FOREIGN KEY([employeeId])
REFERENCES [dbo].[Employees] ([id])
GO
ALTER TABLE [dbo].[EmployeesMobileAppPages] CHECK CONSTRAINT [FK_EmployeesMobileAppPages_Employees]
GO
ALTER TABLE [dbo].[EmployeesMobileAppPages]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesMobileAppPages_MobileAppPages] FOREIGN KEY([mobileAppPageId])
REFERENCES [dbo].[MobileAppPages] ([id])
GO
ALTER TABLE [dbo].[EmployeesMobileAppPages] CHECK CONSTRAINT [FK_EmployeesMobileAppPages_MobileAppPages]
GO
ALTER TABLE [dbo].[EmployeesPasswords]  WITH CHECK ADD  CONSTRAINT [FK_EmployeesPasswords_Employees] FOREIGN KEY([employeeId])
REFERENCES [dbo].[Employees] ([id])
GO
ALTER TABLE [dbo].[EmployeesPasswords] CHECK CONSTRAINT [FK_EmployeesPasswords_Employees]
GO
ALTER TABLE [dbo].[Experience]  WITH CHECK ADD  CONSTRAINT [FK_Experience_Employees] FOREIGN KEY([employeeId])
REFERENCES [dbo].[Employees] ([id])
GO
ALTER TABLE [dbo].[Experience] CHECK CONSTRAINT [FK_Experience_Employees]
GO
ALTER TABLE [dbo].[ExpirationDates]  WITH CHECK ADD  CONSTRAINT [FK_ExpirationDates_Materials] FOREIGN KEY([materialId])
REFERENCES [dbo].[Materials] ([id])
GO
ALTER TABLE [dbo].[ExpirationDates] CHECK CONSTRAINT [FK_ExpirationDates_Materials]
GO
ALTER TABLE [dbo].[MaterialsCharacteristics]  WITH CHECK ADD  CONSTRAINT [FK_MaterialsCharacteristics_Characteristics] FOREIGN KEY([characteristicId])
REFERENCES [dbo].[Characteristics] ([id])
GO
ALTER TABLE [dbo].[MaterialsCharacteristics] CHECK CONSTRAINT [FK_MaterialsCharacteristics_Characteristics]
GO
ALTER TABLE [dbo].[MaterialsCharacteristics]  WITH CHECK ADD  CONSTRAINT [FK_MaterialsCharacteristics_Materials] FOREIGN KEY([materialId])
REFERENCES [dbo].[Materials] ([id])
GO
ALTER TABLE [dbo].[MaterialsCharacteristics] CHECK CONSTRAINT [FK_MaterialsCharacteristics_Materials]
GO
ALTER TABLE [dbo].[MessagesTemplates]  WITH CHECK ADD  CONSTRAINT [FK_MessagesTemplates_Categories] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[MessagesTemplates] CHECK CONSTRAINT [FK_MessagesTemplates_Categories]
GO
ALTER TABLE [dbo].[PhotosOfEmployees]  WITH CHECK ADD  CONSTRAINT [FK_PhotosOfEmployees_Employees] FOREIGN KEY([employeeId])
REFERENCES [dbo].[Employees] ([id])
GO
ALTER TABLE [dbo].[PhotosOfEmployees] CHECK CONSTRAINT [FK_PhotosOfEmployees_Employees]
GO
ALTER TABLE [dbo].[Services]  WITH CHECK ADD  CONSTRAINT [FK_Services_Categories] FOREIGN KEY([categoryId])
REFERENCES [dbo].[Categories] ([id])
GO
ALTER TABLE [dbo].[Services] CHECK CONSTRAINT [FK_Services_Categories]
GO
INSERT INTO [dbo].[StatusesOfAppointments] ([name]) VALUES('запланирована')
GO
INSERT INTO [dbo].[StatusesOfAppointments] ([name]) VALUES('завершена')
GO
INSERT INTO [dbo].[StatusesOfAppointments] ([name]) VALUES('отменена')
GO
INSERT INTO [dbo].[StatusesOfAppointments] ([name]) VALUES('нерабочие часы')
GO
INSERT INTO [dbo].[StatusesOfAppointments] ([name]) VALUES('оформление')
GO
INSERT INTO [dbo].[Categories] ([name], [UIColor]) VALUES ('Маникюр', '#E289F2')
GO
INSERT INTO [dbo].[Categories] ([name], [UIColor]) VALUES ('Педикюр', '#39C86A')
GO
INSERT INTO [dbo].[Categories] ([name], [UIColor]) VALUES ('Спа-процедуры', '#2DB6F5')
GO
INSERT INTO [dbo].[Categories] ([name], [UIColor]) VALUES ('Брови', '#FF8A65')
GO
INSERT INTO [dbo].[Categories] ([name], [UIColor]) VALUES ('Ресницы', '#D1584E')
GO
INSERT INTO [dbo].[Categories] ([name], [UIColor]) VALUES ('Макияж', '#F5C324')
GO
INSERT INTO [dbo].[Categories] ([name], [UIColor]) VALUES ('Укладка', '#8F7CD1')
GO

