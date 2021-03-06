USE [Course_Project]
GO
/****** Object:  Table [dbo].[Patient_Info_Insert_T]    Script Date: 06/11/19 9:03:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient_Info_Insert_T](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Patient_Name] [varchar](100) NULL,
	[Mobile_Number] [varchar](14) NULL,
	[Gender] [varchar](50) NULL,
	[Date] [varchar](50) NULL,
	[Serial_No] [varchar](50) NULL,
 CONSTRAINT [PK_Patient_Info_Insert_T] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Patient_Records_T]    Script Date: 06/11/19 9:03:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Patient_Records_T](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Patient_Name] [varchar](100) NULL,
	[Age] [varchar](50) NULL,
	[Disease] [varchar](200) NULL,
	[Medicine] [varchar](200) NULL,
	[Date] [varchar](50) NULL,
	[Serial] [varchar](50) NULL,
 CONSTRAINT [PK_Patient_Records_T] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Registration_Form_T]    Script Date: 06/11/19 9:03:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration_Form_T](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[User_Name] [varchar](100) NULL,
	[Password] [varchar](50) NULL,
	[User_Type] [varchar](50) NULL,
 CONSTRAINT [PK_Registration_Form_T] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Patient_Info_Insert_T] ON 

INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (32, N'Rajib', N'01255', N'Male', N'04/07/2018', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (33, N'Rajib', N'01858514621', N'Male', N'04/19/2018', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (34, N'Rajib Sarker', N'01875357421', N'Male', N'04/19/2018', N'02')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (35, N'Jishan', N'01854748632', N'Male', N'04/20/2018', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (36, N'Ratul', N'01859654214', N'Male', N'04/20/2018', N'02')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (37, N'MD Anisur Rahaman', N'01854745857', N'Male', N'04/20/2018', N'03')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (38, N'Habib', N'01854585869', N'Male', N'04/21/2018', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (39, N'Muktar', N'01854715698', N'Male', N'04/21/2018', N'02')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (40, N'Nehal', N'01854748595', N'Male', N'04/21/2018', N'03')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (41, N'Rahim', N'0185474585', N'Male', N'04/21/2018', N'04')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (42, N'Suman', N'018547458956', N'Male', N'04/21/2018', N'05')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (43, N'Rajib', N'01858514621', N'Male', N'04/22/2018', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (44, N'Raju', N'01875357421', N'Male', N'04/22/2018', N'02')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (45, N'Antor', N'01854748569', N'Male', N'04/22/2018', N'03')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (46, N'Sarker', N'01854747485', N'Male', N'04/22/2018', N'04')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (47, N'Nahid', N'01854745896', N'Male', N'04/22/2018', N'05')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (48, N'Na', N'01', N'Male', N'04/23/2018', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (49, N'', N'', N'--Select--', N'', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (50, N'', N'', N'--Select--', N'', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (51, N'Rupam', N'01854748547', N'Male', N'04/23/2018', N'02')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (52, N'', N'', N'--Select--', N'04/23/2018', N'03')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (53, N'Sujata', N'01747584759', N'Female', N'04/23/2018', N'04')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (54, N'Rajib', N'01858514621', N'Male', N'04/24/2018', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (55, N'Rajib', N'01858514621', N'Male', N'04/24/2018', N'02')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (56, N'Raju', N'554', N'Male', N'04/25/2018', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (57, N'Raju', N'45454', N'Male', N'04/25/2018', N'02')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (58, N'Raju', N'01845874596', N'Male', N'04/24/2018', N'03')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (59, N'Borhan', N'01854745965', N'Male', N'04/23/2018', N'05')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (1002, N'hhyh', N'04145', N'Male', N'05/05/2018', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (1003, N'gyg', N'4848', N'Male', N'05/05/2018', N'02')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (1004, N'Sarker', N'01858514621', N'Male', N'05/06/2018', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (1005, N'hgfhyg', N'018555', N'Male', N'05/06/2018', N'02')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (1006, N'tghhg', N'334e34', N'Male', N'05/13/2018', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (1007, N'dv', N'2342', N'Male', N'04/24/2018', N'04')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (1008, N'cvxcv', N'4534', N'Male', N'04/24/2018', N'05')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (2002, N'', N'', N'--Select--', N'', N'')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (2003, N'Rajib Sarker', N'01875357421', N'Male', N'05/18/2018', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (2004, N'Donald Trump', N'01759535154', N'Male', N'05/18/2018', N'02')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (2005, N'dffff', N'5252', N'Male', N'05/18/2018', N'03')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (2006, N'Rajib Sarker', N'01875357421', N'Male', N'07/01/2018', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (2007, N'Raju', N'01858514621', N'Male', N'07/01/2018', N'02')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (2008, N'Raju Sarker', N'02121215', N'Male', N'07/01/2018', N'03')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (2009, N'Jovan', N'01854858556', N'Male', N'07/01/2018', N'04')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (2010, N'Rajib', N'1', N'Male', N'07/01/2018', N'05')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (3006, N'', N'', N'--Select--', N'', N'')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (3007, N'Rajib Sarker', N'01875357421', N'Male', N'19/08/2018', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (3008, N'Raju Sarker', N'01858514621', N'Male', N'19/08/2018', N'02')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (3009, N'Emon', N'01854748547', N'Male', N'19/08/2018', N'03')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (3010, N'Jowel Rana', N'01854748589', N'Male', N'19/08/2018', N'04')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (4006, N'Dewloar', N'01858452632', N'Male', N'01/05/2018', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (4007, N'Dewloar Hossian', N'01858452632', N'Male', N'01/05/2018', N'02')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (4008, N'Railo', N'01845236541', N'Male', N'01/13/2019', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (4009, N'Railo Roshow', N'01854745896', N'Male', N'01/13/2019', N'02')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (4010, N'', N'', N'--Select--', N'', N'')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (4011, N'01845236541', N'', N'Male', N'03/04/2019', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (4012, N'', N'', N'--Select--', N'', N'')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (4013, N'dkfjslk', N'', N'--Select--', N'', N'')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (4014, N'dksjfk', N'01845236541', N'Male', N'03/03/2019', N'01')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (4015, N'Rajib', N'01845236541', N'Male', N'03/04/2019', N'02')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (4016, N'Sarker', N'01845236541', N'Male', N'03/04/2019', N'03')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (4017, N'Raju', N'01845236541', N'Male', N'03/04/2019', N'04')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (4018, N'Sajib', N'01845236541', N'Male', N'03/04/2019', N'05')
INSERT [dbo].[Patient_Info_Insert_T] ([Id], [Patient_Name], [Mobile_Number], [Gender], [Date], [Serial_No]) VALUES (4019, N'ef', N'01845236541', N'Male', N'03/05/2019', N'01')
SET IDENTITY_INSERT [dbo].[Patient_Info_Insert_T] OFF
SET IDENTITY_INSERT [dbo].[Patient_Records_T] ON 

INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (19, N'Jahir', N'25', N'Cancer', N'God Bless You', N'4/11/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (23, N'Rajib', N'20', N'Feaver', N'Napa,Seclo', N'04/19/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (24, N'Rajib Sarker', N'20', N'Feaver', N'Napa', N'04/19/2018', N'02')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (25, N'Rajib Sarker', N'20', N'Caugh', N'Adovas', N'04/19/2018', N'02')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (26, N'Rajib', N'42', N'Feaver', N'napa', N'04/07/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (27, N'Rajib Sarker', N'', N'dssdfsd', N'dsfsdf', N'04/19/2018', N'02')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (28, N'Rajib', N'', N'', N'', N'04/19/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (29, N'Jishan', N'25', N'Feaver', N'Napa Extra-5mg
Seclo-20mg', N'04/20/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (30, N'Ratul', N'12', N'Headeck', N'Napa', N'04/20/2018', N'02')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (31, N'Jishan', N'25', N'Feaver', N'Napa-5mg,
Seclo-20mg', N'04/20/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (32, N'Jishan', N'34', N'Feaver', N'Napa', N'04/20/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (33, N'Ratul', N'5', N'fs', N'sffsd', N'04/20/2018', N'02')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (34, N'Jishan', N'32', N'dfas', N'dsa', N'04/20/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (35, N'Ratul', N'45', N'dsfsdf', N'dsfdf', N'04/20/2018', N'02')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (36, N'Jishan', N'43', N'dfas', N'fas', N'04/20/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (37, N'Ratul', N'20', N'fss', N'fsfa', N'04/20/2018', N'02')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (38, N'Ratul', N'32', N'dfs', N'dfs', N'04/20/2018', N'02')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (39, N'Jishan', N'32', N'fs', N'dada', N'04/20/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (40, N'Ratul', N'23', N'dfs', N'saff', N'04/20/2018', N'02')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (41, N'Jishan', N'54', N'fasf', N'fe', N'04/20/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (42, N'Ratul', N'34', N'sse', N'sse', N'04/20/2018', N'02')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (43, N'MD Anisur Rahaman', N'21', N'Pream Rug', N'God Bless You!', N'04/20/2018', N'03')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (44, N'Habib', N'20', N'Feaver', N'Napa', N'04/21/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (45, N'Rajib', N'20', N'Feaver', N'Napa', N'04/24/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (46, N'Rajib', N'20', N'Caugh', N'Adovas', N'04/24/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (47, N'Raju', N'22', N'dsfsdf', N'dfsdfs', N'04/25/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (48, N'Rahim', N'5', N'fghf', N'hfdh', N'04/21/2018', N'04')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (49, N'Habib', N'43', N'erer', N'gdg', N'04/21/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (50, N'Muktar', N'43', N'erer', N'gdg', N'04/21/2018', N'02')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (51, N'Rajib', N'43', N'erer', N'gdg', N'04/24/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (52, N'Habib', N'20', N'Feaver', N'Napa', N'04/21/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (53, N'Suman', N'25', N'Feaver', N'Napa', N'04/21/2018', N'05')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (54, N'Borhan', N'21', N'Feaver', N'Nampa', N'04/23/2018', N'05')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (1018, N'hhyh', N'20', N'hbyb', N'yhyh', N'05/05/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (1019, N'Sarker', N'20', N'dhfsjdh', N'jhfjdhjfhsjfhjkshfjsh', N'05/06/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (1020, N'Patient Name Will Be Show Here.', N'', N'', N'', N'', N'Patient Serial No Will Be Show Here.')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (1021, N'tghhg', N'33', N'dd', N'ddd', N'05/13/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (2018, N'Rajib Sarker', N'20', N'Nothing', N'Take Care Yourselef...
', N'05/18/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (2019, N'Rajib Sarker', N'20', N'Feaver', N'asds
', N'07/01/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (3019, N'Rajib Sarker', N'20', N'Feaver & Caugh', N'Cofica,
Croma-10mg,
Antibiaotic', N'19/08/2018', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (3020, N'Raju Sarker', N'20', N'Feaver & Caugh', N'cofica, croma-10mg, antibiotic', N'19/08/2018', N'02')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (4019, N'Railo', N'25', N'Feaver', N'Napa
', N'01/13/2019', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (4020, N'Patient Name Will Be Show Here.', N'', N'', N'', N'', N'Patient Serial No Will Be Show Here.')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (4021, N'dksjfk', N'20', N'kjk', N'kkkj
', N'03/03/2019', N'01')
INSERT [dbo].[Patient_Records_T] ([Id], [Patient_Name], [Age], [Disease], [Medicine], [Date], [Serial]) VALUES (4022, N'Rajib', N'25', N'Feaver', N'Napa', N'03/04/2019', N'02')
SET IDENTITY_INSERT [dbo].[Patient_Records_T] OFF
SET IDENTITY_INSERT [dbo].[Registration_Form_T] ON 

INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (10, N'Doctor', N'Doctor', N'Doctor')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (11, N'Assistance', N'Assistance', N'Assistance')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (12, N'Rajibq', N'1234', N'Assistance')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (13, N'Anis', N'Anisur Rahman', N'Assistance')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (14, N'Anis', N'Anisur', N'Assistance')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (15, N'assis1', N'123', N'Assistance')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (16, N'', N'', N'--Select--')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (17, N'', N'', N'--Select--')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (18, N'fdsfsf', N'fdsf', N'Assistance')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (1007, N'Ass', N'ass#', N'Assistance')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (1008, N'ass', N'ass@', N'Assistance')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (1009, N'Batch_37', N'Batch_37', N'Assistance')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (1010, N'Dactar', N'Dactar', N'Doctor')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (2009, N'RajibSarker', N'RajibSarker', N'Assistance')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (3009, N'RajibSarker', N'RajibSarker', N'Doctor')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (4009, N'', N'', N'--Select--')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (4010, N'', N'', N'--Select--')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (4011, N'j', N'1', N'--Select--')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (4012, N'kskdj', N'1', N'--Select--')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (4013, N'admin', N'1', N'--Select--')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (4014, N'admin', N'1', N'--Select--')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (4015, N'admin', N'1', N'--Select--')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (4016, N'j', N'j', N'--Select--')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (4017, N'i', N'i', N'Assistance')
INSERT [dbo].[Registration_Form_T] ([Id], [User_Name], [Password], [User_Type]) VALUES (4018, N'l', N'l', N'Assistance')
SET IDENTITY_INSERT [dbo].[Registration_Form_T] OFF
