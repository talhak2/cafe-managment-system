USE [master]
GO
/****** Object:  Database [cafedb]    Script Date: 5/22/2019 4:58:59 AM ******/
CREATE DATABASE [cafedb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'cafedb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\cafedb.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'cafedb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\cafedb_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [cafedb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [cafedb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [cafedb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [cafedb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [cafedb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [cafedb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [cafedb] SET ARITHABORT OFF 
GO
ALTER DATABASE [cafedb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [cafedb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [cafedb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [cafedb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [cafedb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [cafedb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [cafedb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [cafedb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [cafedb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [cafedb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [cafedb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [cafedb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [cafedb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [cafedb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [cafedb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [cafedb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [cafedb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [cafedb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [cafedb] SET  MULTI_USER 
GO
ALTER DATABASE [cafedb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [cafedb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [cafedb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [cafedb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [cafedb] SET DELAYED_DURABILITY = DISABLED 
GO
USE [cafedb]
GO
/****** Object:  Table [dbo].[tbladmin]    Script Date: 5/22/2019 4:58:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tbladmin](
	[admId] [int] IDENTITY(1,1) NOT NULL,
	[adm_name] [varchar](25) NULL,
	[pwd] [varchar](25) NULL,
 CONSTRAINT [PK_tbladmin] PRIMARY KEY CLUSTERED 
(
	[admId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblItems]    Script Date: 5/22/2019 4:58:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblItems](
	[ItmId] [int] IDENTITY(1,1) NOT NULL,
	[itm_name] [varchar](50) NULL,
	[itm_price] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ItmId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblOrder]    Script Date: 5/22/2019 4:58:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblOrder](
	[OdrId] [int] IDENTITY(1,1) NOT NULL,
	[RegId] [int] NULL,
	[ItmId] [int] NULL,
	[quantity] [varchar](50) NULL,
	[OdrDate] [date] NULL,
	[Total] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[OdrId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tblRegister]    Script Date: 5/22/2019 4:58:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tblRegister](
	[RegId] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Pwd] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[RegId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[tbladmin] ON 

INSERT [dbo].[tbladmin] ([admId], [adm_name], [pwd]) VALUES (1, N'usman', N'123456')
INSERT [dbo].[tbladmin] ([admId], [adm_name], [pwd]) VALUES (2, N'naveed', N'123')
SET IDENTITY_INSERT [dbo].[tbladmin] OFF
SET IDENTITY_INSERT [dbo].[tblItems] ON 

INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (1, N'anda', N'10')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (2, N'patt', N'50')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (3, N'samosa', N'10')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (4, N'Fries', N'50')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (5, N'choco', N'30')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (6, N'chat', N'30')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (7, N'cake', N'300')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (8, N'soup', N'80')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (9, N'macaroni', N'120')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (10, N'pasta', N'230')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (11, N'bfburg', N'80')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (12, N'chkburg', N'230')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (13, N'kabab', N'40')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (14, N'golgappa', N'60')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (15, N'sandw', N'120')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (16, N'tikka', N'130')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (17, N'roll', N'110')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (18, N'pepsi', N'90')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (19, N'up', N'70')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (20, N'dew', N'90')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (21, N'singrice', N'320')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (22, N'bfpulao', N'120')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (23, N'biryani', N'120')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (24, N'zingburg', N'300')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (25, N'pizza', N'1000')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (26, N'coffe', N'150')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (27, N'tea', N'30')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (28, N'paratha', N'25')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (29, N'raita', N'30')
INSERT [dbo].[tblItems] ([ItmId], [itm_name], [itm_price]) VALUES (30, N'water', N'35')
SET IDENTITY_INSERT [dbo].[tblItems] OFF
SET IDENTITY_INSERT [dbo].[tblRegister] ON 

INSERT [dbo].[tblRegister] ([RegId], [Username], [Pwd]) VALUES (1, N'Naveed', N'123456')
INSERT [dbo].[tblRegister] ([RegId], [Username], [Pwd]) VALUES (2, N'ahmed', N'123456789')
INSERT [dbo].[tblRegister] ([RegId], [Username], [Pwd]) VALUES (3, N'', N'')
SET IDENTITY_INSERT [dbo].[tblRegister] OFF
ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD FOREIGN KEY([ItmId])
REFERENCES [dbo].[tblItems] ([ItmId])
GO
ALTER TABLE [dbo].[tblOrder]  WITH CHECK ADD FOREIGN KEY([RegId])
REFERENCES [dbo].[tblRegister] ([RegId])
ON DELETE CASCADE
GO
USE [master]
GO
ALTER DATABASE [cafedb] SET  READ_WRITE 
GO
