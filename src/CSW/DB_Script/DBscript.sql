USE [master]
GO
/****** Object:  Database [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4]    Script Date: 25/11/2015 12:11:17 p.m. ******/
CREATE DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4', FILENAME = N'C:\Users\CPons\aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4.mdf' , SIZE = 3264KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4_log', FILENAME = N'C:\Users\CPons\aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET ARITHABORT OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET  ENABLE_BROKER 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET  MULTI_USER 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET DB_CHAINING OFF 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET DELAYED_DURABILITY = DISABLED 
GO
USE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25/11/2015 12:11:18 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_HistoryRow] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 25/11/2015 12:11:18 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_IdentityRoleClaim<string>] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 25/11/2015 12:11:18 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
 CONSTRAINT [PK_IdentityRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 25/11/2015 12:11:18 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_IdentityUserClaim<string>] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 25/11/2015 12:11:18 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_IdentityUserLogin<string>] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 25/11/2015 12:11:18 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_IdentityUserRole<string>] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 25/11/2015 12:11:18 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[UserName] [nvarchar](256) NULL,
 CONSTRAINT [PK_ApplicationUser] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Author]    Script Date: 25/11/2015 12:11:18 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Author](
	[AuthorID] [int] IDENTITY(1,1) NOT NULL,
	[FirstMidName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Author] PRIMARY KEY CLUSTERED 
(
	[AuthorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Book]    Script Date: 25/11/2015 12:11:18 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[AuthorID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
	[Genre] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Title] [nvarchar](max) NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 25/11/2015 12:11:18 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 25/11/2015 12:11:18 p.m. ******/
CREATE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 25/11/2015 12:11:18 p.m. ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 25/11/2015 12:11:18 p.m. ******/
CREATE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_IdentityRoleClaim<string>_IdentityRole_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_IdentityRoleClaim<string>_IdentityRole_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_IdentityUserClaim<string>_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_IdentityUserClaim<string>_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_IdentityUserLogin<string>_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_IdentityUserLogin<string>_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_IdentityUserRole<string>_ApplicationUser_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_IdentityUserRole<string>_ApplicationUser_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_IdentityUserRole<string>_IdentityRole_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_IdentityUserRole<string>_IdentityRole_RoleId]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Author_AuthorID] FOREIGN KEY([AuthorID])
REFERENCES [dbo].[Author] ([AuthorID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Author_AuthorID]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category_CategoryID]
GO
USE [master]
GO
ALTER DATABASE [aspnet5-CSW-50c6ee74-b220-476a-b7f3-06910a1ef2e4] SET  READ_WRITE 
GO
