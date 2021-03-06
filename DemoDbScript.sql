USE [master]
GO
/****** Object:  Database [DemoDatabase]    Script Date: 4.03.2021 00:13:34 ******/
CREATE DATABASE [DemoDatabase]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DemoDatabase', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DemoDatabase.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'DemoDatabase_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\DemoDatabase_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [DemoDatabase] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DemoDatabase].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DemoDatabase] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DemoDatabase] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DemoDatabase] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DemoDatabase] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DemoDatabase] SET ARITHABORT OFF 
GO
ALTER DATABASE [DemoDatabase] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DemoDatabase] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DemoDatabase] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DemoDatabase] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DemoDatabase] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DemoDatabase] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DemoDatabase] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DemoDatabase] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DemoDatabase] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DemoDatabase] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DemoDatabase] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DemoDatabase] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DemoDatabase] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DemoDatabase] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DemoDatabase] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DemoDatabase] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DemoDatabase] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DemoDatabase] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DemoDatabase] SET  MULTI_USER 
GO
ALTER DATABASE [DemoDatabase] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DemoDatabase] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DemoDatabase] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DemoDatabase] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DemoDatabase] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DemoDatabase] SET QUERY_STORE = OFF
GO
USE [DemoDatabase]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 4.03.2021 00:13:34 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CalisanDepartmanlar]    Script Date: 4.03.2021 00:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CalisanDepartmanlar](
	[CalisanId] [int] NOT NULL,
	[DepartmanId] [int] NOT NULL,
 CONSTRAINT [PK_CalisanDepartmanlar] PRIMARY KEY CLUSTERED 
(
	[CalisanId] ASC,
	[DepartmanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Calisanlar]    Script Date: 4.03.2021 00:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Calisanlar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AdSoyad] [nvarchar](250) NOT NULL,
	[FirmaId] [int] NOT NULL,
 CONSTRAINT [PK_Calisanlar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departmanlar]    Script Date: 4.03.2021 00:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departmanlar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Departmanlar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Firmalar]    Script Date: 4.03.2021 00:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Firmalar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_Firmalar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 4.03.2021 00:13:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciAdi] [nvarchar](max) NULL,
	[PasswordHash] [varbinary](max) NULL,
	[PasswordSalt] [varbinary](max) NULL,
 CONSTRAINT [PK_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210303171509_InitialCreate', N'3.1.10')
GO
INSERT [dbo].[CalisanDepartmanlar] ([CalisanId], [DepartmanId]) VALUES (2, 1)
INSERT [dbo].[CalisanDepartmanlar] ([CalisanId], [DepartmanId]) VALUES (4, 1)
INSERT [dbo].[CalisanDepartmanlar] ([CalisanId], [DepartmanId]) VALUES (1, 2)
INSERT [dbo].[CalisanDepartmanlar] ([CalisanId], [DepartmanId]) VALUES (3, 2)
INSERT [dbo].[CalisanDepartmanlar] ([CalisanId], [DepartmanId]) VALUES (4, 2)
INSERT [dbo].[CalisanDepartmanlar] ([CalisanId], [DepartmanId]) VALUES (5, 2)
INSERT [dbo].[CalisanDepartmanlar] ([CalisanId], [DepartmanId]) VALUES (2, 3)
INSERT [dbo].[CalisanDepartmanlar] ([CalisanId], [DepartmanId]) VALUES (5, 3)
GO
SET IDENTITY_INSERT [dbo].[Calisanlar] ON 

INSERT [dbo].[Calisanlar] ([Id], [AdSoyad], [FirmaId]) VALUES (1, N'Calisan1', 1)
INSERT [dbo].[Calisanlar] ([Id], [AdSoyad], [FirmaId]) VALUES (2, N'Calisan2', 1)
INSERT [dbo].[Calisanlar] ([Id], [AdSoyad], [FirmaId]) VALUES (3, N'Calisan3', 2)
INSERT [dbo].[Calisanlar] ([Id], [AdSoyad], [FirmaId]) VALUES (4, N'Calisan4', 2)
INSERT [dbo].[Calisanlar] ([Id], [AdSoyad], [FirmaId]) VALUES (5, N'Calisan5', 1)
SET IDENTITY_INSERT [dbo].[Calisanlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Departmanlar] ON 

INSERT [dbo].[Departmanlar] ([Id], [Ad]) VALUES (1, N'Departman1')
INSERT [dbo].[Departmanlar] ([Id], [Ad]) VALUES (2, N'Departman2')
INSERT [dbo].[Departmanlar] ([Id], [Ad]) VALUES (3, N'Departman3')
SET IDENTITY_INSERT [dbo].[Departmanlar] OFF
GO
SET IDENTITY_INSERT [dbo].[Firmalar] ON 

INSERT [dbo].[Firmalar] ([Id], [Ad]) VALUES (1, N'Firma1')
INSERT [dbo].[Firmalar] ([Id], [Ad]) VALUES (2, N'Firma2')
SET IDENTITY_INSERT [dbo].[Firmalar] OFF
GO
SET IDENTITY_INSERT [dbo].[Kullanicilar] ON 

INSERT [dbo].[Kullanicilar] ([Id], [KullaniciAdi], [PasswordHash], [PasswordSalt]) VALUES (1, N'testkullanici', 0x6682E3D6F88ED0AA9B6433701F13891327F1B259214A2DECABDBE02BAAB52CFBAA2F05D9D00019C9B6F289BA5BA0295A1A8D0B2EA2BC88C2FC5F6D31F2C73C1A, 0x60F510ED18E6CFDE17F3C2AE71A79E2DC3A6B88CCEDBA0D59349B015E0BF8C34E4A6CB1A3B5B2773946ACBB9EB9E34B9A3314808B43435450B75418C95ED8519802E948637208323445287A3DB81A4E6C363EBC6FB2D9AF08C2AA6AB257DD4FCD6AFC20C7F1677F01C5225F66FD8FBE80F933AF3F47643A06FEF28A42C1388F5)
INSERT [dbo].[Kullanicilar] ([Id], [KullaniciAdi], [PasswordHash], [PasswordSalt]) VALUES (2, N'testkullanici2', 0x4B251ED57F2B3F14398D9B3F4D7402AFFA88D01116E376A6F201112E649ECC6BFDA7CBAEBB5AF531668B064406A9F8D8AC10FB64D2DBEDFFD0E65B4C321B10AE, 0xA873E434906A8A1137AFF6228750246C1B13013274D30FB701621A7108F6B4DA6A19BD00DF92782D92F43D6DB11FE460AD3070EEFB56CCEFD57F0E38EAC3F66DCD6498EA2937B9428906797B480436973123E62CAD6FFF185D43FC5EDEEEF16D4884D4BC42C7F6F9C6BC376A40F2D087CACAD29EA762BCCF386492A5DB67B489)
SET IDENTITY_INSERT [dbo].[Kullanicilar] OFF
GO
/****** Object:  Index [IX_CalisanDepartmanlar_DepartmanId]    Script Date: 4.03.2021 00:13:34 ******/
CREATE NONCLUSTERED INDEX [IX_CalisanDepartmanlar_DepartmanId] ON [dbo].[CalisanDepartmanlar]
(
	[DepartmanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Calisanlar_FirmaId]    Script Date: 4.03.2021 00:13:34 ******/
CREATE NONCLUSTERED INDEX [IX_Calisanlar_FirmaId] ON [dbo].[Calisanlar]
(
	[FirmaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CalisanDepartmanlar]  WITH CHECK ADD  CONSTRAINT [FK_CalisanDepartmanlar_Calisanlar_CalisanId] FOREIGN KEY([CalisanId])
REFERENCES [dbo].[Calisanlar] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CalisanDepartmanlar] CHECK CONSTRAINT [FK_CalisanDepartmanlar_Calisanlar_CalisanId]
GO
ALTER TABLE [dbo].[CalisanDepartmanlar]  WITH CHECK ADD  CONSTRAINT [FK_CalisanDepartmanlar_Departmanlar_DepartmanId] FOREIGN KEY([DepartmanId])
REFERENCES [dbo].[Departmanlar] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CalisanDepartmanlar] CHECK CONSTRAINT [FK_CalisanDepartmanlar_Departmanlar_DepartmanId]
GO
ALTER TABLE [dbo].[Calisanlar]  WITH CHECK ADD  CONSTRAINT [FK_Calisanlar_Firmalar_FirmaId] FOREIGN KEY([FirmaId])
REFERENCES [dbo].[Firmalar] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Calisanlar] CHECK CONSTRAINT [FK_Calisanlar_Firmalar_FirmaId]
GO
USE [master]
GO
ALTER DATABASE [DemoDatabase] SET  READ_WRITE 
GO
