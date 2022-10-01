USE [freelancer]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[Applicants]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[Collages]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[Courses]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[DoneJobs]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[DoneJobSkills]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[DoneJobUserModel]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[Organizions]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[PostJobs]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[PostJobSkills]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[PostJobUserModel]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[Skills]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[SkillsStudents]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[SkillsUserModel]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[SkillsWorkingJob]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[Students]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[UserModelWorkingJob]    Script Date: 10/1/2022 3:12:46 PM ******/
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
/****** Object:  Table [dbo].[WorkingJobs]    Script Date: 10/1/2022 3:12:46 PM ******/
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
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [XP], [collageinstitutionId], [fullName], [studentsId]) VALUES (N'28ab9e7d-588e-4953-b366-4245464c8aba', N'user4', N'USER4', N'kali@gmail.com', N'KALI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJg9B+PyuJlvGPNm5yHtyT2ADLLmL7hNv3hnc45HROeq9+kWu8D3ICIJo8oHsdOvbQ==', N'5PNQXUBMMSICYZ6YPXYVEYOUMRVQJILQ', N'7efba1b5-2c4b-475d-8f36-0d47beac1267', N'0992872310', 0, 0, NULL, 1, 0, 0, NULL, N'kali', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [XP], [collageinstitutionId], [fullName], [studentsId]) VALUES (N'39776f0e-9a88-48ca-8793-73d34e954095', N'org3', N'ORG3', N'hilcoe@gmail.com', N'HILCOE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHsblGABJ+xpW2auxcpRbmLDegZpmR+wmJuNRA/olE34RZlrwboJiBthuRHeLJXGvw==', N'2XD3ZMPVBQRC63CGEYPCRDSUMRJZRBO3', N'bbe6a13e-ead7-4c53-a1d2-19c09d396302', N'0911121314', 0, 0, NULL, 1, 0, 0, NULL, N'dr. ahmed', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [XP], [collageinstitutionId], [fullName], [studentsId]) VALUES (N'7499ef1f-26c3-4e9b-9243-e7c64ac841d7', N'user1', N'USER1', N'metadel001@gmail.com', N'METADEL001@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMrOsgO9t6KwQJwQVAzIZndGPWCd5qwSH1xJdr+jvq/QizktKUM33LTlrILXkRBZhw==', N'INWONSJ4ZXSCWIT3ZQB32WCIVE57LMH2', N'c41985bd-4641-4686-b7af-5a6f96473f2f', N'0983915403', 0, 0, NULL, 1, 0, 0, 1, N'edelawit', 1)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [XP], [collageinstitutionId], [fullName], [studentsId]) VALUES (N'763a75ee-6278-4c36-8037-e7974610f6a8', N'user2', N'USER2', N'Zola@gmail.com', N'ZOLA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMhYBm4C5P/lpuxOZyJJG9yN3iW4O1w8tgwuhu2kW6nU7ln89ZBYrLwX6SnxpKrfUw==', N'SVSXJ5WRXSAK33WDZW6ZB6OUIDEEBYLD', N'6329da9e-f399-4ae3-9677-825dcf51f095', N'0900600100', 0, 0, NULL, 1, 0, 0, NULL, N'kaleab', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [XP], [collageinstitutionId], [fullName], [studentsId]) VALUES (N'77c295fe-371a-4b61-8af6-d70bde2fd402', N'org1', N'ORG1', N'labora@gmail.com', N'LABORA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECfwx1+fFaHpGojK5kjoM3tNO9j3WxzRH2vH5VsoZSyekx9IPv8b5XWGOGdlNtqkng==', N'LXJ4DQ2SJYO5IUH7PETEKROYUWE6I3DN', N'65f2cdc5-3733-4c9a-b7b9-4ff3ef50b04b', N'0911308452', 0, 0, NULL, 1, 0, 0, NULL, N'dr. abebe', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [XP], [collageinstitutionId], [fullName], [studentsId]) VALUES (N'938b0395-7bcf-4492-8a94-99bf22fda75b', N'org4', N'ORG4', N'amine@gmail.com', N'AMINE@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAELksSsZ16B0vvdrMfGBnmwSRhdO/TrqE1/bHgTBZrNVSGYcIqrIJ5eMMaGThvzzPjQ==', N'73PPFVBA2KRZR3YOW3YYHBX5EWO6NHCD', N'13cbdf09-1074-4c28-b3d4-f969a7015060', N'0988323232', 0, 0, NULL, 1, 0, 0, NULL, N'dr.stone', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [XP], [collageinstitutionId], [fullName], [studentsId]) VALUES (N'a55ad325-023f-4928-acd7-01f0034692b8', N'user3', N'USER3', N'lidi@gmail.com', N'LIDI@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEMioV/PsUAiO4Isuy0+rZXfoz1rzO3e+gmIV8/ECq6maLZTq1Gdzr6137ThQnsXYmg==', N'55M7YIWRD4LE4H64IJI4NYNZDIFWTQYV', N'8d4e052f-1723-4abd-8bc0-5c223bc7ec6c', N'0906428362', 0, 0, NULL, 1, 0, 0, NULL, N'lidiya', NULL)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [XP], [collageinstitutionId], [fullName], [studentsId]) VALUES (N'bb89a233-eb9d-49ac-98eb-32361ae1a332', N'org2', N'ORG2', N'bora@gmail.com', N'BORA@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEJif1Lm1dnhuuXr+O3D6gK4KgK0a64Ko1qQZDs3O4gWkxSqcLY5Kp16A3DnMDO/niA==', N'IPKQUXCVYJWGKIJAMLAYXVYMXV33PHWG', N'0daa2c48-50b0-44ea-9573-1b3936e78095', N'0900303030', 0, 0, NULL, 1, 0, 0, NULL, N'professor kebede', NULL)
GO
SET IDENTITY_INSERT [dbo].[Collages] ON 

INSERT [dbo].[Collages] ([institutionId], [name], [email], [phone]) VALUES (1, N'HiLCoE', N'hilcoe@gmail.com', N'0911121314')
INSERT [dbo].[Collages] ([institutionId], [name], [email], [phone]) VALUES (2, N'A.A', N'addisabeba@gmail.com', N'0988303030')
INSERT [dbo].[Collages] ([institutionId], [name], [email], [phone]) VALUES (3, N'hawassa', N'hawassa@gmail.com', N'0970777777')
INSERT [dbo].[Collages] ([institutionId], [name], [email], [phone]) VALUES (4, N'adama', N'adama@gmail.com', N'0960636363')
INSERT [dbo].[Collages] ([institutionId], [name], [email], [phone]) VALUES (5, N'gonder', N'gonder@gmail.com', N'0918707070')
INSERT [dbo].[Collages] ([institutionId], [name], [email], [phone]) VALUES (6, N'bahirdar', N'bahirdar@gmail.com', N'0911304050')
SET IDENTITY_INSERT [dbo].[Collages] OFF
GO
SET IDENTITY_INSERT [dbo].[Organizions] ON 

INSERT [dbo].[Organizions] ([institutionId], [name], [email], [phone], [UserId]) VALUES (1, N'labora', N'labora@gmail.com', N'0911308452', N'77c295fe-371a-4b61-8af6-d70bde2fd402')
INSERT [dbo].[Organizions] ([institutionId], [name], [email], [phone], [UserId]) VALUES (2, N'Bora', N'bora@gmail.com', N'0900303030', N'bb89a233-eb9d-49ac-98eb-32361ae1a332')
INSERT [dbo].[Organizions] ([institutionId], [name], [email], [phone], [UserId]) VALUES (3, N'HiLCoe', N'hilcoe@gmail.com', N'0911121314', N'39776f0e-9a88-48ca-8793-73d34e954095')
INSERT [dbo].[Organizions] ([institutionId], [name], [email], [phone], [UserId]) VALUES (4, N'Anime', N'amine@gmail.com', N'0988323232', N'938b0395-7bcf-4492-8a94-99bf22fda75b')
SET IDENTITY_INSERT [dbo].[Organizions] OFF
GO
SET IDENTITY_INSERT [dbo].[PostJobs] ON 

INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (1, N'Mobile app dev', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Addis Ababa', 1, 2, N'flutter', N'app development', 4, 20000, CAST(N'2022-02-04T00:00:00.0000000' AS DateTime2), N'dev')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (2, N'Manegement', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'bahirdar', 1, 4, N'bussiness management experiance', N'maneging', 1, 120000, CAST(N'2021-02-04T00:00:00.0000000' AS DateTime2), N'bussiness')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (3, N'Tsedat', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'gonder', 1, 1, N'none', N'cleaning', 0, 2000, CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), N'geniter')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (4, N'Accountant', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'adama', 1, 3, N'Bachelor degree ', N'Manage all accounting transactions', 4, 10000, CAST(N'2022-02-04T00:00:00.0000000' AS DateTime2), N'in bank')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (5, N'Java dev', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'New York', 2, 5, N'JAVA', N'desktop app development', 6, 45000, CAST(N'2022-02-04T00:00:00.0000000' AS DateTime2), N'dev')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (6, N'Business Administration', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Nirobi', 2, 2, N'Great analytical, critical thinking and problem-solving abilities', N'Staff Recruitment', 5, 35000, CAST(N'2022-02-04T00:00:00.0000000' AS DateTime2), N'Financial management')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (7, N'Tsedat', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'kera', 2, 1, N'none', N'cleaning', 8, 1500, CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), N'geniter')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (8, N'Accountant', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Adama', 2, 1, N'bachelors degree in accounting or business ', N'Manage all accounting transactions', 6, 30000, CAST(N'2022-02-04T00:00:00.0000000' AS DateTime2), N'dev')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (9, N'Lecturer', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Addis Ababa', 3, 1, N'presentation skill', N'planning teaching', 5, 50000, CAST(N'2022-02-04T00:00:00.0000000' AS DateTime2), N'c++ lecturer')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (10, N'Adminstrator', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'london', 3, 2, N'Masters', N'arranging schedules', 1, 30320, CAST(N'2021-02-04T00:00:00.0000000' AS DateTime2), N'coordinator')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (11, N'Super visor', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'toronto', 3, 2, N'cs knowledge', N'comminucation skill', 0, 15000, CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), N'officer')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (12, N'Secratory', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'asela', 3, 4, N'Bachelor degree ', N'negotiation skill', 4, 5000, CAST(N'2020-02-04T00:00:00.0000000' AS DateTime2), N'university campas')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (13, N'Pilot', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'Addis Ababa', 4, 6, N'Ethiopia airline', N'analying flights', 5, 500000, CAST(N'2022-02-04T00:00:00.0000000' AS DateTime2), N'international flight')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (14, N'hostess', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'london', 4, 5, N'communication skill', N'welcome guest', 1, 100000, CAST(N'2021-02-04T00:00:00.0000000' AS DateTime2), N'communicating')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (15, N'mechanical enginner', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'toronto', 4, 4, N'masters', N'CAD', 0, 15000, CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), N'engine designer')
INSERT [dbo].[PostJobs] ([jobId], [jobTitle], [jobDescription], [location], [postByinstitutionId], [employmentType], [jobRequirements], [jobDuties], [minWorkingHours], [jobSalary], [postDate], [jobsTypes]) VALUES (16, N'data Analyst', N'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'asela', 4, 3, N'degree in cs ', N'collecting data', 4, 60000, CAST(N'2020-02-04T00:00:00.0000000' AS DateTime2), N'Intelligence analyst')
SET IDENTITY_INSERT [dbo].[PostJobs] OFF
GO
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (1, 3)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (1, 6)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (1, 12)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (1, 28)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (2, 15)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (3, 14)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (4, 19)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (5, 3)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (5, 13)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (6, 18)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (7, 14)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (8, 19)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (9, 1)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (9, 2)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (9, 3)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (9, 4)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (9, 5)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (9, 6)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (9, 7)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (9, 8)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (9, 9)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (9, 10)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (9, 11)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (9, 12)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (9, 13)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (9, 20)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (10, 16)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (11, 22)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (12, 23)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (13, 24)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (14, 25)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (15, 26)
INSERT [dbo].[PostJobSkills] ([jobSkillRequirementsjobId], [jobSkillRequirementsskillId]) VALUES (16, 27)
GO
SET IDENTITY_INSERT [dbo].[Skills] ON 

INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (1, N'HTML')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (2, N'CSS')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (3, N'JAVA')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (4, N'C#')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (5, N'PYTHON')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (6, N'JAVASCRIPT')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (7, N'C++')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (8, N'REACT')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (9, N'ANGULAR')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (10, N'DATABASE')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (11, N'FRONTEND DEVELOPER')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (12, N'BACKEND DEVELOPER')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (13, N'FULL STACK DEVELOPER')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (14, N'Tsedat')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (15, N'Manegement')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (16, N'Accountant')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (17, N'Tsedat')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (18, N'Business Administration')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (19, N'Accountant')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (20, N'Lecturer')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (21, N'Adminstrator')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (22, N'Super visor')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (23, N'Secratory')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (24, N'Pilot')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (25, N'hostess')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (26, N'mechanical enginner')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (27, N'data Analyst')
INSERT [dbo].[Skills] ([skillId], [skillName]) VALUES (28, N'flutter')
SET IDENTITY_INSERT [dbo].[Skills] OFF
GO
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (1, 1)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (1, 4)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (1, 5)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (1, 10)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (1, 13)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (1, 19)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (1, 26)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (1, 27)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (1, 28)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (2, 1)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (2, 2)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (2, 4)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (2, 6)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (2, 7)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (2, 13)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (2, 15)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (2, 17)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (2, 18)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (2, 23)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (3, 1)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (3, 7)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (3, 8)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (3, 9)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (3, 10)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (3, 16)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (3, 22)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (3, 24)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (3, 25)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (4, 1)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (4, 2)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (4, 3)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (4, 4)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (4, 5)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (4, 13)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (4, 23)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (4, 27)
INSERT [dbo].[SkillsStudents] ([StudentsSkillsstudentsId], [skillsskillId]) VALUES (4, 28)
GO
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (1, N'edelawit', CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), NULL, 3.6, 0, 1)
INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (2, N'kaleab', CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), NULL, 3.5, 0, 1)
INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (3, N'lidiya', CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), NULL, 4, 0, 2)
INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (4, N'kalkidan', CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), NULL, 3, 0, 3)
INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (5, N'bitsu', CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), NULL, 3.9, 0, 4)
INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (6, N'bitsu', CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), NULL, 3.9, 0, 4)
INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (7, N'mekedelawit', CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), NULL, 3, 0, 5)
INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (8, N'yeshak', CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), NULL, 2, 0, 1)
INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (9, N'kerim', CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), NULL, 1.7, 0, 2)
INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (10, N'timaj', CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), NULL, 4, 0, 5)
INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (11, N'million', CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), NULL, 3.8, 0, 3)
INSERT [dbo].[Students] ([studentsId], [fullName], [startingYear], [endYear], [GPA], [isGraduated], [CollageinstitutionId]) VALUES (12, N'yamanuel', CAST(N'2019-02-04T00:00:00.0000000' AS DateTime2), NULL, 2.5, 0, 4)
SET IDENTITY_INSERT [dbo].[Students] OFF
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
