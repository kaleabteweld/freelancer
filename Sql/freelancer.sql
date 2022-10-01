CREATE DATABASE [Freelancer]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Freelancer_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Freelancer.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Freelancer_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Freelancer.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Freelancer] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Freelancer].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Freelancer] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Freelancer] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Freelancer] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Freelancer] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Freelancer] SET ARITHABORT OFF 
GO
ALTER DATABASE [Freelancer] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Freelancer] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Freelancer] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Freelancer] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Freelancer] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Freelancer] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Freelancer] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Freelancer] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Freelancer] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Freelancer] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Freelancer] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Freelancer] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Freelancer] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Freelancer] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Freelancer] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Freelancer] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [Freelancer] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Freelancer] SET RECOVERY FULL 
GO
ALTER DATABASE [Freelancer] SET  MULTI_USER 
GO
ALTER DATABASE [Freelancer] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Freelancer] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Freelancer] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Freelancer] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Freelancer] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Freelancer] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Freelancer', N'ON'
GO
ALTER DATABASE [Freelancer] SET QUERY_STORE = OFF
GO
USE [Freelancer]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Applicants]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applicants](
	[ApplicatioID] [int] IDENTITY(1,1) NOT NULL,
	[PostJobId] [int] NOT NULL,
	[applicantId] [nvarchar](450) NOT NULL,
	[cvUploadLoc] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Applicants] PRIMARY KEY CLUSTERED 
(
	[ApplicatioID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[XP] [int] NOT NULL,
	[collageinstitutionId] [int] NULL,
	[fullName] [nvarchar](max) NOT NULL,
	[studentsId] [int] NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Collages]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Collages](
	[institutionId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[phone] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Collages] PRIMARY KEY CLUSTERED 
(
	[institutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Courses]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Courses](
	[courseId] [int] IDENTITY(1,1) NOT NULL,
	[courseName] [nvarchar](max) NOT NULL,
	[courseGrade] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Courses] PRIMARY KEY CLUSTERED 
(
	[courseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoneJobs]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoneJobs](
	[jobId] [int] IDENTITY(1,1) NOT NULL,
	[jobTitle] [nvarchar](max) NOT NULL,
	[jobDescription] [nvarchar](max) NOT NULL,
	[location] [nvarchar](max) NOT NULL,
	[postByinstitutionId] [int] NOT NULL,
	[employmentType] [int] NOT NULL,
	[jobRequirements] [nvarchar](max) NOT NULL,
	[jobDuties] [nvarchar](max) NOT NULL,
	[minWorkingHours] [real] NOT NULL,
	[jobSalary] [real] NOT NULL,
	[postDate] [datetime2](7) NOT NULL,
	[startDate] [datetime2](7) NOT NULL,
	[contractDetail] [nvarchar](max) NOT NULL,
	[userJobSatisfactionRating] [real] NOT NULL,
	[employersatisfactionRating] [real] NOT NULL,
	[jobsTypes] [nvarchar](max) NOT NULL,
	[endtDate] [datetime2](7) NOT NULL,
	[testimony] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DoneJobs] PRIMARY KEY CLUSTERED 
(
	[jobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoneJobSkills]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoneJobSkills](
	[doneJobjobSkillRequirementsjobId] [int] NOT NULL,
	[jobSkillRequirementsskillId] [int] NOT NULL,
 CONSTRAINT [PK_DoneJobSkills] PRIMARY KEY CLUSTERED 
(
	[doneJobjobSkillRequirementsjobId] ASC,
	[jobSkillRequirementsskillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DoneJobUserModel]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DoneJobUserModel](
	[JobsDonejobId] [int] NOT NULL,
	[employeesId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_DoneJobUserModel] PRIMARY KEY CLUSTERED 
(
	[JobsDonejobId] ASC,
	[employeesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Organizions]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizions](
	[institutionId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[phone] [nvarchar](max) NOT NULL,
	[UserId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Organizions] PRIMARY KEY CLUSTERED 
(
	[institutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostJobs]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostJobs](
	[jobId] [int] IDENTITY(1,1) NOT NULL,
	[jobTitle] [nvarchar](max) NOT NULL,
	[jobDescription] [nvarchar](max) NOT NULL,
	[location] [nvarchar](max) NOT NULL,
	[postByinstitutionId] [int] NOT NULL,
	[employmentType] [int] NOT NULL,
	[jobRequirements] [nvarchar](max) NOT NULL,
	[jobDuties] [nvarchar](max) NOT NULL,
	[minWorkingHours] [real] NOT NULL,
	[jobSalary] [real] NOT NULL,
	[postDate] [datetime2](7) NOT NULL,
	[jobsTypes] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PostJobs] PRIMARY KEY CLUSTERED 
(
	[jobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostJobSkills]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostJobSkills](
	[jobSkillRequirementsjobId] [int] NOT NULL,
	[jobSkillRequirementsskillId] [int] NOT NULL,
 CONSTRAINT [PK_PostJobSkills] PRIMARY KEY CLUSTERED 
(
	[jobSkillRequirementsjobId] ASC,
	[jobSkillRequirementsskillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostJobUserModel]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostJobUserModel](
	[bookJobsjobId] [int] NOT NULL,
	[bookUsersId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_PostJobUserModel] PRIMARY KEY CLUSTERED 
(
	[bookJobsjobId] ASC,
	[bookUsersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skills]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skills](
	[skillId] [int] IDENTITY(1,1) NOT NULL,
	[skillName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Skills] PRIMARY KEY CLUSTERED 
(
	[skillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillsStudents]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillsStudents](
	[StudentsSkillsstudentsId] [int] NOT NULL,
	[skillsskillId] [int] NOT NULL,
 CONSTRAINT [PK_SkillsStudents] PRIMARY KEY CLUSTERED 
(
	[StudentsSkillsstudentsId] ASC,
	[skillsskillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillsUserModel]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillsUserModel](
	[skillsskillId] [int] NOT NULL,
	[userId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_SkillsUserModel] PRIMARY KEY CLUSTERED 
(
	[skillsskillId] ASC,
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillsWorkingJob]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillsWorkingJob](
	[jobSkillRequirementsskillId] [int] NOT NULL,
	[workingJobjobSkillRequirementsjobId] [int] NOT NULL,
 CONSTRAINT [PK_SkillsWorkingJob] PRIMARY KEY CLUSTERED 
(
	[jobSkillRequirementsskillId] ASC,
	[workingJobjobSkillRequirementsjobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Students]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Students](
	[studentsId] [int] IDENTITY(1,1) NOT NULL,
	[fullName] [nvarchar](max) NOT NULL,
	[startingYear] [datetime2](7) NOT NULL,
	[endYear] [datetime2](7) NULL,
	[GPA] [real] NOT NULL,
	[isGraduated] [bit] NOT NULL,
	[CollageinstitutionId] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[studentsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserModelWorkingJob]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserModelWorkingJob](
	[employeesId] [nvarchar](450) NOT NULL,
	[jobsjobId] [int] NOT NULL,
 CONSTRAINT [PK_UserModelWorkingJob] PRIMARY KEY CLUSTERED 
(
	[employeesId] ASC,
	[jobsjobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WorkingJobs]    Script Date: 9/30/2022 8:58:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WorkingJobs](
	[jobId] [int] IDENTITY(1,1) NOT NULL,
	[jobTitle] [nvarchar](max) NOT NULL,
	[jobDescription] [nvarchar](max) NOT NULL,
	[location] [nvarchar](max) NOT NULL,
	[postByinstitutionId] [int] NOT NULL,
	[employmentType] [int] NOT NULL,
	[jobRequirements] [nvarchar](max) NOT NULL,
	[jobDuties] [nvarchar](max) NOT NULL,
	[minWorkingHours] [real] NOT NULL,
	[jobSalary] [real] NOT NULL,
	[postDate] [datetime2](7) NOT NULL,
	[jobsTypes] [nvarchar](max) NOT NULL,
	[startDate] [datetime2](7) NOT NULL,
	[contractDetail] [nvarchar](max) NOT NULL,
	[userJobSatisfactionRating] [real] NOT NULL,
	[employersatisfactionRating] [real] NOT NULL,
 CONSTRAINT [PK_WorkingJobs] PRIMARY KEY CLUSTERED 
(
	[jobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220903205756_baseTables', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220906084715_AddingIdentity', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220922155700_changeToUserModel', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220922160406_changeToUserModel2', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220922163804_changeToUserModel3', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220923072215_addUserModel4', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220923082923_db remodel', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220925092422_ApplicantsServices', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220927114817_update Applicants Model', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220930085301_user role', N'5.0.17')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220930093010_org user', N'5.0.17')
GO
SET IDENTITY_INSERT [dbo].[Applicants] ON 

INSERT [dbo].[Applicants] ([ApplicatioID], [PostJobId], [applicantId], [cvUploadLoc]) VALUES (1, 1, N'76fb78bb-8583-45d2-9aae-a1e0b1b27214', N'')
INSERT [dbo].[Applicants] ([ApplicatioID], [PostJobId], [applicantId], [cvUploadLoc]) VALUES (2, 2, N'76fb78bb-8583-45d2-9aae-a1e0b1b27214', N'')
INSERT [dbo].[Applicants] ([ApplicatioID], [PostJobId], [applicantId], [cvUploadLoc]) VALUES (6, 3, N'76fb78bb-8583-45d2-9aae-a1e0b1b27214', N'')
SET IDENTITY_INSERT [dbo].[Applicants] OFF
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [XP], [collageinstitutionId], [fullName], [studentsId]) VALUES (N'3d26c238-85b1-4d57-b4f6-b79f2ca2139a', N'org1', N'ORG1', N'org1@gmail.com', N'ORG1@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJlrog/5KO6n9i8uH91/zcSqZ6445quNDi1yoy1+SxUODIxfQxIsobWuXlwdcMVPPw==', N'CVT5IN4TEJQYHCV3ZBNW3ANR737XFOZY', N'7fe2bbad-4645-42e3-8829-86aad531981c', N'org1', 0, 0, NULL, 1, 0, 0, NULL, N'og1', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [XP], [collageinstitutionId], [fullName], [studentsId]) VALUES (N'76fb78bb-8583-45d2-9aae-a1e0b1b27214', N'kolo', N'KOLO', N'kaleabteweld3@gmail.com', N'KALEABTEWELD3@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELFmXktmiUCnBsfqSSBDk/1/F8rTkEyHJcwV0s7nRYDuMdmKmEZ1UK0V+YdFGUrwfg==', N'QF5N6UAVL32ZUBZXZN4T45MCHT4XE63A', N'16cbf96f-9925-4e42-9532-9069701905b3', N'+251900640160', 0, 0, NULL, 1, 0, 0, 1, N'Kaleab Tewebrhan Abay', 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [XP], [collageinstitutionId], [fullName], [studentsId]) VALUES (N'9b7b6677-99ed-443a-89ea-33ecbd8aadd9', N'electra', N'ELECTRA', N'lidi@gmail.com', N'LIDI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEFNxPHpPuoRnVKhZOFcMdPUKH5rLen6fCpjHbkAdJLds3xmwmqHC90pAYhQgk2VhJw==', N'7XY5WTQUVRBGWJLQ27HFN6DYJMNSTRHB', N'e7f7c320-d370-4c9b-bac5-dcbf3afcc838', N'0911222222', 0, 0, NULL, 1, 0, 0, 1, N'lidiya zeleke', 4)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [XP], [collageinstitutionId], [fullName], [studentsId]) VALUES (N'a15538bd-d7e4-4040-b182-334cfc3ed626', N'kolopro', N'KOLOPRO', N'kaleabteweld3@gmail.com', N'KALEABTEWELD3@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOSwTEBQvbA0h2jzC1iNbt8ePXHs88aPPQPnNfS1yFG+sTJgYzJ70U4C/mGswBublA==', N'U2FBRCPZRZU42KF6CT47JTXIWP4OWO3X', N'836bd0c4-02fd-4837-9097-8f89ab602a50', N'+251900640160', 0, 0, NULL, 1, 0, 0, NULL, N'Kaleab Tewebrhan Abay', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [XP], [collageinstitutionId], [fullName], [studentsId]) VALUES (N'afa1c83f-8f3f-4eea-bece-069ff9e3a298', N'edu', N'EDU', N'metadel001@gmail.com', N'METADEL001@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMwmv1ALSaS2xFUI7v1zoGG2INtAV1XRn7UQjImN+oMIFzXl8rDE82WtfgSqkkLCFQ==', N'2UYANUZ7U6KX2J3PCVKY5O77A32KH6NC', N'c53ca640-3d04-4d1d-8165-29e34094311c', N'0983915403', 0, 0, NULL, 1, 0, 0, 1, N'edelawit abebe', 5)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [XP], [collageinstitutionId], [fullName], [studentsId]) VALUES (N'b3dcfbe7-7f49-492c-800f-3cdad4078f86', N'kkk', N'KKK', N'kaleabteweld3@gmail.com', N'KALEABTEWELD3@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBhXtSMcQNKaOYWP2VfXPKkQU+4h7UB7+rpnWfohR2ib1YoGP9VSXy9Yppb0Vi+JVg==', N'KKILON4ZCYBYDY3PXAOVRFQ3OI5JJPGF', N'255a3919-046e-4c68-8dbb-e55a9d73b92a', N'+251900640160', 0, 0, NULL, 1, 0, 0, 1, N'Kaleab Tewebrhan Abay', 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [XP], [collageinstitutionId], [fullName], [studentsId]) VALUES (N'e00ecf68-e085-4f13-8f02-b32dfae6dc74', N'kolo123', N'KOLO123', N'kaleabteweld3@gmail.com', N'KALEABTEWELD3@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAED5urP6LCpXTY4JNv4qQceZrQqrVaN1RYBQ9PCX17TD3aiBK2YFQZTx196leQtEANA==', N'MWKQJHIPIQ6HVX7IFLJE5UKM6G2CCV4G', N'b2b157cb-aceb-459c-becc-5d9c2c57e41f', N'+251900640160', 0, 0, NULL, 1, 0, 0, 1, N'Kaleab Tewebrhan Abay', 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [XP], [collageinstitutionId], [fullName], [studentsId]) VALUES (N'f974277d-bf3b-4e9b-9ace-7027d37f2227', N'org2', N'ORG2', N'org2@gmail.com', N'ORG2@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAENuYVdIcNR0AJUkgbFcMbN44Se5r1oN7N0M+2nKWALykzjmPkrBR//7gRspox9BL+w==', N'DI6QRWLO3QJSRWV7RJPET7E3SMPQ7UF5', N'3a8578f1-ee18-4b82-8fa1-3f2c4a53cf7b', N'org2', 0, 0, NULL, 1, 0, 0, NULL, N'org2', NULL)
GO
SET IDENTITY_INSERT [dbo].[Collages] ON 

INSERT [dbo].[Collages] ([institutionId], [name], [email], [phone]) VALUES (1, N'hilcoe', N'hilcoe@gmail.com', N'+25197575675')
INSERT [dbo].[Collages] ([institutionId], [name], [email], [phone]) VALUES (2, N'AAU', N'AAU@gmail.com', N'+25197575675')
INSERT [dbo].[Collages] ([institutionId], [name], [email], [phone]) VALUES (3, N'temp', N'temp@gmail.com', N'+25197575675')
SET IDENTITY_INSERT [dbo].[Collages] OFF
GO
SET IDENTITY_INSERT [dbo].[Organizions] ON 

INSERT [dbo].[Organizions] ([institutionId], [name], [email], [phone], [UserId]) VALUES (1, N'Deez nuts inc', N'Deeznuts@gmail.com', N'+25187364', N'3d26c238-85b1-4d57-b4f6-b79f2ca2139a')
INSERT [dbo].[Organizions] ([institutionId], [name], [email], [phone], [UserId]) VALUES (2, N'abc', N'abc@gmail.com', N'+25187364', N'f974277d-bf3b-4e9b-9ace-7027d37f2227')
INSERT [dbo].[Organizions] ([institutionId], [name], [email], [phone], [UserId]) VALUES (3, N'123', N'123@gmail.com', N'+25187364', N'e00ecf68-e085-4f13-8f02-b32dfae6dc74')
SET IDENTITY_INSERT [dbo].[Organizions] OFF
GO
SET IDENTITY_INSERT [dbo].[PostJobs] ON 

INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (1, N'flutter dev', N'a good flutter dev', N'hell', 1, 1, N'flutter figma', N'dev', 9, 4000, CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2), N'dev')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (2, N'jave dev', N'a good java dev', N'hell', 1, 1, N'java figma', N'dev', 9, 4000, CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2), N'dev')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (3, N'jave dev', N'a good java dev', N'hell', 2, 1, N'java figma', N'dev', 9, 4000, CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2), N'dev')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (4, N'c#', N'c# dev', N'any were', 1, 3, N'c# c#', N'dev', 12, 12000, CAST(N'2021-01-01T00:00:00.0000000' AS DateTime2), N'dev')
SET IDENTITY_INSERT [dbo].[PostJobs] OFF
GO
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (1, 1)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (2, 2)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (3, 2)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (4, 7)
GO
INSERT [dbo].[PostJobUserModel] ([bookJobsjobId], [bookUsersId]) VALUES (1, N'76fb78bb-8583-45d2-9aae-a1e0b1b27214')
INSERT [dbo].[PostJobUserModel] ([bookJobsjobId], [bookUsersId]) VALUES (4, N'76fb78bb-8583-45d2-9aae-a1e0b1b27214')
INSERT [dbo].[PostJobUserModel] ([bookJobsjobId], [bookUsersId]) VALUES (4, N'b3dcfbe7-7f49-492c-800f-3cdad4078f86')
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (1, N'flutter')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (2, N'java')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (3, N'python')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (4, N'sql')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (5, N'mysql')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (6, N'c++')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (7, N'c#')
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (1, 1)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (1, 2)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (1, 3)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (1, 4)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (1, 5)
GO
INSERT [dbo].[SkillsWorkingJob] ([jobSkillRequirementsskillId], [workingJobjobSkillRequirementsjobId]) VALUES (7, 1)
INSERT [dbo].[SkillsWorkingJob] ([jobSkillRequirementsskillId], [workingJobjobSkillRequirementsjobId]) VALUES (1, 2)
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (1, N'kaleab teweldbrhan', CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), NULL, 3.5, 0, 1)
INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (2, N'temp', CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), NULL, 3.5, 0, 1)
INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (3, N'temp2', CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), NULL, 3.5, 0, 2)
INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (4, N'lidiya zeleke', CAST(N'2019-07-04T00:00:00.0000000' AS DateTime2), NULL, 4, 0, 1)
INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (5, N'edelawit Abebe ', CAST(N'2019-01-01T00:00:00.0000000' AS DateTime2), NULL, 4, 0, 1)
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
INSERT [dbo].[UserModelWorkingJob] ([employeesId], [jobsjobId]) VALUES (N'76fb78bb-8583-45d2-9aae-a1e0b1b27214', 1)
INSERT [dbo].[UserModelWorkingJob] ([employeesId], [jobsjobId]) VALUES (N'b3dcfbe7-7f49-492c-800f-3cdad4078f86', 2)
GO
SET IDENTITY_INSERT [dbo].[WorkingJobs] ON 

INSERT [dbo].[WorkingJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes], [startDate], [contractDetail], [userJobSatisfactionRating], [employersatisfactionRating]) VALUES (1, N'c#', N'c# dev', N'any were', 1, 3, N'c# c#', N'dev', 12, 12000, CAST(N'2021-01-01T00:00:00.0000000' AS DateTime2), N'dev', CAST(N'2021-01-01T00:00:00.0000000' AS DateTime2), N'', 0, 0)
INSERT [dbo].[WorkingJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes], [startDate], [contractDetail], [userJobSatisfactionRating], [employersatisfactionRating]) VALUES (2, N'flutter dev', N'a good flutter dev', N'hell', 1, 1, N'flutter figma', N'dev', 9, 4000, CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2), N'dev', CAST(N'2022-01-02T00:00:00.0000000' AS DateTime2), N'', 0, 0)
SET IDENTITY_INSERT [dbo].[WorkingJobs] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Applicants_applicantId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Applicants_applicantId] ON [dbo].[Applicants]
(
	[applicantId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Applicants_PostJobId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Applicants_PostJobId] ON [dbo].[Applicants]
(
	[PostJobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_collageinstitutionId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_collageinstitutionId] ON [dbo].[AspNetUsers]
(
	[collageinstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUsers_studentsId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUsers_studentsId] ON [dbo].[AspNetUsers]
(
	[studentsId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DoneJobs_postByinstitutionId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_DoneJobs_postByinstitutionId] ON [dbo].[DoneJobs]
(
	[postByinstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_DoneJobSkills_jobSkillRequirementsskillId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_DoneJobSkills_jobSkillRequirementsskillId] ON [dbo].[DoneJobSkills]
(
	[jobSkillRequirementsskillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_DoneJobUserModel_employeesId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_DoneJobUserModel_employeesId] ON [dbo].[DoneJobUserModel]
(
	[employeesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PostJobs_postByinstitutionId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_PostJobs_postByinstitutionId] ON [dbo].[PostJobs]
(
	[postByinstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_PostJobSkills_jobSkillRequirementsskillId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_PostJobSkills_jobSkillRequirementsskillId] ON [dbo].[PostJobSkills]
(
	[jobSkillRequirementsskillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_PostJobUserModel_bookUsersId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_PostJobUserModel_bookUsersId] ON [dbo].[PostJobUserModel]
(
	[bookUsersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SkillsStudents_skillsskillId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_SkillsStudents_skillsskillId] ON [dbo].[SkillsStudents]
(
	[skillsskillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_SkillsUserModel_userId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_SkillsUserModel_userId] ON [dbo].[SkillsUserModel]
(
	[userId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_SkillsWorkingJob_workingJobjobSkillRequirementsjobId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_SkillsWorkingJob_workingJobjobSkillRequirementsjobId] ON [dbo].[SkillsWorkingJob]
(
	[workingJobjobSkillRequirementsjobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Students_CollageinstitutionId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_Students_CollageinstitutionId] ON [dbo].[Students]
(
	[CollageinstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_UserModelWorkingJob_jobsjobId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserModelWorkingJob_jobsjobId] ON [dbo].[UserModelWorkingJob]
(
	[jobsjobId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_WorkingJobs_postByinstitutionId]    Script Date: 9/30/2022 8:58:59 PM ******/
CREATE NONCLUSTERED INDEX [IX_WorkingJobs_postByinstitutionId] ON [dbo].[WorkingJobs]
(
	[postByinstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Applicants] ADD  DEFAULT (N'') FOR [cvUploadLoc]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT ((0)) FOR [XP]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (N'') FOR [fullName]
GO
ALTER TABLE [dbo].[Collages] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[Collages] ADD  DEFAULT (N'') FOR [email]
GO
ALTER TABLE [dbo].[Collages] ADD  DEFAULT (N'') FOR [phone]
GO
ALTER TABLE [dbo].[Courses] ADD  DEFAULT (N'') FOR [courseName]
GO
ALTER TABLE [dbo].[Courses] ADD  DEFAULT (N'') FOR [courseGrade]
GO
ALTER TABLE [dbo].[DoneJobs] ADD  DEFAULT (N'') FOR [jobTitle]
GO
ALTER TABLE [dbo].[DoneJobs] ADD  DEFAULT (N'') FOR [jobDescription]
GO
ALTER TABLE [dbo].[DoneJobs] ADD  DEFAULT (N'') FOR [location]
GO
ALTER TABLE [dbo].[DoneJobs] ADD  DEFAULT ((0)) FOR [postByinstitutionId]
GO
ALTER TABLE [dbo].[DoneJobs] ADD  DEFAULT (N'') FOR [jobRequirements]
GO
ALTER TABLE [dbo].[DoneJobs] ADD  DEFAULT (N'') FOR [jobDuties]
GO
ALTER TABLE [dbo].[DoneJobs] ADD  DEFAULT (N'') FOR [contractDetail]
GO
ALTER TABLE [dbo].[DoneJobs] ADD  DEFAULT (N'') FOR [jobsTypes]
GO
ALTER TABLE [dbo].[DoneJobs] ADD  DEFAULT (N'') FOR [testimony]
GO
ALTER TABLE [dbo].[Organizions] ADD  DEFAULT (N'') FOR [name]
GO
ALTER TABLE [dbo].[Organizions] ADD  DEFAULT (N'') FOR [email]
GO
ALTER TABLE [dbo].[Organizions] ADD  DEFAULT (N'') FOR [phone]
GO
ALTER TABLE [dbo].[PostJobs] ADD  DEFAULT (N'') FOR [jobTitle]
GO
ALTER TABLE [dbo].[PostJobs] ADD  DEFAULT (N'') FOR [jobDescription]
GO
ALTER TABLE [dbo].[PostJobs] ADD  DEFAULT (N'') FOR [location]
GO
ALTER TABLE [dbo].[PostJobs] ADD  DEFAULT ((0)) FOR [postByinstitutionId]
GO
ALTER TABLE [dbo].[PostJobs] ADD  DEFAULT (N'') FOR [jobRequirements]
GO
ALTER TABLE [dbo].[PostJobs] ADD  DEFAULT (N'') FOR [jobDuties]
GO
ALTER TABLE [dbo].[PostJobs] ADD  DEFAULT (N'') FOR [jobsTypes]
GO
ALTER TABLE [dbo].[Skills] ADD  DEFAULT (N'') FOR [skillName]
GO
ALTER TABLE [dbo].[Students] ADD  DEFAULT (N'') FOR [fullName]
GO
ALTER TABLE [dbo].[Students] ADD  DEFAULT ((0)) FOR [CollageinstitutionId]
GO
ALTER TABLE [dbo].[WorkingJobs] ADD  DEFAULT (N'') FOR [jobTitle]
GO
ALTER TABLE [dbo].[WorkingJobs] ADD  DEFAULT (N'') FOR [jobDescription]
GO
ALTER TABLE [dbo].[WorkingJobs] ADD  DEFAULT (N'') FOR [location]
GO
ALTER TABLE [dbo].[WorkingJobs] ADD  DEFAULT ((0)) FOR [postByinstitutionId]
GO
ALTER TABLE [dbo].[WorkingJobs] ADD  DEFAULT (N'') FOR [jobRequirements]
GO
ALTER TABLE [dbo].[WorkingJobs] ADD  DEFAULT (N'') FOR [jobDuties]
GO
ALTER TABLE [dbo].[WorkingJobs] ADD  DEFAULT (N'') FOR [jobsTypes]
GO
ALTER TABLE [dbo].[WorkingJobs] ADD  DEFAULT (N'') FOR [contractDetail]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_AspNetUsers_applicantId] FOREIGN KEY([applicantId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_AspNetUsers_applicantId]
GO
ALTER TABLE [dbo].[Applicants]  WITH CHECK ADD  CONSTRAINT [FK_Applicants_PostJobs_PostJobId] FOREIGN KEY([PostJobId])
REFERENCES [dbo].[PostJobs] ([jobId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Applicants] CHECK CONSTRAINT [FK_Applicants_PostJobs_PostJobId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Collages_collageinstitutionId] FOREIGN KEY([collageinstitutionId])
REFERENCES [dbo].[Collages] ([institutionId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Collages_collageinstitutionId]
GO
ALTER TABLE [dbo].[AspNetUsers]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUsers_Students_studentsId] FOREIGN KEY([studentsId])
REFERENCES [dbo].[Students] ([studentsId])
GO
ALTER TABLE [dbo].[AspNetUsers] CHECK CONSTRAINT [FK_AspNetUsers_Students_studentsId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[DoneJobs]  WITH CHECK ADD  CONSTRAINT [FK_DoneJobs_Organizions_postByinstitutionId] FOREIGN KEY([postByinstitutionId])
REFERENCES [dbo].[Organizions] ([institutionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DoneJobs] CHECK CONSTRAINT [FK_DoneJobs_Organizions_postByinstitutionId]
GO
ALTER TABLE [dbo].[DoneJobSkills]  WITH CHECK ADD  CONSTRAINT [FK_DoneJobSkills_DoneJobs_doneJobjobSkillRequirementsjobId] FOREIGN KEY([doneJobjobSkillRequirementsjobId])
REFERENCES [dbo].[DoneJobs] ([jobId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DoneJobSkills] CHECK CONSTRAINT [FK_DoneJobSkills_DoneJobs_doneJobjobSkillRequirementsjobId]
GO
ALTER TABLE [dbo].[DoneJobSkills]  WITH CHECK ADD  CONSTRAINT [FK_DoneJobSkills_Skills_jobSkillRequirementsskillId] FOREIGN KEY([jobSkillRequirementsskillId])
REFERENCES [dbo].[Skills] ([skillId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DoneJobSkills] CHECK CONSTRAINT [FK_DoneJobSkills_Skills_jobSkillRequirementsskillId]
GO
ALTER TABLE [dbo].[DoneJobUserModel]  WITH CHECK ADD  CONSTRAINT [FK_DoneJobUserModel_AspNetUsers_employeesId] FOREIGN KEY([employeesId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DoneJobUserModel] CHECK CONSTRAINT [FK_DoneJobUserModel_AspNetUsers_employeesId]
GO
ALTER TABLE [dbo].[DoneJobUserModel]  WITH CHECK ADD  CONSTRAINT [FK_DoneJobUserModel_DoneJobs_JobsDonejobId] FOREIGN KEY([JobsDonejobId])
REFERENCES [dbo].[DoneJobs] ([jobId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DoneJobUserModel] CHECK CONSTRAINT [FK_DoneJobUserModel_DoneJobs_JobsDonejobId]
GO
ALTER TABLE [dbo].[Organizions]  WITH CHECK ADD  CONSTRAINT [FK_Organizions_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Organizions] CHECK CONSTRAINT [FK_Organizions_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[PostJobs]  WITH CHECK ADD  CONSTRAINT [FK_PostJobs_Organizions_postByinstitutionId] FOREIGN KEY([postByinstitutionId])
REFERENCES [dbo].[Organizions] ([institutionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostJobs] CHECK CONSTRAINT [FK_PostJobs_Organizions_postByinstitutionId]
GO
ALTER TABLE [dbo].[PostJobSkills]  WITH CHECK ADD  CONSTRAINT [FK_PostJobSkills_PostJobs_jobSkillRequirementsjobId] FOREIGN KEY([jobSkillRequirementsjobId])
REFERENCES [dbo].[PostJobs] ([jobId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostJobSkills] CHECK CONSTRAINT [FK_PostJobSkills_PostJobs_jobSkillRequirementsjobId]
GO
ALTER TABLE [dbo].[PostJobSkills]  WITH CHECK ADD  CONSTRAINT [FK_PostJobSkills_Skills_jobSkillRequirementsskillId] FOREIGN KEY([jobSkillRequirementsskillId])
REFERENCES [dbo].[Skills] ([skillId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostJobSkills] CHECK CONSTRAINT [FK_PostJobSkills_Skills_jobSkillRequirementsskillId]
GO
ALTER TABLE [dbo].[PostJobUserModel]  WITH CHECK ADD  CONSTRAINT [FK_PostJobUserModel_AspNetUsers_bookUsersId] FOREIGN KEY([bookUsersId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostJobUserModel] CHECK CONSTRAINT [FK_PostJobUserModel_AspNetUsers_bookUsersId]
GO
ALTER TABLE [dbo].[PostJobUserModel]  WITH CHECK ADD  CONSTRAINT [FK_PostJobUserModel_PostJobs_bookJobsjobId] FOREIGN KEY([bookJobsjobId])
REFERENCES [dbo].[PostJobs] ([jobId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PostJobUserModel] CHECK CONSTRAINT [FK_PostJobUserModel_PostJobs_bookJobsjobId]
GO
ALTER TABLE [dbo].[SkillsStudents]  WITH CHECK ADD  CONSTRAINT [FK_SkillsStudents_Skills_skillsskillId] FOREIGN KEY([skillsskillId])
REFERENCES [dbo].[Skills] ([skillId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SkillsStudents] CHECK CONSTRAINT [FK_SkillsStudents_Skills_skillsskillId]
GO
ALTER TABLE [dbo].[SkillsStudents]  WITH CHECK ADD  CONSTRAINT [FK_SkillsStudents_Students_StudentsSkillsstudentsId] FOREIGN KEY([StudentsSkillsstudentsId])
REFERENCES [dbo].[Students] ([studentsId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SkillsStudents] CHECK CONSTRAINT [FK_SkillsStudents_Students_StudentsSkillsstudentsId]
GO
ALTER TABLE [dbo].[SkillsUserModel]  WITH CHECK ADD  CONSTRAINT [FK_SkillsUserModel_AspNetUsers_userId] FOREIGN KEY([userId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SkillsUserModel] CHECK CONSTRAINT [FK_SkillsUserModel_AspNetUsers_userId]
GO
ALTER TABLE [dbo].[SkillsUserModel]  WITH CHECK ADD  CONSTRAINT [FK_SkillsUserModel_Skills_skillsskillId] FOREIGN KEY([skillsskillId])
REFERENCES [dbo].[Skills] ([skillId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SkillsUserModel] CHECK CONSTRAINT [FK_SkillsUserModel_Skills_skillsskillId]
GO
ALTER TABLE [dbo].[SkillsWorkingJob]  WITH CHECK ADD  CONSTRAINT [FK_SkillsWorkingJob_Skills_jobSkillRequirementsskillId] FOREIGN KEY([jobSkillRequirementsskillId])
REFERENCES [dbo].[Skills] ([skillId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SkillsWorkingJob] CHECK CONSTRAINT [FK_SkillsWorkingJob_Skills_jobSkillRequirementsskillId]
GO
ALTER TABLE [dbo].[SkillsWorkingJob]  WITH CHECK ADD  CONSTRAINT [FK_SkillsWorkingJob_WorkingJobs_workingJobjobSkillRequirementsjobId] FOREIGN KEY([workingJobjobSkillRequirementsjobId])
REFERENCES [dbo].[WorkingJobs] ([jobId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SkillsWorkingJob] CHECK CONSTRAINT [FK_SkillsWorkingJob_WorkingJobs_workingJobjobSkillRequirementsjobId]
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Collages_CollageinstitutionId] FOREIGN KEY([CollageinstitutionId])
REFERENCES [dbo].[Collages] ([institutionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Collages_CollageinstitutionId]
GO
ALTER TABLE [dbo].[UserModelWorkingJob]  WITH CHECK ADD  CONSTRAINT [FK_UserModelWorkingJob_AspNetUsers_employeesId] FOREIGN KEY([employeesId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserModelWorkingJob] CHECK CONSTRAINT [FK_UserModelWorkingJob_AspNetUsers_employeesId]
GO
ALTER TABLE [dbo].[UserModelWorkingJob]  WITH CHECK ADD  CONSTRAINT [FK_UserModelWorkingJob_WorkingJobs_jobsjobId] FOREIGN KEY([jobsjobId])
REFERENCES [dbo].[WorkingJobs] ([jobId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[UserModelWorkingJob] CHECK CONSTRAINT [FK_UserModelWorkingJob_WorkingJobs_jobsjobId]
GO
ALTER TABLE [dbo].[WorkingJobs]  WITH CHECK ADD  CONSTRAINT [FK_WorkingJobs_Organizions_postByinstitutionId] FOREIGN KEY([postByinstitutionId])
REFERENCES [dbo].[Organizions] ([institutionId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WorkingJobs] CHECK CONSTRAINT [FK_WorkingJobs_Organizions_postByinstitutionId]
GO
USE [master]
GO
ALTER DATABASE [Freelancer] SET  READ_WRITE 
GO

