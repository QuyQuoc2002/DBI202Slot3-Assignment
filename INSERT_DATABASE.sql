USE [master]
GO
/****** Object:  Database [ASM_DBI202_Slot3_QuocPQHE163061_SP2022]    Script Date: 7/10/2022 11:44:47 AM ******/
CREATE DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASM_DBI202_Slot3_QuocPQHE163061_SP2022', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ASM_DBI202_Slot3_QuocPQHE163061_SP2022.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASM_DBI202_Slot3_QuocPQHE163061_SP2022_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ASM_DBI202_Slot3_QuocPQHE163061_SP2022_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASM_DBI202_Slot3_QuocPQHE163061_SP2022].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET  MULTI_USER 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET QUERY_STORE = OFF
GO
USE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022]
GO
/****** Object:  Table [dbo].[Assessment]    Script Date: 7/10/2022 11:44:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assessment](
	[ID_Assessment] [nchar](20) NOT NULL,
	[ID_SubjectSemester] [nchar](20) NULL,
	[name] [nvarchar](150) NULL,
	[Weight] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Assessment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attendance]    Script Date: 7/10/2022 11:44:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attendance](
	[ID_Student] [nchar](20) NOT NULL,
	[ID_Session] [nchar](20) NOT NULL,
	[Check_Attendance] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Student] ASC,
	[ID_Session] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Enroll]    Script Date: 7/10/2022 11:44:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Enroll](
	[ID_Student] [nchar](20) NOT NULL,
	[ID_Group] [nchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Student] ASC,
	[ID_Group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 7/10/2022 11:44:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[ID_Group] [nchar](20) NOT NULL,
	[name] [nvarchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Group] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Subject_Semester]    Script Date: 7/10/2022 11:44:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Subject_Semester](
	[ID_Group] [nchar](20) NOT NULL,
	[ID_SubjectSemester] [nchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Group] ASC,
	[ID_SubjectSemester] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 7/10/2022 11:44:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[ID_Session] [nchar](20) NOT NULL,
	[name] [nvarchar](150) NULL,
	[ID_SubjectSemester] [nchar](20) NULL,
	[Slot_Number] [int] NULL,
	[Slot] [int] NULL,
	[ID_Group] [nchar](20) NULL,
	[Room] [nchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Session] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/10/2022 11:44:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[ID_Student] [nchar](20) NOT NULL,
	[name] [nvarchar](150) NULL,
	[gender] [bit] NULL,
	[dob] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Student] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Assessment]    Script Date: 7/10/2022 11:44:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Assessment](
	[ID_Assessment] [nchar](20) NOT NULL,
	[ID_Student] [nchar](20) NOT NULL,
	[Date] [date] NOT NULL,
	[Score] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Assessment] ASC,
	[ID_Student] ASC,
	[Date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 7/10/2022 11:44:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[ID_Subject] [nchar](20) NOT NULL,
	[name] [nvarchar](150) NULL,
	[totalSlot] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_Subject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject_Semester]    Script Date: 7/10/2022 11:44:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject_Semester](
	[ID_SubjectSemester] [nchar](20) NOT NULL,
	[ID_Subject] [nchar](20) NULL,
	[Semester] [nchar](20) NULL,
	[StartDate] [date] NULL,
	[EndDate] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID_SubjectSemester] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TimeSlot]    Script Date: 7/10/2022 11:44:47 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TimeSlot](
	[Slot] [int] NOT NULL,
	[Time] [time](7) NULL,
PRIMARY KEY CLUSTERED 
(
	[Slot] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'DBI202SU2022_1      ', N'DBI202SU2022        ', N'Lab1', 2)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'DBI202SU2022_10     ', N'DBI202SU2022        ', N'FinalExam', 30)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'DBI202SU2022_2      ', N'DBI202SU2022        ', N'Lab2', 2)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'DBI202SU2022_3      ', N'DBI202SU2022        ', N'Lab3', 2)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'DBI202SU2022_4      ', N'DBI202SU2022        ', N'lab4', 2)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'DBI202SU2022_5      ', N'DBI202SU2022        ', N'lab5', 2)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'DBI202SU2022_6      ', N'DBI202SU2022        ', N'ProgressTest1', 5)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'DBI202SU2022_7      ', N'DBI202SU2022        ', N'ProgressTest2', 5)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'DBI202SU2022_8      ', N'DBI202SU2022        ', N'Assignment', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'DBI202SU2022_9      ', N'DBI202SU2022        ', N'PraticalExam', 30)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ECO121SP2022_1      ', N'ECO121SP2022        ', N'exercise1', 10)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ECO121SP2022_2      ', N'ECO121SP2022        ', N'exercise2', 10)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ECO121SP2022_3      ', N'ECO121SP2022        ', N'ProgressTest1', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ECO121SP2022_4      ', N'ECO121SP2022        ', N'ProgressTest2', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ECO121SP2022_5      ', N'ECO121SP2022        ', N'FinalExam', 40)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ECO121SU2022_1      ', N'ECO121SU2022        ', N'exercise1', 10)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ECO121SU2022_2      ', N'ECO121SU2022        ', N'exercise2', 10)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ECO121SU2022_3      ', N'ECO121SU2022        ', N'ProgressTest1', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ECO121SU2022_4      ', N'ECO121SU2022        ', N'ProgressTest2', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ECO121SU2022_5      ', N'ECO121SU2022        ', N'FinalExam', 40)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ENM401SP2022_1      ', N'ENM401SP2022        ', N'Presentation1', 5)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ENM401SP2022_2      ', N'ENM401SP2022        ', N'Presentation2', 5)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ENM401SP2022_3      ', N'ENM401SP2022        ', N'Presentation3', 5)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ENM401SP2022_4      ', N'ENM401SP2022        ', N'Presentation4', 5)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ENM401SP2022_5      ', N'ENM401SP2022        ', N'ProgressTest1', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ENM401SP2022_6      ', N'ENM401SP2022        ', N'ProgressTest2', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ENM401SP2022_7      ', N'ENM401SP2022        ', N'FinalExam', 40)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ENM401SU2022_1      ', N'ENM401SU2022        ', N'Presentation1', 5)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ENM401SU2022_2      ', N'ENM401SU2022        ', N'Presentation2', 5)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ENM401SU2022_3      ', N'ENM401SU2022        ', N'Presentation3', 5)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ENM401SU2022_4      ', N'ENM401SU2022        ', N'Presentation4', 5)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ENM401SU2022_5      ', N'ENM401SU2022        ', N'Presentation5', 5)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ENM401SU2022_6      ', N'ENM401SU2022        ', N'Presentation6', 5)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ENM401SU2022_7      ', N'ENM401SU2022        ', N'ProgressTest1', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ENM401SU2022_8      ', N'ENM401SU2022        ', N'ProgressTest2', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'ENM401SU2022_9      ', N'ENM401SU2022        ', N'FinalExam', 30)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'FIN202SU2022_1      ', N'FIN202SU2022        ', N'Test1', 15)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'FIN202SU2022_2      ', N'FIN202SU2022        ', N'Test2', 15)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'FIN202SU2022_3      ', N'FIN202SU2022        ', N'Test3', 15)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'FIN202SU2022_4      ', N'FIN202SU2022        ', N'Test4', 15)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'FIN202SU2022_5      ', N'FIN202SU2022        ', N'FinalExam', 40)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'IBI101SU2022_1      ', N'IBI101SU2022        ', N'Test1', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'IBI101SU2022_2      ', N'IBI101SU2022        ', N'Test2', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'IBI101SU2022_3      ', N'IBI101SU2022        ', N'Test3', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'IBI101SU2022_4      ', N'IBI101SU2022        ', N'FinalExam', 40)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'JDP111SU2022_1      ', N'JPD111SU2022        ', N'Presentation1', 10)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'JDP111SU2022_2      ', N'JPD111SU2022        ', N'MidTerm', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'JDP111SU2022_3      ', N'JPD111SU2022        ', N'Presentation2', 10)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'JDP111SU2022_4      ', N'JPD111SU2022        ', N'LastTerm', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'JDP111SU2022_5      ', N'JPD111SU2022        ', N'FInalExam', 40)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'MAD101SP2022_1      ', N'MAD101SP2022        ', N'ProgressTest1', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'MAD101SP2022_2      ', N'MAD101SP2022        ', N'ProgressTest2', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'MAD101SP2022_3      ', N'MAD101SP2022        ', N'ProgressTest3', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'MAD101SP2022_4      ', N'MAD101SP2022        ', N'FinalExam', 40)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'MAD101SU2022_1      ', N'MAD101SU2022        ', N'ProgressTest1', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'MAD101SU2022_2      ', N'MAD101SU2022        ', N'ProgressTest2', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'MAD101SU2022_3      ', N'MAD101SU2022        ', N'ProgressTest3', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'MAD101SU2022_4      ', N'MAD101SU2022        ', N'FinalExam', 40)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'PRO192SP2022_1      ', N'PRO192SP2022        ', N'ProgressTest1', 10)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'PRO192SP2022_2      ', N'PRO192SP2022        ', N'ProgressTest2', 10)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'PRO192SP2022_3      ', N'PRO192SP2022        ', N'Assignment', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'PRO192SP2022_4      ', N'PRO192SP2022        ', N'PraticalExam', 30)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'PRO192SP2022_5      ', N'PRO192SP2022        ', N'FinalExam', 30)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'PRO192SU2022_1      ', N'PRO192SU2022        ', N'ProgressTest1', 10)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'PRO192SU2022_2      ', N'PRO192SU2022        ', N'ProgressTest2', 10)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'PRO192SU2022_3      ', N'PRO192SU2022        ', N'Assignment', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'PRO192SU2022_4      ', N'PRO192SU2022        ', N'PraticalExam', 30)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'PRO192SU2022_5      ', N'PRO192SU2022        ', N'FinalExam', 30)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'SSG103SP2022_1      ', N'SSG103SP2022        ', N'Activity', 10)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'SSG103SP2022_2      ', N'SSG103SP2022        ', N'Participation', 10)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'SSG103SP2022_3      ', N'SSG103SP2022        ', N'GroupAsm', 30)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'SSG103SP2022_4      ', N'SSG103SP2022        ', N'GroupProject', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'SSG103SP2022_5      ', N'SSG103SP2022        ', N'FinalExam', 30)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'SSG103SU2022_1      ', N'SSG103SU2022        ', N'Activity', 10)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'SSG103SU2022_2      ', N'SSG103SU2022        ', N'Participation', 10)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'SSG103SU2022_3      ', N'SSG103SU2022        ', N'GroupAsm', 30)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'SSG103SU2022_4      ', N'SSG103SU2022        ', N'GroupProject', 20)
INSERT [dbo].[Assessment] ([ID_Assessment], [ID_SubjectSemester], [name], [Weight]) VALUES (N'SSG103SU2022_5      ', N'SSG103SU2022        ', N'FinalExam', 30)
GO
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'DBI202SU22SE1647_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'DBI202SU22SE1647_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'DBI202SU22SE1647_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'DBI202SU22SE1647_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'DBI202SU22SE1647_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'DBI202SU22SE1647_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'DBI202SU22SE1647_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'DBI202SU22SE1647_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'DBI202SU22SE1647_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'DBI202SU22SE1647_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'JPD111SU22SE1647_1  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'JPD111SU22SE1647_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'JPD111SU22SE1647_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'JPD111SU22SE1647_3  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'JPD111SU22SE1647_4  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'JPD111SU22SE1647_5  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'JPD111SU22SE1647_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'JPD111SU22SE1647_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'JPD111SU22SE1647_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'JPD111SU22SE1647_9  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'MAD101SP22SE1647_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'MAD101SP22SE1647_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'MAD101SP22SE1647_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'MAD101SP22SE1647_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'MAD101SP22SE1647_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'MAD101SP22SE1647_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'MAD101SP22SE1647_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'MAD101SP22SE1647_7  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'MAD101SP22SE1647_8  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'MAD101SP22SE1647_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'PRO192SP22SE1647_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'PRO192SP22SE1647_10 ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'PRO192SP22SE1647_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'PRO192SP22SE1647_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'PRO192SP22SE1647_4  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'PRO192SP22SE1647_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'PRO192SP22SE1647_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'PRO192SP22SE1647_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'PRO192SP22SE1647_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'PRO192SP22SE1647_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'SSG103SP22SE1647_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'SSG103SP22SE1647_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'SSG103SP22SE1647_3  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'SSG103SP22SE1647_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE162121            ', N'SSG103SP22SE1647_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'DBI202SU22SE1647_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'DBI202SU22SE1647_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'DBI202SU22SE1647_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'DBI202SU22SE1647_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'DBI202SU22SE1647_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'DBI202SU22SE1647_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'DBI202SU22SE1647_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'DBI202SU22SE1647_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'DBI202SU22SE1647_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'DBI202SU22SE1647_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'JPD111SU22SE1647_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'JPD111SU22SE1647_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'JPD111SU22SE1647_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'JPD111SU22SE1647_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'JPD111SU22SE1647_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'JPD111SU22SE1647_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'JPD111SU22SE1647_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'JPD111SU22SE1647_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'JPD111SU22SE1647_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'JPD111SU22SE1647_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'MAD101SP22SE1647_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'MAD101SP22SE1647_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'MAD101SP22SE1647_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'MAD101SP22SE1647_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'MAD101SP22SE1647_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'MAD101SP22SE1647_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'MAD101SP22SE1647_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'MAD101SP22SE1647_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'MAD101SP22SE1647_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'MAD101SP22SE1647_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'PRO192SU22SE1747_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'PRO192SU22SE1747_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'PRO192SU22SE1747_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'PRO192SU22SE1747_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'PRO192SU22SE1747_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'PRO192SU22SE1747_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'PRO192SU22SE1747_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'PRO192SU22SE1747_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'PRO192SU22SE1747_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'PRO192SU22SE1747_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'SSG103SP22SE1647_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'SSG103SP22SE1647_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'SSG103SP22SE1647_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'SSG103SP22SE1647_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163061            ', N'SSG103SP22SE1647_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'DBI202SU22SE1647_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'DBI202SU22SE1647_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'DBI202SU22SE1647_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'DBI202SU22SE1647_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'DBI202SU22SE1647_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'DBI202SU22SE1647_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'DBI202SU22SE1647_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'DBI202SU22SE1647_7  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'DBI202SU22SE1647_8  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'DBI202SU22SE1647_9  ', 1)
GO
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'JPD111SU22SE1647_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'JPD111SU22SE1647_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'JPD111SU22SE1647_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'JPD111SU22SE1647_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'JPD111SU22SE1647_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'JPD111SU22SE1647_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'JPD111SU22SE1647_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'JPD111SU22SE1647_7  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'JPD111SU22SE1647_8  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'JPD111SU22SE1647_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'MAD101SP22SE1647_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'MAD101SP22SE1647_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'MAD101SP22SE1647_2  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'MAD101SP22SE1647_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'MAD101SP22SE1647_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'MAD101SP22SE1647_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'MAD101SP22SE1647_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'MAD101SP22SE1647_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'MAD101SP22SE1647_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'MAD101SP22SE1647_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SP22SE1647_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SP22SE1647_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SP22SE1647_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SP22SE1647_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SP22SE1647_4  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SP22SE1647_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SP22SE1647_6  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SP22SE1647_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SP22SE1647_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SP22SE1647_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SU22SE1747_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SU22SE1747_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SU22SE1747_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SU22SE1747_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SU22SE1747_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SU22SE1747_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SU22SE1747_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SU22SE1747_7  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SU22SE1747_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'PRO192SU22SE1747_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'SSG103SP22SE1647_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'SSG103SP22SE1647_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'SSG103SP22SE1647_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'SSG103SP22SE1647_4  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE163063            ', N'SSG103SP22SE1647_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'MAD101SU22SE1747_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'MAD101SU22SE1747_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'MAD101SU22SE1747_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'MAD101SU22SE1747_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'MAD101SU22SE1747_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'MAD101SU22SE1747_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'MAD101SU22SE1747_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'MAD101SU22SE1747_7  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'MAD101SU22SE1747_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'MAD101SU22SE1747_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'PRO192SU22SE1747_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'PRO192SU22SE1747_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'PRO192SU22SE1747_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'PRO192SU22SE1747_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'PRO192SU22SE1747_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'PRO192SU22SE1747_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'PRO192SU22SE1747_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'PRO192SU22SE1747_7  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'PRO192SU22SE1747_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'PRO192SU22SE1747_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'SSG103SU22SE1747_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'SSG103SU22SE1747_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'SSG103SU22SE1747_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'SSG103SU22SE1747_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE171111            ', N'SSG103SU22SE1747_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'MAD101SU22SE1747_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'MAD101SU22SE1747_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'MAD101SU22SE1747_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'MAD101SU22SE1747_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'MAD101SU22SE1747_4  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'MAD101SU22SE1747_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'MAD101SU22SE1747_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'MAD101SU22SE1747_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'MAD101SU22SE1747_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'MAD101SU22SE1747_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'PRO192SU22SE1747_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'PRO192SU22SE1747_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'PRO192SU22SE1747_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'PRO192SU22SE1747_3  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'PRO192SU22SE1747_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'PRO192SU22SE1747_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'PRO192SU22SE1747_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'PRO192SU22SE1747_7  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'PRO192SU22SE1747_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'PRO192SU22SE1747_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'SSG103SU22SE1747_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'SSG103SU22SE1747_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'SSG103SU22SE1747_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'SSG103SU22SE1747_4  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HE174423            ', N'SSG103SU22SE1747_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'ECO121SP22IB1609_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'ECO121SP22IB1609_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'ECO121SP22IB1609_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'ECO121SP22IB1609_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'ECO121SP22IB1609_5  ', 1)
GO
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'ECO121SP22IB1609_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'ECO121SP22IB1609_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'ECO121SP22IB1609_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'ENM401SP22IB1609_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'ENM401SP22IB1609_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'ENM401SP22IB1609_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'ENM401SP22IB1609_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'ENM401SP22IB1609_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'ENM401SP22IB1609_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'ENM401SP22IB1609_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'ENM401SP22IB1609_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'FIN202SU22IB1609_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'FIN202SU22IB1609_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'FIN202SU22IB1609_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'FIN202SU22IB1609_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'FIN202SU22IB1609_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'FIN202SU22IB1609_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'FIN202SU22IB1609_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'FIN202SU22IB1609_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'FIN202SU22IB1609_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'FIN202SU22IB1609_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'IBI101SU22IB1609_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'IBI101SU22IB1609_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'IBI101SU22IB1609_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'IBI101SU22IB1609_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'IBI101SU22IB1609_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'IBI101SU22IB1609_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'IBI101SU22IB1609_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'IBI101SU22IB1609_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'IBI101SU22IB1609_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'IBI101SU22IB1609_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'SSG103SP22IB1609_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'SSG103SP22IB1609_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'SSG103SP22IB1609_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'SSG103SP22IB1609_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS161001            ', N'SSG103SP22IB1609_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'ECO121SP22IB1609_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'ECO121SP22IB1609_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'ECO121SP22IB1609_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'ECO121SP22IB1609_4  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'ECO121SP22IB1609_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'ECO121SP22IB1609_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'ECO121SP22IB1609_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'ECO121SP22IB1609_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'ENM401SP22IB1609_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'ENM401SP22IB1609_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'ENM401SP22IB1609_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'ENM401SP22IB1609_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'ENM401SP22IB1609_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'ENM401SP22IB1609_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'ENM401SP22IB1609_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'ENM401SP22IB1609_8  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'FIN202SU22IB1609_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'FIN202SU22IB1609_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'FIN202SU22IB1609_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'FIN202SU22IB1609_3  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'FIN202SU22IB1609_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'FIN202SU22IB1609_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'FIN202SU22IB1609_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'FIN202SU22IB1609_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'FIN202SU22IB1609_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'FIN202SU22IB1609_9  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'IBI101SU22IB1609_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'IBI101SU22IB1609_10 ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'IBI101SU22IB1609_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'IBI101SU22IB1609_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'IBI101SU22IB1609_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'IBI101SU22IB1609_5  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'IBI101SU22IB1609_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'IBI101SU22IB1609_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'IBI101SU22IB1609_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'IBI101SU22IB1609_9  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'SSG103SP22IB1609_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'SSG103SP22IB1609_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'SSG103SP22IB1609_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'SSG103SP22IB1609_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS163062            ', N'SSG103SP22IB1609_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'ECO121SU22IB1709_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'ECO121SU22IB1709_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'ECO121SU22IB1709_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'ECO121SU22IB1709_4  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'ECO121SU22IB1709_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'ECO121SU22IB1709_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'ECO121SU22IB1709_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'ECO121SU22IB1709_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'ENM401SU22IB1709_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'ENM401SU22IB1709_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'ENM401SU22IB1709_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'ENM401SU22IB1709_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'ENM401SU22IB1709_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'ENM401SU22IB1709_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'ENM401SU22IB1709_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'ENM401SU22IB1709_8  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'SSG103SU22IB1709_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'SSG103SU22IB1709_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'SSG103SU22IB1709_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'SSG103SU22IB1709_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173222            ', N'SSG103SU22IB1709_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'ECO121SU22IB1709_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'ECO121SU22IB1709_2  ', 1)
GO
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'ECO121SU22IB1709_3  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'ECO121SU22IB1709_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'ECO121SU22IB1709_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'ECO121SU22IB1709_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'ECO121SU22IB1709_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'ECO121SU22IB1709_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'ENM401SU22IB1709_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'ENM401SU22IB1709_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'ENM401SU22IB1709_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'ENM401SU22IB1709_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'ENM401SU22IB1709_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'ENM401SU22IB1709_6  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'ENM401SU22IB1709_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'ENM401SU22IB1709_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'SSG103SU22IB1709_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'SSG103SU22IB1709_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'SSG103SU22IB1709_3  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'SSG103SU22IB1709_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS173313            ', N'SSG103SU22IB1709_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'ECO121SU22IB1709_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'ECO121SU22IB1709_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'ECO121SU22IB1709_3  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'ECO121SU22IB1709_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'ECO121SU22IB1709_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'ECO121SU22IB1709_6  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'ECO121SU22IB1709_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'ECO121SU22IB1709_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'ENM401SU22IB1709_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'ENM401SU22IB1709_2  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'ENM401SU22IB1709_3  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'ENM401SU22IB1709_4  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'ENM401SU22IB1709_5  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'ENM401SU22IB1709_6  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'ENM401SU22IB1709_7  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'ENM401SU22IB1709_8  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'SSG103SU22IB1709_1  ', 1)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'SSG103SU22IB1709_2  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'SSG103SU22IB1709_3  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'SSG103SU22IB1709_4  ', 0)
INSERT [dbo].[Attendance] ([ID_Student], [ID_Session], [Check_Attendance]) VALUES (N'HS174331            ', N'SSG103SU22IB1709_5  ', 1)
GO
INSERT [dbo].[Enroll] ([ID_Student], [ID_Group]) VALUES (N'HE162121            ', N'SE1647              ')
INSERT [dbo].[Enroll] ([ID_Student], [ID_Group]) VALUES (N'HE163061            ', N'SE1647              ')
INSERT [dbo].[Enroll] ([ID_Student], [ID_Group]) VALUES (N'HE163063            ', N'SE1647              ')
INSERT [dbo].[Enroll] ([ID_Student], [ID_Group]) VALUES (N'HE163063            ', N'SE1747              ')
INSERT [dbo].[Enroll] ([ID_Student], [ID_Group]) VALUES (N'HE171111            ', N'SE1747              ')
INSERT [dbo].[Enroll] ([ID_Student], [ID_Group]) VALUES (N'HE174423            ', N'SE1747              ')
INSERT [dbo].[Enroll] ([ID_Student], [ID_Group]) VALUES (N'HS161001            ', N'IB1609              ')
INSERT [dbo].[Enroll] ([ID_Student], [ID_Group]) VALUES (N'HS163062            ', N'IB1609              ')
INSERT [dbo].[Enroll] ([ID_Student], [ID_Group]) VALUES (N'HS173222            ', N'IB1709              ')
INSERT [dbo].[Enroll] ([ID_Student], [ID_Group]) VALUES (N'HS173313            ', N'IB1709              ')
INSERT [dbo].[Enroll] ([ID_Student], [ID_Group]) VALUES (N'HS174331            ', N'IB1709              ')
GO
INSERT [dbo].[Group] ([ID_Group], [name]) VALUES (N'IB1609              ', N'International 1609')
INSERT [dbo].[Group] ([ID_Group], [name]) VALUES (N'IB1709              ', N'International 1709')
INSERT [dbo].[Group] ([ID_Group], [name]) VALUES (N'SE1647              ', N'SoftWare 1647')
INSERT [dbo].[Group] ([ID_Group], [name]) VALUES (N'SE1747              ', N'SoftWare1747')
GO
INSERT [dbo].[Group_Subject_Semester] ([ID_Group], [ID_SubjectSemester]) VALUES (N'IB1609              ', N'ECO121SP2022        ')
INSERT [dbo].[Group_Subject_Semester] ([ID_Group], [ID_SubjectSemester]) VALUES (N'IB1609              ', N'ENM401SP2022        ')
INSERT [dbo].[Group_Subject_Semester] ([ID_Group], [ID_SubjectSemester]) VALUES (N'IB1609              ', N'FIN202SU2022        ')
INSERT [dbo].[Group_Subject_Semester] ([ID_Group], [ID_SubjectSemester]) VALUES (N'IB1609              ', N'IBI101SU2022        ')
INSERT [dbo].[Group_Subject_Semester] ([ID_Group], [ID_SubjectSemester]) VALUES (N'IB1609              ', N'SSG103SP2022        ')
INSERT [dbo].[Group_Subject_Semester] ([ID_Group], [ID_SubjectSemester]) VALUES (N'IB1709              ', N'ECO121SU2022        ')
INSERT [dbo].[Group_Subject_Semester] ([ID_Group], [ID_SubjectSemester]) VALUES (N'IB1709              ', N'ENM401SU2022        ')
INSERT [dbo].[Group_Subject_Semester] ([ID_Group], [ID_SubjectSemester]) VALUES (N'IB1709              ', N'SSG103SU2022        ')
INSERT [dbo].[Group_Subject_Semester] ([ID_Group], [ID_SubjectSemester]) VALUES (N'SE1647              ', N'DBI202SU2022        ')
INSERT [dbo].[Group_Subject_Semester] ([ID_Group], [ID_SubjectSemester]) VALUES (N'SE1647              ', N'JPD111SU2022        ')
INSERT [dbo].[Group_Subject_Semester] ([ID_Group], [ID_SubjectSemester]) VALUES (N'SE1647              ', N'MAD101SP2022        ')
INSERT [dbo].[Group_Subject_Semester] ([ID_Group], [ID_SubjectSemester]) VALUES (N'SE1647              ', N'PRO192SP2022        ')
INSERT [dbo].[Group_Subject_Semester] ([ID_Group], [ID_SubjectSemester]) VALUES (N'SE1647              ', N'SSG103SP2022        ')
INSERT [dbo].[Group_Subject_Semester] ([ID_Group], [ID_SubjectSemester]) VALUES (N'SE1747              ', N'MAD101SU2022        ')
INSERT [dbo].[Group_Subject_Semester] ([ID_Group], [ID_SubjectSemester]) VALUES (N'SE1747              ', N'PRO192SU2022        ')
INSERT [dbo].[Group_Subject_Semester] ([ID_Group], [ID_SubjectSemester]) VALUES (N'SE1747              ', N'SSG103SU2022        ')
GO
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'DBI202SU22SE1647_1  ', N'bai1', N'DBI202SU2022        ', 1, 3, N'SE1647              ', N'DE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'DBI202SU22SE1647_10 ', N'bai10', N'DBI202SU2022        ', 10, 3, N'SE1647              ', N'DE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'DBI202SU22SE1647_2  ', N'bai2', N'DBI202SU2022        ', 2, 3, N'SE1647              ', N'DE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'DBI202SU22SE1647_3  ', N'bai3', N'DBI202SU2022        ', 3, 3, N'SE1647              ', N'DE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'DBI202SU22SE1647_4  ', N'bai4', N'DBI202SU2022        ', 4, 3, N'SE1647              ', N'DE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'DBI202SU22SE1647_5  ', N'bai5', N'DBI202SU2022        ', 5, 3, N'SE1647              ', N'DE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'DBI202SU22SE1647_6  ', N'bai6', N'DBI202SU2022        ', 6, 3, N'SE1647              ', N'DE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'DBI202SU22SE1647_7  ', N'bai7', N'DBI202SU2022        ', 7, 3, N'SE1647              ', N'DE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'DBI202SU22SE1647_8  ', N'bai8', N'DBI202SU2022        ', 8, 3, N'SE1647              ', N'DE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'DBI202SU22SE1647_9  ', N'bai9', N'DBI202SU2022        ', 9, 3, N'SE1647              ', N'DE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ECO121SP22IB1609_1  ', N'bai1', N'ECO121SP2022        ', 1, 2, N'IB1609              ', N'BE_202              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ECO121SP22IB1609_2  ', N'bai2', N'ECO121SP2022        ', 2, 2, N'IB1609              ', N'BE_202              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ECO121SP22IB1609_3  ', N'bai3', N'ECO121SP2022        ', 3, 2, N'IB1609              ', N'BE_202              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ECO121SP22IB1609_4  ', N'bai4', N'ECO121SP2022        ', 4, 2, N'IB1609              ', N'BE_202              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ECO121SP22IB1609_5  ', N'bai5', N'ECO121SP2022        ', 5, 2, N'IB1609              ', N'BE_202              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ECO121SP22IB1609_6  ', N'bai6', N'ECO121SP2022        ', 6, 2, N'IB1609              ', N'BE_202              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ECO121SP22IB1609_7  ', N'bai7', N'ECO121SP2022        ', 7, 2, N'IB1609              ', N'BE_202              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ECO121SP22IB1609_8  ', N'bai8', N'ECO121SP2022        ', 8, 2, N'IB1609              ', N'BE_202              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ECO121SU22IB1709_1  ', N'bai1', N'ECO121SU2022        ', 1, 1, N'IB1709              ', N'BE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ECO121SU22IB1709_2  ', N'bai2', N'ECO121SU2022        ', 2, 1, N'IB1709              ', N'BE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ECO121SU22IB1709_3  ', N'bai3', N'ECO121SU2022        ', 3, 1, N'IB1709              ', N'BE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ECO121SU22IB1709_4  ', N'bai4', N'ECO121SU2022        ', 4, 1, N'IB1709              ', N'BE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ECO121SU22IB1709_5  ', N'bai5', N'ECO121SU2022        ', 5, 1, N'IB1709              ', N'BE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ECO121SU22IB1709_6  ', N'bai6', N'ECO121SU2022        ', 6, 1, N'IB1709              ', N'BE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ECO121SU22IB1709_7  ', N'bai7', N'ECO121SU2022        ', 7, 1, N'IB1709              ', N'BE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ECO121SU22IB1709_8  ', N'bai8', N'ECO121SU2022        ', 8, 1, N'IB1709              ', N'BE_321              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ENM401SP22IB1609_1  ', N'bai1', N'ENM401SP2022        ', 1, 3, N'IB1609              ', N'BE_301              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ENM401SP22IB1609_2  ', N'bai2', N'ENM401SP2022        ', 2, 3, N'IB1609              ', N'BE_301              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ENM401SP22IB1609_3  ', N'bai3', N'ENM401SP2022        ', 3, 3, N'IB1609              ', N'BE_301              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ENM401SP22IB1609_4  ', N'bai4', N'ENM401SP2022        ', 4, 3, N'IB1609              ', N'BE_301              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ENM401SP22IB1609_5  ', N'bai5', N'ENM401SP2022        ', 5, 3, N'IB1609              ', N'BE_301              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ENM401SP22IB1609_6  ', N'bai6', N'ENM401SP2022        ', 6, 3, N'IB1609              ', N'BE_301              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ENM401SP22IB1609_7  ', N'bai7', N'ENM401SP2022        ', 7, 3, N'IB1609              ', N'BE_301              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ENM401SP22IB1609_8  ', N'bai8', N'ENM401SP2022        ', 8, 3, N'IB1609              ', N'BE_301              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ENM401SU22IB1709_1  ', N'bai1', N'ENM401SU2022        ', 1, 6, N'IB1709              ', N'BE212               ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ENM401SU22IB1709_2  ', N'bai2', N'ENM401SU2022        ', 2, 6, N'IB1709              ', N'BE212               ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ENM401SU22IB1709_3  ', N'bai3', N'ENM401SU2022        ', 3, 6, N'IB1709              ', N'BE212               ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ENM401SU22IB1709_4  ', N'bai4', N'ENM401SU2022        ', 4, 6, N'IB1709              ', N'BE212               ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ENM401SU22IB1709_5  ', N'bai5', N'ENM401SU2022        ', 5, 6, N'IB1709              ', N'BE212               ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ENM401SU22IB1709_6  ', N'bai6', N'ENM401SU2022        ', 6, 6, N'IB1709              ', N'BE212               ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ENM401SU22IB1709_7  ', N'bai7', N'ENM401SU2022        ', 7, 6, N'IB1709              ', N'BE212               ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'ENM401SU22IB1709_8  ', N'bai8', N'ENM401SU2022        ', 8, 6, N'IB1709              ', N'BE212               ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'FIN202SU22IB1609_1  ', N'bai1', N'FIN202SU2022        ', 1, 1, N'IB1609              ', N'BE_212              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'FIN202SU22IB1609_10 ', N'bai10', N'FIN202SU2022        ', 10, 1, N'IB1609              ', N'BE_212              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'FIN202SU22IB1609_2  ', N'bai2', N'FIN202SU2022        ', 2, 1, N'IB1609              ', N'BE_212              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'FIN202SU22IB1609_3  ', N'bai3', N'FIN202SU2022        ', 3, 1, N'IB1609              ', N'BE_212              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'FIN202SU22IB1609_4  ', N'bai4', N'FIN202SU2022        ', 4, 1, N'IB1609              ', N'BE_212              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'FIN202SU22IB1609_5  ', N'bai5', N'FIN202SU2022        ', 5, 1, N'IB1609              ', N'BE_212              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'FIN202SU22IB1609_6  ', N'bai6', N'FIN202SU2022        ', 6, 1, N'IB1609              ', N'BE_212              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'FIN202SU22IB1609_7  ', N'bai7', N'FIN202SU2022        ', 7, 1, N'IB1609              ', N'BE_212              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'FIN202SU22IB1609_8  ', N'bai8', N'FIN202SU2022        ', 8, 1, N'IB1609              ', N'BE_212              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'FIN202SU22IB1609_9  ', N'bai9', N'FIN202SU2022        ', 9, 1, N'IB1609              ', N'BE_212              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'IBI101SU22IB1609_1  ', N'bai1', N'IBI101SU2022        ', 1, 3, N'IB1609              ', N'BE_213              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'IBI101SU22IB1609_10 ', N'bai10', N'IBI101SU2022        ', 10, 3, N'IB1609              ', N'BE_213              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'IBI101SU22IB1609_2  ', N'bai2', N'IBI101SU2022        ', 2, 3, N'IB1609              ', N'BE_213              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'IBI101SU22IB1609_3  ', N'bai3', N'IBI101SU2022        ', 3, 3, N'IB1609              ', N'BE_213              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'IBI101SU22IB1609_4  ', N'bai4', N'IBI101SU2022        ', 4, 3, N'IB1609              ', N'BE_213              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'IBI101SU22IB1609_5  ', N'bai5', N'IBI101SU2022        ', 5, 3, N'IB1609              ', N'BE_213              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'IBI101SU22IB1609_6  ', N'bai6', N'IBI101SU2022        ', 6, 3, N'IB1609              ', N'BE_213              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'IBI101SU22IB1609_7  ', N'bai7', N'IBI101SU2022        ', 7, 3, N'IB1609              ', N'BE_213              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'IBI101SU22IB1609_8  ', N'bai8', N'IBI101SU2022        ', 8, 3, N'IB1609              ', N'BE_213              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'IBI101SU22IB1609_9  ', N'bai9', N'IBI101SU2022        ', 9, 3, N'IB1609              ', N'BE_213              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'JPD111SU22SE1647_1  ', N'bai1', N'JPD111SU2022        ', 1, 1, N'SE1647              ', N'DE_323              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'JPD111SU22SE1647_10 ', N'bai10', N'JPD111SU2022        ', 10, 1, N'SE1647              ', N'DE_323              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'JPD111SU22SE1647_2  ', N'bai2', N'JPD111SU2022        ', 2, 1, N'SE1647              ', N'DE_323              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'JPD111SU22SE1647_3  ', N'bai3', N'JPD111SU2022        ', 3, 1, N'SE1647              ', N'DE_323              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'JPD111SU22SE1647_4  ', N'bai4', N'JPD111SU2022        ', 4, 1, N'SE1647              ', N'DE_323              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'JPD111SU22SE1647_5  ', N'bai5', N'JPD111SU2022        ', 5, 1, N'SE1647              ', N'DE_323              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'JPD111SU22SE1647_6  ', N'bai6', N'JPD111SU2022        ', 6, 1, N'SE1647              ', N'DE_323              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'JPD111SU22SE1647_7  ', N'bai7', N'JPD111SU2022        ', 7, 1, N'SE1647              ', N'DE_323              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'JPD111SU22SE1647_8  ', N'bai8', N'JPD111SU2022        ', 8, 1, N'SE1647              ', N'DE_323              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'JPD111SU22SE1647_9  ', N'bai9', N'JPD111SU2022        ', 9, 1, N'SE1647              ', N'DE_323              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SP22SE1647_1  ', N'bai1', N'MAD101SP2022        ', 1, 3, N'SE1647              ', N'DE_211              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SP22SE1647_10 ', N'bai10', N'MAD101SP2022        ', 10, 3, N'SE1647              ', N'DE_211              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SP22SE1647_2  ', N'bai2', N'MAD101SP2022        ', 2, 3, N'SE1647              ', N'DE_211              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SP22SE1647_3  ', N'bai3', N'MAD101SP2022        ', 3, 3, N'SE1647              ', N'DE_211              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SP22SE1647_4  ', N'bai4', N'MAD101SP2022        ', 4, 3, N'SE1647              ', N'DE_211              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SP22SE1647_5  ', N'bai5', N'MAD101SP2022        ', 5, 3, N'SE1647              ', N'DE_211              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SP22SE1647_6  ', N'bai6', N'MAD101SP2022        ', 6, 3, N'SE1647              ', N'DE_211              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SP22SE1647_7  ', N'bai7', N'MAD101SP2022        ', 7, 3, N'SE1647              ', N'DE_211              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SP22SE1647_8  ', N'bai8', N'MAD101SP2022        ', 8, 3, N'SE1647              ', N'DE_211              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SP22SE1647_9  ', N'bai9', N'MAD101SP2022        ', 9, 3, N'SE1647              ', N'DE_211              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SU22SE1747_1  ', N'bai1', N'MAD101SU2022        ', 1, 4, N'SE1747              ', N'DE_401              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SU22SE1747_10 ', N'bai10', N'MAD101SU2022        ', 10, 4, N'SE1747              ', N'DE_401              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SU22SE1747_2  ', N'bai2', N'MAD101SU2022        ', 2, 4, N'SE1747              ', N'DE_401              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SU22SE1747_3  ', N'bai3', N'MAD101SU2022        ', 3, 4, N'SE1747              ', N'DE_401              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SU22SE1747_4  ', N'bai4', N'MAD101SU2022        ', 4, 4, N'SE1747              ', N'DE_401              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SU22SE1747_5  ', N'bai5', N'MAD101SU2022        ', 5, 4, N'SE1747              ', N'DE_401              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SU22SE1747_6  ', N'bai6', N'MAD101SU2022        ', 6, 4, N'SE1747              ', N'DE_401              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SU22SE1747_7  ', N'bai7', N'MAD101SU2022        ', 7, 4, N'SE1747              ', N'DE_401              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SU22SE1747_8  ', N'bai8', N'MAD101SU2022        ', 8, 4, N'SE1747              ', N'DE_401              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'MAD101SU22SE1747_9  ', N'bai9', N'MAD101SU2022        ', 9, 4, N'SE1747              ', N'DE_401              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SP22SE1647_1  ', N'bai1', N'PRO192SP2022        ', 1, 4, N'SE1647              ', N'DE_201              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SP22SE1647_10 ', N'bai10', N'PRO192SP2022        ', 10, 4, N'SE1647              ', N'DE_201              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SP22SE1647_2  ', N'bai2', N'PRO192SP2022        ', 2, 4, N'SE1647              ', N'DE_201              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SP22SE1647_3  ', N'bai3', N'PRO192SP2022        ', 3, 4, N'SE1647              ', N'DE_201              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SP22SE1647_4  ', N'bai4', N'PRO192SP2022        ', 4, 4, N'SE1647              ', N'DE_201              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SP22SE1647_5  ', N'bai5', N'PRO192SP2022        ', 5, 4, N'SE1647              ', N'DE_201              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SP22SE1647_6  ', N'bai6', N'PRO192SP2022        ', 6, 4, N'SE1647              ', N'DE_201              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SP22SE1647_7  ', N'bai7', N'PRO192SP2022        ', 7, 4, N'SE1647              ', N'DE_201              ')
GO
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SP22SE1647_8  ', N'bai8', N'PRO192SP2022        ', 8, 4, N'SE1647              ', N'DE_201              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SP22SE1647_9  ', N'bai9', N'PRO192SP2022        ', 9, 4, N'SE1647              ', N'DE_201              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SU22SE1747_1  ', N'bai1', N'PRO192SU2022        ', 1, 2, N'SE1747              ', N'DE_221              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SU22SE1747_10 ', N'bai10', N'PRO192SU2022        ', 10, 2, N'SE1747              ', N'DE_221              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SU22SE1747_2  ', N'bai2', N'PRO192SU2022        ', 2, 2, N'SE1747              ', N'DE_221              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SU22SE1747_3  ', N'bai3', N'PRO192SU2022        ', 3, 2, N'SE1747              ', N'DE_221              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SU22SE1747_4  ', N'bai4', N'PRO192SU2022        ', 4, 2, N'SE1747              ', N'DE_221              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SU22SE1747_5  ', N'bai5', N'PRO192SU2022        ', 5, 2, N'SE1747              ', N'DE_221              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SU22SE1747_6  ', N'bai6', N'PRO192SU2022        ', 6, 2, N'SE1747              ', N'DE_221              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SU22SE1747_7  ', N'bai7', N'PRO192SU2022        ', 7, 2, N'SE1747              ', N'DE_221              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SU22SE1747_8  ', N'bai8', N'PRO192SU2022        ', 8, 2, N'SE1747              ', N'DE_221              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'PRO192SU22SE1747_9  ', N'bai9', N'PRO192SU2022        ', 9, 2, N'SE1747              ', N'DE_221              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SP22IB1609_1  ', N'bai1', N'SSG103SP2022        ', 1, 2, N'IB1609              ', N'AL_202              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SP22IB1609_2  ', N'bai2', N'SSG103SP2022        ', 2, 2, N'IB1609              ', N'AL_202              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SP22IB1609_3  ', N'bai3', N'SSG103SP2022        ', 3, 2, N'IB1609              ', N'AL_202              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SP22IB1609_4  ', N'bai4', N'SSG103SP2022        ', 4, 2, N'IB1609              ', N'AL_202              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SP22IB1609_5  ', N'bai5', N'SSG103SP2022        ', 5, 2, N'IB1609              ', N'AL_202              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SP22SE1647_1  ', N'bai1', N'SSG103SP2022        ', 1, 6, N'SE1647              ', N'AL_301              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SP22SE1647_2  ', N'bai2', N'SSG103SP2022        ', 2, 6, N'SE1647              ', N'AL_301              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SP22SE1647_3  ', N'bai3', N'SSG103SP2022        ', 3, 6, N'SE1647              ', N'AL_301              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SP22SE1647_4  ', N'bai4', N'SSG103SP2022        ', 4, 6, N'SE1647              ', N'AL_301              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SP22SE1647_5  ', N'bai5', N'SSG103SP2022        ', 5, 6, N'SE1647              ', N'AL_301              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SU22IB1709_1  ', N'bai1', N'SSG103SU2022        ', 1, 5, N'IB1709              ', N'AL_201              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SU22IB1709_2  ', N'bai2', N'SSG103SU2022        ', 2, 5, N'IB1709              ', N'AL_201              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SU22IB1709_3  ', N'bai3', N'SSG103SU2022        ', 3, 5, N'IB1709              ', N'AL_201              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SU22IB1709_4  ', N'bai4', N'SSG103SU2022        ', 4, 5, N'IB1709              ', N'AL_201              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SU22IB1709_5  ', N'bai5', N'SSG103SU2022        ', 5, 5, N'IB1709              ', N'AL_201              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SU22SE1747_1  ', N'bai1', N'SSG103SU2022        ', 1, 3, N'SE1747              ', N'AL_311              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SU22SE1747_2  ', N'bai2', N'SSG103SU2022        ', 2, 3, N'SE1747              ', N'AL_311              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SU22SE1747_3  ', N'bai3', N'SSG103SU2022        ', 3, 3, N'SE1747              ', N'AL_311              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SU22SE1747_4  ', N'bai4', N'SSG103SU2022        ', 4, 3, N'SE1747              ', N'AL_311              ')
INSERT [dbo].[Session] ([ID_Session], [name], [ID_SubjectSemester], [Slot_Number], [Slot], [ID_Group], [Room]) VALUES (N'SSG103SU22SE1747_5  ', N'bai5', N'SSG103SU2022        ', 5, 3, N'SE1747              ', N'AL_311              ')
GO
INSERT [dbo].[Student] ([ID_Student], [name], [gender], [dob]) VALUES (N'HE162121            ', N'Phan Manh', 1, CAST(N'2002-09-04' AS Date))
INSERT [dbo].[Student] ([ID_Student], [name], [gender], [dob]) VALUES (N'HE163061            ', N'Phung Quy Quoc', 1, CAST(N'2002-11-09' AS Date))
INSERT [dbo].[Student] ([ID_Student], [name], [gender], [dob]) VALUES (N'HE163063            ', N'Nguyen Quan Vu', 1, CAST(N'2002-11-08' AS Date))
INSERT [dbo].[Student] ([ID_Student], [name], [gender], [dob]) VALUES (N'HE171111            ', N'Nguyen Van Tuan', 1, CAST(N'2003-09-09' AS Date))
INSERT [dbo].[Student] ([ID_Student], [name], [gender], [dob]) VALUES (N'HE174423            ', N'Pham Van Quang', 1, CAST(N'2002-06-02' AS Date))
INSERT [dbo].[Student] ([ID_Student], [name], [gender], [dob]) VALUES (N'HE180754            ', N'Ta Hua Hue', 1, CAST(N'2004-09-09' AS Date))
INSERT [dbo].[Student] ([ID_Student], [name], [gender], [dob]) VALUES (N'HS161001            ', N'Tran Anh Thu', 0, CAST(N'2002-11-04' AS Date))
INSERT [dbo].[Student] ([ID_Student], [name], [gender], [dob]) VALUES (N'HS163062            ', N'Nguyen Quynh Trang', 0, CAST(N'2002-11-11' AS Date))
INSERT [dbo].[Student] ([ID_Student], [name], [gender], [dob]) VALUES (N'HS173222            ', N'Tran Thi Huyen', 0, CAST(N'2003-11-09' AS Date))
INSERT [dbo].[Student] ([ID_Student], [name], [gender], [dob]) VALUES (N'HS173313            ', N'Nguyen Huu Hoa', 0, CAST(N'2003-11-11' AS Date))
INSERT [dbo].[Student] ([ID_Student], [name], [gender], [dob]) VALUES (N'HS174331            ', N'Hoang Thuy Linh', 0, CAST(N'2003-04-05' AS Date))
GO
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_1      ', N'HE162121            ', CAST(N'2022-05-02' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_1      ', N'HE163061            ', CAST(N'2022-05-02' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_1      ', N'HE163063            ', CAST(N'2022-05-02' AS Date), 5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_10     ', N'HE162121            ', CAST(N'2022-07-16' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_10     ', N'HE163061            ', CAST(N'2022-07-16' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_10     ', N'HE163063            ', CAST(N'2022-07-16' AS Date), 4.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_2      ', N'HE162121            ', CAST(N'2022-05-04' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_2      ', N'HE163061            ', CAST(N'2022-05-04' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_2      ', N'HE163063            ', CAST(N'2022-05-04' AS Date), 4.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_3      ', N'HE162121            ', CAST(N'2022-05-06' AS Date), 7.6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_3      ', N'HE163061            ', CAST(N'2022-05-06' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_3      ', N'HE163063            ', CAST(N'2022-05-06' AS Date), 5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_4      ', N'HE162121            ', CAST(N'2022-05-07' AS Date), 7.4)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_4      ', N'HE163061            ', CAST(N'2022-05-07' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_4      ', N'HE163063            ', CAST(N'2022-05-07' AS Date), 4.6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_5      ', N'HE162121            ', CAST(N'2022-05-10' AS Date), 7.3)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_5      ', N'HE163061            ', CAST(N'2022-05-10' AS Date), 9.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_5      ', N'HE163063            ', CAST(N'2022-05-10' AS Date), 4)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_6      ', N'HE162121            ', CAST(N'2022-05-12' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_6      ', N'HE163061            ', CAST(N'2022-05-12' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_6      ', N'HE163063            ', CAST(N'2022-05-12' AS Date), 3)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_7      ', N'HE162121            ', CAST(N'2022-06-02' AS Date), 8.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_7      ', N'HE163061            ', CAST(N'2022-06-02' AS Date), 9.6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_7      ', N'HE163063            ', CAST(N'2022-06-02' AS Date), 5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_8      ', N'HE162121            ', CAST(N'2022-07-02' AS Date), 0)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_8      ', N'HE163061            ', CAST(N'2022-07-02' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_8      ', N'HE163063            ', CAST(N'2022-07-02' AS Date), 4.6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_9      ', N'HE162121            ', CAST(N'2022-07-15' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_9      ', N'HE163061            ', CAST(N'2022-07-15' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'DBI202SU2022_9      ', N'HE163063            ', CAST(N'2022-07-15' AS Date), 4.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SP2022_1      ', N'HS161001            ', CAST(N'2022-01-06' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SP2022_1      ', N'HS163062            ', CAST(N'2022-01-06' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SP2022_2      ', N'HS161001            ', CAST(N'2022-02-08' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SP2022_2      ', N'HS163062            ', CAST(N'2022-02-08' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SP2022_3      ', N'HS161001            ', CAST(N'2022-02-06' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SP2022_3      ', N'HS163062            ', CAST(N'2022-02-06' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SP2022_4      ', N'HS161001            ', CAST(N'2022-03-06' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SP2022_4      ', N'HS163062            ', CAST(N'2022-03-06' AS Date), 8.2)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SP2022_5      ', N'HS161001            ', CAST(N'2022-03-16' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SP2022_5      ', N'HS163062            ', CAST(N'2022-03-16' AS Date), 7.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SU2022_1      ', N'HS173222            ', CAST(N'2022-05-06' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SU2022_1      ', N'HS173313            ', CAST(N'2022-05-06' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SU2022_1      ', N'HS174331            ', CAST(N'2022-05-06' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SU2022_2      ', N'HS173222            ', CAST(N'2022-06-08' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SU2022_2      ', N'HS173313            ', CAST(N'2022-06-08' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SU2022_2      ', N'HS174331            ', CAST(N'2022-06-08' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SU2022_3      ', N'HS173222            ', CAST(N'2022-06-06' AS Date), 8.6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SU2022_3      ', N'HS173313            ', CAST(N'2022-06-06' AS Date), 8.6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SU2022_3      ', N'HS174331            ', CAST(N'2022-06-06' AS Date), 7.6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SU2022_4      ', N'HS173222            ', CAST(N'2022-07-06' AS Date), 8.2)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SU2022_4      ', N'HS173313            ', CAST(N'2022-07-06' AS Date), 8.2)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SU2022_4      ', N'HS174331            ', CAST(N'2022-07-06' AS Date), 7.4)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SU2022_5      ', N'HS173222            ', CAST(N'2022-07-16' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SU2022_5      ', N'HS173313            ', CAST(N'2022-07-16' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ECO121SU2022_5      ', N'HS174331            ', CAST(N'2022-07-16' AS Date), 6.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SP2022_1      ', N'HS161001            ', CAST(N'2022-01-06' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SP2022_1      ', N'HS163062            ', CAST(N'2022-01-06' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SP2022_2      ', N'HS161001            ', CAST(N'2022-01-10' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SP2022_2      ', N'HS163062            ', CAST(N'2022-01-10' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SP2022_3      ', N'HS161001            ', CAST(N'2022-01-20' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SP2022_3      ', N'HS163062            ', CAST(N'2022-01-20' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SP2022_4      ', N'HS161001            ', CAST(N'2022-02-10' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SP2022_4      ', N'HS163062            ', CAST(N'2022-02-10' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SP2022_5      ', N'HS161001            ', CAST(N'2022-01-20' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SP2022_5      ', N'HS163062            ', CAST(N'2022-01-20' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SP2022_6      ', N'HS161001            ', CAST(N'2022-02-20' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SP2022_6      ', N'HS163062            ', CAST(N'2022-02-20' AS Date), 8.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SP2022_7      ', N'HS161001            ', CAST(N'2022-03-15' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SP2022_7      ', N'HS163062            ', CAST(N'2022-03-15' AS Date), 6.7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_1      ', N'HS173222            ', CAST(N'2022-05-06' AS Date), 4)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_1      ', N'HS173313            ', CAST(N'2022-05-06' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_1      ', N'HS174331            ', CAST(N'2022-05-06' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_2      ', N'HS173222            ', CAST(N'2022-05-10' AS Date), 4)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_2      ', N'HS173313            ', CAST(N'2022-05-10' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_2      ', N'HS174331            ', CAST(N'2022-05-10' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_3      ', N'HS173222            ', CAST(N'2022-05-21' AS Date), 3)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_3      ', N'HS173313            ', CAST(N'2022-05-21' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_3      ', N'HS174331            ', CAST(N'2022-05-21' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_4      ', N'HS173222            ', CAST(N'2022-05-30' AS Date), 4)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_4      ', N'HS173313            ', CAST(N'2022-05-30' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_4      ', N'HS174331            ', CAST(N'2022-05-30' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_5      ', N'HS173222            ', CAST(N'2022-06-10' AS Date), 4.6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_5      ', N'HS173313            ', CAST(N'2022-06-10' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_5      ', N'HS174331            ', CAST(N'2022-06-10' AS Date), 9.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_6      ', N'HS173222            ', CAST(N'2022-06-21' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_6      ', N'HS173313            ', CAST(N'2022-06-21' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_6      ', N'HS174331            ', CAST(N'2022-06-21' AS Date), 7.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_7      ', N'HS173222            ', CAST(N'2022-05-20' AS Date), 3)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_7      ', N'HS173313            ', CAST(N'2022-05-20' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_7      ', N'HS174331            ', CAST(N'2022-05-20' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_8      ', N'HS173222            ', CAST(N'2022-06-20' AS Date), 4.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_8      ', N'HS173313            ', CAST(N'2022-06-20' AS Date), 6.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_8      ', N'HS174331            ', CAST(N'2022-06-20' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_9      ', N'HS173222            ', CAST(N'2022-07-15' AS Date), 4.2)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_9      ', N'HS173313            ', CAST(N'2022-07-15' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'ENM401SU2022_9      ', N'HS174331            ', CAST(N'2022-07-15' AS Date), 8.2)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'FIN202SU2022_1      ', N'HS161001            ', CAST(N'2022-05-06' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'FIN202SU2022_1      ', N'HS163062            ', CAST(N'2022-05-06' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'FIN202SU2022_2      ', N'HS161001            ', CAST(N'2022-05-30' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'FIN202SU2022_2      ', N'HS163062            ', CAST(N'2022-05-30' AS Date), 8.5)
GO
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'FIN202SU2022_3      ', N'HS161001            ', CAST(N'2022-06-06' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'FIN202SU2022_3      ', N'HS163062            ', CAST(N'2022-06-06' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'FIN202SU2022_4      ', N'HS161001            ', CAST(N'2022-06-30' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'FIN202SU2022_4      ', N'HS163062            ', CAST(N'2022-06-30' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'FIN202SU2022_5      ', N'HS161001            ', CAST(N'2022-07-16' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'FIN202SU2022_5      ', N'HS163062            ', CAST(N'2022-07-16' AS Date), 6.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'IBI101SU2022_1      ', N'HS161001            ', CAST(N'2022-05-06' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'IBI101SU2022_1      ', N'HS163062            ', CAST(N'2022-05-06' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'IBI101SU2022_2      ', N'HS161001            ', CAST(N'2022-06-08' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'IBI101SU2022_2      ', N'HS163062            ', CAST(N'2022-06-08' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'IBI101SU2022_3      ', N'HS161001            ', CAST(N'2022-07-06' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'IBI101SU2022_3      ', N'HS163062            ', CAST(N'2022-07-06' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'IBI101SU2022_4      ', N'HS161001            ', CAST(N'2022-07-15' AS Date), 8.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'IBI101SU2022_4      ', N'HS163062            ', CAST(N'2022-07-15' AS Date), 8.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'JDP111SU2022_1      ', N'HE162121            ', CAST(N'2022-05-10' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'JDP111SU2022_1      ', N'HE163061            ', CAST(N'2022-05-10' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'JDP111SU2022_1      ', N'HE163063            ', CAST(N'2022-05-10' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'JDP111SU2022_2      ', N'HE162121            ', CAST(N'2022-06-01' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'JDP111SU2022_2      ', N'HE163061            ', CAST(N'2022-06-01' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'JDP111SU2022_2      ', N'HE163063            ', CAST(N'2022-06-01' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'JDP111SU2022_3      ', N'HE162121            ', CAST(N'2022-06-03' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'JDP111SU2022_3      ', N'HE163061            ', CAST(N'2022-06-03' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'JDP111SU2022_3      ', N'HE163063            ', CAST(N'2022-06-03' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'JDP111SU2022_4      ', N'HE162121            ', CAST(N'2022-07-01' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'JDP111SU2022_4      ', N'HE163061            ', CAST(N'2022-07-01' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'JDP111SU2022_4      ', N'HE163063            ', CAST(N'2022-07-01' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'JDP111SU2022_5      ', N'HE162121            ', CAST(N'2022-07-15' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'JDP111SU2022_5      ', N'HE163061            ', CAST(N'2022-07-15' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'JDP111SU2022_5      ', N'HE163063            ', CAST(N'2022-07-15' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SP2022_1      ', N'HE162121            ', CAST(N'2022-01-10' AS Date), 6.6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SP2022_1      ', N'HE163061            ', CAST(N'2022-01-10' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SP2022_1      ', N'HE163063            ', CAST(N'2022-01-10' AS Date), 5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SP2022_2      ', N'HE162121            ', CAST(N'2022-02-10' AS Date), 6.7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SP2022_2      ', N'HE163061            ', CAST(N'2022-02-10' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SP2022_2      ', N'HE163063            ', CAST(N'2022-02-10' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SP2022_3      ', N'HE162121            ', CAST(N'2022-02-28' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SP2022_3      ', N'HE163061            ', CAST(N'2022-02-28' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SP2022_3      ', N'HE163063            ', CAST(N'2022-02-28' AS Date), 5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SP2022_4      ', N'HE162121            ', CAST(N'2022-03-16' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SP2022_4      ', N'HE163061            ', CAST(N'2022-03-16' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SP2022_4      ', N'HE163063            ', CAST(N'2022-03-16' AS Date), 6.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SU2022_1      ', N'HE171111            ', CAST(N'2022-05-10' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SU2022_1      ', N'HE174423            ', CAST(N'2022-05-10' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SU2022_2      ', N'HE171111            ', CAST(N'2022-06-01' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SU2022_2      ', N'HE174423            ', CAST(N'2022-06-01' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SU2022_3      ', N'HE171111            ', CAST(N'2022-06-30' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SU2022_3      ', N'HE174423            ', CAST(N'2022-06-30' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SU2022_4      ', N'HE171111            ', CAST(N'2022-07-16' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'MAD101SU2022_4      ', N'HE174423            ', CAST(N'2022-07-16' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SP2022_1      ', N'HE162121            ', CAST(N'2022-01-10' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SP2022_1      ', N'HE163061            ', CAST(N'2022-01-10' AS Date), 8.2)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SP2022_1      ', N'HE163063            ', CAST(N'2022-01-10' AS Date), 0)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SP2022_2      ', N'HE162121            ', CAST(N'2022-02-10' AS Date), 8.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SP2022_2      ', N'HE163061            ', CAST(N'2022-02-10' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SP2022_2      ', N'HE163063            ', CAST(N'2022-02-10' AS Date), 0)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SP2022_3      ', N'HE162121            ', CAST(N'2022-02-15' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SP2022_3      ', N'HE163061            ', CAST(N'2022-02-15' AS Date), 9.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SP2022_3      ', N'HE163063            ', CAST(N'2022-02-15' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SP2022_4      ', N'HE162121            ', CAST(N'2022-03-15' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SP2022_4      ', N'HE163061            ', CAST(N'2022-03-15' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SP2022_4      ', N'HE163063            ', CAST(N'2022-03-15' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SP2022_5      ', N'HE162121            ', CAST(N'2022-03-16' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SP2022_5      ', N'HE163061            ', CAST(N'2022-03-16' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SP2022_5      ', N'HE163063            ', CAST(N'2022-03-16' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SU2022_1      ', N'HE163063            ', CAST(N'2022-05-10' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SU2022_1      ', N'HE171111            ', CAST(N'2022-05-10' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SU2022_1      ', N'HE174423            ', CAST(N'2022-05-10' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SU2022_2      ', N'HE163063            ', CAST(N'2022-06-10' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SU2022_2      ', N'HE171111            ', CAST(N'2022-06-10' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SU2022_2      ', N'HE174423            ', CAST(N'2022-06-10' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SU2022_3      ', N'HE163063            ', CAST(N'2022-07-01' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SU2022_3      ', N'HE171111            ', CAST(N'2022-07-01' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SU2022_3      ', N'HE174423            ', CAST(N'2022-07-01' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SU2022_4      ', N'HE163063            ', CAST(N'2022-07-15' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SU2022_4      ', N'HE171111            ', CAST(N'2022-07-15' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SU2022_4      ', N'HE174423            ', CAST(N'2022-07-15' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SU2022_5      ', N'HE163063            ', CAST(N'2022-07-16' AS Date), 6.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SU2022_5      ', N'HE171111            ', CAST(N'2022-07-16' AS Date), 3)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'PRO192SU2022_5      ', N'HE174423            ', CAST(N'2022-07-16' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_1      ', N'HE162121            ', CAST(N'2022-01-06' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_1      ', N'HE163061            ', CAST(N'2022-01-06' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_1      ', N'HE163063            ', CAST(N'2022-01-06' AS Date), 5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_1      ', N'HS161001            ', CAST(N'2022-01-06' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_1      ', N'HS163062            ', CAST(N'2022-01-06' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_2      ', N'HE162121            ', CAST(N'2022-01-06' AS Date), 7.8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_2      ', N'HE163061            ', CAST(N'2022-01-06' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_2      ', N'HE163063            ', CAST(N'2022-01-06' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_2      ', N'HS161001            ', CAST(N'2022-01-06' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_2      ', N'HS163062            ', CAST(N'2022-01-06' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_3      ', N'HE162121            ', CAST(N'2022-01-08' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_3      ', N'HE163061            ', CAST(N'2022-01-08' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_3      ', N'HE163063            ', CAST(N'2022-01-08' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_3      ', N'HS161001            ', CAST(N'2022-02-06' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_3      ', N'HS163062            ', CAST(N'2022-02-06' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_4      ', N'HE162121            ', CAST(N'2022-02-15' AS Date), 6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_4      ', N'HE163061            ', CAST(N'2022-02-15' AS Date), 8.2)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_4      ', N'HE163063            ', CAST(N'2022-02-15' AS Date), 6.2)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_4      ', N'HS161001            ', CAST(N'2022-03-06' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_4      ', N'HS163062            ', CAST(N'2022-03-06' AS Date), 7.6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_5      ', N'HE162121            ', CAST(N'2022-03-15' AS Date), 6.5)
GO
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_5      ', N'HE163061            ', CAST(N'2022-03-15' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_5      ', N'HE163063            ', CAST(N'2022-03-15' AS Date), 5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_5      ', N'HS161001            ', CAST(N'2022-03-16' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SP2022_5      ', N'HS163062            ', CAST(N'2022-03-16' AS Date), 5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_1      ', N'HE171111            ', CAST(N'2022-05-02' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_1      ', N'HE174423            ', CAST(N'2022-05-02' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_1      ', N'HS173222            ', CAST(N'2022-05-06' AS Date), 7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_1      ', N'HS173313            ', CAST(N'2022-05-06' AS Date), 4)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_1      ', N'HS174331            ', CAST(N'2022-05-06' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_2      ', N'HE171111            ', CAST(N'2022-05-12' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_2      ', N'HE174423            ', CAST(N'2022-05-12' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_2      ', N'HS173222            ', CAST(N'2022-05-06' AS Date), 7.7)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_2      ', N'HS173313            ', CAST(N'2022-05-06' AS Date), 3.4)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_2      ', N'HS174331            ', CAST(N'2022-05-06' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_3      ', N'HE171111            ', CAST(N'2022-06-10' AS Date), 8.8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_3      ', N'HE174423            ', CAST(N'2022-06-10' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_3      ', N'HS173222            ', CAST(N'2022-06-06' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_3      ', N'HS173313            ', CAST(N'2022-06-06' AS Date), 5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_3      ', N'HS174331            ', CAST(N'2022-06-06' AS Date), 9)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_4      ', N'HE171111            ', CAST(N'2022-06-15' AS Date), 8)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_4      ', N'HE174423            ', CAST(N'2022-06-15' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_4      ', N'HS173222            ', CAST(N'2022-07-06' AS Date), 7.6)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_4      ', N'HS173313            ', CAST(N'2022-07-06' AS Date), 3)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_4      ', N'HS174331            ', CAST(N'2022-07-06' AS Date), 5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_5      ', N'HE171111            ', CAST(N'2022-07-15' AS Date), 8.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_5      ', N'HE174423            ', CAST(N'2022-07-15' AS Date), 10)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_5      ', N'HS173222            ', CAST(N'2022-07-16' AS Date), 5.5)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_5      ', N'HS173313            ', CAST(N'2022-07-16' AS Date), 4)
INSERT [dbo].[Student_Assessment] ([ID_Assessment], [ID_Student], [Date], [Score]) VALUES (N'SSG103SU2022_5      ', N'HS174331            ', CAST(N'2022-07-16' AS Date), 6)
GO
INSERT [dbo].[Subject] ([ID_Subject], [name], [totalSlot]) VALUES (N'DBI202              ', N'Introduction to Databases', 10)
INSERT [dbo].[Subject] ([ID_Subject], [name], [totalSlot]) VALUES (N'ECO121              ', N'	Basic Macro Economics', 8)
INSERT [dbo].[Subject] ([ID_Subject], [name], [totalSlot]) VALUES (N'ENM401              ', N'	Upper Intermediate Business English', 8)
INSERT [dbo].[Subject] ([ID_Subject], [name], [totalSlot]) VALUES (N'FIN202              ', N'Principles of Corporate Finance', 10)
INSERT [dbo].[Subject] ([ID_Subject], [name], [totalSlot]) VALUES (N'IBI101              ', N'	Introduction to International business', 10)
INSERT [dbo].[Subject] ([ID_Subject], [name], [totalSlot]) VALUES (N'JPD111              ', N' Elementary Japanese 1.1', 10)
INSERT [dbo].[Subject] ([ID_Subject], [name], [totalSlot]) VALUES (N'MAD101              ', N'Discrete mathematics
', 10)
INSERT [dbo].[Subject] ([ID_Subject], [name], [totalSlot]) VALUES (N'PRO192              ', N'Object-Oriented Programming', 10)
INSERT [dbo].[Subject] ([ID_Subject], [name], [totalSlot]) VALUES (N'SSG103              ', N'Communication and In-Group Working Skills ', 5)
GO
INSERT [dbo].[Subject_Semester] ([ID_SubjectSemester], [ID_Subject], [Semester], [StartDate], [EndDate]) VALUES (N'DBI202SU2022        ', N'DBI202              ', N'SU2022              ', CAST(N'2022-05-01' AS Date), CAST(N'2022-07-31' AS Date))
INSERT [dbo].[Subject_Semester] ([ID_SubjectSemester], [ID_Subject], [Semester], [StartDate], [EndDate]) VALUES (N'ECO121SP2022        ', N'ECO121              ', N'SP2022              ', CAST(N'2022-01-01' AS Date), CAST(N'2022-03-31' AS Date))
INSERT [dbo].[Subject_Semester] ([ID_SubjectSemester], [ID_Subject], [Semester], [StartDate], [EndDate]) VALUES (N'ECO121SU2022        ', N'ECO121              ', N'SU2022              ', CAST(N'2022-05-01' AS Date), CAST(N'2022-07-31' AS Date))
INSERT [dbo].[Subject_Semester] ([ID_SubjectSemester], [ID_Subject], [Semester], [StartDate], [EndDate]) VALUES (N'ENM401SP2022        ', N'ENM401              ', N'SP2022              ', CAST(N'2022-01-01' AS Date), CAST(N'2022-03-31' AS Date))
INSERT [dbo].[Subject_Semester] ([ID_SubjectSemester], [ID_Subject], [Semester], [StartDate], [EndDate]) VALUES (N'ENM401SU2022        ', N'ENM401              ', N'SU2022              ', CAST(N'2022-05-01' AS Date), CAST(N'2022-07-31' AS Date))
INSERT [dbo].[Subject_Semester] ([ID_SubjectSemester], [ID_Subject], [Semester], [StartDate], [EndDate]) VALUES (N'FIN202SU2022        ', N'FIN202              ', N'SU2022              ', CAST(N'2022-05-01' AS Date), CAST(N'2022-07-31' AS Date))
INSERT [dbo].[Subject_Semester] ([ID_SubjectSemester], [ID_Subject], [Semester], [StartDate], [EndDate]) VALUES (N'IBI101SU2022        ', N'IBI101              ', N'SU2022              ', CAST(N'2022-05-01' AS Date), CAST(N'2022-07-31' AS Date))
INSERT [dbo].[Subject_Semester] ([ID_SubjectSemester], [ID_Subject], [Semester], [StartDate], [EndDate]) VALUES (N'JPD111SU2022        ', N'JPD111              ', N'SU2022              ', CAST(N'2022-05-01' AS Date), CAST(N'2022-07-31' AS Date))
INSERT [dbo].[Subject_Semester] ([ID_SubjectSemester], [ID_Subject], [Semester], [StartDate], [EndDate]) VALUES (N'MAD101SP2022        ', N'MAD101              ', N'SP2022              ', CAST(N'2022-01-01' AS Date), CAST(N'2022-03-31' AS Date))
INSERT [dbo].[Subject_Semester] ([ID_SubjectSemester], [ID_Subject], [Semester], [StartDate], [EndDate]) VALUES (N'MAD101SU2022        ', N'MAD101              ', N'SU2022              ', CAST(N'2022-05-01' AS Date), CAST(N'2022-07-31' AS Date))
INSERT [dbo].[Subject_Semester] ([ID_SubjectSemester], [ID_Subject], [Semester], [StartDate], [EndDate]) VALUES (N'PRO192SP2022        ', N'PRO192              ', N'SP2022              ', CAST(N'2022-01-01' AS Date), CAST(N'2022-03-31' AS Date))
INSERT [dbo].[Subject_Semester] ([ID_SubjectSemester], [ID_Subject], [Semester], [StartDate], [EndDate]) VALUES (N'PRO192SU2022        ', N'PRO192              ', N'SU2022              ', CAST(N'2022-05-01' AS Date), CAST(N'2022-07-31' AS Date))
INSERT [dbo].[Subject_Semester] ([ID_SubjectSemester], [ID_Subject], [Semester], [StartDate], [EndDate]) VALUES (N'SSG103SP2022        ', N'SSG103              ', N'SP2022              ', CAST(N'2022-01-01' AS Date), CAST(N'2022-03-31' AS Date))
INSERT [dbo].[Subject_Semester] ([ID_SubjectSemester], [ID_Subject], [Semester], [StartDate], [EndDate]) VALUES (N'SSG103SU2022        ', N'SSG103              ', N'SU2022              ', CAST(N'2022-05-01' AS Date), CAST(N'2022-07-31' AS Date))
GO
INSERT [dbo].[TimeSlot] ([Slot], [Time]) VALUES (1, CAST(N'07:30:00' AS Time))
INSERT [dbo].[TimeSlot] ([Slot], [Time]) VALUES (2, CAST(N'09:10:00' AS Time))
INSERT [dbo].[TimeSlot] ([Slot], [Time]) VALUES (3, CAST(N'10:50:00' AS Time))
INSERT [dbo].[TimeSlot] ([Slot], [Time]) VALUES (4, CAST(N'12:50:00' AS Time))
INSERT [dbo].[TimeSlot] ([Slot], [Time]) VALUES (5, CAST(N'14:30:00' AS Time))
INSERT [dbo].[TimeSlot] ([Slot], [Time]) VALUES (6, CAST(N'16:10:00' AS Time))
GO
ALTER TABLE [dbo].[Assessment]  WITH CHECK ADD  CONSTRAINT [FK_Assessment_Subject_Semester] FOREIGN KEY([ID_SubjectSemester])
REFERENCES [dbo].[Subject_Semester] ([ID_SubjectSemester])
GO
ALTER TABLE [dbo].[Assessment] CHECK CONSTRAINT [FK_Assessment_Subject_Semester]
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD FOREIGN KEY([ID_Session])
REFERENCES [dbo].[Session] ([ID_Session])
GO
ALTER TABLE [dbo].[Attendance]  WITH CHECK ADD FOREIGN KEY([ID_Student])
REFERENCES [dbo].[Student] ([ID_Student])
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD FOREIGN KEY([ID_Group])
REFERENCES [dbo].[Group] ([ID_Group])
GO
ALTER TABLE [dbo].[Enroll]  WITH CHECK ADD FOREIGN KEY([ID_Student])
REFERENCES [dbo].[Student] ([ID_Student])
GO
ALTER TABLE [dbo].[Group_Subject_Semester]  WITH CHECK ADD FOREIGN KEY([ID_Group])
REFERENCES [dbo].[Group] ([ID_Group])
GO
ALTER TABLE [dbo].[Group_Subject_Semester]  WITH CHECK ADD  CONSTRAINT [FK_Group_Subject_Semester_Subject_Semester] FOREIGN KEY([ID_SubjectSemester])
REFERENCES [dbo].[Subject_Semester] ([ID_SubjectSemester])
GO
ALTER TABLE [dbo].[Group_Subject_Semester] CHECK CONSTRAINT [FK_Group_Subject_Semester_Subject_Semester]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD FOREIGN KEY([ID_Group])
REFERENCES [dbo].[Group] ([ID_Group])
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD FOREIGN KEY([Slot])
REFERENCES [dbo].[TimeSlot] ([Slot])
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Subject_Semester] FOREIGN KEY([ID_SubjectSemester])
REFERENCES [dbo].[Subject_Semester] ([ID_SubjectSemester])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Subject_Semester]
GO
ALTER TABLE [dbo].[Student_Assessment]  WITH CHECK ADD FOREIGN KEY([ID_Assessment])
REFERENCES [dbo].[Assessment] ([ID_Assessment])
GO
ALTER TABLE [dbo].[Student_Assessment]  WITH CHECK ADD FOREIGN KEY([ID_Student])
REFERENCES [dbo].[Student] ([ID_Student])
GO
ALTER TABLE [dbo].[Subject_Semester]  WITH CHECK ADD FOREIGN KEY([ID_Subject])
REFERENCES [dbo].[Subject] ([ID_Subject])
GO
USE [master]
GO
ALTER DATABASE [ASM_DBI202_Slot3_QuocPQHE163061_SP2022] SET  READ_WRITE 
GO
