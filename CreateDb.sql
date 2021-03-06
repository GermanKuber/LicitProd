USE [master]
GO
/****** Object:  Database [LicitProd]    Script Date: 7/30/2019 11:27:26 PM ******/
CREATE DATABASE [LicitProd] ON  PRIMARY 
( NAME = N'LicitProd', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\LicitProd.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LicitProd_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\LicitProd_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [LicitProd] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LicitProd].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LicitProd] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [LicitProd] SET ANSI_NULLS ON 
GO
ALTER DATABASE [LicitProd] SET ANSI_PADDING ON 
GO
ALTER DATABASE [LicitProd] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [LicitProd] SET ARITHABORT ON 
GO
ALTER DATABASE [LicitProd] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LicitProd] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LicitProd] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LicitProd] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LicitProd] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [LicitProd] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [LicitProd] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LicitProd] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [LicitProd] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LicitProd] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LicitProd] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LicitProd] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LicitProd] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LicitProd] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LicitProd] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LicitProd] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LicitProd] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LicitProd] SET RECOVERY FULL 
GO
ALTER DATABASE [LicitProd] SET  MULTI_USER 
GO
ALTER DATABASE [LicitProd] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LicitProd] SET DB_CHAINING OFF 
GO
EXEC sys.sp_db_vardecimal_storage_format N'LicitProd', N'ON'
GO
USE [LicitProd]
GO
/****** Object:  User [idargentina]    Script Date: 7/30/2019 11:27:26 PM ******/
CREATE USER [idargentina] FOR LOGIN [idargentina] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 7/30/2019 11:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Logs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Type] [nvarchar](50) NULL,
	[Usuario_Id] [int] NULL,
	[Fecha] [date] NULL,
 CONSTRAINT [PK_Logs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Permiso]    Script Date: 7/30/2019 11:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permiso](
	[Id] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Descripcion] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rol]    Script Date: 7/30/2019 11:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[Id] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Descripcion] [nvarchar](100) NULL,
	[Habilitado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Rol_Permiso]    Script Date: 7/30/2019 11:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol_Permiso](
	[Id] [int] NOT NULL,
	[RolId] [int] NULL,
	[PermisoId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_Evento]    Script Date: 7/30/2019 11:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Evento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Descripción] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tipo_Evento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuario_Rol]    Script Date: 7/30/2019 11:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Rol](
	[Id] [int] NOT NULL,
	[UsuarioId] [int] NULL,
	[RolId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 7/30/2019 11:27:26 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[LastLogin] [date] NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK__Usuario__3214EC070AD2A005] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Logs] ON 

INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (2, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-07-27' AS Date))
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (3, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-07-28' AS Date))
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (4, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-07-28' AS Date))
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (5, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-07-28' AS Date))
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (6, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-07-28' AS Date))
SET IDENTITY_INSERT [dbo].[Logs] OFF
SET IDENTITY_INSERT [dbo].[Usuarios] ON 

INSERT [dbo].[Usuarios] ([Id], [Email], [UserName], [LastLogin], [Password]) VALUES (2, N'german.kuber@outlook.com', NULL, CAST(N'2019-07-28' AS Date), N'FCEA920F7412B5DA7BE0CF42B8C93759')
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_Logs_Usuario] FOREIGN KEY([Usuario_Id])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_Logs_Usuario]
GO
ALTER TABLE [dbo].[Rol_Permiso]  WITH CHECK ADD  CONSTRAINT [FK_Rol_Permiso_Permiso] FOREIGN KEY([PermisoId])
REFERENCES [dbo].[Permiso] ([Id])
GO
ALTER TABLE [dbo].[Rol_Permiso] CHECK CONSTRAINT [FK_Rol_Permiso_Permiso]
GO
ALTER TABLE [dbo].[Rol_Permiso]  WITH CHECK ADD  CONSTRAINT [FK_Rol_Permiso_Rol] FOREIGN KEY([RolId])
REFERENCES [dbo].[Rol] ([Id])
GO
ALTER TABLE [dbo].[Rol_Permiso] CHECK CONSTRAINT [FK_Rol_Permiso_Rol]
GO
ALTER TABLE [dbo].[Usuario_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol_Rol] FOREIGN KEY([RolId])
REFERENCES [dbo].[Rol] ([Id])
GO
ALTER TABLE [dbo].[Usuario_Rol] CHECK CONSTRAINT [FK_Usuario_Rol_Rol]
GO
ALTER TABLE [dbo].[Usuario_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([Id])
GO
ALTER TABLE [dbo].[Usuario_Rol] CHECK CONSTRAINT [FK_Usuario_Rol_Usuario]
GO
USE [master]
GO
ALTER DATABASE [LicitProd] SET  READ_WRITE 
GO
