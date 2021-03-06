USE [master]
GO
/****** Object:  Database [LicitProd]    Script Date: 26/11/2019 16:45:32 ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'LicitProd')
BEGIN
CREATE DATABASE [LicitProd]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LicitProd', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\LicitProd.mdf' , SIZE = 29696KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'LicitProd_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\LicitProd_log.ldf' , SIZE = 219264KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
END
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
ALTER DATABASE [LicitProd] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LicitProd] SET  MULTI_USER 
GO
ALTER DATABASE [LicitProd] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LicitProd] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LicitProd] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LicitProd] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [LicitProd] SET DELAYED_DURABILITY = DISABLED 
GO
USE [LicitProd]
GO
/****** Object:  Table [dbo].[Compradores]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Compradores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Compradores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Apellido] [nvarchar](50) NULL,
	[Usuario_Id] [int] NULL,
 CONSTRAINT [PK_Compradores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Concurso_Proveedor]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Concurso_Proveedor]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Concurso_Proveedor](
	[ProveedorId] [int] NULL,
	[ConcursoId] [int] NULL,
	[Status] [int] NULL,
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AceptoTerminosYCondiciones] [bit] NOT NULL,
	[Ganador] [bit] NOT NULL,
 CONSTRAINT [PK_Concurso_Proveedor] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Concursos]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Concursos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Concursos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Status] [int] NULL,
	[Presupuesto] [decimal](18, 0) NULL,
	[Nombre] [nvarchar](50) NULL,
	[FechaInicio] [datetime] NULL,
	[FechaApertura] [datetime] NULL,
	[AdjudicacionDirecta] [bit] NULL,
	[Descripcion] [nvarchar](max) NULL,
	[Hash] [nvarchar](max) NULL,
	[Borrador] [bit] NULL,
	[TerminosYCondiciones_Id] [int] NULL,
	[Comprador_Id] [int] NULL,
 CONSTRAINT [PK__Concurso__3214EC071CA782F1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Configuraciones]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Configuraciones]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Configuraciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_Id] [int] NULL,
	[Idioma_Id] [int] NULL,
	[Theme] [nvarchar](50) NULL,
 CONSTRAINT [PK_Configuraciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[HitoConcurso]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HitoConcurso]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[HitoConcurso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ConcursoId] [int] NULL,
	[Hito] [nvarchar](max) NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_HitoConcurso] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Idiomas]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Idiomas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Idiomas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Idioma] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Logs]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Logs]') AND type in (N'U'))
BEGIN
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
END
GO
/****** Object:  Table [dbo].[Ofertas]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Ofertas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Ofertas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Monto] [decimal](18, 0) NULL,
	[Detalle] [nvarchar](max) NULL,
	[Concurso_Proveedor_Id] [int] NULL,
 CONSTRAINT [PK_Oferta] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Permiso]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Permiso]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Permiso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Descripcion] [nvarchar](50) NULL,
	[Type] [nvarchar](50) NULL,
	[ByDefault] [bit] NOT NULL,
 CONSTRAINT [PK__Permiso__3214EC072C068C99] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Preguntas]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Preguntas]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Preguntas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Pregunta] [nvarchar](max) NULL,
	[Respuesta] [nvarchar](max) NULL,
	[Concurso_Proveedor_Id] [int] NULL,
 CONSTRAINT [PK_Preguntas] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Proveedores]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Proveedores](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RazonSocial] [nvarchar](50) NULL,
	[Celular] [nvarchar](50) NULL,
	[Direccion] [nvarchar](50) NULL,
	[Telefono] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[Usuario_Id] [int] NULL,
	[Activo] [bit] NOT NULL,
	[AceptoReglasGenerales] [bit] NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ReglasGenerales]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ReglasGenerales]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ReglasGenerales](
	[Id] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Rol_Permiso]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Rol_Permiso]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Rol_Permiso](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RolId] [int] NULL,
	[PermisoId] [int] NULL,
 CONSTRAINT [PK__Rol_Perm__3214EC072FB9199F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Settings]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Settings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Usuario_Id] [int] NULL,
	[Idioma_Id] [int] NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Terminos]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Terminos]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Terminos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[KeyValue] [nvarchar](50) NULL,
 CONSTRAINT [PK_Termino] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[TerminosYCondiciones]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TerminosYCondiciones]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TerminosYCondiciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[Descripcion] [nvarchar](max) NULL,
 CONSTRAINT [PK_TerminosYCondiciones] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Tipo_Evento]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tipo_Evento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Tipo_Evento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Descripción] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tipo_Evento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Traducciones]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Traducciones]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Traducciones](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Termino] [int] NOT NULL,
	[Id_Idioma] [int] NOT NULL,
	[Traduccion] [nvarchar](max) NULL,
 CONSTRAINT [PK_Traduccion] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Usuario_Rol]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario_Rol]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Usuario_Rol](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UsuarioId] [int] NULL,
	[RolId] [int] NULL,
 CONSTRAINT [PK__Usuario___3214EC07499B0EEC] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuarios]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Usuarios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[UserName] [nvarchar](50) NULL,
	[LastLogin] [date] NULL,
	[Password] [nvarchar](50) NULL,
	[Rol_Id] [int] NULL,
 CONSTRAINT [PK__Usuario__3214EC070AD2A005] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Verificables]    Script Date: 26/11/2019 16:45:32 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Verificables]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Verificables](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Digito] [nvarchar](50) NULL,
	[Tabla] [nvarchar](50) NULL,
 CONSTRAINT [PK_Verificable] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET IDENTITY_INSERT [dbo].[Compradores] ON 
GO
INSERT [dbo].[Compradores] ([Id], [Nombre], [Apellido], [Usuario_Id]) VALUES (2002, N'Comprador 1', N'Comprador 1', 3008)
GO
INSERT [dbo].[Compradores] ([Id], [Nombre], [Apellido], [Usuario_Id]) VALUES (2003, N'Comprador 2', N'comprador 2', 3009)
GO
INSERT [dbo].[Compradores] ([Id], [Nombre], [Apellido], [Usuario_Id]) VALUES (2004, N'comprador 3', N'comprador 3', 3010)
GO
SET IDENTITY_INSERT [dbo].[Compradores] OFF
GO
SET IDENTITY_INSERT [dbo].[Concurso_Proveedor] ON 
GO
INSERT [dbo].[Concurso_Proveedor] ([ProveedorId], [ConcursoId], [Status], [Id], [AceptoTerminosYCondiciones], [Ganador]) VALUES (18, 2045, 1, 2013, 1, 0)
GO
INSERT [dbo].[Concurso_Proveedor] ([ProveedorId], [ConcursoId], [Status], [Id], [AceptoTerminosYCondiciones], [Ganador]) VALUES (19, 2045, 1, 2014, 1, 0)
GO
INSERT [dbo].[Concurso_Proveedor] ([ProveedorId], [ConcursoId], [Status], [Id], [AceptoTerminosYCondiciones], [Ganador]) VALUES (20, 2045, 1, 2015, 1, 0)
GO
INSERT [dbo].[Concurso_Proveedor] ([ProveedorId], [ConcursoId], [Status], [Id], [AceptoTerminosYCondiciones], [Ganador]) VALUES (22, 2045, 1, 2016, 1, 0)
GO
INSERT [dbo].[Concurso_Proveedor] ([ProveedorId], [ConcursoId], [Status], [Id], [AceptoTerminosYCondiciones], [Ganador]) VALUES (18, 2046, 1, 2017, 1, 1)
GO
INSERT [dbo].[Concurso_Proveedor] ([ProveedorId], [ConcursoId], [Status], [Id], [AceptoTerminosYCondiciones], [Ganador]) VALUES (19, 2046, 1, 2018, 1, 0)
GO
INSERT [dbo].[Concurso_Proveedor] ([ProveedorId], [ConcursoId], [Status], [Id], [AceptoTerminosYCondiciones], [Ganador]) VALUES (18, 2047, 1, 2019, 1, 1)
GO
INSERT [dbo].[Concurso_Proveedor] ([ProveedorId], [ConcursoId], [Status], [Id], [AceptoTerminosYCondiciones], [Ganador]) VALUES (19, 2047, NULL, 2020, 0, 0)
GO
INSERT [dbo].[Concurso_Proveedor] ([ProveedorId], [ConcursoId], [Status], [Id], [AceptoTerminosYCondiciones], [Ganador]) VALUES (20, 2047, NULL, 2021, 0, 0)
GO
INSERT [dbo].[Concurso_Proveedor] ([ProveedorId], [ConcursoId], [Status], [Id], [AceptoTerminosYCondiciones], [Ganador]) VALUES (21, 2047, NULL, 2022, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Concurso_Proveedor] OFF
GO
SET IDENTITY_INSERT [dbo].[Concursos] ON 
GO
INSERT [dbo].[Concursos] ([Id], [Status], [Presupuesto], [Nombre], [FechaInicio], [FechaApertura], [AdjudicacionDirecta], [Descripcion], [Hash], [Borrador], [TerminosYCondiciones_Id], [Comprador_Id]) VALUES (2045, 2, CAST(2222 AS Decimal(18, 0)), N'Concurso 2', CAST(N'2019-11-18T00:00:00.000' AS DateTime), CAST(N'2019-11-22T00:00:00.000' AS DateTime), 0, N'COncurso 3,4,5', N'34B9E33B584CEEAC771F42EF66581778', 0, 2, 2002)
GO
INSERT [dbo].[Concursos] ([Id], [Status], [Presupuesto], [Nombre], [FechaInicio], [FechaApertura], [AdjudicacionDirecta], [Descripcion], [Hash], [Borrador], [TerminosYCondiciones_Id], [Comprador_Id]) VALUES (2046, 4, CAST(11 AS Decimal(18, 0)), N'Concurso para abrir', CAST(N'2019-11-17T00:00:00.000' AS DateTime), CAST(N'2019-11-19T12:25:17.000' AS DateTime), 0, N'apertura', N'D291BFE6A3F3624469F33615F49C76B2', 0, 1, 2002)
GO
INSERT [dbo].[Concursos] ([Id], [Status], [Presupuesto], [Nombre], [FechaInicio], [FechaApertura], [AdjudicacionDirecta], [Descripcion], [Hash], [Borrador], [TerminosYCondiciones_Id], [Comprador_Id]) VALUES (2047, 4, CAST(23312 AS Decimal(18, 0)), N'Nuevo concurso sin nada', CAST(N'2019-11-19T00:00:00.000' AS DateTime), CAST(N'2019-11-19T13:17:42.000' AS DateTime), 1, N'asdasd', N'D819016DB287C01BB77BDD8C5236720E', 0, 2, 2002)
GO
SET IDENTITY_INSERT [dbo].[Concursos] OFF
GO
SET IDENTITY_INSERT [dbo].[Configuraciones] ON 
GO
INSERT [dbo].[Configuraciones] ([Id], [Usuario_Id], [Idioma_Id], [Theme]) VALUES (1, 2, 2, N'Use system setting')
GO
SET IDENTITY_INSERT [dbo].[Configuraciones] OFF
GO
SET IDENTITY_INSERT [dbo].[HitoConcurso] ON 
GO
INSERT [dbo].[HitoConcurso] ([Id], [ConcursoId], [Hito], [Fecha]) VALUES (2009, 2045, N'{"Status":1,"Presupuesto":2222.0,"Nombre":"Concurso 2","FechaInicio":"2019-11-18T00:00:00","FechaApertura":"2019-11-22T00:00:00","AdjudicacionDirecta":false,"Borrador":false,"Descripcion":"COncurso 3,4,5","TerminosYCondicionesId":2,"CompradorId":2002,"Comprador":null,"ConcursoProveedores":[],"Hash":"E15A0540EBC7AFAA87661BF050B89875","IsValid":false,"Id":2045}', CAST(N'2019-11-19T10:40:42.000' AS DateTime))
GO
INSERT [dbo].[HitoConcurso] ([Id], [ConcursoId], [Hito], [Fecha]) VALUES (2010, 2045, N'{"Status":1,"Presupuesto":2222.0,"Nombre":"Concurso 2","FechaInicio":"2019-11-18T00:00:00","FechaApertura":"2019-11-22T00:00:00","AdjudicacionDirecta":false,"Borrador":false,"Descripcion":"COncurso 3,4,5","TerminosYCondicionesId":2,"CompradorId":2002,"Comprador":{"Nombre":"Comprador 1","Apellido":"Comprador 1","Usuario":null,"UsuarioId":3008,"Id":2002},"ConcursoProveedores":[{"ProveedorId":18,"ConcursoId":2045,"Status":1,"Proveedor":{"Celular":"111111","Direccion":"proveedor3","RazonSocial":"proveedor3","Status":0,"Telefono":"222222","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3011,"Id":18},"AceptoTerminosYCondiciones":true,"Oferta":{"Monto":111111.0,"Detalle":"Primera oferta","ConcursoProveedorId":2013,"Id":1003},"Pregunta":{"Pregunta":"Pregunta concurso 2 proveedor 3","Respuesta":"Respuesta 1","ConcursoProveedorId":2013,"Id":3},"Id":2013},{"ProveedorId":19,"ConcursoId":2045,"Status":1,"Proveedor":{"Celular":"12222222","Direccion":"proveedor3","RazonSocial":"proveedor4","Status":0,"Telefono":"121312312","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3012,"Id":19},"AceptoTerminosYCondiciones":true,"Oferta":null,"Pregunta":{"Pregunta":"Pregunt concurso 2 proveedor 4","Respuesta":"Respuesta 2 ","ConcursoProveedorId":2014,"Id":4},"Id":2014},{"ProveedorId":20,"ConcursoId":2045,"Status":1,"Proveedor":{"Celular":"123132132","Direccion":"proveedor5","RazonSocial":"proveedor5","Status":0,"Telefono":"231321321","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3013,"Id":20},"AceptoTerminosYCondiciones":true,"Oferta":null,"Pregunta":null,"Id":2015},{"ProveedorId":0,"ConcursoId":0,"Status":0,"Proveedor":{"Celular":"12312312","Direccion":"proveedor7","RazonSocial":"proveedor7","Status":0,"Telefono":"12312321312","Activo":false,"AceptoReglasGenerales":false,"Usuario":{"Email":null,"HashPassword":null,"Rol":null,"RolId":0,"Id":0},"UsuarioId":0,"Id":22},"AceptoTerminosYCondiciones":false,"Oferta":null,"Pregunta":null,"Id":0}],"Hash":"E15A0540EBC7AFAA87661BF050B89875","IsValid":true,"Id":2045}', CAST(N'2019-11-19T12:43:03.000' AS DateTime))
GO
INSERT [dbo].[HitoConcurso] ([Id], [ConcursoId], [Hito], [Fecha]) VALUES (2011, 2046, N'{"Status":1,"Presupuesto":11.0,"Nombre":"Concurso para abrir","FechaInicio":"2019-11-17T00:00:00","FechaApertura":"2019-11-20T00:00:00","AdjudicacionDirecta":false,"Borrador":false,"Descripcion":"apertura","TerminosYCondicionesId":1,"CompradorId":2002,"Comprador":null,"ConcursoProveedores":[],"Hash":"4AAC49203C45510D9CC78B228B0A227F","IsValid":false,"Id":2046}', CAST(N'2019-11-19T12:59:40.000' AS DateTime))
GO
INSERT [dbo].[HitoConcurso] ([Id], [ConcursoId], [Hito], [Fecha]) VALUES (2012, 2046, N'{"Status":4,"Presupuesto":11.0,"Nombre":"Concurso para abrir","FechaInicio":"2019-11-17T00:00:00","FechaApertura":"2019-11-19T12:25:17","AdjudicacionDirecta":false,"Borrador":false,"Descripcion":"apertura","TerminosYCondicionesId":1,"CompradorId":2002,"Comprador":{"Nombre":"Comprador 1","Apellido":"Comprador 1","Usuario":null,"UsuarioId":3008,"Id":2002},"ConcursoProveedores":[{"ProveedorId":18,"ConcursoId":2046,"Status":1,"Ganador":true,"Proveedor":{"Celular":"111111","Direccion":"proveedor3","RazonSocial":"proveedor3","Status":0,"Telefono":"222222","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3011,"Id":18},"AceptoTerminosYCondiciones":true,"Oferta":{"Monto":2341.0,"Detalle":"Es mi oferta","ConcursoProveedorId":2017,"Id":1005},"Pregunta":null,"Id":2017},{"ProveedorId":19,"ConcursoId":2046,"Status":1,"Ganador":false,"Proveedor":{"Celular":"12222222","Direccion":"proveedor3","RazonSocial":"proveedor4","Status":0,"Telefono":"121312312","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3012,"Id":19},"AceptoTerminosYCondiciones":true,"Oferta":{"Monto":6574.0,"Detalle":"Nueva oferta meyort","ConcursoProveedorId":2018,"Id":1006},"Pregunta":null,"Id":2018}],"Hash":"D291BFE6A3F3624469F33615F49C76B2","IsValid":false,"Id":2046}', CAST(N'2019-11-19T14:26:20.000' AS DateTime))
GO
INSERT [dbo].[HitoConcurso] ([Id], [ConcursoId], [Hito], [Fecha]) VALUES (2013, 2046, N'{"Status":4,"Presupuesto":11.0,"Nombre":"Concurso para abrir","FechaInicio":"2019-11-17T00:00:00","FechaApertura":"2019-11-19T12:25:17","AdjudicacionDirecta":false,"Borrador":false,"Descripcion":"apertura","TerminosYCondicionesId":1,"CompradorId":2002,"Comprador":{"Nombre":"Comprador 1","Apellido":"Comprador 1","Usuario":null,"UsuarioId":3008,"Id":2002},"ConcursoProveedores":[{"ProveedorId":18,"ConcursoId":2046,"Status":1,"Ganador":true,"Proveedor":{"Celular":"111111","Direccion":"proveedor3","RazonSocial":"proveedor3","Status":0,"Telefono":"222222","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3011,"Id":18},"AceptoTerminosYCondiciones":true,"Oferta":{"Monto":2341.0,"Detalle":"Es mi oferta","ConcursoProveedorId":2017,"Id":1005},"Pregunta":null,"Id":2017},{"ProveedorId":19,"ConcursoId":2046,"Status":1,"Ganador":false,"Proveedor":{"Celular":"12222222","Direccion":"proveedor3","RazonSocial":"proveedor4","Status":0,"Telefono":"121312312","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3012,"Id":19},"AceptoTerminosYCondiciones":true,"Oferta":{"Monto":6574.0,"Detalle":"Nueva oferta meyort","ConcursoProveedorId":2018,"Id":1006},"Pregunta":null,"Id":2018}],"Hash":"D291BFE6A3F3624469F33615F49C76B2","IsValid":false,"Id":2046}', CAST(N'2019-11-19T14:31:48.000' AS DateTime))
GO
INSERT [dbo].[HitoConcurso] ([Id], [ConcursoId], [Hito], [Fecha]) VALUES (2014, 2046, N'{"Status":4,"Presupuesto":11.0,"Nombre":"Concurso para abrir","FechaInicio":"2019-11-17T00:00:00","FechaApertura":"2019-11-19T12:25:17","AdjudicacionDirecta":false,"Borrador":false,"Descripcion":"apertura","TerminosYCondicionesId":1,"CompradorId":2002,"Comprador":{"Nombre":"Comprador 1","Apellido":"Comprador 1","Usuario":null,"UsuarioId":3008,"Id":2002},"ConcursoProveedores":[{"ProveedorId":18,"ConcursoId":2046,"Status":1,"Ganador":true,"Proveedor":{"Celular":"111111","Direccion":"proveedor3","RazonSocial":"proveedor3","Status":0,"Telefono":"222222","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3011,"Id":18},"AceptoTerminosYCondiciones":true,"Oferta":{"Monto":2341.0,"Detalle":"Es mi oferta","ConcursoProveedorId":2017,"Id":1005},"Pregunta":null,"Id":2017},{"ProveedorId":19,"ConcursoId":2046,"Status":1,"Ganador":false,"Proveedor":{"Celular":"12222222","Direccion":"proveedor3","RazonSocial":"proveedor4","Status":0,"Telefono":"121312312","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3012,"Id":19},"AceptoTerminosYCondiciones":true,"Oferta":{"Monto":6574.0,"Detalle":"Nueva oferta meyort","ConcursoProveedorId":2018,"Id":1006},"Pregunta":null,"Id":2018}],"Hash":"D291BFE6A3F3624469F33615F49C76B2","IsValid":false,"Id":2046}', CAST(N'2019-11-19T14:32:13.000' AS DateTime))
GO
INSERT [dbo].[HitoConcurso] ([Id], [ConcursoId], [Hito], [Fecha]) VALUES (2015, 2046, N'{"Status":4,"Presupuesto":11.0,"Nombre":"Concurso para abrir","FechaInicio":"2019-11-17T00:00:00","FechaApertura":"2019-11-19T12:25:17","AdjudicacionDirecta":false,"Borrador":false,"Descripcion":"apertura","TerminosYCondicionesId":1,"CompradorId":2002,"Comprador":{"Nombre":"Comprador 1","Apellido":"Comprador 1","Usuario":null,"UsuarioId":3008,"Id":2002},"ConcursoProveedores":[{"ProveedorId":18,"ConcursoId":2046,"Status":1,"Ganador":true,"Proveedor":{"Celular":"111111","Direccion":"proveedor3","RazonSocial":"proveedor3","Status":0,"Telefono":"222222","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3011,"Id":18},"AceptoTerminosYCondiciones":true,"Oferta":{"Monto":2341.0,"Detalle":"Es mi oferta","ConcursoProveedorId":2017,"Id":1005},"Pregunta":null,"Id":2017},{"ProveedorId":19,"ConcursoId":2046,"Status":1,"Ganador":false,"Proveedor":{"Celular":"12222222","Direccion":"proveedor3","RazonSocial":"proveedor4","Status":0,"Telefono":"121312312","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3012,"Id":19},"AceptoTerminosYCondiciones":true,"Oferta":{"Monto":6574.0,"Detalle":"Nueva oferta meyort","ConcursoProveedorId":2018,"Id":1006},"Pregunta":null,"Id":2018}],"Hash":"D291BFE6A3F3624469F33615F49C76B2","IsValid":false,"Id":2046}', CAST(N'2019-11-19T14:33:43.000' AS DateTime))
GO
INSERT [dbo].[HitoConcurso] ([Id], [ConcursoId], [Hito], [Fecha]) VALUES (2016, 2046, N'{"Status":4,"Presupuesto":11.0,"Nombre":"Concurso para abrir","FechaInicio":"2019-11-17T00:00:00","FechaApertura":"2019-11-19T12:25:17","AdjudicacionDirecta":false,"Borrador":false,"Descripcion":"apertura","TerminosYCondicionesId":1,"CompradorId":2002,"Comprador":{"Nombre":"Comprador 1","Apellido":"Comprador 1","Usuario":null,"UsuarioId":3008,"Id":2002},"ConcursoProveedores":[{"ProveedorId":18,"ConcursoId":2046,"Status":1,"Ganador":true,"Proveedor":{"Celular":"111111","Direccion":"proveedor3","RazonSocial":"proveedor3","Status":0,"Telefono":"222222","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3011,"Id":18},"AceptoTerminosYCondiciones":true,"Oferta":{"Monto":2341.0,"Detalle":"Es mi oferta","ConcursoProveedorId":2017,"Id":1005},"Pregunta":null,"Id":2017},{"ProveedorId":19,"ConcursoId":2046,"Status":1,"Ganador":false,"Proveedor":{"Celular":"12222222","Direccion":"proveedor3","RazonSocial":"proveedor4","Status":0,"Telefono":"121312312","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3012,"Id":19},"AceptoTerminosYCondiciones":true,"Oferta":{"Monto":6574.0,"Detalle":"Nueva oferta meyort","ConcursoProveedorId":2018,"Id":1006},"Pregunta":null,"Id":2018}],"Hash":"D291BFE6A3F3624469F33615F49C76B2","IsValid":true,"Id":2046}', CAST(N'2019-11-19T14:34:19.000' AS DateTime))
GO
INSERT [dbo].[HitoConcurso] ([Id], [ConcursoId], [Hito], [Fecha]) VALUES (2017, 2046, N'{"Status":4,"Presupuesto":11.0,"Nombre":"Concurso para abrir","FechaInicio":"2019-11-17T00:00:00","FechaApertura":"2019-11-19T12:25:17","AdjudicacionDirecta":false,"Borrador":false,"Descripcion":"apertura","TerminosYCondicionesId":1,"CompradorId":2002,"Comprador":{"Nombre":"Comprador 1","Apellido":"Comprador 1","Usuario":null,"UsuarioId":3008,"Id":2002},"ConcursoProveedores":[{"ProveedorId":18,"ConcursoId":2046,"Status":1,"Ganador":true,"Proveedor":{"Celular":"111111","Direccion":"proveedor3","RazonSocial":"proveedor3","Status":0,"Telefono":"222222","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3011,"Id":18},"AceptoTerminosYCondiciones":true,"Oferta":{"Monto":2341.0,"Detalle":"Es mi oferta","ConcursoProveedorId":2017,"Id":1005},"Pregunta":null,"Id":2017},{"ProveedorId":19,"ConcursoId":2046,"Status":1,"Ganador":false,"Proveedor":{"Celular":"12222222","Direccion":"proveedor3","RazonSocial":"proveedor4","Status":0,"Telefono":"121312312","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3012,"Id":19},"AceptoTerminosYCondiciones":true,"Oferta":{"Monto":6574.0,"Detalle":"Nueva oferta meyort","ConcursoProveedorId":2018,"Id":1006},"Pregunta":null,"Id":2018}],"Hash":"D291BFE6A3F3624469F33615F49C76B2","IsValid":false,"Id":2046}', CAST(N'2019-11-19T14:35:42.000' AS DateTime))
GO
INSERT [dbo].[HitoConcurso] ([Id], [ConcursoId], [Hito], [Fecha]) VALUES (2018, 2047, N'{"Status":1,"Presupuesto":23312.0,"Nombre":"Nuevo concurso sin nada","FechaInicio":"2019-11-19T00:00:00","FechaApertura":"2019-11-22T00:00:00","AdjudicacionDirecta":true,"Borrador":false,"Descripcion":"asdasd","TerminosYCondicionesId":2,"CompradorId":2002,"Comprador":null,"ConcursoProveedores":[],"Hash":"F78DCB18D484CBBF145A884FE035BA20","IsValid":false,"Id":2047}', CAST(N'2019-11-19T14:42:21.000' AS DateTime))
GO
INSERT [dbo].[HitoConcurso] ([Id], [ConcursoId], [Hito], [Fecha]) VALUES (2019, 2047, N'{"Status":4,"Presupuesto":23312.0,"Nombre":"Nuevo concurso sin nada","FechaInicio":"2019-11-19T00:00:00","FechaApertura":"2019-11-19T13:17:42.1964799-03:00","AdjudicacionDirecta":true,"Borrador":false,"Descripcion":"asdasd","TerminosYCondicionesId":2,"CompradorId":2002,"Comprador":{"Nombre":"Comprador 1","Apellido":"Comprador 1","Usuario":null,"UsuarioId":3008,"Id":2002},"ConcursoProveedores":[{"ProveedorId":18,"ConcursoId":2047,"Status":1,"Ganador":true,"Proveedor":{"Celular":"111111","Direccion":"proveedor3","RazonSocial":"proveedor3","Status":0,"Telefono":"222222","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3011,"Id":18},"AceptoTerminosYCondiciones":true,"Oferta":{"Monto":123123123.0,"Detalle":"Oferto sin respuesta","ConcursoProveedorId":2019,"Id":1007},"Pregunta":{"Pregunta":"Una sola pregunta","Respuesta":"","ConcursoProveedorId":2019,"Id":5},"Id":2019},{"ProveedorId":19,"ConcursoId":2047,"Status":0,"Ganador":false,"Proveedor":{"Celular":"12222222","Direccion":"proveedor3","RazonSocial":"proveedor4","Status":0,"Telefono":"121312312","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3012,"Id":19},"AceptoTerminosYCondiciones":false,"Oferta":null,"Pregunta":null,"Id":2020},{"ProveedorId":20,"ConcursoId":2047,"Status":0,"Ganador":false,"Proveedor":{"Celular":"123132132","Direccion":"proveedor5","RazonSocial":"proveedor5","Status":0,"Telefono":"231321321","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3013,"Id":20},"AceptoTerminosYCondiciones":false,"Oferta":null,"Pregunta":null,"Id":2021},{"ProveedorId":21,"ConcursoId":2047,"Status":0,"Ganador":false,"Proveedor":{"Celular":"123123123","Direccion":"proveedor6","RazonSocial":"proveedor6","Status":0,"Telefono":"321424234","Activo":false,"AceptoReglasGenerales":false,"Usuario":null,"UsuarioId":3014,"Id":21},"AceptoTerminosYCondiciones":false,"Oferta":null,"Pregunta":null,"Id":2022}],"Hash":"D819016DB287C01BB77BDD8C5236720E","IsValid":false,"Id":2047}', CAST(N'2019-11-19T14:56:56.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[HitoConcurso] OFF
GO
SET IDENTITY_INSERT [dbo].[Idiomas] ON 
GO
INSERT [dbo].[Idiomas] ([Id], [Nombre]) VALUES (1, N'Español')
GO
INSERT [dbo].[Idiomas] ([Id], [Nombre]) VALUES (2, N'Ingles')
GO
INSERT [dbo].[Idiomas] ([Id], [Nombre]) VALUES (11, N'Prueba')
GO
SET IDENTITY_INSERT [dbo].[Idiomas] OFF
GO
SET IDENTITY_INSERT [dbo].[Logs] ON 
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268882, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268883, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268884, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268885, N'Login', N'proveedor5', N'Informacion', 3013, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268886, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268887, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268888, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268889, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268890, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268891, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268892, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268893, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268894, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268895, N'Login', N'comprador3@comprador3.com', N'Informacion', 3010, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268896, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268897, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268898, N'Login', N'comprador3@comprador3.com', N'Informacion', 3010, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268899, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268900, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268901, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268902, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268903, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268904, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268905, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268906, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268907, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268908, N'Login', N'proveedor4@proveedor4.com', N'Informacion', 3012, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268909, N'Login', N'proveedor4@proveedor4.com', N'Informacion', 3012, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268910, N'Login', N'proveedor4@proveedor4.com', N'Informacion', 3012, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268911, N'Login', N'proveedor4@proveedor4.com', N'Informacion', 3012, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268912, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268913, N'Login', N'proveedor4@proveedor4.com', N'Informacion', 3012, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268914, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268915, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268916, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268917, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268918, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268919, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268920, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268921, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268922, N'Login', N'proveedor4@proveedor4.com', N'Informacion', 3012, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268923, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268924, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268925, N'Login', N'proveedor4@proveedor4.com', N'Informacion', 3012, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268926, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268927, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268928, N'Login', N'proveedor7', N'Informacion', 3015, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268929, N'Login', N'proveedor7', N'Informacion', 3015, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268930, N'Login', N'proveedor7', N'Informacion', 3015, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268931, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268932, N'Login', N'proveedor7', N'Informacion', 3015, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268933, N'Login', N'proveedor7', N'Informacion', 3015, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268934, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268935, N'Login', N'comprador3@comprador3.com', N'Informacion', 3010, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268936, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268937, N'Login', N'proveedor4@proveedor4.com', N'Informacion', 3012, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268938, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268939, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268940, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268941, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268942, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268943, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268944, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268945, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268946, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268947, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268948, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268949, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268950, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268951, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268952, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268953, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268954, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268955, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268956, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268957, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268958, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268959, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268960, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268961, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268962, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268963, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268964, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268965, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268966, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268967, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268968, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268969, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268970, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268971, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268972, N'Login', N'proveedor4@proveedor4.com', N'Informacion', 3012, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268973, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268974, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268975, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268976, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268977, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268978, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268979, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268980, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268981, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268982, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268983, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268984, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268985, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268986, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268987, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (268988, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-11-19' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (269857, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-11-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (269858, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-11-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (269859, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-11-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (269860, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-11-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (269861, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-11-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (269862, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-11-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (269863, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-11-22' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (270861, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-11-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (270862, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (270863, N'Login', N'proveedor3@proveedor3.com', N'Informacion', 3011, CAST(N'2019-11-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (270864, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-11-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (270865, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-11-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (270866, N'Login', N'german.kuber@outlook.com', N'Informacion', 2, CAST(N'2019-11-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (270867, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (270868, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-25' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (270869, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-26' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (270870, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-26' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (270871, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-26' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (270872, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-26' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (270873, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-26' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (270874, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-26' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (270875, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-26' AS Date))
GO
INSERT [dbo].[Logs] ([Id], [Nombre], [Descripcion], [Type], [Usuario_Id], [Fecha]) VALUES (270876, N'Login', N'comprador1@comprador1.com', N'Informacion', 3008, CAST(N'2019-11-26' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Logs] OFF
GO
SET IDENTITY_INSERT [dbo].[Ofertas] ON 
GO
INSERT [dbo].[Ofertas] ([Id], [Monto], [Detalle], [Concurso_Proveedor_Id]) VALUES (1003, CAST(111111 AS Decimal(18, 0)), N'Primera oferta', 2013)
GO
INSERT [dbo].[Ofertas] ([Id], [Monto], [Detalle], [Concurso_Proveedor_Id]) VALUES (1004, CAST(2222 AS Decimal(18, 0)), N'Ultima oferta proveedor 7', 2016)
GO
INSERT [dbo].[Ofertas] ([Id], [Monto], [Detalle], [Concurso_Proveedor_Id]) VALUES (1005, CAST(2341 AS Decimal(18, 0)), N'Es mi oferta', 2017)
GO
INSERT [dbo].[Ofertas] ([Id], [Monto], [Detalle], [Concurso_Proveedor_Id]) VALUES (1006, CAST(6574 AS Decimal(18, 0)), N'Nueva oferta meyort', 2018)
GO
INSERT [dbo].[Ofertas] ([Id], [Monto], [Detalle], [Concurso_Proveedor_Id]) VALUES (1007, CAST(123123123 AS Decimal(18, 0)), N'Oferto sin respuesta', 2019)
GO
SET IDENTITY_INSERT [dbo].[Ofertas] OFF
GO
SET IDENTITY_INSERT [dbo].[Permiso] ON 
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1, N'Administrador', NULL, N'Rol', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (2, N'Duenio', N'Dueño', N'Rol', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (3, N'Comprador', NULL, N'Rol', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (4, N'Proveedor', NULL, N'Rol', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1023, N'LISTAR_LOGS', N'Listar Logs', N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1024, N'CREAR_CONCURSO', N'Crear COncurso', N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1025, N'LISTAR_CONCURSOS', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1026, N'REGISTRAR_PROVEEDOR', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1027, N'LISTAR_PROVEEDOR', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1028, N'ADMINISTRAR_PERMISOS', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1029, N'BACKUPS', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1030, N'EDITAR_IDIOMAS', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1031, N'CREAR_IDIOMA', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1032, N'ADMINISTRAR_USUARIOS', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1033, N'OFERTAR_CONCURSO', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1060, N'ADMINISTRAR_COMPRADORES', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1061, N'CREAR_COMPRADORES', NULL, N'Permiso', 1)
GO
INSERT [dbo].[Permiso] ([Id], [Nombre], [Descripcion], [Type], [ByDefault]) VALUES (1063, N'CREAR_TERMINOSYCONDICIONES', NULL, N'Permiso', 1)
GO
SET IDENTITY_INSERT [dbo].[Permiso] OFF
GO
SET IDENTITY_INSERT [dbo].[Preguntas] ON 
GO
INSERT [dbo].[Preguntas] ([Id], [Pregunta], [Respuesta], [Concurso_Proveedor_Id]) VALUES (3, N'Pregunta concurso 2 proveedor 3', N'Respuesta 1', 2013)
GO
INSERT [dbo].[Preguntas] ([Id], [Pregunta], [Respuesta], [Concurso_Proveedor_Id]) VALUES (4, N'Pregunt concurso 2 proveedor 4', N'Respuesta 2 ', 2014)
GO
INSERT [dbo].[Preguntas] ([Id], [Pregunta], [Respuesta], [Concurso_Proveedor_Id]) VALUES (5, N'Una sola pregunta', N'', 2019)
GO
SET IDENTITY_INSERT [dbo].[Preguntas] OFF
GO
SET IDENTITY_INSERT [dbo].[Proveedores] ON 
GO
INSERT [dbo].[Proveedores] ([Id], [RazonSocial], [Celular], [Direccion], [Telefono], [Status], [Usuario_Id], [Activo], [AceptoReglasGenerales]) VALUES (18, N'proveedor3', N'111111', N'proveedor3', N'222222', N'0', 3011, 0, 0)
GO
INSERT [dbo].[Proveedores] ([Id], [RazonSocial], [Celular], [Direccion], [Telefono], [Status], [Usuario_Id], [Activo], [AceptoReglasGenerales]) VALUES (19, N'proveedor4', N'12222222', N'proveedor3', N'121312312', N'0', 3012, 0, 0)
GO
INSERT [dbo].[Proveedores] ([Id], [RazonSocial], [Celular], [Direccion], [Telefono], [Status], [Usuario_Id], [Activo], [AceptoReglasGenerales]) VALUES (20, N'proveedor5', N'123132132', N'proveedor5', N'231321321', N'0', 3013, 0, 0)
GO
INSERT [dbo].[Proveedores] ([Id], [RazonSocial], [Celular], [Direccion], [Telefono], [Status], [Usuario_Id], [Activo], [AceptoReglasGenerales]) VALUES (21, N'proveedor6', N'123123123', N'proveedor6', N'321424234', N'0', 3014, 0, 0)
GO
INSERT [dbo].[Proveedores] ([Id], [RazonSocial], [Celular], [Direccion], [Telefono], [Status], [Usuario_Id], [Activo], [AceptoReglasGenerales]) VALUES (22, N'proveedor7', N'12312312', N'proveedor7', N'12312321312', N'0', 3015, 0, 0)
GO
SET IDENTITY_INSERT [dbo].[Proveedores] OFF
GO
SET IDENTITY_INSERT [dbo].[Rol_Permiso] ON 
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2196, NULL, 1)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2197, NULL, 2)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2198, NULL, 3)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2199, NULL, 4)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2200, 1, 1023)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2201, 3, 1024)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2202, 3, 1025)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2203, 3, 1026)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2204, 1, 1026)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2205, 2, 1026)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2206, 1, 1027)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2207, 3, 1027)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2208, 1, 1028)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2209, 1, 1029)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2210, 1, 1030)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2211, 1, 1031)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2212, 1, 1032)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2213, 4, 1033)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2215, 1034, 1029)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2228, 1, 1060)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2229, 1, 1061)
GO
INSERT [dbo].[Rol_Permiso] ([Id], [RolId], [PermisoId]) VALUES (2232, 1, 1063)
GO
SET IDENTITY_INSERT [dbo].[Rol_Permiso] OFF
GO
SET IDENTITY_INSERT [dbo].[Terminos] ON 
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (1, N'LOGIN_ACEPTAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (2, N'LOGIN_CANCELAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (4, N'PRINCIPAL_MENU_LEFT_DASHBOARD')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (5, N'PRINCIPAL_MENU_LEFT_LOGS')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (6, N'PRINCIPAL_MENU_LEFT_LISTAR_CONCURSOS')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (7, N'PRINCIPAL_MENU_LEFT_CREAR_CONCURSOS')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (8, N'PRINCIPAL_MENU_LEFT_REGISTRAR_PROVEEDOR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (9, N'PRINCIPAL_MENU_LEFT_LISTAR_PROVEEDOR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (10, N'PRINCIPAL_MENU_LEFT_ADMINISTRAR_PERMISOS')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (11, N'PRINCIPAL_MENU_LEFT_LISTAR_PERMISOS')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (12, N'LOGS_LIST_NOMBRE')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (13, N'LOGS_LIST_DESCRIPCION')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (14, N'LOGS_LIST_TIPO')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (15, N'LOGS_LIST_FECHA')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (16, N'CONCURSO_CREAR_NOMBRE')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (17, N'CONCURSO_CREAR_PRESUPUESTO')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (18, N'CONCURSO_CREAR_FECHA_INICIO')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (19, N'CONCURSO_CREAR_FECHA_APERTURA')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (20, N'CONCURSO_CREAR_DESCRIPCION')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (23, N'PRINCIPAL_MENU_LEFT_BACKUPS')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (24, N'BACKUP_CREAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (25, N'PRINCIPAL_MENU_CREAR_IDIOMA')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (26, N'APPBAR_BUTTON_SALVAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (27, N'APPBAR_BUTTON_CANCELAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (28, N'IDIOMA_NUEVO_NOMBRE')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (29, N'IDIOMA_LIST_KEY')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (30, N'IDIOMA_LIST_TRADUCCION')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (31, N'PRINCIPAL_MENU_LEFT_EDITAR_IDIOMAS')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (32, N'NEW_PROVEEDOR_RAZON_SOCIAL')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (33, N'NEW_PROVEEDOR_CELULAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (34, N'NEW_PROVEEDOR_DIRECCION')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (35, N'NEW_PROVEEDOR_TELEFONO')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (36, N'PRINCIPAL_MENU_ADMINISTRAR_USUARIOS')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (37, N'PASSWORD')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (38, N'EMAIL')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (39, N'PRINCIPAL_MENU_LEFT_OFERTAR_CONCURSO')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (40, N'APPBAR_BUTTON_ELIMINAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (41, N'PERMISOS_ADMINISTRAR_NOMBRE')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (42, N'PERMISOS_ADMINISTRAR_BYDEFAULT')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (43, N'APPBAR_BUTTON_EDITAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (44, N'COMPRADOR_NEW_NOMBRE')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (45, N'COMPRADOR_NEW_APELLIDO')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (46, N'PRINCIPAL_MENU_LEFT_ADMINISTRAR_COMPRADORES')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (47, N'PRINCIPAL_MENU_LEFT_CREAR_COMPRADOR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (48, N'CONFIGURACION_IDIOMA')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (49, N'CONFIGURACION_THEME')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (50, N'CONCURSO_OFERTAR_OFERTA')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (51, N'CONCURSO_OFERTAR_OFERTAR')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (52, N'TERMINOSYCONDICIONES_CREAR_DESCRIPCION')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (53, N'TERMINOSYCONDICIONES_CREAR_NOMBRE')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (54, N'PRINCIPAL_MENU_LEFT_CREAR_TERMINOSYCONDICIONES')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (55, N'CONCURSO_CREAR_TERMINOSYCONDICIONES')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (56, N'APPBAR_BUTTON_ACEPTAR_TERMINOSYCONDICIONES')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (1050, N'VALIDAR_PROVEEDOR_EMAIL')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (2050, N'CONCURSO_OFERTAR_PREGUNTA')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (2051, N'CONCURSO_CREAR_OFERTA')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (2052, N'CONCURSO_OFERTA_MONTO')
GO
INSERT [dbo].[Terminos] ([Id], [KeyValue]) VALUES (3050, N'APPBAR_BUTTON_EXPORT_PDF')
GO
SET IDENTITY_INSERT [dbo].[Terminos] OFF
GO
SET IDENTITY_INSERT [dbo].[TerminosYCondiciones] ON 
GO
INSERT [dbo].[TerminosYCondiciones] ([Id], [Nombre], [Descripcion]) VALUES (1, N'Condiciones Generales', N'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?

Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.

Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?

Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae.

Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?

Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi')
GO
INSERT [dbo].[TerminosYCondiciones] ([Id], [Nombre], [Descripcion]) VALUES (2, N'Términos y Condiciones 2', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,')
GO
SET IDENTITY_INSERT [dbo].[TerminosYCondiciones] OFF
GO
SET IDENTITY_INSERT [dbo].[Traducciones] ON 
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (1, 1, 1, N'Aceptar')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (2, 2, 1, N'Cancelar')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (3, 1, 2, N'AAAA')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (4, 2, 2, N'Cancel')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (5, 4, 1, N'Panel de Control')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (6, 4, 2, N'Dashboad')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (7, 5, 1, N'Logs')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (8, 5, 2, N'Logs')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (9, 6, 1, N'Listar Concursos')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (10, 6, 2, N'List of Auctions')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (11, 7, 1, N'Nuevo Concurso')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (12, 7, 2, N'New Auction')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (13, 8, 1, N'Nuevo Proveedor')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (14, 8, 2, N'New Provider')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (15, 9, 1, N'Listar Proveedores')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (16, 9, 2, N'Providers List')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (17, 10, 1, N'Administrar Permisos')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (18, 10, 2, N'Administrate Permissions')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (19, 11, 1, N'Listar Permisos')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (20, 11, 2, N'Permissions List')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (21, 12, 1, N'Nombre')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (22, 12, 2, N'Name')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (23, 13, 1, N'Descripción')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (24, 13, 2, N'Description')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (25, 14, 1, N'Tipo')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (26, 14, 2, N'Type')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (27, 15, 1, N'Fecha')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (28, 15, 2, N'Date')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (29, 16, 1, N'Nombre')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (30, 16, 2, N'Name')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (31, 17, 1, N'Presupuesto')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (32, 17, 2, N'Budget')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (33, 18, 1, N'Fecha de Inicio')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (34, 18, 2, N'Start Date')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (35, 19, 1, N'Fecha de Apertura')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (36, 19, 2, N'Open Date')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (37, 20, 1, N'Descripcion')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (38, 20, 2, N'Descriptión')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (40, 23, 1, N'Backup')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (41, 23, 2, N'Backup')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (42, 24, 1, N'Crear Backup')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (43, 24, 2, N'Create Backup')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (44, 25, 1, N'Nuevo Idioma')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (45, 25, 2, N'New Languaje')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (46, 28, 1, N'Nuevo Lenguaje')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (47, 28, 2, N'New Languaje')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (48, 26, 1, N'Guardar')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (49, 26, 2, N'Save')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (50, 27, 1, N'Cancelar')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (51, 27, 2, N'Cancel')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (52, 29, 1, N'Valor')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (53, 29, 2, N'Key')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (54, 30, 1, N'Traducción')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (55, 30, 2, N'Traslate')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (85, 31, 1, N'Editar Idiomas')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (86, 31, 2, N'Edit Languaje')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (87, 32, 1, N'Razón Social')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (88, 32, 2, N'Social Number')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (89, 33, 1, N'Ceular')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (90, 33, 2, N'Celephone')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (91, 34, 1, N'Dirección')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (92, 34, 2, N'Address')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (93, 35, 1, N'Teleéfono')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (94, 35, 2, N'Telephone')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (95, 36, 1, N'Administrar Usuarios')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (96, 36, 2, N'Administrate Users')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (97, 37, 1, N'Contraseña')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (98, 37, 2, N'Password')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (99, 38, 1, N'Correo Electrónico')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (100, 38, 2, N'Email')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (101, 39, 1, N'Ofertar Concurso')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (102, 39, 2, N'Offert Auction')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (103, 40, 1, N'Eliminar')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (104, 40, 2, N'Delete')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (105, 41, 1, N'Nombre')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (106, 41, 2, N'Name')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (107, 42, 1, N'Por Defecto')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (108, 42, 2, N'By Default')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (109, 43, 1, N'Editar')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (110, 43, 2, N'Edit')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (111, 44, 1, N'Nombre')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (112, 44, 2, N'Name')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (113, 45, 1, N'Apellido')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (114, 45, 2, N'Surname')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (119, 46, 1, N'Administrar Compradores')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (120, 46, 1, N'Administrate Buyers')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (121, 47, 1, N'Crear Comprador')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (122, 47, 2, N'New Buyer')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (123, 1, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (124, 2, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (125, 4, 11, N'Dashboar_Prueba')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (126, 5, 11, N'ddddd')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (127, 6, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (128, 7, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (129, 8, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (130, 9, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (131, 10, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (132, 11, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (133, 12, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (134, 13, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (135, 14, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (136, 15, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (137, 16, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (138, 17, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (139, 18, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (140, 19, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (141, 20, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (142, 23, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (143, 24, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (144, 25, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (145, 26, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (146, 27, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (147, 28, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (148, 29, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (149, 30, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (150, 31, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (151, 32, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (152, 33, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (153, 34, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (154, 35, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (155, 36, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (156, 37, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (157, 38, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (158, 39, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (159, 40, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (160, 41, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (161, 42, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (162, 43, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (163, 44, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (164, 45, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (165, 46, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (166, 47, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (167, 48, 1, N'Idioma')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (168, 48, 2, N'Languaje')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (169, 49, 1, N'Estilos')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (170, 49, 2, N'Theme')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (171, 50, 1, N'Oferta')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (172, 50, 2, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (173, 50, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (174, 51, 1, N'Ofertar')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (175, 51, 2, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (176, 51, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (177, 52, 1, N'Descripción')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (178, 52, 2, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (179, 52, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (180, 53, 1, N'Nombre')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (181, 53, 2, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (182, 53, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (183, 54, 1, N'Crear Términos Y Condiciones')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (184, 54, 2, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (185, 54, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (186, 55, 1, N'Términos y Condiciones')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (187, 55, 2, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (188, 55, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (189, 56, 1, N'Aceptar Términos Y Condiciones')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (190, 56, 2, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (191, 56, 11, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (1171, 2050, 1, N'Pregunta')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (1172, 2051, 1, N'Oferta')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (1173, 2052, 1, N'Oferta Ganadora')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (2171, 3050, 1, N'Exportar PDF')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (2172, 1050, 1, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (2173, 1050, 2, N'')
GO
INSERT [dbo].[Traducciones] ([Id], [Id_Termino], [Id_Idioma], [Traduccion]) VALUES (2174, 1050, 11, N'')
GO
SET IDENTITY_INSERT [dbo].[Traducciones] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuario_Rol] ON 
GO
INSERT [dbo].[Usuario_Rol] ([Id], [UsuarioId], [RolId]) VALUES (1, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[Usuario_Rol] OFF
GO
SET IDENTITY_INSERT [dbo].[Usuarios] ON 
GO
INSERT [dbo].[Usuarios] ([Id], [Email], [UserName], [LastLogin], [Password], [Rol_Id]) VALUES (2, N'german.kuber@outlook.com', NULL, CAST(N'2019-11-25' AS Date), N'E10ADC3949BA59ABBE56E057F20F883E', 1)
GO
INSERT [dbo].[Usuarios] ([Id], [Email], [UserName], [LastLogin], [Password], [Rol_Id]) VALUES (3008, N'comprador1@comprador1.com', NULL, CAST(N'2019-11-26' AS Date), N'E10ADC3949BA59ABBE56E057F20F883E', 3)
GO
INSERT [dbo].[Usuarios] ([Id], [Email], [UserName], [LastLogin], [Password], [Rol_Id]) VALUES (3009, N'comprador2@comprador2.com', NULL, CAST(N'2019-11-19' AS Date), N'E10ADC3949BA59ABBE56E057F20F883E', 3)
GO
INSERT [dbo].[Usuarios] ([Id], [Email], [UserName], [LastLogin], [Password], [Rol_Id]) VALUES (3010, N'comprador3@comprador3.com', NULL, CAST(N'2019-11-19' AS Date), N'E10ADC3949BA59ABBE56E057F20F883E', 3)
GO
INSERT [dbo].[Usuarios] ([Id], [Email], [UserName], [LastLogin], [Password], [Rol_Id]) VALUES (3011, N'proveedor3@proveedor3.com', NULL, CAST(N'2019-11-25' AS Date), N'E10ADC3949BA59ABBE56E057F20F883E', 4)
GO
INSERT [dbo].[Usuarios] ([Id], [Email], [UserName], [LastLogin], [Password], [Rol_Id]) VALUES (3012, N'proveedor4@proveedor4.com', NULL, CAST(N'2019-11-19' AS Date), N'E10ADC3949BA59ABBE56E057F20F883E', 4)
GO
INSERT [dbo].[Usuarios] ([Id], [Email], [UserName], [LastLogin], [Password], [Rol_Id]) VALUES (3013, N'proveedor5', NULL, CAST(N'2019-11-19' AS Date), N'E10ADC3949BA59ABBE56E057F20F883E', 4)
GO
INSERT [dbo].[Usuarios] ([Id], [Email], [UserName], [LastLogin], [Password], [Rol_Id]) VALUES (3014, N'proveedor6', NULL, NULL, N'E10ADC3949BA59ABBE56E057F20F883E', 4)
GO
INSERT [dbo].[Usuarios] ([Id], [Email], [UserName], [LastLogin], [Password], [Rol_Id]) VALUES (3015, N'proveedor7', NULL, CAST(N'2019-11-19' AS Date), N'E10ADC3949BA59ABBE56E057F20F883E', 4)
GO
SET IDENTITY_INSERT [dbo].[Usuarios] OFF
GO
SET IDENTITY_INSERT [dbo].[Verificables] ON 
GO
INSERT [dbo].[Verificables] ([Id], [Digito], [Tabla]) VALUES (4, N'454D9638C746F798C64578EFAAAE852E', N'Concursos')
GO
SET IDENTITY_INSERT [dbo].[Verificables] OFF
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Concurso_Proveedor_AceptoTerminosYCondiciones]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Concurso_Proveedor] ADD  CONSTRAINT [DF_Concurso_Proveedor_AceptoTerminosYCondiciones]  DEFAULT ((0)) FOR [AceptoTerminosYCondiciones]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Concurso_Proveedor_Ganador]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Concurso_Proveedor] ADD  CONSTRAINT [DF_Concurso_Proveedor_Ganador]  DEFAULT ((0)) FOR [Ganador]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Permiso_ByDefault]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Permiso] ADD  CONSTRAINT [DF_Permiso_ByDefault]  DEFAULT ((0)) FOR [ByDefault]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Proveedores_Activo]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Proveedores] ADD  CONSTRAINT [DF_Proveedores_Activo]  DEFAULT ((1)) FOR [Activo]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_Proveedores_AceptoReglasGenerales]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Proveedores] ADD  CONSTRAINT [DF_Proveedores_AceptoReglasGenerales]  DEFAULT ((0)) FOR [AceptoReglasGenerales]
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Compradores_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Compradores]'))
ALTER TABLE [dbo].[Compradores]  WITH CHECK ADD  CONSTRAINT [FK_Compradores_Usuarios] FOREIGN KEY([Usuario_Id])
REFERENCES [dbo].[Usuarios] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Compradores_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Compradores]'))
ALTER TABLE [dbo].[Compradores] CHECK CONSTRAINT [FK_Compradores_Usuarios]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Concursos_Compradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[Concursos]'))
ALTER TABLE [dbo].[Concursos]  WITH CHECK ADD  CONSTRAINT [FK_Concursos_Compradores] FOREIGN KEY([Comprador_Id])
REFERENCES [dbo].[Compradores] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Concursos_Compradores]') AND parent_object_id = OBJECT_ID(N'[dbo].[Concursos]'))
ALTER TABLE [dbo].[Concursos] CHECK CONSTRAINT [FK_Concursos_Compradores]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Configuraciones_Idiomas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Configuraciones]'))
ALTER TABLE [dbo].[Configuraciones]  WITH CHECK ADD  CONSTRAINT [FK_Configuraciones_Idiomas] FOREIGN KEY([Idioma_Id])
REFERENCES [dbo].[Idiomas] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Configuraciones_Idiomas]') AND parent_object_id = OBJECT_ID(N'[dbo].[Configuraciones]'))
ALTER TABLE [dbo].[Configuraciones] CHECK CONSTRAINT [FK_Configuraciones_Idiomas]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Configuraciones_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Configuraciones]'))
ALTER TABLE [dbo].[Configuraciones]  WITH CHECK ADD  CONSTRAINT [FK_Configuraciones_Usuarios] FOREIGN KEY([Usuario_Id])
REFERENCES [dbo].[Usuarios] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Configuraciones_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Configuraciones]'))
ALTER TABLE [dbo].[Configuraciones] CHECK CONSTRAINT [FK_Configuraciones_Usuarios]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HitoConcurso_Concursos]') AND parent_object_id = OBJECT_ID(N'[dbo].[HitoConcurso]'))
ALTER TABLE [dbo].[HitoConcurso]  WITH CHECK ADD  CONSTRAINT [FK_HitoConcurso_Concursos] FOREIGN KEY([ConcursoId])
REFERENCES [dbo].[Concursos] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_HitoConcurso_Concursos]') AND parent_object_id = OBJECT_ID(N'[dbo].[HitoConcurso]'))
ALTER TABLE [dbo].[HitoConcurso] CHECK CONSTRAINT [FK_HitoConcurso_Concursos]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Logs_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Logs]'))
ALTER TABLE [dbo].[Logs]  WITH CHECK ADD  CONSTRAINT [FK_Logs_Usuario] FOREIGN KEY([Usuario_Id])
REFERENCES [dbo].[Usuarios] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Logs_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Logs]'))
ALTER TABLE [dbo].[Logs] CHECK CONSTRAINT [FK_Logs_Usuario]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ofertas_Concurso_Proveedor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ofertas]'))
ALTER TABLE [dbo].[Ofertas]  WITH CHECK ADD  CONSTRAINT [FK_Ofertas_Concurso_Proveedor] FOREIGN KEY([Concurso_Proveedor_Id])
REFERENCES [dbo].[Concurso_Proveedor] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Ofertas_Concurso_Proveedor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Ofertas]'))
ALTER TABLE [dbo].[Ofertas] CHECK CONSTRAINT [FK_Ofertas_Concurso_Proveedor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Preguntas_Concurso_Proveedor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Preguntas]'))
ALTER TABLE [dbo].[Preguntas]  WITH CHECK ADD  CONSTRAINT [FK_Preguntas_Concurso_Proveedor] FOREIGN KEY([Concurso_Proveedor_Id])
REFERENCES [dbo].[Concurso_Proveedor] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Preguntas_Concurso_Proveedor]') AND parent_object_id = OBJECT_ID(N'[dbo].[Preguntas]'))
ALTER TABLE [dbo].[Preguntas] CHECK CONSTRAINT [FK_Preguntas_Concurso_Proveedor]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Proveedores_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Proveedores]'))
ALTER TABLE [dbo].[Proveedores]  WITH CHECK ADD  CONSTRAINT [FK_Proveedores_Usuarios] FOREIGN KEY([Usuario_Id])
REFERENCES [dbo].[Usuarios] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Proveedores_Usuarios]') AND parent_object_id = OBJECT_ID(N'[dbo].[Proveedores]'))
ALTER TABLE [dbo].[Proveedores] CHECK CONSTRAINT [FK_Proveedores_Usuarios]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rol_Permiso_Permiso]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rol_Permiso]'))
ALTER TABLE [dbo].[Rol_Permiso]  WITH CHECK ADD  CONSTRAINT [FK_Rol_Permiso_Permiso] FOREIGN KEY([PermisoId])
REFERENCES [dbo].[Permiso] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Rol_Permiso_Permiso]') AND parent_object_id = OBJECT_ID(N'[dbo].[Rol_Permiso]'))
ALTER TABLE [dbo].[Rol_Permiso] CHECK CONSTRAINT [FK_Rol_Permiso_Permiso]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Traduccion_Idioma]') AND parent_object_id = OBJECT_ID(N'[dbo].[Traducciones]'))
ALTER TABLE [dbo].[Traducciones]  WITH CHECK ADD  CONSTRAINT [FK_Traduccion_Idioma] FOREIGN KEY([Id_Idioma])
REFERENCES [dbo].[Idiomas] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Traduccion_Idioma]') AND parent_object_id = OBJECT_ID(N'[dbo].[Traducciones]'))
ALTER TABLE [dbo].[Traducciones] CHECK CONSTRAINT [FK_Traduccion_Idioma]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Traduccion_Termino]') AND parent_object_id = OBJECT_ID(N'[dbo].[Traducciones]'))
ALTER TABLE [dbo].[Traducciones]  WITH CHECK ADD  CONSTRAINT [FK_Traduccion_Termino] FOREIGN KEY([Id_Termino])
REFERENCES [dbo].[Terminos] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Traduccion_Termino]') AND parent_object_id = OBJECT_ID(N'[dbo].[Traducciones]'))
ALTER TABLE [dbo].[Traducciones] CHECK CONSTRAINT [FK_Traduccion_Termino]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuario_Rol_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuario_Rol]'))
ALTER TABLE [dbo].[Usuario_Rol]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Rol_Usuario] FOREIGN KEY([UsuarioId])
REFERENCES [dbo].[Usuarios] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuario_Rol_Usuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuario_Rol]'))
ALTER TABLE [dbo].[Usuario_Rol] CHECK CONSTRAINT [FK_Usuario_Rol_Usuario]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuarios_Permiso]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuarios]'))
ALTER TABLE [dbo].[Usuarios]  WITH CHECK ADD  CONSTRAINT [FK_Usuarios_Permiso] FOREIGN KEY([Rol_Id])
REFERENCES [dbo].[Permiso] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuarios_Permiso]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuarios]'))
ALTER TABLE [dbo].[Usuarios] CHECK CONSTRAINT [FK_Usuarios_Permiso]
GO
USE [master]
GO
ALTER DATABASE [LicitProd] SET  READ_WRITE 
GO
