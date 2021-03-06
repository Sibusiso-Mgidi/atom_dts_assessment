USE [master]
GO
/****** Object:  Database [Atom_Assessment_2021]    Script Date: 29/07/2021 14:09:47 ******/
CREATE DATABASE [Atom_Assessment_2021]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Atom_Assessment_2021', FILENAME = N'E:\Live Dbs\Atom_Assessment_2021.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Atom_Assessment_2021_log', FILENAME = N'E:\Live Dbs\Atom_Assessment_2021_log.ldf' , SIZE = 412672KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Atom_Assessment_2021] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Atom_Assessment_2021].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Atom_Assessment_2021] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET ARITHABORT OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Atom_Assessment_2021] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Atom_Assessment_2021] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Atom_Assessment_2021] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Atom_Assessment_2021] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET RECOVERY FULL 
GO
ALTER DATABASE [Atom_Assessment_2021] SET  MULTI_USER 
GO
ALTER DATABASE [Atom_Assessment_2021] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Atom_Assessment_2021] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Atom_Assessment_2021] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Atom_Assessment_2021] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Atom_Assessment_2021] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Atom_Assessment_2021] SET QUERY_STORE = OFF
GO
USE [Atom_Assessment_2021]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [Atom_Assessment_2021]
GO
/****** Object:  Schema [db]    Script Date: 29/07/2021 14:09:48 ******/
CREATE SCHEMA [db]
GO
/****** Object:  Table [db].[DSR]    Script Date: 29/07/2021 14:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db].[DSR](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Year] [int] NULL,
	[ProducerID] [bigint] NOT NULL,
	[FarmID] [bigint] NOT NULL,
	[Sales Week] [bigint] NULL,
	[Pallet ID] [int] NULL,
	[Sale ID] [int] NULL,
	[Barcode] [varchar](50) NULL,
	[Grade Code] [varchar](255) NULL,
	[Mark Code] [varchar](255) NULL,
	[VarietyID] [bigint] NOT NULL,
	[Pack Code] [varchar](255) NULL,
	[Count Code] [varchar](255) NULL,
	[Exchange Rate] [float] NULL,
	[Currency] [varchar](20) NULL,
	[QC] [bit] NULL,
	[Sequence Number] [bigint] NULL,
	[Production ID] [float] NULL,
	[Run Number] [varchar](50) NULL,
	[Container No] [varchar](50) NULL,
	[VesselID] [bigint] NOT NULL,
	[Port Of Discharge] [varchar](max) NULL,
	[Target Market] [varchar](max) NULL,
	[Inventory Code] [varchar](255) NULL,
	[Trader ID] [varchar](255) NULL,
	[Pallet Size] [float] NULL,
	[From Barcode] [varchar](50) NULL,
	[To Barcode] [varchar](50) NULL,
	[Invoice ID] [int] NULL,
	[Selected] [float] NULL,
	[No Cartons] [bigint] NULL,
	[Advance Price] [bigint] NULL,
	[Producer Adjustment] [bigint] NULL,
	[Advance Purchase] [float] NULL,
	[Purchase Price] [float] NULL,
	[Final Price] [float] NULL,
	[Total] [float] NULL,
	[Debit Note] [float] NULL,
	[Credit Note] [float] NULL,
	[Total Local Cost] [float] NULL,
	[Total Export Cost] [float] NULL,
	[Total Weight] [bigint] NULL,
	[Pack Nett Weight] [float] NULL,
	[Nett Weight] [float] NULL,
	[Pack Gross Weight] [float] NULL,
	[Gross Weight] [float] NULL,
	[FOB] [float] NULL,
	[DIP] [float] NULL,
	[VAT] [float] NULL,
	[Return To Grower] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [db].[Farms]    Script Date: 29/07/2021 14:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db].[Farms](
	[ID] [bigint] NOT NULL,
	[Farm Name] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db].[Producers]    Script Date: 29/07/2021 14:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db].[Producers](
	[ID] [bigint] NOT NULL,
	[Producer] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db].[Varieties]    Script Date: 29/07/2021 14:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db].[Varieties](
	[ID] [bigint] NOT NULL,
	[Variety Group] [varchar](10) NULL,
	[Variety Code] [varchar](10) NULL,
	[Commodity Code] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [db].[Vessels]    Script Date: 29/07/2021 14:09:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [db].[Vessels](
	[ID] [bigint] NOT NULL,
	[Vessel] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [db].[DSR]  WITH CHECK ADD FOREIGN KEY([FarmID])
REFERENCES [db].[Farms] ([ID])
GO
ALTER TABLE [db].[DSR]  WITH CHECK ADD FOREIGN KEY([ProducerID])
REFERENCES [db].[Producers] ([ID])
GO
ALTER TABLE [db].[DSR]  WITH CHECK ADD FOREIGN KEY([VarietyID])
REFERENCES [db].[Varieties] ([ID])
GO
ALTER TABLE [db].[DSR]  WITH CHECK ADD FOREIGN KEY([VesselID])
REFERENCES [db].[Vessels] ([ID])
GO
USE [master]
GO
ALTER DATABASE [Atom_Assessment_2021] SET  READ_WRITE 
GO
