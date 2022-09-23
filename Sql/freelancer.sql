USE [freelancer]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[Collages]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[Courses]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[DoneJobs]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[DoneJobSkills]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[DoneJobUserModel]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[Organizions]    Script Date: 9/23/2022 9:37:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Organizions](
	[institutionId] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[phone] [nvarchar](max) NOT NULL,
	[UserModelId] [nvarchar](450) NULL,
 CONSTRAINT [PK_Organizions] PRIMARY KEY CLUSTERED 
(
	[institutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostJobs]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[PostJobSkills]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[PostJobUserModel]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[Skills]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[SkillsStudents]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[SkillsUserModel]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[SkillsWorkingJob]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[Students]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[UserModelWorkingJob]    Script Date: 9/23/2022 9:37:35 PM ******/
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
/****** Object:  Table [dbo].[WorkingJobs]    Script Date: 9/23/2022 9:37:35 PM ******/
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
ALTER TABLE [dbo].[Organizions]  WITH CHECK ADD  CONSTRAINT [FK_Organizions_AspNetUsers_UserModelId] FOREIGN KEY([UserModelId])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[Organizions] CHECK CONSTRAINT [FK_Organizions_AspNetUsers_UserModelId]
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
