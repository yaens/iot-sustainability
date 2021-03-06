/****** Object:  Database [sqldb-hacktheclimate-dev]    Script Date: 3/26/2021 1:38:05 PM ******/
CREATE DATABASE [sqldb-hacktheclimate-dev]  (EDITION = 'Standard', SERVICE_OBJECTIVE = 'S0', MAXSIZE = 50 GB) WITH CATALOG_COLLATION = SQL_Latin1_General_CP1_CI_AS;
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET COMPATIBILITY_LEVEL = 150
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET ARITHABORT OFF 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET ALLOW_SNAPSHOT_ISOLATION ON 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET  MULTI_USER 
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET ENCRYPTION ON
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET QUERY_STORE = ON
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 100, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/*** The scripts of database scoped configurations in Azure should be executed inside the target database connection. ***/
GO
-- ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 8;
GO
/****** Object:  Table [dbo].[MasterData]    Script Date: 3/26/2021 1:38:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MasterData](
	[SensorID] [tinyint] NULL,
	[SensorName] [nchar](50) NULL,
	[Description] [nchar](200) NULL,
	[PositionLat] [float] NULL,
	[PositionLon] [float] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SignalIngest]    Script Date: 3/26/2021 1:38:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SignalIngest](
	[SignalID] [int] NOT NULL,
	[Timestamp] [datetime] NOT NULL,
	[MeasurementValue] [float] NULL
) ON [PRIMARY]
GO
ALTER DATABASE [sqldb-hacktheclimate-dev] SET  READ_WRITE 
GO
