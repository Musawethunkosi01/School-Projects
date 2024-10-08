USE [Coffe60DB]
GO
/****** Object:  Table [dbo].[Barista]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barista](
	[StaffID] [varchar](50) NULL,
	[CourseCompleted] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bean]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bean](
	[Bean_ID] [varchar](50) NOT NULL,
	[Bean_Description] [varchar](50) NULL,
	[Bean_Cost] [int] NULL,
 CONSTRAINT [PK_Bean] PRIMARY KEY CLUSTERED 
(
	[Bean_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Condiment]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Condiment](
	[Condiment_ID] [varchar](50) NOT NULL,
	[Con_Description] [varchar](50) NULL,
	[Con_Cost] [int] NULL,
 CONSTRAINT [PK_Condiment] PRIMARY KEY CLUSTERED 
(
	[Condiment_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [varchar](50) NOT NULL,
	[LoyaltyCard_ID] [varchar](50) NULL,
	[Cust_FirstName] [varchar](50) NULL,
	[Cust_LastName] [varchar](50) NULL,
	[Cust_IDNumber] [varchar](50) NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Delivery]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Delivery](
	[DeliveryID] [varchar](50) NOT NULL,
	[DeliveryPersonID] [varchar](50) NULL,
	[OrderID] [varchar](50) NULL,
	[DeliveryStartDateTime] [varchar](50) NULL,
	[DeliveryEndDateTime] [varchar](50) NULL,
 CONSTRAINT [PK_Delivery] PRIMARY KEY CLUSTERED 
(
	[DeliveryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryAddress]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryAddress](
	[DeliveryAddress_ID] [varchar](50) NOT NULL,
	[DA_StreetNumber] [varchar](50) NULL,
	[DA_StreetName] [varchar](50) NULL,
	[DA_Suburb] [varchar](50) NULL,
	[DA_City] [varchar](50) NULL,
	[DA_State] [varchar](50) NULL,
	[DA_PostalCode] [varchar](50) NULL,
	[DA_IsDefault] [varchar](50) NULL,
	[Customer_ID] [varchar](50) NULL,
 CONSTRAINT [PK_DeliveryAddress] PRIMARY KEY CLUSTERED 
(
	[DeliveryAddress_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryPerson]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryPerson](
	[DeliveryP_ID] [varchar](50) NOT NULL,
	[DP_FirstName] [varchar](50) NULL,
	[DP_LastName] [varchar](50) NULL,
	[DP_DrivingLNumber] [varchar](50) NULL,
	[DP_DrivingLExpiryDate] [varchar](50) NULL,
	[DP_DrivingLisValid] [varchar](50) NULL,
	[DeliveryVehicle_ID] [varchar](50) NULL,
 CONSTRAINT [PK_DeliveryPerson] PRIMARY KEY CLUSTERED 
(
	[DeliveryP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryVehicle]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryVehicle](
	[DeliveryVehicleID] [varchar](50) NOT NULL,
	[GPS_ID] [varchar](50) NULL,
	[DV_Description] [varchar](50) NULL,
	[DV_NumberPlate] [varchar](50) NULL,
 CONSTRAINT [PK_DeliveryVehicle] PRIMARY KEY CLUSTERED 
(
	[DeliveryVehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Drink]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drink](
	[DrinK_ID] [varchar](50) NOT NULL,
	[Style_ID] [varchar](50) NULL,
	[Bean_ID] [varchar](50) NULL,
	[Condiment_ID] [varchar](50) NULL,
	[Milk_ID] [varchar](50) NULL,
	[DrinkCost] [int] NULL,
 CONSTRAINT [PK_Drink] PRIMARY KEY CLUSTERED 
(
	[DrinK_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GPSTracking]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GPSTracking](
	[GPS_ID] [varchar](50) NOT NULL,
	[GPS_LastTrack] [varchar](50) NULL,
	[GPS_CapturedDateTime] [varchar](50) NULL,
 CONSTRAINT [PK_GPSTracking] PRIMARY KEY CLUSTERED 
(
	[GPS_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoyaltyCard]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoyaltyCard](
	[LoyaltyCard_ID] [varchar](50) NOT NULL,
	[LCard_Number] [varchar](50) NULL,
	[LCard_Value] [int] NULL,
	[LCard_ExpiryDate] [varchar](50) NULL,
 CONSTRAINT [PK_LoyaltyCard] PRIMARY KEY CLUSTERED 
(
	[LoyaltyCard_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Manager]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Manager](
	[StaffID] [varchar](50) NULL,
	[Qualification] [varchar](50) NULL,
	[YearsExperience] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Milk]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Milk](
	[Milk_ID] [varchar](50) NOT NULL,
	[Milk_Description] [varchar](50) NULL,
	[Milk_Cost] [int] NULL,
 CONSTRAINT [PK_Milk] PRIMARY KEY CLUSTERED 
(
	[Milk_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Order_ID] [varchar](50) NOT NULL,
	[Delivery_ID] [varchar](50) NULL,
	[Drink_ID] [varchar](50) NULL,
	[Customer_ID] [varchar](50) NULL,
	[Store_ID] [varchar](50) NULL,
	[IsPaid] [varchar](50) NULL,
	[Order_TotalCost] [int] NULL,
	[Order_StartDateTime] [varchar](50) NULL,
	[Oder_EndDateTime] [varchar](50) NULL,
	[DeliveryAddress_ID] [varchar](50) NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Packers]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Packers](
	[StaffID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Packers] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staff]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[StaffID] [varchar](50) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[IDNumber] [varchar](50) NOT NULL,
	[StaffNumber] [varchar](50) NOT NULL,
	[YearsOfService] [int] NOT NULL,
	[StoreID] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[StoreID] [varchar](50) NOT NULL,
	[StoreName] [varchar](50) NULL,
	[StoreDescription] [varchar](50) NULL,
	[StoreStreetName] [varchar](50) NULL,
	[StoreStreetNumber] [varchar](50) NULL,
	[StoreSuburb] [varchar](50) NULL,
	[StoreCity] [varchar](50) NULL,
	[StoreState] [varchar](50) NULL,
	[StorePostalCode] [varchar](50) NULL,
	[StoreGPS] [varchar](50) NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[StoreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Style]    Script Date: 2024/03/12 15:29:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Style](
	[Style_ID] [varchar](50) NOT NULL,
	[Style_Description] [varchar](50) NULL,
	[Style_Cost] [int] NULL,
 CONSTRAINT [PK_Style] PRIMARY KEY CLUSTERED 
(
	[Style_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Barista] ([StaffID], [CourseCompleted]) VALUES (N'111', N'Culinary')
INSERT [dbo].[Barista] ([StaffID], [CourseCompleted]) VALUES (N'112', N'EsspressoFounder')
INSERT [dbo].[Barista] ([StaffID], [CourseCompleted]) VALUES (N'113', N'CommercialBarista')
INSERT [dbo].[Barista] ([StaffID], [CourseCompleted]) VALUES (N'114', N'FreelanceBarista')
INSERT [dbo].[Barista] ([StaffID], [CourseCompleted]) VALUES (N'115', N'LatteArt')
GO
INSERT [dbo].[Bean] ([Bean_ID], [Bean_Description], [Bean_Cost]) VALUES (N'43', N'Brazil', 100)
INSERT [dbo].[Bean] ([Bean_ID], [Bean_Description], [Bean_Cost]) VALUES (N'44', N'Ghana', 50)
INSERT [dbo].[Bean] ([Bean_ID], [Bean_Description], [Bean_Cost]) VALUES (N'45', N'Ethopia', 100)
INSERT [dbo].[Bean] ([Bean_ID], [Bean_Description], [Bean_Cost]) VALUES (N'46', N'Venezuela', 90)
INSERT [dbo].[Bean] ([Bean_ID], [Bean_Description], [Bean_Cost]) VALUES (N'47', N'Congo', 95)
GO
INSERT [dbo].[Condiment] ([Condiment_ID], [Con_Description], [Con_Cost]) VALUES (N'45', N'White Sugar', 1)
INSERT [dbo].[Condiment] ([Condiment_ID], [Con_Description], [Con_Cost]) VALUES (N'46', N'Sweetner', 3)
INSERT [dbo].[Condiment] ([Condiment_ID], [Con_Description], [Con_Cost]) VALUES (N'47', N'Honey', 4)
INSERT [dbo].[Condiment] ([Condiment_ID], [Con_Description], [Con_Cost]) VALUES (N'48', N'Bitters', 2)
INSERT [dbo].[Condiment] ([Condiment_ID], [Con_Description], [Con_Cost]) VALUES (N'49', N'Brown sugar', 1)
GO
INSERT [dbo].[Customer] ([Customer_ID], [LoyaltyCard_ID], [Cust_FirstName], [Cust_LastName], [Cust_IDNumber]) VALUES (N'100', N'6549', N'Shaun', N'Machete', N'201145')
INSERT [dbo].[Customer] ([Customer_ID], [LoyaltyCard_ID], [Cust_FirstName], [Cust_LastName], [Cust_IDNumber]) VALUES (N'101', N'6550', N'Katlego', N'Nkosi', N'200205')
INSERT [dbo].[Customer] ([Customer_ID], [LoyaltyCard_ID], [Cust_FirstName], [Cust_LastName], [Cust_IDNumber]) VALUES (N'102', N'6551', N'Khaya', N'Mdluli', N'198705')
INSERT [dbo].[Customer] ([Customer_ID], [LoyaltyCard_ID], [Cust_FirstName], [Cust_LastName], [Cust_IDNumber]) VALUES (N'98', N'6547', N'Vernon', N'Matongo', N'202010')
INSERT [dbo].[Customer] ([Customer_ID], [LoyaltyCard_ID], [Cust_FirstName], [Cust_LastName], [Cust_IDNumber]) VALUES (N'99', N'6548', N'Gabriel', N'Matsane', N'196509')
GO
INSERT [dbo].[DeliveryAddress] ([DeliveryAddress_ID], [DA_StreetNumber], [DA_StreetName], [DA_Suburb], [DA_City], [DA_State], [DA_PostalCode], [DA_IsDefault], [Customer_ID]) VALUES (N'23', N'879', N'Berghaandraai', N'Hazyview', N'Nelspruit', N'Mpumalanga', N'1242', N'Yes', N'202010')
INSERT [dbo].[DeliveryAddress] ([DeliveryAddress_ID], [DA_StreetNumber], [DA_StreetName], [DA_Suburb], [DA_City], [DA_State], [DA_PostalCode], [DA_IsDefault], [Customer_ID]) VALUES (N'24', N'345', N'Fourie', N'White River', N'Nelspruit', N'Mpumalanga', N'2113', N'Yes', N'196509')
INSERT [dbo].[DeliveryAddress] ([DeliveryAddress_ID], [DA_StreetNumber], [DA_StreetName], [DA_Suburb], [DA_City], [DA_State], [DA_PostalCode], [DA_IsDefault], [Customer_ID]) VALUES (N'25', N'456', N'Jacobs Laan', N'Universitas', N'Bloemfontein', N'Free State', N'9301', N'Yes', N'201145')
INSERT [dbo].[DeliveryAddress] ([DeliveryAddress_ID], [DA_StreetNumber], [DA_StreetName], [DA_Suburb], [DA_City], [DA_State], [DA_PostalCode], [DA_IsDefault], [Customer_ID]) VALUES (N'26', N'34', N'Mandela Drive', N'Brandwag', N'Bloemfontein', N'Free State', N'9301', N'Yes', N'200205')
INSERT [dbo].[DeliveryAddress] ([DeliveryAddress_ID], [DA_StreetNumber], [DA_StreetName], [DA_Suburb], [DA_City], [DA_State], [DA_PostalCode], [DA_IsDefault], [Customer_ID]) VALUES (N'27', N'45', N'Langen Oval', N'Langenhoven', N'Bloemfontein', N'Free State', N'9301', N'Yes', N'198705')
GO
INSERT [dbo].[DeliveryPerson] ([DeliveryP_ID], [DP_FirstName], [DP_LastName], [DP_DrivingLNumber], [DP_DrivingLExpiryDate], [DP_DrivingLisValid], [DeliveryVehicle_ID]) VALUES (N'1', N'Victor', N'Lindelof', N'22278', N'2027/10/11', N'Yes', N'22')
INSERT [dbo].[DeliveryPerson] ([DeliveryP_ID], [DP_FirstName], [DP_LastName], [DP_DrivingLNumber], [DP_DrivingLExpiryDate], [DP_DrivingLisValid], [DeliveryVehicle_ID]) VALUES (N'2', N'Lwando', N'Kolisa', N'22290', N'2029/12/15', N'Yes', N'23')
INSERT [dbo].[DeliveryPerson] ([DeliveryP_ID], [DP_FirstName], [DP_LastName], [DP_DrivingLNumber], [DP_DrivingLExpiryDate], [DP_DrivingLisValid], [DeliveryVehicle_ID]) VALUES (N'3', N'Shaun', N'Ray', N'22280', N'2025/10/31', N'Yes', N'24')
INSERT [dbo].[DeliveryPerson] ([DeliveryP_ID], [DP_FirstName], [DP_LastName], [DP_DrivingLNumber], [DP_DrivingLExpiryDate], [DP_DrivingLisValid], [DeliveryVehicle_ID]) VALUES (N'4', N'Vincent', N'Nche', N'22287', N'2028/08/21', N'Yes', N'25')
INSERT [dbo].[DeliveryPerson] ([DeliveryP_ID], [DP_FirstName], [DP_LastName], [DP_DrivingLNumber], [DP_DrivingLExpiryDate], [DP_DrivingLisValid], [DeliveryVehicle_ID]) VALUES (N'5', N'Tshego', N'Motsumi', N'22234', N'2029/09/11', N'Yes', N'28')
GO
INSERT [dbo].[DeliveryVehicle] ([DeliveryVehicleID], [GPS_ID], [DV_Description], [DV_NumberPlate]) VALUES (N'22', N'789', N'BigBoyQBlack', N'FDT789MP')
INSERT [dbo].[DeliveryVehicle] ([DeliveryVehicleID], [GPS_ID], [DV_Description], [DV_NumberPlate]) VALUES (N'23', N'790', N'BigBoyQWhite', N'JKL678MP')
INSERT [dbo].[DeliveryVehicle] ([DeliveryVehicleID], [GPS_ID], [DV_Description], [DV_NumberPlate]) VALUES (N'24', N'791', N'BigBoyQRed', N'98HG89GP')
INSERT [dbo].[DeliveryVehicle] ([DeliveryVehicleID], [GPS_ID], [DV_Description], [DV_NumberPlate]) VALUES (N'25', N'792', N'BigBoyQWhite', N'44JK89GP')
INSERT [dbo].[DeliveryVehicle] ([DeliveryVehicleID], [GPS_ID], [DV_Description], [DV_NumberPlate]) VALUES (N'28', N'793', N'BigBoyQBlue', N'45FH34GP')
GO
INSERT [dbo].[Drink] ([DrinK_ID], [Style_ID], [Bean_ID], [Condiment_ID], [Milk_ID], [DrinkCost]) VALUES (N'10', N'90', N'43', N'46', N'13', 165)
INSERT [dbo].[Drink] ([DrinK_ID], [Style_ID], [Bean_ID], [Condiment_ID], [Milk_ID], [DrinkCost]) VALUES (N'11', N'99', N'44', N'48', N'29', 112)
INSERT [dbo].[Drink] ([DrinK_ID], [Style_ID], [Bean_ID], [Condiment_ID], [Milk_ID], [DrinkCost]) VALUES (N'12', N'20', N'47', N'45', N'22', 156)
INSERT [dbo].[Drink] ([DrinK_ID], [Style_ID], [Bean_ID], [Condiment_ID], [Milk_ID], [DrinkCost]) VALUES (N'13', N'88', N'45', N'49', N'25', 166)
INSERT [dbo].[Drink] ([DrinK_ID], [Style_ID], [Bean_ID], [Condiment_ID], [Milk_ID], [DrinkCost]) VALUES (N'14', N'101', N'46', N'49', N'43', 160)
GO
INSERT [dbo].[GPSTracking] ([GPS_ID], [GPS_LastTrack], [GPS_CapturedDateTime]) VALUES (N'789', N'V', N'2024/10/14')
INSERT [dbo].[GPSTracking] ([GPS_ID], [GPS_LastTrack], [GPS_CapturedDateTime]) VALUES (N'790', N'V', N'2024/11/23')
INSERT [dbo].[GPSTracking] ([GPS_ID], [GPS_LastTrack], [GPS_CapturedDateTime]) VALUES (N'791', N'V', N'2024/12/12')
INSERT [dbo].[GPSTracking] ([GPS_ID], [GPS_LastTrack], [GPS_CapturedDateTime]) VALUES (N'792', N'V', N'2024/09/31')
INSERT [dbo].[GPSTracking] ([GPS_ID], [GPS_LastTrack], [GPS_CapturedDateTime]) VALUES (N'793', N'V', N'2024/10/09')
GO
INSERT [dbo].[LoyaltyCard] ([LoyaltyCard_ID], [LCard_Number], [LCard_Value], [LCard_ExpiryDate]) VALUES (N'6547      ', N'19875     ', 100, N'Sep 21 2025 12:00AM')
INSERT [dbo].[LoyaltyCard] ([LoyaltyCard_ID], [LCard_Number], [LCard_Value], [LCard_ExpiryDate]) VALUES (N'6548      ', N'23375     ', 60, N'Dec 11 2025 12:00AM')
INSERT [dbo].[LoyaltyCard] ([LoyaltyCard_ID], [LCard_Number], [LCard_Value], [LCard_ExpiryDate]) VALUES (N'6549      ', N'34568     ', 89, N'Aug 30 2025 12:00AM')
INSERT [dbo].[LoyaltyCard] ([LoyaltyCard_ID], [LCard_Number], [LCard_Value], [LCard_ExpiryDate]) VALUES (N'6550      ', N'76892     ', 134, N'Jul 23 2025 12:00AM')
INSERT [dbo].[LoyaltyCard] ([LoyaltyCard_ID], [LCard_Number], [LCard_Value], [LCard_ExpiryDate]) VALUES (N'6551      ', N'34679     ', 10, N'Sep 15 2025 12:00AM')
GO
INSERT [dbo].[Manager] ([StaffID], [Qualification], [YearsExperience]) VALUES (N'106', N'Business Analyst', 20)
INSERT [dbo].[Manager] ([StaffID], [Qualification], [YearsExperience]) VALUES (N'107', N'Business Management', 10)
INSERT [dbo].[Manager] ([StaffID], [Qualification], [YearsExperience]) VALUES (N'108', N'BAdmin', 23)
INSERT [dbo].[Manager] ([StaffID], [Qualification], [YearsExperience]) VALUES (N'109', N'BMarketing', 33)
INSERT [dbo].[Manager] ([StaffID], [Qualification], [YearsExperience]) VALUES (N'110', N'BAdmin', 22)
GO
INSERT [dbo].[Milk] ([Milk_ID], [Milk_Description], [Milk_Cost]) VALUES (N'13', N'Low Fat', 12)
INSERT [dbo].[Milk] ([Milk_ID], [Milk_Description], [Milk_Cost]) VALUES (N'22', N'1% Milk', 10)
INSERT [dbo].[Milk] ([Milk_ID], [Milk_Description], [Milk_Cost]) VALUES (N'25', N'Skim', 15)
INSERT [dbo].[Milk] ([Milk_ID], [Milk_Description], [Milk_Cost]) VALUES (N'29', N'Soy Milk', 20)
INSERT [dbo].[Milk] ([Milk_ID], [Milk_Description], [Milk_Cost]) VALUES (N'43', N'Fresh Milk', 19)
GO
INSERT [dbo].[Packers] ([StaffID]) VALUES (N'101')
INSERT [dbo].[Packers] ([StaffID]) VALUES (N'102')
INSERT [dbo].[Packers] ([StaffID]) VALUES (N'103')
INSERT [dbo].[Packers] ([StaffID]) VALUES (N'104')
INSERT [dbo].[Packers] ([StaffID]) VALUES (N'105')
GO
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [IDNumber], [StaffNumber], [YearsOfService], [StoreID]) VALUES (N'101', N'Musawethu', N'Nkosi', N'110103', N'10', 12, N'2')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [IDNumber], [StaffNumber], [YearsOfService], [StoreID]) VALUES (N'102', N'Patricia', N'Motsumi', N'952021', N'11', 22, N'2')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [IDNumber], [StaffNumber], [YearsOfService], [StoreID]) VALUES (N'103', N'Takudzwa', N'Mandigo', N'459034', N'12', 34, N'2')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [IDNumber], [StaffNumber], [YearsOfService], [StoreID]) VALUES (N'104', N'Lebogang', N'Motlhabane', N'112348', N'13', 15, N'2')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [IDNumber], [StaffNumber], [YearsOfService], [StoreID]) VALUES (N'105', N'Michael', N'Bower', N'134578', N'14', 26, N'2')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [IDNumber], [StaffNumber], [YearsOfService], [StoreID]) VALUES (N'106', N'Jack', N'Johnson', N'897645', N'15', 16, N'2')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [IDNumber], [StaffNumber], [YearsOfService], [StoreID]) VALUES (N'107', N'Temba', N'Sibisi', N'234567', N'16', 25, N'2')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [IDNumber], [StaffNumber], [YearsOfService], [StoreID]) VALUES (N'108', N'Marno', N'Stopfort', N'907865', N'17', 23, N'2')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [IDNumber], [StaffNumber], [YearsOfService], [StoreID]) VALUES (N'109', N'John', N'Modise', N'235677', N'18', 78, N'2')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [IDNumber], [StaffNumber], [YearsOfService], [StoreID]) VALUES (N'110', N'Junior', N'Mandigo', N'893455', N'19', 98, N'2')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [IDNumber], [StaffNumber], [YearsOfService], [StoreID]) VALUES (N'111', N'Melusi', N'Mondlane', N'123400', N'20', 43, N'2')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [IDNumber], [StaffNumber], [YearsOfService], [StoreID]) VALUES (N'112', N'Victor', N'Shumba', N'216771', N'21', 55, N'2')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [IDNumber], [StaffNumber], [YearsOfService], [StoreID]) VALUES (N'113', N'Charles', N'Kawalya', N'8563456', N'22', 24, N'2')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [IDNumber], [StaffNumber], [YearsOfService], [StoreID]) VALUES (N'114', N'Alex', N'Oosthuizen', N'223344', N'23', 77, N'2')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [IDNumber], [StaffNumber], [YearsOfService], [StoreID]) VALUES (N'115', N'DuJean', N'Kriek', N'986799', N'24', 19, N'2')
INSERT [dbo].[Staff] ([StaffID], [FirstName], [LastName], [IDNumber], [StaffNumber], [YearsOfService], [StoreID]) VALUES (N'201', N'Musawethu', N'Nkosi', N'020426', N'3', 18, N'3')
GO
INSERT [dbo].[Store] ([StoreID], [StoreName], [StoreDescription], [StoreStreetName], [StoreStreetNumber], [StoreSuburb], [StoreCity], [StoreState], [StorePostalCode], [StoreGPS]) VALUES (N'2', N'WildCoffee', N'White Door', N'234', N'Burger', N'Hazyview', N'Nelspruit', N'Mpumalanga', N'1242', N'11:13')
INSERT [dbo].[Store] ([StoreID], [StoreName], [StoreDescription], [StoreStreetName], [StoreStreetNumber], [StoreSuburb], [StoreCity], [StoreState], [StorePostalCode], [StoreGPS]) VALUES (N'3', N'CoffeeExpress', N'Red Door', N'98', N'Kruger', N'White', N'Nelspruit', N'Mpumalanga', N'1301', N'1123:13')
INSERT [dbo].[Store] ([StoreID], [StoreName], [StoreDescription], [StoreStreetName], [StoreStreetNumber], [StoreSuburb], [StoreCity], [StoreState], [StorePostalCode], [StoreGPS]) VALUES (N'4', N'XCafe', N'Gold Door', N'34', N'Solomons', N'Universita', N'Bloemfontein', N'Free State', N'9301', N'111:09')
INSERT [dbo].[Store] ([StoreID], [StoreName], [StoreDescription], [StoreStreetName], [StoreStreetNumber], [StoreSuburb], [StoreCity], [StoreState], [StorePostalCode], [StoreGPS]) VALUES (N'5', N'CafeMimosa', N'Green Door', N'45', N'Scholtz', N'Langenhoven', N'Bloemfontein', N'Free State', N'9301', N'89:03')
INSERT [dbo].[Store] ([StoreID], [StoreName], [StoreDescription], [StoreStreetName], [StoreStreetNumber], [StoreSuburb], [StoreCity], [StoreState], [StorePostalCode], [StoreGPS]) VALUES (N'6', N'XpressiveCafe', N'Purple Door', N'244', N'Mandela', N'Brandwag', N'Bloemfontein', N'Free State', N'9301', N'90:34')
GO
INSERT [dbo].[Style] ([Style_ID], [Style_Description], [Style_Cost]) VALUES (N'101', N'Bomb', 50)
INSERT [dbo].[Style] ([Style_ID], [Style_Description], [Style_Cost]) VALUES (N'20', N'Gun', 50)
INSERT [dbo].[Style] ([Style_ID], [Style_Description], [Style_Cost]) VALUES (N'88', N'Heart', 50)
INSERT [dbo].[Style] ([Style_ID], [Style_Description], [Style_Cost]) VALUES (N'90', N'Flower', 50)
INSERT [dbo].[Style] ([Style_ID], [Style_Description], [Style_Cost]) VALUES (N'99', N'Initials', 50)
GO
ALTER TABLE [dbo].[Barista]  WITH CHECK ADD  CONSTRAINT [FK_Barista_Staff] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
GO
ALTER TABLE [dbo].[Barista] CHECK CONSTRAINT [FK_Barista_Staff]
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK_Customer_LoyaltyCard] FOREIGN KEY([LoyaltyCard_ID])
REFERENCES [dbo].[LoyaltyCard] ([LoyaltyCard_ID])
GO
ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK_Customer_LoyaltyCard]
GO
ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD  CONSTRAINT [FK_Delivery_DeliveryPerson] FOREIGN KEY([DeliveryPersonID])
REFERENCES [dbo].[DeliveryPerson] ([DeliveryP_ID])
GO
ALTER TABLE [dbo].[Delivery] CHECK CONSTRAINT [FK_Delivery_DeliveryPerson]
GO
ALTER TABLE [dbo].[Delivery]  WITH CHECK ADD  CONSTRAINT [FK_Delivery_Order] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([Order_ID])
GO
ALTER TABLE [dbo].[Delivery] CHECK CONSTRAINT [FK_Delivery_Order]
GO
ALTER TABLE [dbo].[DeliveryPerson]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryPerson_DeliveryVehicle] FOREIGN KEY([DeliveryVehicle_ID])
REFERENCES [dbo].[DeliveryVehicle] ([DeliveryVehicleID])
GO
ALTER TABLE [dbo].[DeliveryPerson] CHECK CONSTRAINT [FK_DeliveryPerson_DeliveryVehicle]
GO
ALTER TABLE [dbo].[DeliveryVehicle]  WITH CHECK ADD  CONSTRAINT [FK_DeliveryVehicle_GPSTracking] FOREIGN KEY([GPS_ID])
REFERENCES [dbo].[GPSTracking] ([GPS_ID])
GO
ALTER TABLE [dbo].[DeliveryVehicle] CHECK CONSTRAINT [FK_DeliveryVehicle_GPSTracking]
GO
ALTER TABLE [dbo].[Drink]  WITH CHECK ADD  CONSTRAINT [FK_Drink_Bean] FOREIGN KEY([Bean_ID])
REFERENCES [dbo].[Bean] ([Bean_ID])
GO
ALTER TABLE [dbo].[Drink] CHECK CONSTRAINT [FK_Drink_Bean]
GO
ALTER TABLE [dbo].[Drink]  WITH CHECK ADD  CONSTRAINT [FK_Drink_Condiment] FOREIGN KEY([Condiment_ID])
REFERENCES [dbo].[Condiment] ([Condiment_ID])
GO
ALTER TABLE [dbo].[Drink] CHECK CONSTRAINT [FK_Drink_Condiment]
GO
ALTER TABLE [dbo].[Drink]  WITH CHECK ADD  CONSTRAINT [FK_Drink_Milk] FOREIGN KEY([Milk_ID])
REFERENCES [dbo].[Milk] ([Milk_ID])
GO
ALTER TABLE [dbo].[Drink] CHECK CONSTRAINT [FK_Drink_Milk]
GO
ALTER TABLE [dbo].[Drink]  WITH CHECK ADD  CONSTRAINT [FK_Drink_Style] FOREIGN KEY([Style_ID])
REFERENCES [dbo].[Style] ([Style_ID])
GO
ALTER TABLE [dbo].[Drink] CHECK CONSTRAINT [FK_Drink_Style]
GO
ALTER TABLE [dbo].[Manager]  WITH CHECK ADD  CONSTRAINT [FK_Manager_Staff] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
GO
ALTER TABLE [dbo].[Manager] CHECK CONSTRAINT [FK_Manager_Staff]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Customer] FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Customer]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_DeliveryAddress] FOREIGN KEY([DeliveryAddress_ID])
REFERENCES [dbo].[DeliveryAddress] ([DeliveryAddress_ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_DeliveryAddress]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Drink] FOREIGN KEY([Drink_ID])
REFERENCES [dbo].[Drink] ([DrinK_ID])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Drink]
GO
ALTER TABLE [dbo].[Packers]  WITH CHECK ADD  CONSTRAINT [FK_Packers_Staff] FOREIGN KEY([StaffID])
REFERENCES [dbo].[Staff] ([StaffID])
GO
ALTER TABLE [dbo].[Packers] CHECK CONSTRAINT [FK_Packers_Staff]
GO
ALTER TABLE [dbo].[Staff]  WITH CHECK ADD  CONSTRAINT [FK_Staff_Store] FOREIGN KEY([StoreID])
REFERENCES [dbo].[Store] ([StoreID])
GO
ALTER TABLE [dbo].[Staff] CHECK CONSTRAINT [FK_Staff_Store]
GO
