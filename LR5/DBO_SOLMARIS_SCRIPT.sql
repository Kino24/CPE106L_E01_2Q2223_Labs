USE [master]
GO

/****** Object:  Database [dbo_SOLMARIS]    Script Date: 18/12/2022 10:05:36 AM ******/
CREATE DATABASE [dbo_SOLMARIS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbo_SOLMARIS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dbo_SOLMARIS.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbo_SOLMARIS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\dbo_SOLMARIS_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbo_SOLMARIS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [dbo_SOLMARIS] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET ARITHABORT OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET AUTO_CLOSE ON 
GO

ALTER DATABASE [dbo_SOLMARIS] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [dbo_SOLMARIS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [dbo_SOLMARIS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET  ENABLE_BROKER 
GO

ALTER DATABASE [dbo_SOLMARIS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [dbo_SOLMARIS] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [dbo_SOLMARIS] SET  MULTI_USER 
GO

ALTER DATABASE [dbo_SOLMARIS] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [dbo_SOLMARIS] SET DB_CHAINING OFF 
GO

ALTER DATABASE [dbo_SOLMARIS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [dbo_SOLMARIS] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [dbo_SOLMARIS] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [dbo_SOLMARIS] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO

ALTER DATABASE [dbo_SOLMARIS] SET QUERY_STORE = OFF
GO

ALTER DATABASE [dbo_SOLMARIS] SET  READ_WRITE 
GO

USE [dbo_SOLMARIS]
GO
/****** Object:  Table [dbo].[tbl_agreement]    Script Date: 18/12/2022 10:06:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_agreement](
	[agreement_id] [int] IDENTITY(1,1) NOT NULL,
	[renter_id] [int] NOT NULL,
	[property_id] [int] NOT NULL,
	[start_date] [date] NOT NULL,
	[end_date] [date] NOT NULL,
	[rental_amount] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_condo_unit]    Script Date: 18/12/2022 10:06:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_condo_unit](
	[condo_id] [int] NOT NULL,
	[location_id] [int] NOT NULL,
	[SqFt] [float] NOT NULL,
	[bedrooms] [int] NOT NULL,
	[baths] [int] NOT NULL,
	[condo_fee] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_location]    Script Date: 18/12/2022 10:06:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_location](
	[location_id] [int] IDENTITY(1,1) NOT NULL,
	[location_name] [varchar](50) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[city] [varchar](50) NOT NULL,
	[state] [varchar](50) NOT NULL,
	[postal_code] [varchar](6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_property]    Script Date: 18/12/2022 10:06:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_property](
	[property_id] [int] IDENTITY(1,1) NOT NULL,
	[location_id] [int] NOT NULL,
	[unit_num] [int] NOT NULL,
	[num_per_sleep] [int] NOT NULL,
	[base_weekly_rate] [float] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_renter]    Script Date: 18/12/2022 10:06:28 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_renter](
	[renter_id] [int] IDENTITY(1,1) NOT NULL,
	[first_name] [varchar](20) NOT NULL,
	[middle_name] [varchar](20) NOT NULL,
	[last_name] [varchar](20) NOT NULL,
	[address] [varchar](50) NOT NULL,
	[city] [varchar](20) NOT NULL,
	[state] [varchar](20) NOT NULL,
	[postal_code] [varchar](6) NOT NULL,
	[telephone_number] [varchar](11) NOT NULL,
	[email_address] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
