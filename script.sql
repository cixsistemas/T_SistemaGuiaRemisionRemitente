USE [master]
GO
/****** Object:  Database [BDGuiaRemision]    Script Date: 13/04/2022 15:03:15 ******/
CREATE DATABASE [BDGuiaRemision]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Bd_Guia_Remision', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Bd_Guia_Remision.mdf' , SIZE = 7168KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Bd_Guia_Remision_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\Bd_Guia_Remision_log.ldf' , SIZE = 32448KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BDGuiaRemision].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BDGuiaRemision] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET ARITHABORT OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BDGuiaRemision] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BDGuiaRemision] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BDGuiaRemision] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BDGuiaRemision] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET RECOVERY FULL 
GO
ALTER DATABASE [BDGuiaRemision] SET  MULTI_USER 
GO
ALTER DATABASE [BDGuiaRemision] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BDGuiaRemision] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BDGuiaRemision] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BDGuiaRemision] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BDGuiaRemision', N'ON'
GO
USE [BDGuiaRemision]
GO
/****** Object:  Table [dbo].[bitacora]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[bitacora](
	[codigo] [int] IDENTITY(1,1) NOT NULL,
	[cod_usu] [varchar](30) NULL,
	[usuario] [varchar](50) NULL,
	[fecha_hora_ingreso] [datetime] NULL,
	[fecha_hora_salida] [datetime] NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [pk_bitacora] PRIMARY KEY CLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoria](
	[cat_id] [int] IDENTITY(1,1) NOT NULL,
	[cat_nom] [varchar](100) NOT NULL,
	[Precio_Cat] [float] NULL,
	[cat_desc] [varchar](45) NULL,
 CONSTRAINT [pk_categoria] PRIMARY KEY CLUSTERED 
(
	[cat_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chofer]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chofer](
	[id_chofer] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_chof] [varchar](250) NOT NULL,
	[Apellido_chof] [varchar](250) NOT NULL,
	[Brevete] [varchar](50) NOT NULL,
	[Telefono_chof] [varchar](50) NULL,
 CONSTRAINT [PK_Chofer] PRIMARY KEY CLUSTERED 
(
	[id_chofer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[Id_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Cli] [varchar](250) NOT NULL,
	[Telefono_Cli] [varchar](100) NOT NULL,
	[Direccion_Cli] [varchar](150) NOT NULL,
	[Correo_Cli] [varchar](50) NULL,
	[Nro_Dcto_Cli] [varchar](20) NOT NULL,
	[Linea_Credito_Cli] [float] NULL,
	[Descrip_Cli] [varchar](250) NULL,
	[Id_Zona] [int] NOT NULL,
	[id_tip_doc] [int] NOT NULL,
	[Id_Tipo_Cliente] [int] NOT NULL,
 CONSTRAINT [PK_Cliente_2] PRIMARY KEY CLUSTERED 
(
	[Id_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comisionista]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comisionista](
	[Id_Comisionista] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Com] [varchar](250) NOT NULL,
	[Telefono_Com] [varchar](100) NOT NULL,
	[Direccion_Com] [varchar](150) NOT NULL,
	[Nro_Dcto_Com] [varchar](20) NOT NULL,
	[Descrip_Com] [varchar](250) NULL,
	[Id_Zona] [int] NOT NULL,
	[id_tip_doc] [int] NOT NULL,
 CONSTRAINT [PK_Comisionista] PRIMARY KEY CLUSTERED 
(
	[Id_Comisionista] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destinatario]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destinatario](
	[id_Dest] [int] IDENTITY(1,1) NOT NULL,
	[razonsocial] [varchar](max) NOT NULL,
	[ruc] [varchar](11) NULL,
	[id_tip_doc] [int] NULL,
	[nro_doc] [varchar](11) NULL,
	[Direccion] [varchar](150) NULL,
	[Rep_Legal] [varchar](150) NULL,
	[id_ubigeo] [int] NULL,
 CONSTRAINT [PK_Cliente] PRIMARY KEY CLUSTERED 
(
	[id_Dest] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Devolucion_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Devolucion_Comp_de_Pago](
	[Id_Detalle_Dev_Comp] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
	[Id_Detalle_Env_Comp] [int] NOT NULL,
	[Id_Devolucion_Comp] [int] NOT NULL,
 CONSTRAINT [PK_Detalle_Devolucion_Comp_de_Pago] PRIMARY KEY CLUSTERED 
(
	[Id_Detalle_Dev_Comp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Envio_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Envio_Comp_de_Pago](
	[Id_Detalle_Env_Comp] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
	[Id_Detalle_Ing_Comp] [int] NOT NULL,
	[Id_Envio_Comp] [int] NOT NULL,
 CONSTRAINT [PK_Detalle_Envio_Comp_de_Pago] PRIMARY KEY CLUSTERED 
(
	[Id_Detalle_Env_Comp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_Ingreso_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_Ingreso_Comp_de_Pago](
	[Id_Detalle_Ing_Comp] [int] IDENTITY(1,1) NOT NULL,
	[Serie] [varchar](4) NOT NULL,
	[Numero] [varchar](7) NOT NULL,
	[Estado] [varchar](50) NOT NULL,
	[Id_Ing_Comp] [int] NOT NULL,
 CONSTRAINT [PK_Detalle_Ingreso_Comp_de_Pago] PRIMARY KEY CLUSTERED 
(
	[Id_Detalle_Ing_Comp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Detalle_pag_cat]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Detalle_pag_cat](
	[id_det_pag_cat] [int] IDENTITY(1,1) NOT NULL,
	[id_pag_detrac] [int] NULL,
	[cat_id] [int] NULL,
	[Precio] [float] NULL,
	[Cantidad] [int] NULL,
	[Ivap] [float] NULL,
 CONSTRAINT [PK_detalle_pag_cat] PRIMARY KEY CLUSTERED 
(
	[id_det_pag_cat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleGuia]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleGuia](
	[id_det_guia] [int] IDENTITY(1,1) NOT NULL,
	[id_guia] [int] NOT NULL,
	[prod_id] [int] NOT NULL,
	[cantidad_sacos] [int] NOT NULL,
	[unidad_medida] [varchar](max) NOT NULL,
	[peso_sacos] [float] NOT NULL,
	[Precio_Venta] [float] NULL,
	[IGV] [float] NULL,
 CONSTRAINT [PK_DetalleGuia] PRIMARY KEY CLUSTERED 
(
	[id_det_guia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Devolucion_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Devolucion_Comp_de_Pago](
	[Id_Devolucion_Comp] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_Devolucion] [datetime] NOT NULL,
	[Direccion] [varchar](250) NULL,
	[Descripcion] [varchar](250) NULL,
	[Id_Ubigeo] [int] NOT NULL,
	[Id_Ope] [int] NOT NULL,
 CONSTRAINT [PK_Devolucion_Comp_de_Pago] PRIMARY KEY CLUSTERED 
(
	[Id_Devolucion_Comp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmpresaTransporte]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpresaTransporte](
	[id_emp_trans] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](max) NOT NULL,
	[ruc] [varchar](11) NOT NULL,
	[domicilio] [varchar](max) NULL,
 CONSTRAINT [PK_EmpresaTransporte] PRIMARY KEY CLUSTERED 
(
	[id_emp_trans] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[envasado]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[envasado](
	[envas_id] [int] IDENTITY(1,1) NOT NULL,
	[envas_nom] [varchar](100) NOT NULL,
	[envas_desc] [varchar](60) NULL,
 CONSTRAINT [pk_envasado] PRIMARY KEY CLUSTERED 
(
	[envas_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Envio_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Envio_Comp_de_Pago](
	[Id_Envio_Comp] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_Envio] [datetime] NOT NULL,
	[Descripcion] [varchar](250) NULL,
	[Id_Comisionista] [int] NOT NULL,
	[Id_Zona] [int] NOT NULL,
	[Id_Ope] [int] NOT NULL,
 CONSTRAINT [PK_Envio_Comp_de_Pago] PRIMARY KEY CLUSTERED 
(
	[Id_Envio_Comp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guia]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guia](
	[id_guia] [int] IDENTITY(1,1) NOT NULL,
	[serie_guia] [varchar](4) NULL,
	[nro_guia] [varchar](7) NULL,
	[fecha_emision_guia] [datetime] NULL,
	[fecha_traslado_guia] [datetime] NULL,
	[direccion_pto_partida] [varchar](max) NULL,
	[ubigeo_pto_partida] [int] NULL,
	[destinatario_guia] [int] NULL,
	[direccion_pto_llegada] [varchar](max) NULL,
	[ubigeo_pto_llegada] [int] NULL,
	[id_vehi] [int] NULL,
	[id_chofer] [int] NULL,
	[Nro_constancia_deposito] [varchar](max) NULL,
	[Monto_deposito] [float] NULL,
	[Nro_constancia_deposito2] [varchar](max) NULL,
	[Monto_deposito2] [float] NULL,
	[id_mot_traslado] [int] NULL,
	[id_remitente] [int] NULL,
 CONSTRAINT [PK_Guia] PRIMARY KEY CLUSTERED 
(
	[id_guia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ingreso_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ingreso_Comp_de_Pago](
	[Id_Ing_Comp] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_Ingreso] [datetime] NOT NULL,
	[Descripcion] [varchar](250) NULL,
	[id_remitente] [int] NOT NULL,
	[Id_Ope] [int] NOT NULL,
	[Id_Tipo_Comp] [int] NOT NULL,
 CONSTRAINT [PK_Ingreso_Comp_de_Pago] PRIMARY KEY CLUSTERED 
(
	[Id_Ing_Comp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[logotipo]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[logotipo](
	[logo_id] [int] IDENTITY(1,1) NOT NULL,
	[logo_nom] [varchar](100) NOT NULL,
	[logo_descr] [varchar](70) NULL,
 CONSTRAINT [pk_mlogo] PRIMARY KEY CLUSTERED 
(
	[logo_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MotivoTraslado]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotivoTraslado](
	[id_mot_traslado] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](max) NOT NULL,
 CONSTRAINT [PK_MotivoTraslado] PRIMARY KEY CLUSTERED 
(
	[id_mot_traslado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nota_Env_Arroz]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nota_Env_Arroz](
	[Id_nota_arroz] [int] IDENTITY(1,1) NOT NULL,
	[id_guia] [int] NULL,
	[id_pag_detrac] [int] NULL,
	[Id_Trabajador] [int] NULL,
	[fecha] [datetime] NULL,
	[Destinatario_Arr] [varchar](250) NULL,
	[Telef_Dest_Arr] [varchar](50) NULL,
	[Direccion] [varchar](250) NULL,
	[costo_flete_arr] [float] NULL,
	[a_cuenta_arr] [float] NULL,
	[Toneladas] [float] NULL,
	[observacion] [varchar](250) NULL,
	[Comentario] [varchar](250) NULL,
 CONSTRAINT [PK_Nota_Env_Arroz] PRIMARY KEY CLUSTERED 
(
	[Id_nota_arroz] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Operacion]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operacion](
	[Id_Ope] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_Ope] [varchar](50) NOT NULL,
	[Nombre_Ope] [varchar](250) NOT NULL,
	[Descrip_Ope] [varchar](250) NULL,
	[Id_Tipo_Ope] [int] NOT NULL,
 CONSTRAINT [PK_Operacion] PRIMARY KEY CLUSTERED 
(
	[Id_Ope] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pago_Detrac]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pago_Detrac](
	[id_pag_detrac] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[Descripcion] [varchar](200) NULL,
	[Fecha_Emis] [datetime] NULL,
	[id_remitente] [int] NULL,
 CONSTRAINT [PK_Pago_Detrac] PRIMARY KEY CLUSTERED 
(
	[id_pag_detrac] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Peso_Med]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Peso_Med](
	[Id_peso_med] [int] IDENTITY(1,1) NOT NULL,
	[id_guia] [int] NULL,
	[Fecha] [datetime] NULL,
	[Observacion] [varchar](700) NULL,
 CONSTRAINT [PK_Peso_Med] PRIMARY KEY CLUSTERED 
(
	[Id_peso_med] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[prod_id] [int] IDENTITY(1,1) NOT NULL,
	[prod_nom] [varchar](100) NOT NULL,
	[prod_peso_uni] [varchar](10) NULL,
	[prod_color] [varchar](60) NULL,
	[Nomb_Comer] [varchar](150) NULL,
	[cat_id] [int] NULL,
	[logo_id] [int] NULL,
	[envas_id] [int] NULL,
 CONSTRAINT [pk_producto] PRIMARY KEY CLUSTERED 
(
	[prod_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Remitente]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Remitente](
	[id_remitente] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](max) NOT NULL,
	[ruc] [varchar](max) NOT NULL,
	[Cuenta_Detrac] [varchar](20) NULL,
	[direccion] [varchar](max) NOT NULL,
	[descripcion] [varchar](max) NULL,
	[id_ubigeo] [int] NULL,
 CONSTRAINT [PK_Remitente] PRIMARY KEY CLUSTERED 
(
	[id_remitente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Cliente]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Cliente](
	[Id_Tipo_Cliente] [int] IDENTITY(1,1) NOT NULL,
	[Tipo_Cli] [varchar](50) NOT NULL,
	[Descrip_Tipo_Cli] [varchar](250) NULL,
 CONSTRAINT [PK_Cliente_1] PRIMARY KEY CLUSTERED 
(
	[Id_Tipo_Cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_de_Comprobante_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_de_Comprobante_de_Pago](
	[Id_Tipo_Comp] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_Tipo_Comp] [varchar](50) NOT NULL,
	[Nombre_Tipo_Comp] [varchar](2000) NOT NULL,
	[Siglas_Tipo_Comp] [varchar](50) NOT NULL,
	[Descrip_Tipo_Comp] [varchar](250) NULL,
 CONSTRAINT [PK_Tipo_de_Comprobante_de_Pago] PRIMARY KEY CLUSTERED 
(
	[Id_Tipo_Comp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Operacion]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Operacion](
	[Id_Tipo_Ope] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Tipo_Ope] [varchar](250) NOT NULL,
	[Descrip_Tipo_Ope] [varchar](250) NULL,
 CONSTRAINT [PK_Tipo_Operacion] PRIMARY KEY CLUSTERED 
(
	[Id_Tipo_Ope] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Trabajador]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Trabajador](
	[Id_tipo_trab] [int] IDENTITY(1,1) NOT NULL,
	[Tip_trabaj] [varchar](50) NOT NULL,
	[Descrip_Tipo_trabaj] [varchar](250) NULL,
 CONSTRAINT [PK_Tipo_Trabajador] PRIMARY KEY CLUSTERED 
(
	[Id_tipo_trab] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[id_tip_doc] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_Tipo_Documento] [varchar](50) NULL,
	[nombre_tip_doc] [varchar](max) NOT NULL,
	[Siglas_Tipo_Documento] [varchar](50) NULL,
	[Descripcion] [varchar](250) NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[id_tip_doc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Trabajador]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trabajador](
	[Id_Trabajador] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](250) NULL,
	[Apellidos] [varchar](250) NULL,
	[Nro_Dcto] [varchar](12) NULL,
	[Direccion] [varchar](250) NULL,
	[Telefono] [varchar](50) NULL,
	[Correo] [varchar](150) NULL,
	[Fecha_Nac] [datetime] NULL,
	[Fecha_Ingreso] [datetime] NULL,
	[Descrip_Trab] [varchar](250) NULL,
	[Id_tipo_trab] [int] NULL,
	[id_tip_doc] [int] NULL,
 CONSTRAINT [PK_Trabajador] PRIMARY KEY CLUSTERED 
(
	[Id_Trabajador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ubigeo]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ubigeo](
	[id_ubigeo] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [varchar](70) NOT NULL,
	[Departamento] [varchar](max) NOT NULL,
	[Provincia] [varchar](max) NOT NULL,
	[Distrito] [varchar](max) NOT NULL,
 CONSTRAINT [PK_Ubigeo] PRIMARY KEY CLUSTERED 
(
	[id_ubigeo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehiculo]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehiculo](
	[id_vehi] [int] IDENTITY(1,1) NOT NULL,
	[marca] [varchar](max) NOT NULL,
	[nroplaca] [varchar](max) NOT NULL,
	[nrocertificado] [varchar](max) NOT NULL,
	[marca2] [varchar](max) NULL,
	[nroplaca2] [varchar](max) NULL,
	[nrocertificado2] [varchar](max) NULL,
	[Largo] [varchar](50) NULL,
	[Ancho] [varchar](50) NULL,
	[Alto] [varchar](50) NULL,
	[Peso_neto1] [float] NULL,
	[Largo2] [varchar](50) NULL,
	[Ancho2] [varchar](50) NULL,
	[Alto2] [varchar](50) NULL,
	[Peso_neto2] [float] NULL,
	[Conf_Vehi] [varchar](10) NULL,
	[Pes_Veh] [varchar](20) NULL,
	[Peso_Bonif] [float] NULL,
	[Descripcion] [varchar](200) NULL,
	[id_emp_trans] [int] NOT NULL,
 CONSTRAINT [PK_Vehiculo] PRIMARY KEY CLUSTERED 
(
	[id_vehi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zona]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zona](
	[Id_Zona] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Zona] [varchar](50) NOT NULL,
	[Orden_Zona] [int] NULL,
	[Descrip_Zona] [varchar](250) NULL,
	[id_ubigeo] [int] NOT NULL,
 CONSTRAINT [PK_Zona] PRIMARY KEY CLUSTERED 
(
	[Id_Zona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vistaptopartida]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistaptopartida]
AS
SELECT        dbo.Guia.id_guia AS ID, dbo.Guia.serie_guia + '-' + dbo.Guia.nro_guia AS Numero, dbo.Guia.fecha_emision_guia AS Emisión, CONVERT(varchar(MAX), dbo.Guia.fecha_traslado_guia, 103) AS Traslado, 
                         dbo.Guia.direccion_pto_partida AS Partida, dbo.Guia.ubigeo_pto_partida AS [ID Partida], dbo.Ubigeo.distrito + '/' + dbo.Ubigeo.provincia + '/' + dbo.Ubigeo.departamento AS [Pto. partida], 
                         dbo.Guia.destinatario_guia AS [ID Destinatario], dbo.Destinatario.razonsocial AS [Razon social], dbo.Destinatario.ruc AS [Ruc Destinatario], dbo.TipoDocumento.nombre_tip_doc AS [Tipo Doc. Destinatario], 
                         dbo.Destinatario.nro_doc AS [Nro. Doc. Destinatario], dbo.Guia.direccion_pto_llegada AS LLegada, dbo.Guia.ubigeo_pto_llegada AS [ID. llegada], dbo.Vehiculo.id_vehi AS [ID Vehiculo], 
                         dbo.Vehiculo.marca AS [Marca Camion], dbo.Vehiculo.nroplaca AS [Nro. placa Camion], dbo.Vehiculo.nrocertificado AS [Nro. certificado Camion], dbo.Vehiculo.marca2 AS [Marca Carreta], 
                         dbo.Vehiculo.nroplaca2 AS [Nro. Placa Carreta], dbo.Vehiculo.nrocertificado2 AS [Nro. Certificado Carreta], dbo.Guia.id_chofer AS [ID Chofer], dbo.Chofer.Brevete, 
                         dbo.Chofer.Nombre_chof + ' ' + dbo.Chofer.Apellido_chof AS Chofer, dbo.Chofer.Telefono_chof AS [Telefono Chofer], dbo.Guia.Nro_constancia_deposito AS [Nro Deposito], dbo.Guia.Monto_deposito AS Monto, 
                         dbo.Guia.Nro_constancia_deposito2 AS [Nro Depositoo], dbo.Guia.Monto_deposito2 AS Montoo, dbo.MotivoTraslado.id_mot_traslado AS [ID Traslado], dbo.MotivoTraslado.nombre AS [Motivo Traslado], 
                         dbo.Guia.id_remitente AS [ID Remitente], dbo.Remitente.nombre AS Remitente, dbo.Remitente.ruc, dbo.EmpresaTransporte.nombre AS [Empresa Transporte], 
                         dbo.EmpresaTransporte.ruc AS [RUC Emp Transporte], dbo.Guia.id_mot_traslado, dbo.EmpresaTransporte.domicilio AS [Domicilio Transportista]
FROM            dbo.Guia INNER JOIN
                         dbo.Chofer ON dbo.Guia.id_chofer = dbo.Chofer.id_chofer LEFT OUTER JOIN
                         dbo.Destinatario ON dbo.Guia.destinatario_guia = dbo.Destinatario.id_Dest LEFT OUTER JOIN
                         dbo.TipoDocumento ON dbo.Destinatario.id_tip_doc = dbo.TipoDocumento.id_tip_doc LEFT OUTER JOIN
                         dbo.Ubigeo ON dbo.Guia.ubigeo_pto_partida = dbo.Ubigeo.id_ubigeo LEFT OUTER JOIN
                         dbo.Vehiculo ON dbo.Guia.id_vehi = dbo.Vehiculo.id_vehi LEFT OUTER JOIN
                         dbo.MotivoTraslado ON dbo.Guia.id_mot_traslado = dbo.MotivoTraslado.id_mot_traslado LEFT OUTER JOIN
                         dbo.Remitente ON dbo.Guia.id_remitente = dbo.Remitente.id_remitente LEFT OUTER JOIN
                         dbo.EmpresaTransporte ON dbo.EmpresaTransporte.id_emp_trans = dbo.Vehiculo.id_emp_trans

GO
/****** Object:  View [dbo].[vistaguias]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistaguias]
AS
SELECT        dbo.vistaptopartida.ID, dbo.vistaptopartida.Numero, dbo.vistaptopartida.Emisión, dbo.vistaptopartida.Traslado, dbo.vistaptopartida.Partida, dbo.vistaptopartida.[ID Partida], dbo.vistaptopartida.[Pto. partida], 
                         dbo.vistaptopartida.[ID Destinatario], dbo.vistaptopartida.[Razon social], dbo.vistaptopartida.[Ruc Destinatario], dbo.vistaptopartida.[Tipo Doc. Destinatario], dbo.vistaptopartida.[Nro. Doc. Destinatario], 
                         dbo.vistaptopartida.LLegada, dbo.vistaptopartida.[ID. llegada], dbo.Ubigeo.distrito + '/' + dbo.Ubigeo.provincia + '/' + dbo.Ubigeo.departamento AS [Pto. llegada], dbo.vistaptopartida.[ID Vehiculo], 
                         dbo.vistaptopartida.[Marca Camion], dbo.vistaptopartida.[Nro. placa Camion], dbo.vistaptopartida.[Nro. certificado Camion], dbo.vistaptopartida.[Marca Carreta], dbo.vistaptopartida.[Nro. Placa Carreta], 
                         dbo.vistaptopartida.[Nro. Certificado Carreta], dbo.vistaptopartida.[ID Chofer], dbo.vistaptopartida.Chofer, dbo.vistaptopartida.Brevete, dbo.vistaptopartida.[Telefono Chofer], dbo.vistaptopartida.[Nro Deposito], 
                         dbo.vistaptopartida.Monto, dbo.vistaptopartida.[Nro Depositoo], dbo.vistaptopartida.Montoo, dbo.vistaptopartida.[ID Traslado], dbo.vistaptopartida.[Motivo Traslado], dbo.vistaptopartida.[ID Remitente], 
                         dbo.vistaptopartida.Remitente, dbo.vistaptopartida.ruc, dbo.vistaptopartida.[Empresa Transporte], dbo.vistaptopartida.[RUC Emp Transporte], dbo.vistaptopartida.[Domicilio Transportista], 
                         dbo.Ubigeo.departamento, dbo.Ubigeo.provincia, dbo.Ubigeo.distrito
FROM            dbo.vistaptopartida LEFT OUTER JOIN
                         dbo.Ubigeo ON dbo.vistaptopartida.[ID. llegada] = dbo.Ubigeo.id_ubigeo

GO
/****** Object:  View [dbo].[vistaProd_pajilla]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistaProd_pajilla]
AS
SELECT     dbo.producto.prod_id, 
                      UPPER(dbo.producto.prod_nom + ' ' + dbo.categoria.cat_nom + ' envasado en ' + dbo.envasado.envas_nom + ' con un peso Aprox. de ' + CAST(dbo.producto.prod_peso_uni
                       AS varchar(MAX)) + '  kg c/u con el logotipo ' + dbo.logotipo.logo_nom + '.') AS pajilla, dbo.producto.prod_peso_uni
FROM         dbo.producto INNER JOIN
                      dbo.logotipo ON dbo.producto.logo_id = dbo.logotipo.logo_id INNER JOIN
                      dbo.categoria ON dbo.producto.cat_id = dbo.categoria.cat_id INNER JOIN
                      dbo.envasado ON dbo.producto.envas_id = dbo.envasado.envas_id

GO
/****** Object:  View [dbo].[vistaproductos]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistaproductos]
AS
SELECT     dbo.producto.prod_id AS ID, UPPER(dbo.producto.prod_nom + ' ' + dbo.categoria.cat_nom + ' de ' + CAST(dbo.producto.prod_peso_uni AS varchar(MAX)) 
                      + '  kg c/u envasado en ' + dbo.envasado.envas_nom + ' con logotipo ' + dbo.logotipo.logo_nom + ' de colores ' + dbo.producto.prod_color + '.') AS Producto, 
                      dbo.producto.prod_peso_uni AS Peso, dbo.categoria.cat_nom AS Categoria
FROM         dbo.producto INNER JOIN
                      dbo.logotipo ON dbo.producto.logo_id = dbo.logotipo.logo_id INNER JOIN
                      dbo.envasado ON dbo.producto.envas_id = dbo.envasado.envas_id INNER JOIN
                      dbo.categoria ON dbo.producto.cat_id = dbo.categoria.cat_id

GO
/****** Object:  View [dbo].[vistadetalleguias]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistadetalleguias]
AS
SELECT        dbo.DetalleGuia.id_det_guia AS [ID Detalle], dbo.vistaguias.ID AS [ID Guia], dbo.DetalleGuia.cantidad_sacos AS Cantidad, dbo.DetalleGuia.unidad_medida, dbo.DetalleGuia.prod_id AS [ID Producro], 
                         dbo.vistaproductos.Producto AS Descripción, dbo.DetalleGuia.peso_sacos AS Peso, dbo.DetalleGuia.cantidad_sacos * dbo.DetalleGuia.peso_sacos AS [Sub Total], dbo.vistaguias.Numero, 
                         dbo.vistaguias.Emisión, dbo.vistaguias.Traslado, dbo.vistaguias.Partida, dbo.vistaguias.[ID Partida], dbo.vistaguias.[Pto. partida], dbo.vistaguias.[ID Destinatario], dbo.vistaguias.[Razon social], 
                         dbo.vistaguias.[Ruc Destinatario], dbo.vistaguias.LLegada, dbo.vistaguias.[ID. llegada], dbo.vistaguias.[Pto. llegada], dbo.vistaguias.[ID Vehiculo], dbo.vistaguias.[Marca Camion], 
                         dbo.vistaguias.[Nro. placa Camion], dbo.vistaguias.[Nro. certificado Camion], dbo.vistaguias.[Marca Carreta], dbo.vistaguias.[Nro. Placa Carreta], dbo.vistaguias.[Nro. Certificado Carreta], 
                         dbo.vistaguias.[ID Chofer], dbo.vistaguias.Chofer, dbo.vistaguias.Brevete, dbo.vistaguias.[Telefono Chofer], dbo.vistaguias.[Nro Deposito], dbo.vistaguias.Monto, dbo.vistaguias.[Nro Depositoo], 
                         dbo.vistaguias.Montoo, dbo.vistaguias.[ID Traslado], dbo.vistaguias.[Motivo Traslado], dbo.vistaguias.[ID Remitente], dbo.vistaguias.Remitente, dbo.vistaguias.ruc, dbo.vistaguias.[Empresa Transporte], 
                         dbo.vistaguias.[RUC Emp Transporte], dbo.vistaguias.[Domicilio Transportista], dbo.vistaProd_pajilla.pajilla, dbo.vistaproductos.Categoria, dbo.DetalleGuia.Precio_Venta, dbo.DetalleGuia.IGV, 
                         dbo.vistaguias.departamento, dbo.vistaguias.provincia, dbo.vistaguias.distrito
FROM            dbo.vistaguias INNER JOIN
                         dbo.DetalleGuia ON dbo.vistaguias.ID = dbo.DetalleGuia.id_guia INNER JOIN
                         dbo.vistaproductos ON dbo.DetalleGuia.prod_id = dbo.vistaproductos.ID INNER JOIN
                         dbo.vistaProd_pajilla ON dbo.DetalleGuia.prod_id = dbo.vistaProd_pajilla.prod_id

GO
/****** Object:  View [dbo].[VistaToT_Guia]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaToT_Guia]
AS
SELECT     TOP (100) PERCENT [ID Guia], SUM([Sub Total]) AS TOTAL
FROM         dbo.vistadetalleguias
GROUP BY [ID Guia]

GO
/****** Object:  View [dbo].[VistaRepVentasxRem]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaRepVentasxRem]
AS
SELECT     [ID Guia], Emisión, Numero, Remitente, Monto, Montoo, Monto + Montoo AS [Monto Total], SUM(Cantidad) AS [Sacos Total], Categoria
FROM         dbo.vistadetalleguias
GROUP BY [ID Guia], Remitente, Numero, Emisión, Categoria, Monto, Montoo, Monto + Montoo

GO
/****** Object:  View [dbo].[VistaPrecio_Cat]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaPrecio_Cat]
AS
SELECT     dbo.DetalleGuia.id_det_guia, dbo.DetalleGuia.cantidad_sacos AS Cantidad, dbo.categoria.cat_nom AS Categoria, dbo.categoria.Precio_Cat AS [Precio x Categoria], 
                      dbo.DetalleGuia.cantidad_sacos * dbo.categoria.Precio_Cat AS [Precio Total Categoria], dbo.logotipo.logo_nom AS Logotipo
FROM         dbo.producto INNER JOIN
                      dbo.categoria ON dbo.producto.cat_id = dbo.categoria.cat_id INNER JOIN
                      dbo.DetalleGuia ON dbo.producto.prod_id = dbo.DetalleGuia.prod_id INNER JOIN
                      dbo.logotipo ON dbo.producto.logo_id = dbo.logotipo.logo_id

GO
/****** Object:  View [dbo].[VistaPrecio_Ivap]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaPrecio_Ivap]
AS
SELECT     dbo.vistadetalleguias.[ID Detalle], dbo.VistaPrecio_Cat.Cantidad, dbo.VistaPrecio_Cat.Logotipo, dbo.VistaPrecio_Cat.Categoria, 
                      dbo.VistaPrecio_Cat.[Precio x Categoria], dbo.VistaPrecio_Cat.[Precio Total Categoria], ROUND(dbo.VistaPrecio_Cat.[Precio Total Categoria] * 0.0385, 3) 
                      AS [Precio Total Ivap]
FROM         dbo.VistaPrecio_Cat INNER JOIN
                      dbo.vistadetalleguias ON dbo.VistaPrecio_Cat.id_det_guia = dbo.vistadetalleguias.[ID Detalle]

GO
/****** Object:  View [dbo].[vistaDestinatarios]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistaDestinatarios]
AS
SELECT     dbo.Destinatario.id_Dest AS ID, dbo.Destinatario.razonsocial AS [RAZON SOCIAL], dbo.Destinatario.ruc, dbo.TipoDocumento.nombre_tip_doc AS [TIPO DOC], 
                      dbo.Destinatario.nro_doc AS [NRO DOC], dbo.Destinatario.Direccion, dbo.Ubigeo.distrito, dbo.Ubigeo.provincia, dbo.Ubigeo.departamento, 
                      dbo.Ubigeo.id_ubigeo AS [Id Ubigeo], dbo.Destinatario.Rep_Legal AS [Representante legal]
FROM         dbo.Destinatario INNER JOIN
                      dbo.Ubigeo ON dbo.Destinatario.id_ubigeo = dbo.Ubigeo.id_ubigeo LEFT OUTER JOIN
                      dbo.TipoDocumento ON dbo.Destinatario.id_tip_doc = dbo.TipoDocumento.id_tip_doc

GO
/****** Object:  View [dbo].[vistaremitentes]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistaremitentes]
AS
SELECT     dbo.Remitente.id_remitente AS ID, dbo.Remitente.nombre AS Remitente, dbo.Remitente.ruc, dbo.Remitente.Cuenta_Detrac AS [Cuenta Detraccion], 
                      dbo.Remitente.direccion, dbo.Remitente.id_ubigeo AS [ID UBIGEO], dbo.Ubigeo.distrito, dbo.Ubigeo.provincia, dbo.Ubigeo.departamento, 
                      dbo.Remitente.descripcion
FROM         dbo.Remitente INNER JOIN
                      dbo.Ubigeo ON dbo.Remitente.id_ubigeo = dbo.Ubigeo.id_ubigeo

GO
/****** Object:  View [dbo].[vistaunidadtransportes]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistaunidadtransportes]
AS
SELECT        dbo.Vehiculo.id_vehi AS ID, dbo.EmpresaTransporte.nombre AS [Empresa Transporte], dbo.EmpresaTransporte.ruc AS [RUC Emp Transporte], dbo.Vehiculo.marca AS [Marca Camion], 
                         dbo.Vehiculo.nroplaca AS [Nro. placa Camion], dbo.Vehiculo.nrocertificado AS [Nro. certificado Camion], dbo.Vehiculo.marca2 AS [Marca Carreta], dbo.Vehiculo.nroplaca2 AS [Nro. Placa Carreta], 
                         dbo.Vehiculo.nrocertificado2 AS [Nro. Certificado Carreta], dbo.Vehiculo.Largo AS [Largo Camion], dbo.Vehiculo.Ancho AS [Ancho Camion], dbo.Vehiculo.Alto AS [Alto Camion], 
                         dbo.Vehiculo.Peso_neto1 AS [Peso Neto Remolque], dbo.Vehiculo.Largo2 AS [Largo Carreta], dbo.Vehiculo.Ancho2 AS [Ancho Carreta], dbo.Vehiculo.Alto2 AS [Alto Carreta], 
                         dbo.Vehiculo.Peso_neto2 AS [Peso Neto Semi-Remolque], dbo.Vehiculo.Conf_Vehi AS [Configuracion Vehicular], dbo.Vehiculo.Pes_Veh AS [Peso Vehicular], dbo.Vehiculo.Peso_Bonif AS [Peso Bonificacion], 
                         dbo.Vehiculo.Descripcion, dbo.EmpresaTransporte.domicilio, dbo.Vehiculo.id_emp_trans AS [Id Transportista]
FROM            dbo.Vehiculo INNER JOIN
                         dbo.EmpresaTransporte ON dbo.Vehiculo.id_emp_trans = dbo.EmpresaTransporte.id_emp_trans

GO
/****** Object:  View [dbo].[vistaGuia_Peso_Nota]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistaGuia_Peso_Nota]
AS
SELECT        dbo.Guia.id_guia AS [ID Guia], dbo.Guia.fecha_emision_guia AS [Fecha emision], dbo.Guia.serie_guia AS Serie, dbo.Guia.nro_guia AS [Nro. Guia de Remision], 
                         dbo.vistaDestinatarios.[RAZON SOCIAL] AS Destinatario, dbo.vistaDestinatarios.ruc AS [Ruc Destinatario], dbo.vistaDestinatarios.Direccion AS [Direccion Destinatario], dbo.vistaDestinatarios.distrito, 
                         dbo.vistaDestinatarios.provincia, dbo.vistaDestinatarios.departamento, dbo.vistaDestinatarios.[Representante legal], dbo.vistaunidadtransportes.[Empresa Transporte] AS Empresa, 
                         dbo.vistaunidadtransportes.[RUC Emp Transporte] AS RUC, dbo.vistaunidadtransportes.domicilio, dbo.vistaunidadtransportes.[Nro. placa Camion], dbo.vistaunidadtransportes.[Nro. Placa Carreta], 
                         dbo.vistaunidadtransportes.[Largo Camion], dbo.vistaunidadtransportes.[Ancho Camion], dbo.vistaunidadtransportes.[Alto Camion], dbo.vistaunidadtransportes.[Peso Neto Remolque], 
                         dbo.vistaunidadtransportes.[Largo Carreta], dbo.vistaunidadtransportes.[Ancho Carreta], dbo.vistaunidadtransportes.[Alto Carreta], dbo.vistaunidadtransportes.[Peso Neto Semi-Remolque], 
                         dbo.vistaunidadtransportes.[Configuracion Vehicular], dbo.vistaunidadtransportes.[Peso Vehicular] AS [Peso Bruto Vehicular], dbo.vistaremitentes.Remitente, dbo.vistaremitentes.ruc AS [Ruc Remitente], 
                         dbo.Chofer.Nombre_chof AS [Nombre Chofer], dbo.Chofer.Apellido_chof AS [Apellido Chofer], dbo.Chofer.Brevete, dbo.Chofer.Telefono_chof AS [Telefono Chofer], dbo.VistaToT_Guia.TOTAL, 
                         dbo.vistaunidadtransportes.[Peso Bonificacion], dbo.vistaunidadtransportes.Descripcion
FROM            dbo.Guia INNER JOIN
                         dbo.Chofer ON dbo.Guia.id_chofer = dbo.Chofer.id_chofer INNER JOIN
                         dbo.vistaunidadtransportes ON dbo.Guia.id_vehi = dbo.vistaunidadtransportes.ID INNER JOIN
                         dbo.vistaremitentes ON dbo.Guia.id_remitente = dbo.vistaremitentes.ID INNER JOIN
                         dbo.VistaToT_Guia ON dbo.Guia.id_guia = dbo.VistaToT_Guia.[ID Guia] INNER JOIN
                         dbo.vistaDestinatarios ON dbo.Guia.destinatario_guia = dbo.vistaDestinatarios.ID

GO
/****** Object:  View [dbo].[VistaPeso_Medida]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaPeso_Medida]
AS
SELECT        dbo.Peso_Med.Id_peso_med AS [Id Peso Medida], dbo.vistaGuia_Peso_Nota.[ID Guia], dbo.Peso_Med.Fecha, dbo.vistaGuia_Peso_Nota.Serie, dbo.vistaGuia_Peso_Nota.[Nro. Guia de Remision], 
                         dbo.vistaGuia_Peso_Nota.Destinatario, dbo.vistaGuia_Peso_Nota.[Ruc Destinatario], dbo.vistaGuia_Peso_Nota.[Direccion Destinatario] AS Direccion, dbo.vistaGuia_Peso_Nota.distrito, 
                         dbo.vistaGuia_Peso_Nota.provincia, dbo.vistaGuia_Peso_Nota.departamento, dbo.vistaGuia_Peso_Nota.[Representante legal], dbo.vistaGuia_Peso_Nota.[Nro. placa Camion], 
                         dbo.vistaGuia_Peso_Nota.[Nro. Placa Carreta], dbo.vistaGuia_Peso_Nota.[Largo Camion], dbo.vistaGuia_Peso_Nota.[Ancho Camion], dbo.vistaGuia_Peso_Nota.[Alto Camion], 
                         dbo.vistaGuia_Peso_Nota.[Peso Neto Remolque], dbo.vistaGuia_Peso_Nota.[Largo Carreta], dbo.vistaGuia_Peso_Nota.[Ancho Carreta], dbo.vistaGuia_Peso_Nota.[Alto Carreta], 
                         dbo.vistaGuia_Peso_Nota.[Peso Neto Semi-Remolque], dbo.vistaGuia_Peso_Nota.[Configuracion Vehicular], dbo.vistaGuia_Peso_Nota.[Peso Bruto Vehicular], 
                         ROUND(dbo.vistaGuia_Peso_Nota.[Peso Neto Remolque] + dbo.vistaGuia_Peso_Nota.[Peso Neto Semi-Remolque] + dbo.vistaGuia_Peso_Nota.TOTAL, 0) AS [Peso Bruto Transportado], 
                         dbo.vistaGuia_Peso_Nota.[Peso Bonificacion], dbo.Peso_Med.Observacion, dbo.vistaGuia_Peso_Nota.TOTAL, dbo.vistaGuia_Peso_Nota.Descripcion
FROM            dbo.Peso_Med INNER JOIN
                         dbo.vistaGuia_Peso_Nota ON dbo.Peso_Med.id_guia = dbo.vistaGuia_Peso_Nota.[ID Guia]

GO
/****** Object:  View [dbo].[VistaCategoria]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaCategoria]
AS
SELECT     cat_id AS ID, cat_nom AS [Nombre Categoria], Precio_Cat AS [Precio Categoria], cat_desc AS [Descripcion Categoria]
FROM         dbo.categoria

GO
/****** Object:  View [dbo].[vistaChofer]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistaChofer]
AS
SELECT     id_chofer AS ID, Nombre_chof + ' ' + Apellido_chof AS [Nombres y Apellidos], Nombre_chof AS Nombre, Apellido_chof AS Apellido, Brevete, 
                      Telefono_chof AS Telefono
FROM         dbo.Chofer

GO
/****** Object:  View [dbo].[VistaCliente]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaCliente]
AS
SELECT     dbo.Cliente.Id_Cliente AS [Id Cliente], dbo.Tipo_Cliente.Id_Tipo_Cliente AS [Id Tipo Cliente], dbo.Zona.Id_Zona AS [Id Zona], 
                      dbo.TipoDocumento.id_tip_doc AS [Id Tipo Dcto], dbo.Ubigeo.id_ubigeo AS [Id Ubigeo], dbo.Cliente.Nombre_Cli AS Cliente, dbo.Cliente.Telefono_Cli AS Telefono, 
                      dbo.Cliente.Direccion_Cli AS Direccion, dbo.Zona.Nombre_Zona AS Zona, dbo.Ubigeo.distrito, dbo.Cliente.Correo_Cli AS Correo, 
                      dbo.TipoDocumento.nombre_tip_doc AS [Tipo Dcto], dbo.Cliente.Nro_Dcto_Cli AS [Nro Dcto], dbo.Tipo_Cliente.Tipo_Cli AS [Tipo de Cliente], 
                      dbo.Cliente.Linea_Credito_Cli AS [Linea de Credito], dbo.Cliente.Descrip_Cli AS Descripcion
FROM         dbo.Cliente INNER JOIN
                      dbo.Tipo_Cliente ON dbo.Cliente.Id_Tipo_Cliente = dbo.Tipo_Cliente.Id_Tipo_Cliente INNER JOIN
                      dbo.Zona ON dbo.Cliente.Id_Zona = dbo.Zona.Id_Zona INNER JOIN
                      dbo.Ubigeo ON dbo.Zona.id_ubigeo = dbo.Ubigeo.id_ubigeo INNER JOIN
                      dbo.TipoDocumento ON dbo.Cliente.id_tip_doc = dbo.TipoDocumento.id_tip_doc

GO
/****** Object:  View [dbo].[VistaComisionista]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaComisionista]
AS
SELECT        dbo.Comisionista.Id_Comisionista AS [Id Comisionista], dbo.Comisionista.Nombre_Com AS Comisionista, dbo.Comisionista.Telefono_Com AS Telefono, dbo.TipoDocumento.nombre_tip_doc AS [Tipo Dcto], 
                         dbo.Comisionista.Nro_Dcto_Com AS [Nro Documento], dbo.Comisionista.Direccion_Com AS Direccion, dbo.Zona.Nombre_Zona AS Zona, dbo.Ubigeo.Distrito, dbo.Comisionista.Descrip_Com AS Descripcion, 
                         dbo.Zona.Id_Zona AS [Id Zona], dbo.TipoDocumento.id_tip_doc AS [Id Tipo Dcto]
FROM            dbo.Comisionista INNER JOIN
                         dbo.Zona ON dbo.Comisionista.Id_Zona = dbo.Zona.Id_Zona INNER JOIN
                         dbo.TipoDocumento ON dbo.Comisionista.id_tip_doc = dbo.TipoDocumento.id_tip_doc INNER JOIN
                         dbo.Ubigeo ON dbo.Zona.id_ubigeo = dbo.Ubigeo.id_ubigeo

GO
/****** Object:  View [dbo].[VistaDetalleCat]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaDetalleCat]
AS
SELECT     dbo.Detalle_pag_cat.id_det_pag_cat, dbo.categoria.cat_id, dbo.Detalle_pag_cat.Precio, dbo.Detalle_pag_cat.Ivap, dbo.Detalle_pag_cat.id_pag_detrac
FROM         dbo.Detalle_pag_cat INNER JOIN
                      dbo.categoria ON dbo.Detalle_pag_cat.cat_id = dbo.categoria.cat_id

GO
/****** Object:  View [dbo].[VistaDetallePago_Cat]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaDetallePago_Cat]
AS
SELECT     dbo.Pago_Detrac.id_pag_detrac AS [Id Pago Detrac.], dbo.Detalle_pag_cat.id_det_pag_cat AS [Id Detalle Pago Detrac], dbo.categoria.cat_id AS [Id Categoria], 
                      dbo.Pago_Detrac.Fecha, dbo.categoria.cat_nom AS Categoria, dbo.Detalle_pag_cat.Precio, dbo.Detalle_pag_cat.Cantidad, dbo.Detalle_pag_cat.Ivap, 
                      ROUND(dbo.Detalle_pag_cat.Precio * dbo.Detalle_pag_cat.Cantidad * dbo.Detalle_pag_cat.Ivap, 2) AS [Precio x Categoria]
FROM         dbo.Detalle_pag_cat INNER JOIN
                      dbo.Pago_Detrac ON dbo.Detalle_pag_cat.id_pag_detrac = dbo.Pago_Detrac.id_pag_detrac INNER JOIN
                      dbo.categoria ON dbo.Detalle_pag_cat.cat_id = dbo.categoria.cat_id

GO
/****** Object:  View [dbo].[vistaemptransportes]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistaemptransportes]
AS
SELECT     id_emp_trans AS ID, nombre AS Empresa, ruc, domicilio AS Domicilio
FROM         dbo.EmpresaTransporte

GO
/****** Object:  View [dbo].[vistaEnvasado]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistaEnvasado]
AS
SELECT     envas_id AS ID, envas_nom AS [Nombre Envase], envas_desc AS [Descripcion Envase]
FROM         dbo.envasado

GO
/****** Object:  View [dbo].[VistaLogotipo]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaLogotipo]
AS
SELECT     logo_id AS ID, logo_nom AS [Nombre Logotipo], logo_descr AS [Descripcion Logotipo]
FROM         dbo.logotipo

GO
/****** Object:  View [dbo].[VistaNota_Envio_Arroz]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaNota_Envio_Arroz]
AS
SELECT     dbo.Nota_Env_Arroz.Id_nota_arroz AS [Id Nota Arroz], dbo.Nota_Env_Arroz.id_guia AS [Id Guia], dbo.Nota_Env_Arroz.id_pag_detrac AS [Id Pago Detrac.], 
                      dbo.Nota_Env_Arroz.Id_Trabajador AS [Id Trabajador], dbo.Nota_Env_Arroz.fecha, dbo.Guia.serie_guia AS [Nro. Serie], dbo.Guia.nro_guia AS Numero, 
                      dbo.EmpresaTransporte.domicilio AS [Domicilio Transportista], dbo.EmpresaTransporte.nombre AS Empresa, dbo.EmpresaTransporte.ruc, 
                      dbo.Vehiculo.nroplaca AS [Nro. Placa Remolque], dbo.Vehiculo.nroplaca2 AS [Nro. Placa Semi - Remolque], 
                      dbo.Chofer.Nombre_chof + ' ' + dbo.Chofer.Apellido_chof AS Chofer, dbo.Chofer.Brevete, dbo.Chofer.Telefono_chof AS [Telefono Chofer], 
                      dbo.Trabajador.Nombres + ' ' + dbo.Trabajador.Apellidos AS Trabajador, dbo.Nota_Env_Arroz.Destinatario_Arr AS Destinatario, 
                      dbo.Nota_Env_Arroz.Direccion AS [Direccion Destinatario], dbo.Nota_Env_Arroz.Telef_Dest_Arr AS [Telefono Destinatario], 
                      dbo.Nota_Env_Arroz.costo_flete_arr AS [Costo Flete], dbo.Nota_Env_Arroz.a_cuenta_arr AS [A Cuenta], dbo.Nota_Env_Arroz.Toneladas, 
                      dbo.Nota_Env_Arroz.observacion, dbo.Nota_Env_Arroz.Comentario, dbo.Remitente.nombre AS Remitente
FROM         dbo.Nota_Env_Arroz INNER JOIN
                      dbo.Guia ON dbo.Nota_Env_Arroz.id_guia = dbo.Guia.id_guia INNER JOIN
                      dbo.Vehiculo ON dbo.Guia.id_vehi = dbo.Vehiculo.id_vehi INNER JOIN
                      dbo.Chofer ON dbo.Guia.id_chofer = dbo.Chofer.id_chofer INNER JOIN
                      dbo.EmpresaTransporte ON dbo.Vehiculo.id_emp_trans = dbo.EmpresaTransporte.id_emp_trans INNER JOIN
                      dbo.Remitente ON dbo.Guia.id_remitente = dbo.Remitente.id_remitente INNER JOIN
                      dbo.Trabajador ON dbo.Nota_Env_Arroz.Id_Trabajador = dbo.Trabajador.Id_Trabajador

GO
/****** Object:  View [dbo].[VistaNota_Envio_Arroz_Det]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaNota_Envio_Arroz_Det]
AS
SELECT     dbo.Nota_Env_Arroz.Id_nota_arroz AS [ID Nota Arroz], dbo.Guia.id_guia AS [Id Guia], dbo.DetalleGuia.id_det_guia AS [ID Detalle], 
                      dbo.Pago_Detrac.id_pag_detrac AS [Id Pago Detrac.], dbo.Detalle_pag_cat.id_det_pag_cat AS [Id Detalle Pago], dbo.Chofer.id_chofer AS [Id Chofer], 
                      dbo.Vehiculo.id_vehi AS [Id Vehiculo], dbo.EmpresaTransporte.id_emp_trans AS [Id Transportista], dbo.producto.prod_id AS [Id Producto], 
                      dbo.logotipo.logo_id AS [Id Logo], dbo.categoria.cat_id AS [Id Categoria], dbo.Trabajador.Id_Trabajador AS [Id Trabajador], dbo.Nota_Env_Arroz.fecha, 
                      dbo.Guia.serie_guia AS [Nro. Serie], dbo.Guia.nro_guia AS Numero, dbo.EmpresaTransporte.nombre AS Empresa, dbo.EmpresaTransporte.ruc, 
                      dbo.EmpresaTransporte.domicilio AS [Domicilio Transportista], dbo.Vehiculo.nroplaca AS [Nro. Placa Remolque], 
                      dbo.Vehiculo.nroplaca2 AS [Nro. Placa Semi - Remolque], dbo.Chofer.Nombre_chof AS [Nombre Chofer], dbo.Chofer.Apellido_chof AS [Apellido Chofer], 
                      dbo.Chofer.Brevete, dbo.Chofer.Telefono_chof AS [Telefono Chofer], dbo.Trabajador.Nombres + ' ' + dbo.Trabajador.Apellidos AS Trabajador, 
                      dbo.Nota_Env_Arroz.Destinatario_Arr AS Destinatario, dbo.Nota_Env_Arroz.Direccion AS [Direccion Destinatario], 
                      dbo.Nota_Env_Arroz.Telef_Dest_Arr AS [Telefono Destinatario], dbo.Nota_Env_Arroz.Comentario, dbo.Nota_Env_Arroz.observacion, 
                      dbo.Nota_Env_Arroz.costo_flete_arr AS [Costo Flete], dbo.Nota_Env_Arroz.a_cuenta_arr AS [A Cuenta], dbo.Nota_Env_Arroz.Toneladas, 
                      dbo.logotipo.logo_nom AS Logotipo, dbo.producto.Nomb_Comer AS [Nombre Comercial], dbo.DetalleGuia.cantidad_sacos AS Cantidad, 
                      dbo.categoria.cat_nom AS Categoria, dbo.Detalle_pag_cat.Precio AS [Precio x Categoria], 
                      dbo.Detalle_pag_cat.Precio * dbo.DetalleGuia.cantidad_sacos AS [Precio Total Categoria], 
                      dbo.Detalle_pag_cat.Precio * dbo.DetalleGuia.cantidad_sacos * dbo.Detalle_pag_cat.Ivap AS [Precio Total Ivap], 
                      ROUND(dbo.DetalleGuia.cantidad_sacos * dbo.Detalle_pag_cat.Precio * dbo.Detalle_pag_cat.Ivap / dbo.DetalleGuia.cantidad_sacos, 4) AS [C. Ivap x Saco], 
                      dbo.Detalle_pag_cat.Ivap
FROM         dbo.DetalleGuia INNER JOIN
                      dbo.Guia ON dbo.DetalleGuia.id_guia = dbo.Guia.id_guia INNER JOIN
                      dbo.Nota_Env_Arroz ON dbo.Guia.id_guia = dbo.Nota_Env_Arroz.id_guia INNER JOIN
                      dbo.Pago_Detrac ON dbo.Nota_Env_Arroz.id_pag_detrac = dbo.Pago_Detrac.id_pag_detrac INNER JOIN
                      dbo.Chofer ON dbo.Guia.id_chofer = dbo.Chofer.id_chofer INNER JOIN
                      dbo.Vehiculo ON dbo.Guia.id_vehi = dbo.Vehiculo.id_vehi INNER JOIN
                      dbo.EmpresaTransporte ON dbo.Vehiculo.id_emp_trans = dbo.EmpresaTransporte.id_emp_trans INNER JOIN
                      dbo.producto ON dbo.DetalleGuia.prod_id = dbo.producto.prod_id INNER JOIN
                      dbo.logotipo ON dbo.producto.logo_id = dbo.logotipo.logo_id INNER JOIN
                      dbo.categoria ON dbo.producto.cat_id = dbo.categoria.cat_id INNER JOIN
                      dbo.Detalle_pag_cat ON dbo.Pago_Detrac.id_pag_detrac = dbo.Detalle_pag_cat.id_pag_detrac AND dbo.categoria.cat_id = dbo.Detalle_pag_cat.cat_id INNER JOIN
                      dbo.Trabajador ON dbo.Nota_Env_Arroz.Id_Trabajador = dbo.Trabajador.Id_Trabajador

GO
/****** Object:  View [dbo].[VistaPago_Detrac]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaPago_Detrac]
AS
SELECT     dbo.Pago_Detrac.id_pag_detrac AS [Id Pago Detrac.], dbo.Pago_Detrac.Fecha AS [Fecha Precios], dbo.Pago_Detrac.Descripcion, 
                      dbo.Pago_Detrac.id_remitente AS [Id Remitente], dbo.Remitente.nombre AS Remitente, dbo.Remitente.ruc, dbo.Remitente.Cuenta_Detrac AS [Cuenta Detraccion], 
                      dbo.Pago_Detrac.Fecha_Emis AS [Fecha Emision]
FROM         dbo.Pago_Detrac INNER JOIN
                      dbo.Remitente ON dbo.Pago_Detrac.id_remitente = dbo.Remitente.id_remitente

GO
/****** Object:  View [dbo].[vistaproductos2]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistaproductos2]
AS
SELECT     dbo.producto.prod_id AS ID, UPPER(dbo.producto.prod_nom + ' ' + dbo.categoria.cat_nom + ' de ' + CAST(dbo.producto.prod_peso_uni AS varchar(MAX)) 
                      + '  kg c/u envasado en ' + dbo.envasado.envas_nom + ' con logotipo ' + dbo.logotipo.logo_nom + ' de colores ' + dbo.producto.prod_color + ' . ') AS Producto, 
                      dbo.producto.Nomb_Comer AS [Nombre Comercial], dbo.producto.prod_peso_uni AS Peso, UPPER(dbo.producto.prod_color) AS Color, UPPER(dbo.categoria.cat_nom) 
                      AS Categoria, UPPER(dbo.logotipo.logo_nom) AS Logotipo, UPPER(dbo.envasado.envas_nom) AS Envasado, UPPER(dbo.producto.prod_nom) AS Productox, 
                      dbo.logotipo.logo_id AS [Id Logo]
FROM         dbo.producto INNER JOIN
                      dbo.logotipo ON dbo.producto.logo_id = dbo.logotipo.logo_id INNER JOIN
                      dbo.envasado ON dbo.producto.envas_id = dbo.envasado.envas_id INNER JOIN
                      dbo.categoria ON dbo.producto.cat_id = dbo.categoria.cat_id

GO
/****** Object:  View [dbo].[VistaTipo_Cliente]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaTipo_Cliente]
AS
SELECT     Id_Tipo_Cliente AS [Id Tipo Cliente], Tipo_Cli AS [Tipo Cliente], Descrip_Tipo_Cli AS Descripcion
FROM         dbo.Tipo_Cliente

GO
/****** Object:  View [dbo].[VistaTipo_Dcto]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaTipo_Dcto]
AS
SELECT        id_tip_doc AS [Id Tipo Dcto], Codigo_Tipo_Documento AS Codigo, nombre_tip_doc AS [Tipo de Dcto], Siglas_Tipo_Documento AS Siglas, Descripcion
FROM            dbo.TipoDocumento

GO
/****** Object:  View [dbo].[VistaTipo_Trabaj]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaTipo_Trabaj]
AS
SELECT     Id_tipo_trab AS [Id Tipo Trab.], Tip_trabaj AS [Tipo de Trabajador], Descrip_Tipo_trabaj AS Descripcion
FROM         dbo.Tipo_Trabajador

GO
/****** Object:  View [dbo].[VistaTrabajador]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaTrabajador]
AS
SELECT     TOP (100) PERCENT dbo.Trabajador.Id_Trabajador AS [Id Trabajador], dbo.Trabajador.Nombres + ' ' + dbo.Trabajador.Apellidos AS [Nombre Completo], 
                      dbo.TipoDocumento.nombre_tip_doc AS [Tipo de Documento], dbo.Trabajador.Nro_Dcto AS [Nro Dcto], dbo.Trabajador.Direccion, dbo.Trabajador.Telefono, 
                      dbo.Trabajador.Correo, dbo.Trabajador.Fecha_Nac AS [Fecha Nac.], dbo.Trabajador.Fecha_Ingreso AS [Fecha Ingreso], 
                      dbo.Tipo_Trabajador.Tip_trabaj AS [Tipo de Trabajador], dbo.Trabajador.Descrip_Trab AS Descripcion, dbo.Trabajador.Nombres, dbo.Trabajador.Apellidos, 
                      dbo.Tipo_Trabajador.Id_tipo_trab AS [Id Tipo Trabaj], dbo.TipoDocumento.id_tip_doc AS [Id Tipo Dcto]
FROM         dbo.Tipo_Trabajador INNER JOIN
                      dbo.Trabajador ON dbo.Tipo_Trabajador.Id_tipo_trab = dbo.Trabajador.Id_tipo_trab INNER JOIN
                      dbo.TipoDocumento ON dbo.Trabajador.id_tip_doc = dbo.TipoDocumento.id_tip_doc
ORDER BY [Id Trabajador]

GO
/****** Object:  View [dbo].[vistaubigeos]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[vistaubigeos]
AS
SELECT        id_ubigeo AS ID, Codigo, distrito, provincia, departamento
FROM            dbo.Ubigeo

GO
/****** Object:  View [dbo].[VistaZona]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VistaZona]
AS
SELECT     dbo.Zona.Id_Zona AS [Id Zona], dbo.Zona.Nombre_Zona AS Zona, dbo.Ubigeo.id_ubigeo AS [Id Ubigeo], dbo.Ubigeo.distrito, dbo.Ubigeo.provincia, 
                      dbo.Ubigeo.departamento, dbo.Zona.Descrip_Zona AS Descripcion, dbo.Zona.Orden_Zona AS [Orden Zona]
FROM         dbo.Zona INNER JOIN
                      dbo.Ubigeo ON dbo.Zona.id_ubigeo = dbo.Ubigeo.id_ubigeo

GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Tipo_Cliente] FOREIGN KEY([Id_Tipo_Cliente])
REFERENCES [dbo].[Tipo_Cliente] ([Id_Tipo_Cliente])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Tipo_Cliente]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_TipoDocumento1] FOREIGN KEY([id_tip_doc])
REFERENCES [dbo].[TipoDocumento] ([id_tip_doc])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_TipoDocumento1]
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_Zona] FOREIGN KEY([Id_Zona])
REFERENCES [dbo].[Zona] ([Id_Zona])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FK_Cliente_Zona]
GO
ALTER TABLE [dbo].[Comisionista]  WITH CHECK ADD  CONSTRAINT [FK_Comisionista_TipoDocumento] FOREIGN KEY([id_tip_doc])
REFERENCES [dbo].[TipoDocumento] ([id_tip_doc])
GO
ALTER TABLE [dbo].[Comisionista] CHECK CONSTRAINT [FK_Comisionista_TipoDocumento]
GO
ALTER TABLE [dbo].[Comisionista]  WITH CHECK ADD  CONSTRAINT [FK_Comisionista_Zona] FOREIGN KEY([Id_Zona])
REFERENCES [dbo].[Zona] ([Id_Zona])
GO
ALTER TABLE [dbo].[Comisionista] CHECK CONSTRAINT [FK_Comisionista_Zona]
GO
ALTER TABLE [dbo].[Destinatario]  WITH CHECK ADD  CONSTRAINT [FK_Cliente_TipoDocumento] FOREIGN KEY([id_tip_doc])
REFERENCES [dbo].[TipoDocumento] ([id_tip_doc])
GO
ALTER TABLE [dbo].[Destinatario] CHECK CONSTRAINT [FK_Cliente_TipoDocumento]
GO
ALTER TABLE [dbo].[Destinatario]  WITH CHECK ADD  CONSTRAINT [FK_Destinatario_Ubigeo] FOREIGN KEY([id_ubigeo])
REFERENCES [dbo].[Ubigeo] ([id_ubigeo])
GO
ALTER TABLE [dbo].[Destinatario] CHECK CONSTRAINT [FK_Destinatario_Ubigeo]
GO
ALTER TABLE [dbo].[Detalle_Devolucion_Comp_de_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Devolucion_Comp_de_Pago_Detalle_Envio_Comp_de_Pago] FOREIGN KEY([Id_Detalle_Env_Comp])
REFERENCES [dbo].[Detalle_Envio_Comp_de_Pago] ([Id_Detalle_Env_Comp])
GO
ALTER TABLE [dbo].[Detalle_Devolucion_Comp_de_Pago] CHECK CONSTRAINT [FK_Detalle_Devolucion_Comp_de_Pago_Detalle_Envio_Comp_de_Pago]
GO
ALTER TABLE [dbo].[Detalle_Devolucion_Comp_de_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Devolucion_Comp_de_Pago_Devolucion_Comp_de_Pago] FOREIGN KEY([Id_Devolucion_Comp])
REFERENCES [dbo].[Devolucion_Comp_de_Pago] ([Id_Devolucion_Comp])
GO
ALTER TABLE [dbo].[Detalle_Devolucion_Comp_de_Pago] CHECK CONSTRAINT [FK_Detalle_Devolucion_Comp_de_Pago_Devolucion_Comp_de_Pago]
GO
ALTER TABLE [dbo].[Detalle_Envio_Comp_de_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Envio_Comp_de_Pago_Detalle_Ingreso_Comp_de_Pago] FOREIGN KEY([Id_Detalle_Ing_Comp])
REFERENCES [dbo].[Detalle_Ingreso_Comp_de_Pago] ([Id_Detalle_Ing_Comp])
GO
ALTER TABLE [dbo].[Detalle_Envio_Comp_de_Pago] CHECK CONSTRAINT [FK_Detalle_Envio_Comp_de_Pago_Detalle_Ingreso_Comp_de_Pago]
GO
ALTER TABLE [dbo].[Detalle_Envio_Comp_de_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Envio_Comp_de_Pago_Envio_Comp_de_Pago] FOREIGN KEY([Id_Envio_Comp])
REFERENCES [dbo].[Envio_Comp_de_Pago] ([Id_Envio_Comp])
GO
ALTER TABLE [dbo].[Detalle_Envio_Comp_de_Pago] CHECK CONSTRAINT [FK_Detalle_Envio_Comp_de_Pago_Envio_Comp_de_Pago]
GO
ALTER TABLE [dbo].[Detalle_Ingreso_Comp_de_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_Ingreso_Comp_de_Pago_Ingreso_Comp_de_Pago] FOREIGN KEY([Id_Ing_Comp])
REFERENCES [dbo].[Ingreso_Comp_de_Pago] ([Id_Ing_Comp])
GO
ALTER TABLE [dbo].[Detalle_Ingreso_Comp_de_Pago] CHECK CONSTRAINT [FK_Detalle_Ingreso_Comp_de_Pago_Ingreso_Comp_de_Pago]
GO
ALTER TABLE [dbo].[Detalle_pag_cat]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_pag_cat_categoria] FOREIGN KEY([cat_id])
REFERENCES [dbo].[categoria] ([cat_id])
GO
ALTER TABLE [dbo].[Detalle_pag_cat] CHECK CONSTRAINT [FK_Detalle_pag_cat_categoria]
GO
ALTER TABLE [dbo].[Detalle_pag_cat]  WITH CHECK ADD  CONSTRAINT [FK_Detalle_pag_cat_Pago_Detrac] FOREIGN KEY([id_pag_detrac])
REFERENCES [dbo].[Pago_Detrac] ([id_pag_detrac])
GO
ALTER TABLE [dbo].[Detalle_pag_cat] CHECK CONSTRAINT [FK_Detalle_pag_cat_Pago_Detrac]
GO
ALTER TABLE [dbo].[DetalleGuia]  WITH CHECK ADD  CONSTRAINT [FK_DetalleGuia_producto] FOREIGN KEY([prod_id])
REFERENCES [dbo].[producto] ([prod_id])
GO
ALTER TABLE [dbo].[DetalleGuia] CHECK CONSTRAINT [FK_DetalleGuia_producto]
GO
ALTER TABLE [dbo].[Devolucion_Comp_de_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Devolucion_Comp_de_Pago_Operacion] FOREIGN KEY([Id_Ope])
REFERENCES [dbo].[Operacion] ([Id_Ope])
GO
ALTER TABLE [dbo].[Devolucion_Comp_de_Pago] CHECK CONSTRAINT [FK_Devolucion_Comp_de_Pago_Operacion]
GO
ALTER TABLE [dbo].[Devolucion_Comp_de_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Devolucion_Comp_de_Pago_Ubigeo] FOREIGN KEY([Id_Ubigeo])
REFERENCES [dbo].[Ubigeo] ([id_ubigeo])
GO
ALTER TABLE [dbo].[Devolucion_Comp_de_Pago] CHECK CONSTRAINT [FK_Devolucion_Comp_de_Pago_Ubigeo]
GO
ALTER TABLE [dbo].[Envio_Comp_de_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Envio_Comp_de_Pago_Comisionista] FOREIGN KEY([Id_Comisionista])
REFERENCES [dbo].[Comisionista] ([Id_Comisionista])
GO
ALTER TABLE [dbo].[Envio_Comp_de_Pago] CHECK CONSTRAINT [FK_Envio_Comp_de_Pago_Comisionista]
GO
ALTER TABLE [dbo].[Envio_Comp_de_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Envio_Comp_de_Pago_Operacion] FOREIGN KEY([Id_Ope])
REFERENCES [dbo].[Operacion] ([Id_Ope])
GO
ALTER TABLE [dbo].[Envio_Comp_de_Pago] CHECK CONSTRAINT [FK_Envio_Comp_de_Pago_Operacion]
GO
ALTER TABLE [dbo].[Guia]  WITH CHECK ADD  CONSTRAINT [FK_Guia_Chofer] FOREIGN KEY([id_chofer])
REFERENCES [dbo].[Chofer] ([id_chofer])
GO
ALTER TABLE [dbo].[Guia] CHECK CONSTRAINT [FK_Guia_Chofer]
GO
ALTER TABLE [dbo].[Guia]  WITH CHECK ADD  CONSTRAINT [FK_Guia_Destinatario1] FOREIGN KEY([destinatario_guia])
REFERENCES [dbo].[Destinatario] ([id_Dest])
GO
ALTER TABLE [dbo].[Guia] CHECK CONSTRAINT [FK_Guia_Destinatario1]
GO
ALTER TABLE [dbo].[Guia]  WITH CHECK ADD  CONSTRAINT [FK_Guia_MotivoTraslado] FOREIGN KEY([id_mot_traslado])
REFERENCES [dbo].[MotivoTraslado] ([id_mot_traslado])
GO
ALTER TABLE [dbo].[Guia] CHECK CONSTRAINT [FK_Guia_MotivoTraslado]
GO
ALTER TABLE [dbo].[Guia]  WITH CHECK ADD  CONSTRAINT [FK_Guia_Remitente] FOREIGN KEY([id_remitente])
REFERENCES [dbo].[Remitente] ([id_remitente])
GO
ALTER TABLE [dbo].[Guia] CHECK CONSTRAINT [FK_Guia_Remitente]
GO
ALTER TABLE [dbo].[Guia]  WITH CHECK ADD  CONSTRAINT [FK_Guia_Vehiculo] FOREIGN KEY([id_vehi])
REFERENCES [dbo].[Vehiculo] ([id_vehi])
GO
ALTER TABLE [dbo].[Guia] CHECK CONSTRAINT [FK_Guia_Vehiculo]
GO
ALTER TABLE [dbo].[Ingreso_Comp_de_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Ingreso_Comp_de_Pago_Operacion] FOREIGN KEY([Id_Ope])
REFERENCES [dbo].[Operacion] ([Id_Ope])
GO
ALTER TABLE [dbo].[Ingreso_Comp_de_Pago] CHECK CONSTRAINT [FK_Ingreso_Comp_de_Pago_Operacion]
GO
ALTER TABLE [dbo].[Ingreso_Comp_de_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Ingreso_Comp_de_Pago_Remitente] FOREIGN KEY([id_remitente])
REFERENCES [dbo].[Remitente] ([id_remitente])
GO
ALTER TABLE [dbo].[Ingreso_Comp_de_Pago] CHECK CONSTRAINT [FK_Ingreso_Comp_de_Pago_Remitente]
GO
ALTER TABLE [dbo].[Ingreso_Comp_de_Pago]  WITH CHECK ADD  CONSTRAINT [FK_Ingreso_Comp_de_Pago_Tipo_de_Comprobante_de_Pago] FOREIGN KEY([Id_Tipo_Comp])
REFERENCES [dbo].[Tipo_de_Comprobante_de_Pago] ([Id_Tipo_Comp])
GO
ALTER TABLE [dbo].[Ingreso_Comp_de_Pago] CHECK CONSTRAINT [FK_Ingreso_Comp_de_Pago_Tipo_de_Comprobante_de_Pago]
GO
ALTER TABLE [dbo].[Nota_Env_Arroz]  WITH CHECK ADD  CONSTRAINT [FK_Nota_Env_Arroz_Guia] FOREIGN KEY([id_guia])
REFERENCES [dbo].[Guia] ([id_guia])
GO
ALTER TABLE [dbo].[Nota_Env_Arroz] CHECK CONSTRAINT [FK_Nota_Env_Arroz_Guia]
GO
ALTER TABLE [dbo].[Nota_Env_Arroz]  WITH CHECK ADD  CONSTRAINT [FK_Nota_Env_Arroz_Pago_Detrac] FOREIGN KEY([id_pag_detrac])
REFERENCES [dbo].[Pago_Detrac] ([id_pag_detrac])
GO
ALTER TABLE [dbo].[Nota_Env_Arroz] CHECK CONSTRAINT [FK_Nota_Env_Arroz_Pago_Detrac]
GO
ALTER TABLE [dbo].[Nota_Env_Arroz]  WITH CHECK ADD  CONSTRAINT [FK_Nota_Env_Arroz_Trabajador] FOREIGN KEY([Id_Trabajador])
REFERENCES [dbo].[Trabajador] ([Id_Trabajador])
GO
ALTER TABLE [dbo].[Nota_Env_Arroz] CHECK CONSTRAINT [FK_Nota_Env_Arroz_Trabajador]
GO
ALTER TABLE [dbo].[Operacion]  WITH CHECK ADD  CONSTRAINT [FK_Operacion_Tipo_Operacion] FOREIGN KEY([Id_Tipo_Ope])
REFERENCES [dbo].[Tipo_Operacion] ([Id_Tipo_Ope])
GO
ALTER TABLE [dbo].[Operacion] CHECK CONSTRAINT [FK_Operacion_Tipo_Operacion]
GO
ALTER TABLE [dbo].[Pago_Detrac]  WITH CHECK ADD  CONSTRAINT [FK_Pago_Detrac_Remitente] FOREIGN KEY([id_remitente])
REFERENCES [dbo].[Remitente] ([id_remitente])
GO
ALTER TABLE [dbo].[Pago_Detrac] CHECK CONSTRAINT [FK_Pago_Detrac_Remitente]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [fk_producto_categoria] FOREIGN KEY([cat_id])
REFERENCES [dbo].[categoria] ([cat_id])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [fk_producto_categoria]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [fk_producto_envasado] FOREIGN KEY([envas_id])
REFERENCES [dbo].[envasado] ([envas_id])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [fk_producto_envasado]
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD  CONSTRAINT [fk_producto_logotipo] FOREIGN KEY([logo_id])
REFERENCES [dbo].[logotipo] ([logo_id])
GO
ALTER TABLE [dbo].[producto] CHECK CONSTRAINT [fk_producto_logotipo]
GO
ALTER TABLE [dbo].[Remitente]  WITH CHECK ADD  CONSTRAINT [FK_Remitente_Ubigeo] FOREIGN KEY([id_ubigeo])
REFERENCES [dbo].[Ubigeo] ([id_ubigeo])
GO
ALTER TABLE [dbo].[Remitente] CHECK CONSTRAINT [FK_Remitente_Ubigeo]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador_Tipo_Trabajador] FOREIGN KEY([Id_tipo_trab])
REFERENCES [dbo].[Tipo_Trabajador] ([Id_tipo_trab])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [FK_Trabajador_Tipo_Trabajador]
GO
ALTER TABLE [dbo].[Trabajador]  WITH CHECK ADD  CONSTRAINT [FK_Trabajador_TipoDocumento] FOREIGN KEY([id_tip_doc])
REFERENCES [dbo].[TipoDocumento] ([id_tip_doc])
GO
ALTER TABLE [dbo].[Trabajador] CHECK CONSTRAINT [FK_Trabajador_TipoDocumento]
GO
ALTER TABLE [dbo].[Vehiculo]  WITH CHECK ADD  CONSTRAINT [FK_Vehiculo_EmpresaTransporte] FOREIGN KEY([id_emp_trans])
REFERENCES [dbo].[EmpresaTransporte] ([id_emp_trans])
GO
ALTER TABLE [dbo].[Vehiculo] CHECK CONSTRAINT [FK_Vehiculo_EmpresaTransporte]
GO
ALTER TABLE [dbo].[Zona]  WITH CHECK ADD  CONSTRAINT [FK_Zona_Ubigeo] FOREIGN KEY([id_ubigeo])
REFERENCES [dbo].[Ubigeo] ([id_ubigeo])
GO
ALTER TABLE [dbo].[Zona] CHECK CONSTRAINT [FK_Zona_Ubigeo]
GO
/****** Object:  StoredProcedure [dbo].[consultarPeso_Med]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[consultarPeso_Med]
@Id_peso_med  	    int	= null

as
		
	SELECT * FROM  dbo.VistaPeso_Medida where [Id Peso Medida] = @Id_peso_med

GO
/****** Object:  StoredProcedure [dbo].[pa_listar]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pa_listar]
@opcion  	    INT			=	null
--@criterio  	    varchar(max)			=	null
as
		
if(@opcion=1)
   begin
       select id_remitente as ID,nombre AS Remitente , ruc as RUC, direccion as Direccion,
       dbo.Ubigeo.distrito as Distrito,  dbo.Ubigeo.provincia as Provincia, dbo.Ubigeo.departamento as Departamento
        from Ubigeo inner join dbo.Remitente on dbo.Ubigeo.id_ubigeo=dbo.Remitente.id_ubigeo 
       -- where nombre like '%'  + @opcion  + '%' 
   end
else if(@opcion=2)
   begin
       select * from dbo.vistaproductos
   end
else if(@opcion=3)
   begin
       select id_emp_trans as ID,nombre AS Empresa , ruc as RUC, domicilio as Domicilio from EmpresaTransporte
   end   
else if(@opcion=4)
   begin
       select id_ubigeo as ID,departamento as Depatrtamento,provincia as Provincia, distrito as Distrito from Ubigeo
   end
else if(@opcion=5)
   begin
       SELECT     dbo.Destinatario.id_Dest AS ID, dbo.Destinatario.razonsocial AS [RAZON SOCIAL], dbo.Destinatario.ruc AS RUC, dbo.TipoDocumento.nombre_tip_doc AS [TIPO DOC], 
                      dbo.Destinatario.nro_doc AS [NRO DOC]
FROM         dbo.Destinatario LEFT OUTER JOIN
                      dbo.TipoDocumento ON dbo.Destinatario.id_tip_doc = dbo.TipoDocumento.id_tip_doc
   end 
else if(@opcion=6)
   begin
SELECT     dbo.Vehiculo.id_vehi AS ID, dbo.Vehiculo.marca AS [Marca Camion], dbo.Vehiculo.nroplaca AS [Nro. placa Camion], dbo.Vehiculo.nrocertificado AS [Nro. certificado Camion], 
           dbo.Vehiculo.marca2 AS[Marca Carreta],DBO.Vehiculo.nroplaca2 AS [Nro. Placa Carreta], DBO.Vehiculo.nrocertificado2 AS [Nro. Certificado Carreta], 
           DBO.Vehiculo.Largo AS [Largo Camion], DBO.Vehiculo.Ancho AS [Ancho Camion], DBO.Vehiculo .Alto AS [Alto Camion],  dbo.Vehiculo .Peso_neto1 as [Peso Neto Remolque],
           dbo.Vehiculo.peso_neto2 as [Peso Neto Semi-Remolque],  DBO.Vehiculo.Largo2 AS [Largo Carreta], DBO.Vehiculo.Ancho2 AS [Ancho Carreta], DBO.Vehiculo .Alto2 AS [Alto Carreta],
           DBO.Vehiculo .Conf_Vehi AS [Configuracion Vehicular], dbo.Vehiculo.Pes_Veh as [Peso Vehicular], dbo.Vehiculo.Descripcion as Descripcion,           
                      dbo.EmpresaTransporte.nombre AS EMPRESA
FROM         dbo.EmpresaTransporte INNER JOIN
                      dbo.Vehiculo ON dbo.EmpresaTransporte.id_emp_trans = dbo.Vehiculo.id_emp_trans
   end
else if(@opcion=7)
   begin
       select id_mot_traslado as ID,nombre AS Motivo from dbo.MotivoTraslado
   end 
else if(@opcion=8)
   begin
       select cat_id as Codigo, cat_nom as Nombre from dbo.categoria
   end 
 else if(@opcion=9)
   begin
       select logo_id as Codigo, logo_nom as Nombre from dbo.logotipo
   end
 else if(@opcion=10)
   begin
       select envas_id as Codigo, envas_nom as Nombre from dbo.envasado
   end 
 else if(@opcion=11)
   begin
       select id_tip_doc as Codigo, nombre_tip_doc as Nombre from dbo.TipoDocumento
   end   
    else if(@opcion=12)
   begin
       select id_chofer as ID, Nombre_chof as Nombre, Apellido_chof as Apellido, Brevete as Brevete, Telefono_chof as Telefono
        from dbo.Chofer
   end                         
    --exec consultarpersona 1

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_categoria]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pa_listar_categoria]
--@opcion  	    int			=	null,
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@criterio is null)
          select * from dbo.vistacategoria
       else
           select * from dbo.Vistacategoria where [Nombre Categoria] like '%'  + @criterio + '%' 
end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_Chofer]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_listar_Chofer]
@opcion  	    int			=	null,
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@opcion=3)
          select * from dbo.vistachofer
            else if(@opcion=2)
          select * from dbo.vistachofer where Brevete like '%'  + @criterio + '%'
       --else if(@opcion=2)
       --   select * from dbo.vistachofer where Apellido like '%'  + @criterio + '%'  
       else if(@opcion=1)
          select * from dbo.vistachofer where [Nombres y Apellidos] like '%'  + @criterio + '%'             
   end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_Cliente]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[pa_listar_Cliente]
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@criterio is null)
          select * from dbo.VistaCliente
       else
           select * from dbo.VistaCliente where Cliente  like '%'  + @criterio + '%' 
           end

GO
/****** Object:  StoredProcedure [dbo].[pa_Listar_Comisionista]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[pa_Listar_Comisionista]
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@criterio is null)
          select * from dbo.VistaComisionista
       else
           select * from dbo.VistaComisionista where Comisionista  like '%'  + @criterio + '%' 
           end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_Destinatario]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pa_listar_Destinatario]
--@opcion  	    int			=	null,
@criterio  	    varchar(max)			=	null
as
		
 begin
       if(@criterio is null)
          select * from dbo.vistaDestinatarios
       else
           select * from dbo.vistaDestinatarios where [RAZON SOCIAL]   like '%'  + @criterio + '%' 
           
   --begin
   --    if(@opcion=4)
   --       select * from dbo.vistaclientes
   --    else if(@opcion=3)
   --       select * from dbo.vistaclientes where [Nro. doc.] like '%'  + @criterio + '%'
   --    else if(@opcion=2)
   --       select * from dbo.vistaclientes where [Nro. ruc] like '%'  + @criterio + '%'
   --    else if(@opcion=1)
   --       select * from dbo.vistaclientes where [Razón social] like '%'  + @criterio + '%'
                 
   end

GO
/****** Object:  StoredProcedure [dbo].[pa_Listar_Detalle_Devolucion_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 Create procedure [dbo].[pa_Listar_Detalle_Devolucion_Comp_de_Pago]
@ID_Dev_Comp int			=	null
as
		
 begin

      SELECT Id_Detalle_Dev_Comp ,Comisionista .Nombre_Com as Comisionista, Remitente .nombre as Remitente, 
	  Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp as [Comprobante de Pago] ,
	  Detalle_Ingreso_Comp_de_Pago .Serie , Detalle_Ingreso_Comp_de_Pago .Numero ,
	  Detalle_Devolucion_Comp_de_Pago.Estado, Detalle_Devolucion_Comp_de_Pago.Id_Devolucion_Comp , Detalle_Devolucion_Comp_de_Pago.Id_Detalle_Env_Comp
	 
	  from Detalle_Devolucion_Comp_de_Pago inner join 
	  Devolucion_Comp_de_Pago on Devolucion_Comp_de_Pago .Id_Devolucion_Comp = Detalle_Devolucion_Comp_de_Pago .Id_Devolucion_Comp 
	  INNER JOIN Detalle_Envio_Comp_de_Pago on Detalle_Envio_Comp_de_Pago .Id_Detalle_Env_Comp = Detalle_Devolucion_Comp_de_Pago .Id_Detalle_Env_Comp 
	  inner join Envio_Comp_de_Pago on Envio_Comp_de_Pago .Id_Envio_Comp = Detalle_Envio_Comp_de_Pago .Id_Envio_Comp 
	  inner join Comisionista on Comisionista .Id_Comisionista = Envio_Comp_de_Pago .Id_Comisionista 
	  inner join Detalle_Ingreso_Comp_de_Pago on Detalle_Ingreso_Comp_de_Pago .Id_Detalle_Ing_Comp = Detalle_Envio_Comp_de_Pago .Id_Detalle_ing_Comp 
	  inner join Ingreso_Comp_de_Pago on Ingreso_Comp_de_Pago .Id_Ing_Comp = Detalle_Ingreso_Comp_de_Pago.Id_Ing_Comp 
	  inner join Remitente on Remitente .id_remitente = Ingreso_Comp_de_Pago.id_remitente
	  inner join Tipo_de_Comprobante_de_Pago on Tipo_de_Comprobante_de_Pago .Id_Tipo_Comp = Ingreso_Comp_de_Pago .Id_Tipo_Comp 
        
        where Detalle_Devolucion_Comp_de_Pago.Id_Devolucion_Comp = @ID_Dev_Comp 
		
		    -- and  (dbo.Detalle_Retiro.estado = 1) AND (dbo.Retiro.estado = 1)       
   end

GO
/****** Object:  StoredProcedure [dbo].[pa_Listar_Detalle_Envio_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_Listar_Detalle_Envio_Comp_de_Pago]
@ID_Env_Comp int			=	null
as
		
 begin
      
	  SELECT Id_Detalle_Env_Comp ,Remitente .nombre as Remitente, Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp as [Comprobante de Pago] ,
	  Detalle_Ingreso_Comp_de_Pago .Serie , Detalle_Ingreso_Comp_de_Pago .Numero , 
	   CASE Detalle_Envio_Comp_de_Pago.Estado WHEN 'ACTIVO' THEN 'COMPROBANTE ENVIADO' 
	   WHEN 'INACTIVO' THEN 'COMPROBANTE USADO O DEVUELTO' 
	  ELSE 'COMPROBANTE PERDIDO  O NO DEVUELTO' END AS Estado, Detalle_Envio_Comp_de_Pago.ESTADO AS Estadoo,
	  Detalle_Envio_Comp_de_Pago.Id_Envio_Comp , Detalle_Envio_Comp_de_Pago.Id_Detalle_Ing_Comp, Ingreso_Comp_de_Pago .Id_Ing_Comp 
	  from Detalle_Envio_Comp_de_Pago inner join 
	  Detalle_Ingreso_Comp_de_Pago on Detalle_Ingreso_Comp_de_Pago .Id_Detalle_Ing_Comp = Detalle_Envio_Comp_de_Pago .Id_Detalle_Ing_Comp 
	  inner join Ingreso_Comp_de_Pago on Ingreso_Comp_de_Pago .Id_Ing_Comp = Detalle_Ingreso_Comp_de_Pago.Id_Ing_Comp 
	  inner join Remitente on Remitente .id_remitente = Ingreso_Comp_de_Pago.id_remitente
	  inner join Tipo_de_Comprobante_de_Pago on Tipo_de_Comprobante_de_Pago .Id_Tipo_Comp = Ingreso_Comp_de_Pago .Id_Tipo_Comp 
        
        where Detalle_Envio_Comp_de_Pago.Id_Envio_Comp = @ID_Env_Comp     -- and  (dbo.Detalle_Retiro.estado = 1) AND (dbo.Retiro.estado = 1)       
   end

GO
/****** Object:  StoredProcedure [dbo].[pa_Listar_Detalle_Envio_Comp_de_Pago_Estado]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_Listar_Detalle_Envio_Comp_de_Pago_Estado]
--@ID_Ing_Comp int			=	null
@_Remitente                varchar(max)			=	'',
@_Comisionista         varchar(max)			=	'',
@_Tipo_Comp                 varchar(max)			=	'',
@_Numero               varchar(max)			=	''--,
--@_Zona                varchar(max)			=	''--,
as
		
 begin
      
	  SELECT Id_Detalle_Env_Comp as  [Id Det Envio Comp],Comisionista .Nombre_Com as Comisionista, Remitente .nombre as Remitente, 
	  Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp as [Tipo de Comprobante de Pago], Detalle_Ingreso_Comp_de_Pago .Serie , 
	  Detalle_Ingreso_Comp_de_Pago .Numero , Detalle_Envio_Comp_de_Pago.Estado, Detalle_Envio_Comp_de_Pago.Id_Envio_Comp , 
	  Detalle_Envio_Comp_de_Pago.Id_Detalle_Ing_Comp, Ingreso_Comp_de_Pago .Id_Ing_Comp 
	  from Detalle_Envio_Comp_de_Pago inner join 
	  Envio_Comp_de_Pago on Envio_Comp_de_Pago .Id_Envio_Comp = Detalle_Envio_Comp_de_Pago .Id_Envio_Comp 
	  inner join Comisionista on Comisionista .Id_Comisionista = Envio_Comp_de_Pago .Id_Comisionista 
	  inner join Detalle_Ingreso_Comp_de_Pago on Detalle_Ingreso_Comp_de_Pago .Id_Detalle_Ing_Comp = Detalle_Envio_Comp_de_Pago .Id_Detalle_Ing_Comp 
	  inner join Ingreso_Comp_de_Pago on Ingreso_Comp_de_Pago .Id_Ing_Comp = Detalle_Ingreso_Comp_de_Pago.Id_Ing_Comp 
	  inner join Remitente on Remitente .id_remitente = Ingreso_Comp_de_Pago.id_remitente
	  inner join Tipo_de_Comprobante_de_Pago on Tipo_de_Comprobante_de_Pago .Id_Tipo_Comp = Ingreso_Comp_de_Pago .Id_Tipo_Comp 
        

	  WHERE  -- (SERIE+NUMERO LIKE '%' + @_Nro_Dcto + '%' OR @_Nro_Dcto='')
		  (Remitente .nombre LIKE '%' + @_Remitente + '%' OR @_Remitente='')
		  and  (Comisionista .Nombre_Com LIKE '%' + @_Comisionista + '%' OR @_Comisionista='')
		and  (Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp LIKE '%' + @_Tipo_Comp + '%' OR @_Tipo_Comp='')
	    and  (Detalle_Ingreso_Comp_de_Pago .Serie  LIKE '%' + @_Numero + '%' OR @_Numero='')
		and  Detalle_envio_Comp_de_Pago.Estado = 'ACTIVO'
		--AND Ingreso_Comp_de_Pago .Estado  = 'ACTIVO'
		--	--	print @_Tipo_Secado

		ORDER BY Envio_Comp_de_Pago  .Fecha_envio
        end
	        
        --where Detalle_Ingreso_Comp_de_Pago.Id_Ing_Comp = @ID_Ing_Comp     -- and  (dbo.Detalle_Retiro.estado = 1) AND (dbo.Retiro.estado = 1)       
   --end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_detalle_guias]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pa_listar_detalle_guias]
@idguia  	    int			=	null
as
select * from  dbo.vistadetalleguias where [ID Guia]=@idguia  
    --exec pa_listar_detalle_guias 90

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_detalle_guias_Nota_Arroz]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_listar_detalle_guias_Nota_Arroz]
@Id_nota_arroz  	    int			=	null
as
select * from  dbo.VistaNota_Envio_Arroz_Det where [ID Nota Arroz]=@Id_nota_arroz
order by [ID Detalle] asc

GO
/****** Object:  StoredProcedure [dbo].[pa_Listar_Detalle_Ingreso_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_Listar_Detalle_Ingreso_Comp_de_Pago]
@ID_Ing_Comp int			=	null
as
		
 begin
      
	  SELECT  Id_Detalle_Ing_Comp,Serie,Numero, CASE Detalle_Ingreso_Comp_de_Pago.Estado WHEN 'ACTIVO' THEN 'COMPROBANTE SIN USAR, AUN EN ALMACEN' 
	  ELSE 'COMPROBANTE USADO O FUERA DE ALMACEN' END AS Estado,
	   Ingreso_Comp_de_Pago.Id_Ing_Comp from Detalle_Ingreso_Comp_de_Pago inner join
	  Ingreso_Comp_de_Pago on Ingreso_Comp_de_Pago .Id_Ing_Comp = Detalle_Ingreso_Comp_de_Pago.Id_Ing_Comp
        
        where Detalle_Ingreso_Comp_de_Pago.Id_Ing_Comp = @ID_Ing_Comp     -- and  (dbo.Detalle_Retiro.estado = 1) AND (dbo.Retiro.estado = 1)       
   end

GO
/****** Object:  StoredProcedure [dbo].[pa_Listar_Detalle_Ingreso_Comp_de_Pago_Estado]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_Listar_Detalle_Ingreso_Comp_de_Pago_Estado]
--@ID_Ing_Comp int			=	null
@_Remitente                varchar(max)			=	'',
@_Tipo_Comp                 varchar(max)			=	'',
@_Numero               varchar(max)			=	''--,
--@_Zona                varchar(max)			=	''--,
as
		
 begin
      
	  SELECT  Id_Detalle_Ing_Comp AS [Id Det Ing Comp], Remitente .nombre as Remitente, Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp as [Tipo de Comprobante de Pago],
	  Serie,Numero,Estado, Ingreso_Comp_de_Pago.Id_Ing_Comp AS [Id Ing Comp]
	  from Detalle_Ingreso_Comp_de_Pago 
	  inner join Ingreso_Comp_de_Pago on Ingreso_Comp_de_Pago .Id_Ing_Comp = Detalle_Ingreso_Comp_de_Pago.Id_Ing_Comp
	  inner join Remitente on Remitente .id_remitente = Ingreso_Comp_de_Pago .id_remitente 
	  inner join Tipo_de_Comprobante_de_Pago on Tipo_de_Comprobante_de_Pago .Id_Tipo_Comp = Ingreso_Comp_de_Pago .Id_Tipo_Comp 

	  WHERE  -- (SERIE+NUMERO LIKE '%' + @_Nro_Dcto + '%' OR @_Nro_Dcto='')
		  (Remitente .nombre LIKE '%' + @_Remitente + '%' OR @_Remitente='')
		and  (Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp LIKE '%' + @_Tipo_Comp + '%' OR @_Tipo_Comp='')
	    and  (Detalle_Ingreso_Comp_de_Pago .Serie  LIKE '%' + @_Numero + '%' OR @_Numero='')
		and  Detalle_Ingreso_Comp_de_Pago.Estado = 'ACTIVO'
		--AND Ingreso_Comp_de_Pago .Estado  = 'ACTIVO'
		--	--	print @_Tipo_Secado

		ORDER BY Ingreso_Comp_de_Pago .Fecha_Ingreso
        end
	        
        --where Detalle_Ingreso_Comp_de_Pago.Id_Ing_Comp = @ID_Ing_Comp     -- and  (dbo.Detalle_Retiro.estado = 1) AND (dbo.Retiro.estado = 1)       
   --end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_detalle_pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pa_listar_detalle_pago]
@idpago 	    int			=	null
as
select * from  dbo.VistaDetallePago_Cat where [Id Pago Detrac.]=@idpago

GO
/****** Object:  StoredProcedure [dbo].[pa_Listar_Devolucion_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_Listar_Devolucion_Comp_de_Pago]
@_Fecha_Ing_Ini           varchar(max)			=	'',
@_Fecha_Ing_Fin           varchar(max)			=	'',
@_distrito                varchar(max)			=	''

--@_Estado_Secado BIT		=	1


as
		
 begin
 
  --SELECT * FROM Envio_Comp_de_Pago
		SELECT  Id_Devolucion_Comp as [Id Dev Comp] ,Fecha_Devolucion  as [Fecha de Devolucion],
	    Direccion, Ubigeo .Distrito  ,Ubigeo .Provincia , Ubigeo .Departamento,Tipo_Operacion .Nombre_Tipo_Ope as  [Tipo Operacion],
		Operacion .Nombre_Ope as Operacion, Descripcion, 
		Devolucion_Comp_de_Pago.Id_Ubigeo  , Devolucion_Comp_de_Pago .Id_Ope 
		from Devolucion_Comp_de_Pago 
		inner join Ubigeo on Ubigeo .id_ubigeo = Devolucion_Comp_de_Pago .id_ubigeo 
		inner join Operacion on Operacion .Id_Ope = Devolucion_Comp_de_Pago .Id_Ope 
		inner join Tipo_Operacion on Tipo_Operacion .Id_Tipo_Ope = Operacion .Id_Tipo_Ope 
        
        
		WHERE  -- (SERIE+NUMERO LIKE '%' + @_Nro_Dcto + '%' OR @_Nro_Dcto='')
		(Fecha_Devolucion  BETWEEN  CONVERT(DATETIME, @_Fecha_Ing_Ini,102)  and CONVERT(DATETIME, @_Fecha_Ing_Fin,102) OR @_Fecha_Ing_Ini='' OR @_Fecha_Ing_Fin='')  
		  and (ubigeo.Distrito LIKE '%' + @_distrito + '%' OR @_distrito='')
			
		--AND Ingreso_Comp_de_Pago .Estado  = 'ACTIVO'
		--	--	print @_Tipo_Secado

		ORDER BY Devolucion_Comp_de_Pago .Fecha_Devolucion
        end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_empresa_transportes]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pa_listar_empresa_transportes]
@criterio  	    varchar(max)			=	null
as
		

   begin
       
         
       
          select * from dbo.vistaemptransportes where Empresa like '%'  + @criterio + '%'             
   end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_envasado]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_listar_envasado]
--@opcion  	    int			=	null,
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@criterio is null)
          select * from dbo.vistaEnvasado
       else
           select * from dbo.vistaEnvasado where [Nombre Envase]  like '%'  + @criterio + '%' 
           
           end

GO
/****** Object:  StoredProcedure [dbo].[pa_Listar_Envio_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 Create procedure [dbo].[pa_Listar_Envio_Comp_de_Pago]
@_Fecha_Ing_Ini           varchar(max)			=	'',
@_Fecha_Ing_Fin           varchar(max)			=	'',
@_Comisionista                varchar(max)			=	'',
@_Zona                varchar(max)			=	''--,
--@_Estado_Secado BIT		=	1


as
		
 begin
 
  --SELECT * FROM Envio_Comp_de_Pago
		SELECT  Id_Envio_Comp as [Id Envio Comp] ,Fecha_Envio as [Fecha de Envio], Comisionista .Nombre_Com as [Comisionista],
		Zona .Nombre_Zona as Zona ,Ubigeo .Distrito  ,Tipo_Operacion .Nombre_Tipo_Ope as  [Tipo Operacion],
		Operacion .Nombre_Ope as Operacion, Descripcion, Envio_Comp_de_Pago .Id_Comisionista ,
		Envio_Comp_de_Pago .Id_Zona , Envio_Comp_de_Pago .Id_Ope 
		from Envio_Comp_de_Pago 
		inner join Comisionista on Comisionista .Id_Comisionista = Envio_Comp_de_Pago .Id_Comisionista 
		inner join Zona on Zona .Id_Zona = Envio_Comp_de_Pago .Id_Zona 
		inner join Ubigeo on Ubigeo .id_ubigeo = Zona .id_ubigeo 
		inner join Operacion on Operacion .Id_Ope = Envio_Comp_de_Pago .Id_Ope 
		inner join Tipo_Operacion on Tipo_Operacion .Id_Tipo_Ope = Operacion .Id_Tipo_Ope 
        
        
		WHERE  -- (SERIE+NUMERO LIKE '%' + @_Nro_Dcto + '%' OR @_Nro_Dcto='')
		(Fecha_Envio  BETWEEN  CONVERT(DATETIME, @_Fecha_Ing_Ini,102)  and CONVERT(DATETIME, @_Fecha_Ing_Fin,102) OR @_Fecha_Ing_Ini='' OR @_Fecha_Ing_Fin='')  
		  and (Comisionista.Nombre_Com  LIKE '%' + @_Comisionista + '%' OR @_Comisionista='')
		and  (Zona.Nombre_Zona  LIKE '%' + @_Zona + '%' OR @_Zona='')
		
		
		--AND Ingreso_Comp_de_Pago .Estado  = 'ACTIVO'
		--	--	print @_Tipo_Secado

		ORDER BY Envio_Comp_de_Pago .Fecha_Envio
        end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_guias]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pa_listar_guias]
@Numero  	    varchar(max)			=	null,
@remitente varchar(max) = null
as
begin

if (not @Numero is null)
begin

select ID,Numero,Emisión,Traslado,Partida,[ID Partida],[Pto. partida],[ID Destinatario],
[Razon Social],[Ruc Destinatario],[Nro. Doc. Destinatario],LLegada,[ID. llegada],[Pto. llegada],
[ID Vehiculo],[Marca Camion],[Nro. placa Camion],[Nro. certificado Camion],[Marca Carreta],
[Nro. Placa Carreta],[Nro. Certificado Carreta],[ID Chofer],Brevete,[Chofer],
[Telefono Chofer],[Nro Deposito],Monto,[Nro Depositoo],Montoo,[ID Traslado],[Motivo Traslado],
[ID Remitente],Remitente,ruc,[Empresa Transporte],[RUC Emp Transporte],[Domicilio Transportista]
from  dbo.vistaguias  
where Numero like '%' + @Numero + '%'
--order by Numero asc
order by Emisión asc
end

else if  (not @remitente is null)
begin
select ID,Numero,Emisión,Traslado,Partida,[ID Partida],[Pto. partida],[ID Destinatario],
[Razon Social],[Ruc Destinatario],[Nro. Doc. Destinatario],LLegada,[ID. llegada],[Pto. llegada],
[ID Vehiculo],[Marca Camion],[Nro. placa Camion],[Nro. certificado Camion],[Marca Carreta],
[Nro. Placa Carreta],[Nro. Certificado Carreta],[ID Chofer],Brevete,[Chofer],
[Telefono Chofer],[Nro Deposito],Monto,[Nro Depositoo],Montoo,[ID Traslado],[Motivo Traslado],
[ID Remitente],Remitente,ruc,[Empresa Transporte],[RUC Emp Transporte],[Domicilio Transportista]
from  dbo.vistaguias   
where Remitente like '%' + @remitente + '%'
--order by Numero asc
order by Emisión asc
end

else
			begin 
select ID,Numero,Emisión,Traslado,Partida,[ID Partida],[Pto. partida],[ID Destinatario],
[Razon Social],[Ruc Destinatario],[Nro. Doc. Destinatario],LLegada,[ID. llegada],[Pto. llegada],
[ID Vehiculo],[Marca Camion],[Nro. placa Camion],[Nro. certificado Camion],[Marca Carreta],
[Nro. Placa Carreta],[Nro. Certificado Carreta],[ID Chofer],Brevete,[Chofer],
[Telefono Chofer],[Nro Deposito],Monto,[Nro Depositoo],Montoo,[ID Traslado],[Motivo Traslado],
[ID Remitente],Remitente,ruc,[Empresa Transporte],[RUC Emp Transporte],[Domicilio Transportista]
from  dbo.vistaguias   
--WHERE Emisión=CONVERT(CHAR(10),getdate(),103)
order by Emisión asc
end
end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_guias_Peso_Nota]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_listar_guias_Peso_Nota]
@criterio  	    varchar(max)			=	null
as
		
   begin
       if(@criterio is null)
          select * from dbo.vistaGuia_Peso_Nota
    ORDER BY [ID Guia] ASC
       else
           select * from dbo.vistaGuia_Peso_Nota 
           where [Nro. Guia de Remision]   like '%'  + @criterio + '%' 
           ORDER BY [ID Guia]  ASC
   END

GO
/****** Object:  StoredProcedure [dbo].[pa_Listar_Ingreso_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_Listar_Ingreso_Comp_de_Pago]
@_Remitente                varchar(max)			=	'',
@_Tipo_Comp                 varchar(max)			=	'',
@_Fecha_Ing_Ini           varchar(max)			=	'',
@_Fecha_Ing_Fin           varchar(max)			=	''--,
--@_Estado_Secado BIT		=	1


as
		
 begin
 
		SELECT  Id_Ing_Comp as [Id Ing Comp], Remitente .nombre as Empresa, Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp as [Comprobante de Pago],
		Ingreso_Comp_de_Pago .Fecha_Ingreso as [Fecha Ingreso], Tipo_Operacion .Nombre_Tipo_Ope as  [Tipo Operacion],
		 Operacion .Nombre_Ope as Operacion , Ingreso_Comp_de_Pago .Descripcion , 
		--CASE dbo.Secado.Estado_Secado WHEN 1 THEN 'ACTIVO' ELSE 'INACTIVO' END as [Estado Secado]
		Ingreso_Comp_de_Pago .Id_ope as [Id Ope], Ingreso_Comp_de_Pago .id_remitente as [Id Remitente], 
		Ingreso_Comp_de_Pago .Id_Tipo_Comp as [Id Tipo Comp]
		FROM Ingreso_Comp_de_Pago  inner join
		Remitente on Ingreso_Comp_de_Pago .id_remitente = Remitente .id_remitente inner join 
		Tipo_de_Comprobante_de_Pago on Ingreso_Comp_de_Pago .Id_Tipo_Comp = Tipo_de_Comprobante_de_Pago .Id_Tipo_Comp inner join
		Operacion on Ingreso_Comp_de_Pago.Id_ope = Operacion .Id_Ope inner join 
		Tipo_Operacion on Operacion .Id_Tipo_Ope = Tipo_Operacion.Id_Tipo_Ope 
        
        
		WHERE  -- (SERIE+NUMERO LIKE '%' + @_Nro_Dcto + '%' OR @_Nro_Dcto='')
		  (Remitente .nombre LIKE '%' + @_Remitente + '%' OR @_Remitente='')
		and  (Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp LIKE '%' + @_Tipo_Comp + '%' OR @_Tipo_Comp='')
		AND (Fecha_Ingreso  BETWEEN  CONVERT(DATETIME, @_Fecha_Ing_Ini,102)  and CONVERT(DATETIME, @_Fecha_Ing_Fin,102) OR @_Fecha_Ing_Ini='' OR @_Fecha_Ing_Fin='')  
		
		--AND Ingreso_Comp_de_Pago .Estado  = 'ACTIVO'
		--	--	print @_Tipo_Secado

		ORDER BY Ingreso_Comp_de_Pago .Fecha_Ingreso
        end


---- exec [dbo].[pa_Listar_Secado]'', '', '', '', ''--, '', '', '', '', '', '', '', ''
--exec [dbo].[pa_Listar_Secado]'', '', '', '','', 1

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_logotipo]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pa_listar_logotipo]
--@opcion  	    int			=	null,
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@criterio is null)
          select * from dbo.vistaLogotipo
       else
           select * from dbo.VistaLogotipo where [Nombre Logotipo] like '%'  + @criterio + '%' 
end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_Motivo_Tras]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_listar_Motivo_Tras]
--@opcion  	    int			=	null,
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@criterio is null)
            select id_mot_traslado as ID,nombre  from dbo.MotivoTraslado
       else
           select  id_mot_traslado as ID,nombre from dbo.MotivoTraslado where nombre   like '%'  + @criterio + '%' 
              end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_nota_Envio_Arroz]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_listar_nota_Envio_Arroz]
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@criterio is null)
          select * from dbo.VistaNota_Envio_Arroz
       else
           select * from dbo.VistaNota_Envio_Arroz where [numero]  like '%'  + @criterio + '%' 
           end

GO
/****** Object:  StoredProcedure [dbo].[pa_Listar_Operacion]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_Listar_Operacion]
@opcion				int=null,
@criterio  	    varchar(max)			=	null
as
if ( @opcion = 1)
   --     else if(@opcion=@TIPO_COMP))
   --if @opcion=1
		 select Id_Ope as [Id Operacion] , Codigo_Ope as Codigo , Nombre_Ope as Operacion, 
          tipo_operacion.nombre_Tipo_ope as [Tipo de Operacion], Descrip_Ope  as Descripcion, 
          operacion.Id_Tipo_Ope as [Id Tipo de Operacion] from Operacion 
          inner join tipo_operacion
          on operacion.id_tipo_Ope = tipo_operacion.id_tipo_ope
             where  tipo_operacion.nombre_Tipo_ope = 'ENTRADA' AND Nombre_Ope    like '%'  + @criterio + '%'                
   
   if (@opcion = 2)
   --if @opcion=2
		 select Id_Ope as [Id Operacion] , Codigo_Ope as Codigo , Nombre_Ope as Operacion, 
          tipo_operacion.nombre_Tipo_ope as [Tipo de Operacion], Descrip_Ope  as Descripcion, 
          operacion.Id_Tipo_Ope as [Id Tipo de Operacion] from Operacion 
          inner join tipo_operacion
          on operacion.id_tipo_Ope = tipo_operacion.id_tipo_ope
            where  tipo_operacion.nombre_Tipo_ope = 'SALIDA' AND Nombre_Ope    like '%'  + @criterio + '%'   
                        
     if (@opcion = 3)
     --if @opcion=3
		 select Id_Ope as [Id Operacion] , Codigo_Ope as Codigo , Nombre_Ope as Operacion, 
          tipo_operacion.nombre_Tipo_ope as [Tipo de Operacion], Descrip_Ope  as Descripcion, 
          operacion.Id_Tipo_Ope as [Id Tipo de Operacion] from Operacion 
          inner join tipo_operacion
          on operacion.id_tipo_Ope = tipo_operacion.id_tipo_ope
           where   Nombre_Ope    like '%'  + @criterio + '%'   
           
            if (@opcion = 4)
     --if @opcion=3
		 select Id_Ope as [Id Operacion] , Codigo_Ope as Codigo , Nombre_Ope as Operacion, 
          tipo_operacion.nombre_Tipo_ope as [Tipo de Operacion], Descrip_Ope  as Descripcion, 
          operacion.Id_Tipo_Ope as [Id Tipo de Operacion] from Operacion 
          inner join tipo_operacion
          on operacion.id_tipo_Ope = tipo_operacion.id_tipo_ope
          -- where   Nombre_Ope    like '%'  + @criterio + '%'   
                        
----@opcion  	    int			=	null,
--@criterio  	    varchar(max)			=	null
--as
		
-- begin
--       if(@criterio is null)
--          select Id_Ope as [Id Operacion] , Codigo_Ope as Codigo , Nombre_Ope as Operacion, 
--          tipo_operacion.nombre_Tipo_ope as [Tipo de Operacion], Descrip_Ope  as Descripcion, 
--          operacion.Id_Tipo_Ope as [Id Tipo de Operacion] from Operacion 
--          inner join tipo_operacion
--          on operacion.id_tipo_Ope = tipo_operacion.id_tipo_ope
--         -- where Tipo_Operacion .Nombre_Tipo_Ope = 'SALIDA'
--       else
--           select Id_Ope as [Id Operacion] , Codigo_Ope as Codigo , Nombre_Ope as Operacion, 
--          tipo_operacion.nombre_Tipo_ope as [Tipo de Operacion], Descrip_Ope  as Descripcion, 
--          operacion.Id_Tipo_Ope as [Id Tipo de Operacion] from Operacion 
--          inner join tipo_operacion
--          on operacion.id_tipo_Ope = tipo_operacion.id_tipo_ope
--              where Nombre_Ope    like '%'  + @criterio + '%' --AND Tipo_Operacion .Nombre_Tipo_Ope = 'SALIDA'
                          
--   end

GO
/****** Object:  StoredProcedure [dbo].[pa_Listar_Operacion_Entrada]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_Listar_Operacion_Entrada]
--@tipo_Operacion		varchar(max)=null,
@opcion				int=null,
@criterio  	    varchar(max)			=	null
as
if ( @opcion = 1)
   --     else if(@opcion=@TIPO_COMP))
   --if @opcion=1
		 select Id_Ope as [Id Operacion] , Codigo_Ope as Codigo , Nombre_Ope as Operacion, 
          tipo_operacion.nombre_Tipo_ope as [Tipo de Operacion], Descrip_Ope  as Descripcion, 
          operacion.Id_Tipo_Ope as [Id Tipo de Operacion] from Operacion 
          inner join tipo_operacion
          on operacion.id_tipo_Ope = tipo_operacion.id_tipo_ope
             where  tipo_operacion.nombre_Tipo_ope = 'ENTRADA' AND Nombre_Ope    like '%'  + @criterio + '%'                
   
   if (@opcion = 2)
   --if @opcion=2
		 select Id_Ope as [Id Operacion] , Codigo_Ope as Codigo , Nombre_Ope as Operacion, 
          tipo_operacion.nombre_Tipo_ope as [Tipo de Operacion], Descrip_Ope  as Descripcion, 
          operacion.Id_Tipo_Ope as [Id Tipo de Operacion] from Operacion 
          inner join tipo_operacion
          on operacion.id_tipo_Ope = tipo_operacion.id_tipo_ope
            where  tipo_operacion.nombre_Tipo_ope = 'SALIDA' AND Nombre_Ope    like '%'  + @criterio + '%'   
                        
     if (@opcion = 3)
     --if @opcion=3
		 select Id_Ope as [Id Operacion] , Codigo_Ope as Codigo , Nombre_Ope as Operacion, 
          tipo_operacion.nombre_Tipo_ope as [Tipo de Operacion], Descrip_Ope  as Descripcion, 
          operacion.Id_Tipo_Ope as [Id Tipo de Operacion] from Operacion 
          inner join tipo_operacion
          on operacion.id_tipo_Ope = tipo_operacion.id_tipo_ope
            where   Nombre_Ope    like '%'  + @criterio + '%'

GO
/****** Object:  StoredProcedure [dbo].[pa_Listar_Operacion_Salida]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_Listar_Operacion_Salida]
--@tipo_Operacion		varchar(max)=null,
@opcion				int=null,
@criterio  	    varchar(max)			=	null
as
if ( @opcion = 1)
   --     else if(@opcion=@TIPO_COMP))
   --if @opcion=1
		 select Id_Ope as [Id Operacion] , Codigo_Ope as Codigo , Nombre_Ope as Operacion, 
          tipo_operacion.nombre_Tipo_ope as [Tipo de Operacion], Descrip_Ope  as Descripcion, 
          operacion.Id_Tipo_Ope as [Id Tipo de Operacion] from Operacion 
          inner join tipo_operacion
          on operacion.id_tipo_Ope = tipo_operacion.id_tipo_ope
             where  tipo_operacion.nombre_Tipo_ope = 'ENTRADA' AND Nombre_Ope    like '%'  + @criterio + '%'                
   
   if (@opcion = 2)
   --if @opcion=2
		 select Id_Ope as [Id Operacion] , Codigo_Ope as Codigo , Nombre_Ope as Operacion, 
          tipo_operacion.nombre_Tipo_ope as [Tipo de Operacion], Descrip_Ope  as Descripcion, 
          operacion.Id_Tipo_Ope as [Id Tipo de Operacion] from Operacion 
          inner join tipo_operacion
          on operacion.id_tipo_Ope = tipo_operacion.id_tipo_ope
            where  tipo_operacion.nombre_Tipo_ope = 'SALIDA' AND Nombre_Ope    like '%'  + @criterio + '%'   
                        
     if (@opcion = 3)
     --if @opcion=3
		 select Id_Ope as [Id Operacion] , Codigo_Ope as Codigo , Nombre_Ope as Operacion, 
          tipo_operacion.nombre_Tipo_ope as [Tipo de Operacion], Descrip_Ope  as Descripcion, 
          operacion.Id_Tipo_Ope as [Id Tipo de Operacion] from Operacion 
          inner join tipo_operacion
          on operacion.id_tipo_Ope = tipo_operacion.id_tipo_ope
            where   Nombre_Ope    like '%'  + @criterio + '%'

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_listar_Pago]
@fecini  	    datetime			=	null,
@fecfin  	    datetime			=	null
--@Nro_fact  	    varchar(7)			=	null,
--@Comprador  	    varchar(100)			=	null,
--@Situacion     varchar(100)			=	null

as
	begin
	        --FECHA
	   	    if(NOT @fecini is null and NOT @fecfin is null )
			begin	
				select [Id Pago Detrac.],[Fecha Precios],[Id Remitente],
				Remitente,RUC,[Cuenta Detraccion],[Fecha Emision],Descripcion
				from   dbo.VistaPago_Detrac
				 WHERE [Fecha Precios]>=@fecini and [Fecha Precios]<=@fecfin
				 order by [Fecha Emision] asc       
			end
			
			else
			begin	
			select [Id Pago Detrac.],[Fecha Precios],[Id Remitente],
				Remitente,RUC,[Cuenta Detraccion],[Fecha Emision],Descripcion
				from   dbo.VistaPago_Detrac
				order by [Id Pago Detrac.] asc  
				-- order by [Fecha Emision] asc      
			end
   	    
end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_peso_med]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_listar_peso_med]
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@criterio is null)
          select * from dbo.VistaPeso_Medida
       else
           select * from dbo.VistaPeso_Medida where [Nro. Guia de Remision]  like '%'  + @criterio + '%' 
           end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_Productos]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pa_listar_Productos]
@opcion  	    int			=	null,
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@opcion=7)
          select * from dbo.vistaproductos2
       else if(@opcion=6)
          select * from dbo.vistaproductos2 where envasado like '%'  + @criterio + '%'
       else if(@opcion=5)
          select * from dbo.vistaproductos2 where logotipo like '%'  + @criterio + '%'
       else if(@opcion=4)
          select * from dbo.vistaproductos2 where categoria like '%'  + @criterio + '%'
       else if(@opcion=3)
          select * from dbo.vistaproductos2 where Color like '%'  + @criterio + '%'  
       else if(@opcion=2)
          select * from dbo.vistaproductos2 where [Nombre Comercial] like '%'  + @criterio + '%'  
       else if(@opcion=1)
          select * from dbo.vistaproductos2 where producto like '%'  + @criterio + '%'             
   end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_remitentes]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pa_listar_remitentes]
--@opcion  	    int			=	null,
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@criterio is null)
          select * from dbo.vistaremitentes
       else
           select * from dbo.vistaremitentes where Remitente   like '%'  + @criterio + '%' 
       --else if(@opcion=3)
       --   select * from dbo.vistaclientes where [Nro. doc.] like '%'  + @criterio + '%'
       --else if(@opcion=2)
       --   select * from dbo.vistaclientes where [Nro. ruc] like '%'  + @criterio + '%'
       --else if(@opcion=1)
       --   select * from dbo.vistaclientes where [Razón social] like '%'  + @criterio + '%'
                 
   end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_Tipo_Cliente]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[pa_listar_Tipo_Cliente]
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@criterio is null)
          select * from dbo.VistaTipo_Cliente
       else
           select * from dbo.VistaTipo_Cliente where [Tipo Cliente]  like '%'  + @criterio + '%' 
           end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_tipo_Dcto]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[pa_listar_tipo_Dcto]
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@criterio is null)
          select * from dbo.VistaTipo_Dcto
		  order by VistaTipo_Dcto .codigo
       else
           select * from dbo.VistaTipo_Dcto where [Tipo de Dcto]  like '%'  + @criterio + '%' 
           end

GO
/****** Object:  StoredProcedure [dbo].[pa_Listar_Tipo_de_Comprobante_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_Listar_Tipo_de_Comprobante_de_Pago]
--@opcion  	    int			=	null,
@criterio  	    varchar(max)			=	null
as
		
 begin
       if(@criterio is null)
          select Id_Tipo_Comp as [Id Tipo de Comprobante] , Codigo_Tipo_Comp as Codigo , Nombre_Tipo_Comp as [Tipo de Comprobante], 
          Siglas_Tipo_Comp AS Siglas, Descrip_Tipo_Comp  as Descripcion from Tipo_de_Comprobante_de_Pago 
       else
            select Id_Tipo_Comp as [Id Tipo de Comprobante] , Codigo_Tipo_Comp as Codigo , Nombre_Tipo_Comp as [Tipo de Comprobante], 
          Siglas_Tipo_Comp AS Siglas, Descrip_Tipo_Comp  as Descripcion from Tipo_de_Comprobante_de_Pago 
              where Nombre_Tipo_Comp    like '%'  + @criterio + '%' 
                          
   end

GO
/****** Object:  StoredProcedure [dbo].[pa_Listar_Tipo_Operacion]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_Listar_Tipo_Operacion]
--@opcion  	    int			=	null,
@criterio  	    varchar(max)			=	null
as
		
 begin
       if(@criterio is null)
          select Id_Tipo_Ope as [Id Tipo de Operacion] , Nombre_Tipo_Ope as [Tipo de Operacion],
          Descrip_Tipo_Ope as Descripcion from Tipo_operacion
       else
             select Id_Tipo_Ope as [Id Tipo de Operacion] , Nombre_Tipo_Ope as [Tipo de Operacion],
          Descrip_Tipo_Ope as Descripcion from Tipo_operacion
           where Nombre_Tipo_Ope   like '%'  + @criterio + '%' 
                          
   end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_tipo_trabaj]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[pa_listar_tipo_trabaj]
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@criterio is null)
          select * from dbo.VistaTipo_Trabaj
       else
           select * from dbo.VistaTipo_Trabaj where [Tipo de Trabajador]  like '%'  + @criterio + '%' 
           end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_trabajador]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_listar_trabajador]
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@criterio is null)
          select * from dbo.VistaTrabajador 
          order by [Id Trabajador] asc
       else
           select * from dbo.VistaTrabajador where [Nombre Completo]  like '%'  + @criterio + '%' 
           order by [Id Trabajador] asc
          end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_ubigeos]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pa_listar_ubigeos]
@opcion  	    int			=	null,
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@opcion=4)
          select * from dbo.vistaubigeos
       else if(@opcion=3)
          select * from dbo.vistaubigeos where  distrito like '%'  + @criterio + '%'
       else if(@opcion=2)
          select * from dbo.vistaubigeos where provincia like '%'  + @criterio + '%'
       else if(@opcion=1)
          select * from dbo.vistaubigeos where Departamento like '%'  + @criterio + '%'
                 
   end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_unidad_transportes]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pa_listar_unidad_transportes]
@opcion  	    int			=	null,
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@opcion=6)
          select * from dbo.vistaunidadtransportes
           else if(@opcion=5)
          select * from dbo.vistaunidadtransportes where [Nro. Placa Carreta] like '%'  + @criterio + '%'
       else if(@opcion=4)
          select * from dbo.vistaunidadtransportes where [Marca Carreta]  like '%'  + @criterio + '%'
            else if(@opcion=3)
          select * from dbo.vistaunidadtransportes where [Nro. placa Camion] like '%'  + @criterio + '%'
       else if(@opcion=2)
          select * from dbo.vistaunidadtransportes where [Marca Camion] like '%'  + @criterio + '%'
             else if(@opcion=1)
          select * from dbo.vistaunidadtransportes where [Empresa Transporte] like '%'  + @criterio + '%'             
   end

GO
/****** Object:  StoredProcedure [dbo].[pa_listar_Zona]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_listar_Zona]
--@opcion  	    int			=	null,
@criterio  	    varchar(max)			=	null
as
		

   begin
       if(@criterio is null)
          select * from dbo.VistaZona
       else
           select * from dbo.VistaZona where Zona   like '%'  + @criterio + '%' 
                    
   end

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_cabecera_guia]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pa_mantenimiento_cabecera_guia]
@id_guia						int=null,
@serie_guia					    varchar(4)=null,
@nro_guia						varchar(7)=null,
@fecha_emision_guia						datetime=null,
@fecha_traslado_guia datetime=null,
@direccion_pto_partida varchar(MAX)=null,
@ubigeo_pto_partida						int=null,
@destinatario_guia						int=null,
@direccion_pto_llegada varchar(MAX)=null,
@ubigeo_pto_llegada					int=null,
@id_vehi					int=null,
@id_chofer int=null,
@Nro_constancia_deposito varchar(MAX)=null,
@Monto_deposito varchar(50)=null,
@Nro_constancia_deposito2 varchar(MAX)=null,
@Monto_deposito2 varchar(50)=null,
@id_mot_traslado int=null,
@id_remitente int=null,
--@id_emp_trans int=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   --declare @id_estado_cita as int
		   
		   -----Validamos si la tabla cie10 tiene informacion
		  /* if  EXISTS( select * from dbo.Guia where nro_guia=@nro_guia )
			   Begin
				   set @rpta=0
				   set @mensaje='Guia remision ya existe.'
				   return 0
			   End*/
		   	   
           
           insert into dbo.Guia values
                                 (@serie_guia,
                                  @nro_guia,
                                  @fecha_emision_guia,
                                  @fecha_traslado_guia,
								  @direccion_pto_partida,
								  @ubigeo_pto_partida,
								  @destinatario_guia,
								  @direccion_pto_llegada,
								  @ubigeo_pto_llegada,
                                  @id_vehi,
                                  @id_chofer,
                                  @Nro_constancia_deposito,
                                  @Monto_deposito,
                                  @Nro_constancia_deposito2,
                                  @Monto_deposito2,
                                  @id_mot_traslado,
                                  @id_remitente
                                 -- @id_emp_trans
								  )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Guia se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Guia no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		  /* if  EXISTS( select * from dbo.Guia where nro_guia=@nro_guia and id_guia<>@id_guia)
			   Begin
				   set @rpta=0
				   set @mensaje='Guia remision ya existe.'
				   return 0
			   End	   */
           
           update dbo.Guia set    serie_guia		 = @serie_guia,
                                  nro_guia = @nro_guia,
                                  fecha_emision_guia = @fecha_emision_guia,
                                  fecha_traslado_guia			 = @fecha_traslado_guia,
                                  direccion_pto_partida = @direccion_pto_partida,
                                  ubigeo_pto_partida = @ubigeo_pto_partida,
                                  destinatario_guia = @destinatario_guia,
                                  direccion_pto_llegada = @direccion_pto_llegada,
                                  ubigeo_pto_llegada = @ubigeo_pto_llegada,
                                  id_vehi = @id_vehi,
                                  id_chofer = @id_chofer,
                                  Nro_constancia_deposito = @Nro_constancia_deposito,
                                  Monto_deposito = @Monto_deposito,
                                  Nro_constancia_deposito2 = @Nro_constancia_deposito2,
                                  Monto_deposito2 = @Monto_deposito2,
                                  id_mot_traslado = @id_mot_traslado,
                                  id_remitente = @id_remitente
                                  --id_emp_trans = @id_emp_trans
						      where id_guia = @id_guia
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Guia se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Guia no se ha podido modificar.'
			   End
	 End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_categoria]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_mantenimiento_categoria]
@cat_id					int=null,
@cat_nom				    varchar(MAX)=null,
@Precio_Cat float =null,
@cat_desc 			varchar(MAX)=null,




@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   
			   
		    if  EXISTS( select * from dbo.categoria   where cat_nom	 =@cat_nom	 and cat_id	  <> @cat_id	)
			   Begin
				   set @rpta=0
				   set @mensaje='Nombre de Categoria ya existe.'
				   return 0
			   End 	   
		   	   
           
           insert into dbo.categoria   values
                                 (@cat_nom	,
                                 @Precio_Cat,
                                  @cat_desc                                  								)
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Categoria se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Categoria no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		   
		   if  EXISTS( select * from dbo.categoria   where cat_nom	=@cat_nom	 and cat_id	  <> @cat_id	)
			   Begin
				   set @rpta=0
				   set @mensaje='Nombre Categoria ya existe.'
				   return 0
			   End 
		    
           
           update dbo.categoria   set  cat_nom=@cat_nom	,
                                     Precio_Cat=@Precio_Cat,
                                    cat_desc  =@cat_desc  
						      where cat_id	 = @cat_id	
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Categoria se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Categoria no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.categoria   where   cat_id = @cat_id	
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Categoria se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Categoria no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Categoria no se puede eliminar porque esta siendo utilizado.'
		END CATCH;
   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_chofer]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pa_mantenimiento_chofer]
@id_chofer						int=null,
@Nombre_chof				    varchar(250)=null,
@Apellido_chof						varchar(250)=null,
@Brevete					varchar(50)=null,
@Telefono_chof					varchar(50)=null,


@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   
		   if  EXISTS( select * from dbo.chofer where Brevete=@Brevete and id_chofer <> @id_chofer)
			   Begin
				   set @rpta=0
				   set @mensaje='Nro. BREVETE ya existe.'
				   return 0
			   End 
           
           insert into dbo.Chofer values
                                 (
                                  @Nombre_chof,
                                  @Apellido_chof,
                                  @Brevete,
                                  @Telefono_chof		
								  )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='CHOFER se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='CHOFER no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		 
		   if  EXISTS( select * from dbo.chofer where Brevete=@Brevete and id_chofer <> @id_chofer)
			   Begin
				   set @rpta=0
				   set @mensaje='Nro BREVETE ya existe.'
				   return 0
			   End 
		    
           
           update dbo.Chofer set   Nombre_chof= @Nombre_chof,
                                 Apellido_chof=@Apellido_chof,
                                 Brevete=@Brevete,
                                Telefono_chof=  @Telefono_chof	
						      where id_chofer = @id_chofer
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='CHOFER se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='CHOFER no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.chofer where   id_chofer = @id_chofer
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='CHOFER se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='CHOFER no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='CHOFER no se puede eliminar porque esta siendo utilizado.'
		END CATCH;

	   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Cliente]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_mantenimiento_Cliente]
@Id_Cliente						int=null,
@Nombre_Cli				    varchar(250)=null,
@Telefono_Cli						varchar(100)=null,
@Direccion_Cli					varchar(150)=null,
@Correo_Cli        varchar(50)=null,
@Nro_Dcto_Cli           varchar(20)=null,
@Linea_Credito_Cli                 float=null,
@Descrip_Cli             varchar(250)=null,
@Id_Zona      int=null,
@id_tip_doc     int=null,
@Id_Tipo_Cliente     int=null,


@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   		           
           insert into dbo.Cliente values
                                 (
                                  @Nombre_Cli,
                                  @Telefono_Cli,
                                  @Direccion_Cli,
                                  @Correo_Cli,
                                  @Nro_Dcto_Cli,
                                  @Linea_Credito_Cli,
                                  @Descrip_Cli,
                                  @Id_Zona,
                                  @id_tip_doc,
                                  @Id_Tipo_Cliente
                                     )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Cliente se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Cliente no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   		           
           update dbo.Cliente set   Nombre_Cli= @Nombre_Cli,
                                 Telefono_Cli=@Telefono_Cli,
                                 Direccion_Cli=@Direccion_Cli,
                                Correo_Cli=  @Correo_Cli,	
                                Nro_Dcto_Cli=@Nro_Dcto_Cli,
                                Linea_Credito_Cli=@Linea_Credito_Cli,
                                Descrip_Cli=@Descrip_Cli,
                                Id_Zona=@Id_Zona,
                                id_tip_doc=@id_tip_doc,
                                Id_Tipo_Cliente=@Id_Tipo_Cliente
                                  where Id_Cliente = @Id_Cliente
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Cliente se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Cliente no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.Cliente where   Id_Cliente = @Id_Cliente
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Cliente se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Cliente no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Cliente no se puede eliminar porque esta siendo utilizado.'
		END CATCH;

	   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Comisionista]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create  procedure [dbo].[pa_mantenimiento_Comisionista]
@Id_Comisionista					int=null,
@Nombre_Com			    varchar(250)=null,
@Telefono_Com						varchar(100)=null,
@Direccion_Com					varchar(150)=null,
@Nro_Dcto_Com        varchar(20)=null,
@Descrip_Com             varchar(250)=null,
@Id_Zona      int=null,
@id_tip_doc     int=null,


@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   		           
           insert into dbo.Comisionista values
                                 (
                                  @Nombre_Com,
                                  @Telefono_Com,
                                  @Direccion_Com,
                                  @Nro_Dcto_Com,
                                  @Descrip_Com,
                                  @Id_Zona,
                                  @id_tip_doc
                                     )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Comisionista se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Comisionista no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   		           
           update dbo.Comisionista set   Nombre_Com= @Nombre_Com,
                                 Telefono_Com=@Telefono_Com,
                                 Direccion_Com=@Direccion_Com,
                                Nro_Dcto_Com=@Nro_Dcto_Com,
                                 Descrip_Com=@Descrip_Com,
                                Id_Zona=@Id_Zona,
                                id_tip_doc=@id_tip_doc
								where
                                Id_Comisionista = @Id_Comisionista
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Comisionista se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Comisionista no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.Comisionista where   Id_Comisionista = @Id_Comisionista
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Comisionista se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Comisionista no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Comisionista no se puede eliminar porque esta siendo utilizado.'
		END CATCH;

	   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Destinatario]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pa_mantenimiento_Destinatario]
@id_Dest					int=null,
@razonsocial					    varchar(MAX)=null,
@ruc						varchar(11)=null,
@id_tip_doc					int=null,
@nro_doc						varchar(11)=null,
@Direccion          varchar(150)=null,
@Rep_Legal      varchar(150)=null,
@id_ubigeo           int=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   
		   if  EXISTS( select * from dbo.Destinatario where ruc=@ruc and id_Dest <> @id_Dest)
			   Begin
				   set @rpta=0
				   set @mensaje='Nro. ruc ya existe.'
				   return 0
			   End
		   
		   if  EXISTS( select * from dbo.Destinatario where nro_doc=@nro_doc and id_Dest <> @id_Dest)
			   Begin
				   set @rpta=0
				   set @mensaje='Nro. doc. ya existe.'
				   return 0
			   End
		   
           
           insert into dbo.Destinatario values
                                 (@razonsocial,
                                  @ruc,
                                  @id_tip_doc,
                                  @nro_doc,
                                  @Direccion,
                                  @Rep_Legal ,
                                  @id_ubigeo
								  )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Destinatario se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Destinatario no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		   if  EXISTS( select * from dbo.Destinatario where ruc=@ruc and id_Dest <> @id_Dest)
			   Begin
				   set @rpta=0
				   set @mensaje='Nro. ruc ya existe.'
				   return 0
			   End
		   
		   if  EXISTS( select * from dbo.Destinatario where nro_doc=@nro_doc and id_Dest <> @id_Dest)
			   Begin
				   set @rpta=0
				   set @mensaje='Nro. doc. ya existe.'
				   return 0
			   End   
           
           update dbo.Destinatario set    razonsocial		 = @razonsocial,
                                  ruc = @ruc,
                                  id_tip_doc = @id_tip_doc,
                                  nro_doc			 = @nro_doc,
                                   Direccion=@Direccion,
                                   Rep_Legal =@Rep_Legal ,
                                  id_ubigeo=@id_ubigeo
						      where id_Dest = @id_Dest
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Destinatario se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Destinatario no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.Destinatario where   id_Dest = @id_Dest
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Destinatario se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Destinatario no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Destinatario no se puede eliminar porque esta siendo utilizado.'
		END CATCH;

	   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Detalle_Devolucion_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_mantenimiento_Detalle_Devolucion_Comp_de_Pago]
--@id									    int=null,
@Id_Detalle_Dev_Comp					int=null,
@Estado                    varchar(50)=null,
@Id_Detalle_Env_Comp                 int=null,
@Id_Devolucion_Comp            int=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin   		  
			       
           insert into dbo.Detalle_Devolucion_Comp_de_Pago values
                                 (
                                  @Estado,
                                  @Id_Detalle_Env_Comp,
								  @Id_Devolucion_Comp
                                     )
         
		 	  
		    declare @Id_Detalle_Ing_Comp int
			select  @Id_Detalle_Ing_Comp = Id_Detalle_Ing_Comp from dbo.Detalle_Envio_Comp_de_Pago where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp
						
			iF @Estado = 'EN BLANCO'
			begin
			update dbo.Detalle_Ingreso_Comp_de_Pago set Detalle_INGRESO_Comp_de_Pago.Estado='ACTIVO'	
			where Id_Detalle_Ing_Comp = @Id_Detalle_Ing_Comp 	
			update dbo.Detalle_Envio_Comp_de_Pago set Detalle_Envio_Comp_de_Pago.Estado='INACTIVO'
		    where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp
			end
        	else if @Estado = 'PERDIDO'
			update dbo.Detalle_Envio_Comp_de_Pago set Detalle_Envio_Comp_de_Pago.Estado='PERDIDO'
		    where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp 	
			else	if @Estado = 'EMITIDO' or @Estado = 'ANULADO' --or @Estado = 'PERDIDO'
			update dbo.Detalle_Envio_Comp_de_Pago set Detalle_Envio_Comp_de_Pago.Estado='INACTIVO'
		    where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp
			
			 	    
			
			
					
		
			 if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Detalle de Devolución de Documentos de Pago se ha guardado satisfactorimente.' + cast(@Id_Detalle_Ing_Comp as varchar (max))
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Detalle Devolución de Documentos de Pago no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   		        if(@Id_Detalle_Dev_Comp=-1)
			  begin
				   insert into dbo.Detalle_Devolucion_Comp_de_Pago values
										 (
										   @Estado,
										   @Id_Detalle_Env_Comp,
								           @Id_Devolucion_Comp
										  )
            
	
	       declare @Id_Detalle_Ing_Comp1 int
			select  @Id_Detalle_Ing_Comp1 = Id_Detalle_Ing_Comp from dbo.Detalle_Envio_Comp_de_Pago where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp
						
			iF @Estado = 'EN BLANCO'
			begin
			update dbo.Detalle_Ingreso_Comp_de_Pago set Detalle_INGRESO_Comp_de_Pago.Estado='ACTIVO'	
			where Id_Detalle_Ing_Comp = @Id_Detalle_Ing_Comp1 	
			update dbo.Detalle_Envio_Comp_de_Pago set Detalle_Envio_Comp_de_Pago.Estado='INACTIVO'
		    where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp
			end
        	else if @Estado = 'PERDIDO'
			update dbo.Detalle_Envio_Comp_de_Pago set Detalle_Envio_Comp_de_Pago.Estado='PERDIDO'
		    where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp 	
			else	if @Estado = 'EMITIDO' or @Estado = 'ANULADO' --or @Estado = 'PERDIDO'
			update dbo.Detalle_Envio_Comp_de_Pago set Detalle_Envio_Comp_de_Pago.Estado='INACTIVO'
		    where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp
			

					if (@@RowCount=1) 
					   Begin
					    
						set @rpta=@@IDENTITY
						set @mensaje='Detalle Devolución de Documentos de Pago no se ha podido guardar.'
					   End
					else
					   Begin
						set @rpta=0   
						set @mensaje='Detalle Devolución de Documentos de Pago no se ha podido guardar.'
					   End  
				end
           else  
		   BEGIN   
		   
			

           update dbo.Detalle_Devolucion_Comp_de_Pago set  
                                               Estado=@Estado,
												Id_Detalle_Env_Comp=@Id_Detalle_Env_Comp,
												Id_Devolucion_Comp=@Id_Devolucion_Comp
												where
												Id_Detalle_Dev_Comp = @Id_Detalle_Dev_Comp
            declare @Id_Detalle_Ing_Comp2 int
			select  @Id_Detalle_Ing_Comp2 = Id_Detalle_Ing_Comp from dbo.Detalle_Envio_Comp_de_Pago where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp

         	iF @Estado = 'EN BLANCO'
			begin
			update dbo.Detalle_Ingreso_Comp_de_Pago set Detalle_INGRESO_Comp_de_Pago.Estado='ACTIVO'	
			where Id_Detalle_Ing_Comp = @Id_Detalle_Ing_Comp2 	
			update dbo.Detalle_Envio_Comp_de_Pago set Detalle_Envio_Comp_de_Pago.Estado='INACTIVO'
		    where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp
			end
        	else if @Estado = 'PERDIDO'
			update dbo.Detalle_Envio_Comp_de_Pago set Detalle_Envio_Comp_de_Pago.Estado='PERDIDO'
		    where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp 	
			else	if @Estado = 'EMITIDO' or @Estado = 'ANULADO' --or @Estado = 'PERDIDO'
			update dbo.Detalle_Envio_Comp_de_Pago set Detalle_Envio_Comp_de_Pago.Estado='INACTIVO'
		    where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp
			

			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Detalle de Devolución de Documentos de Pago se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Detalle de Devolución de Documentos de Pago no se ha podido modificar.'
			   End
	 End
	      End


	else if (@Opcion='E')
	 Begin
		  
		   BEGIN TRY  	   
		  	delete from  Detalle_Devolucion_Comp_de_Pago where Id_Detalle_Dev_Comp = @Id_Detalle_Dev_Comp

		 declare @Id_Detalle_Ing_Comp3 int
			select  @Id_Detalle_Ing_Comp3 = Id_Detalle_Ing_Comp from dbo.Detalle_Envio_Comp_de_Pago where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp

         	iF @Estado = 'EN BLANCO'
			begin
			update dbo.Detalle_Ingreso_Comp_de_Pago set Detalle_INGRESO_Comp_de_Pago.Estado='INACTIVO'	
			where Id_Detalle_Ing_Comp = @Id_Detalle_Ing_Comp3	
			update dbo.Detalle_Envio_Comp_de_Pago set Detalle_Envio_Comp_de_Pago.Estado='ACTIVO'
		    where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp
			end
        	else if @Estado = 'PERDIDO'
			update dbo.Detalle_Envio_Comp_de_Pago set Detalle_Envio_Comp_de_Pago.Estado='ACTIVO'
		    where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp 	
			else	if @Estado = 'EMITIDO' or @Estado = 'ANULADO' --or @Estado = 'PERDIDO'
			update dbo.Detalle_Envio_Comp_de_Pago set Detalle_Envio_Comp_de_Pago.Estado='ACTIVO'
		    where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp

											                     
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Detalle se ha eliminado satisfactorimente.'			 
			End
			   
			else
			   Begin
				set @rpta=0   
				set @mensaje='Detalle no se ha podido eliminar....' + cast(@Id_Detalle_Dev_Comp as varchar (max))
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Detalle no se puede eliminar porque esta siendo utilizado.'
		END CATCH;
	End

				--exec 		[pa_mantenimiento_Detalle_Envio_Comp_de_Pago] 1006,'','','','E','',''
GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Detalle_Envio_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_mantenimiento_Detalle_Envio_Comp_de_Pago]
--@id									    int=null,
@Id_Detalle_Env_Comp					int=null,
@Estado                    varchar(50)=null,
@Id_Detalle_Ing_Comp                  int=null,
@Id_Envio_Comp             int=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   		  
			
			            
           insert into dbo.Detalle_Envio_Comp_de_Pago values
                                 (
                                  @Estado,
                                  @Id_Detalle_Ing_Comp,
								  @Id_Envio_Comp
                                     )
	         update dbo.Detalle_Ingreso_Comp_de_Pago set Detalle_Ingreso_Comp_de_Pago.Estado='INACTIVO'
			  where Id_Detalle_Ing_Comp = @Id_Detalle_Ing_Comp

			 if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Detalle de Envio de Documentos de Pago se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Detalle Envio de Documentos de Pago no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   		        if(@Id_Detalle_Env_Comp=-1)
			  begin
				   insert into dbo.Detalle_Envio_Comp_de_Pago values
										 (
										  @Estado,
										  @Id_Detalle_Ing_Comp,
										  @Id_Envio_Comp
										  )
            
					  update dbo.Detalle_Ingreso_Comp_de_Pago set Detalle_Ingreso_Comp_de_Pago.Estado='INACTIVO'
			         where Id_Detalle_Ing_Comp = @Id_Detalle_Ing_Comp

					if (@@RowCount=1) 
					   Begin
					    
						set @rpta=@@IDENTITY
						set @mensaje='Detalle Envio de Documentos de Pago no se ha podido guardar.'
					   End
					else
					   Begin
						set @rpta=0   
						set @mensaje='Detalle Envio de Documentos de Pago no se ha podido guardar.'
					   End  
				end
           else  
		   update dbo.Detalle_Envio_Comp_de_Pago set  
                                               Estado=@Estado,
												Id_Detalle_Ing_Comp=@Id_Detalle_Ing_Comp,
												Id_Envio_Comp=@Id_Envio_Comp
												where
												Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Detalle de Envio de Documentos de Pago se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Detalle de Envio de Documentos de Pago no se ha podido modificar.'
			   End
	 End
	   
	else if (@Opcion='E')
	 Begin
		  
		   BEGIN TRY  	   
		  	
			delete from  Detalle_Envio_Comp_de_Pago where Id_Detalle_Env_Comp = @Id_Detalle_Env_Comp

			update dbo.Detalle_Ingreso_Comp_de_Pago 
			set Estado='ACTIVO'
		    where Id_Detalle_Ing_Comp = @Id_Detalle_Ing_Comp 
											                     
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Detalle se ha eliminado satisfactorimente.'			 
			End
			   
			else
			   Begin
				set @rpta=0   
				set @mensaje='Detalle no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Detalle no se puede eliminar porque esta siendo utilizado.'
		END CATCH;
	End

				--exec 		[pa_mantenimiento_Detalle_Envio_Comp_de_Pago] 1006,'','','','E','',''
GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_detalle_guia]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pa_mantenimiento_detalle_guia]
@id_det_guia						int=null,
@id_guia					    int=null,
@prod_id						int=null,
@cantidad_sacos						int=null,
@unidad_medida varchar(MAX)=null,
@peso_sacos						FLOAT=null,
@Precio_Venta   float=null,
@IGV           float=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		            
           insert into dbo.DetalleGuia values
                                 (@id_guia,
                                  @prod_id,
                                  @cantidad_sacos,
                                  @unidad_medida,
                                  @peso_sacos,
                                  @Precio_Venta,
                                  @IGV 
								  )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Guia se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Guia no se ha podido modificar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		  if(@id_det_guia=-1)
			  begin
				   insert into dbo.DetalleGuia values
										 (@id_guia,
										  @prod_id,
										  @cantidad_sacos,
										  @unidad_medida,
										  @peso_sacos,
										  @Precio_Venta,
                                          @IGV 
										  )
					if (@@RowCount=1) 
					   Begin
					    
						set @rpta=@@IDENTITY
						set @mensaje='Guia se ha modificado satisfactorimente.'
					   End
					else
					   Begin
						set @rpta=0   
						set @mensaje='Guia no se ha podido modificar.'
					   End  
				end
           else
			   begin
				   update dbo.DetalleGuia set id_guia		    = @id_guia,
										  prod_id                = @prod_id,
										  cantidad_sacos         = @cantidad_sacos,
										  unidad_medida			 = @unidad_medida,
										  peso_sacos			 = @peso_sacos,
										  Precio_Venta          =@Precio_Venta,
										  IGV                    = @IGV
									  where id_det_guia          = @id_det_guia
									  
					if (@@RowCount=1) 
					   Begin
						set @rpta=1
						set @mensaje='Guia se ha modificado satisfactorimente.'
					   End
					else
					   Begin
						set @rpta=0   
						set @mensaje='Guia no se ha podido modificar.'
					   End
				End 
	 End
else if (@Opcion='E')
    Begin
		   
		  delete from  DetalleGuia where id_det_guia          = @id_det_guia
		  set @rpta=1  
						set @mensaje='Item guia se elimino satisfactoriamente.'
	 End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Detalle_Ingreso_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_mantenimiento_Detalle_Ingreso_Comp_de_Pago]
@Id_Detalle_Ing_Comp					int=null,
@Serie    			    varchar(4)=null,
@Numero						varchar(7)=null,
@Estado                    varchar(50)=null,
@Id_Ing_Comp                   int=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   		  
			
			            
           insert into dbo.Detalle_Ingreso_Comp_de_Pago values
                                 (
                                  @Serie,
                                  @Numero,
                                  @Estado,
                                  @Id_Ing_Comp
                                     )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Detalle de Ingreso de Documentos de Pago se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Detalle deIngreso de Documentos de Pago no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   		        if(@Id_Detalle_Ing_Comp=-1)
			  begin
				   insert into dbo.Detalle_Ingreso_Comp_de_Pago values
										 (
										  @Serie,
										  @Numero,
										  @Estado,
										  @Id_Ing_Comp
										  )
					if (@@RowCount=1) 
					   Begin
					    
						set @rpta=@@IDENTITY
						set @mensaje='Detalle deIngreso de Documentos de Pago no se ha podido guardar.'
					   End
					else
					   Begin
						set @rpta=0   
						set @mensaje='Detalle deIngreso de Documentos de Pago no se ha podido guardar.'
					   End  
				end
           else     
           update dbo.Detalle_Ingreso_Comp_de_Pago set  Serie= @Serie,
                                                Numero=@Numero,
                                               Estado=@Estado,
												Id_Ing_Comp=@Id_Ing_Comp
												where
												Id_Detalle_Ing_Comp = @Id_Detalle_Ing_Comp
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Detalle de Ingreso de Documentos de Pago se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Detalle de Ingreso de Documentos de Pago no se ha podido modificar.'
			   End
	 End
	 
	else if (@Opcion='E')
    Begin
		   
		  delete from  Detalle_Ingreso_Comp_de_Pago where Id_Detalle_Ing_Comp          = @Id_Detalle_Ing_Comp
		  set @rpta=1  
						set @mensaje='Detalle se elimino satisfactoriamente.'
	 End
GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_detalle_Pago_Cat]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_mantenimiento_detalle_Pago_Cat]
@id_det_pag_cat int =null,
@id_pag_detrac int=null,
@cat_id int =null,
@Precio float =null,
@Cantidad int =null,
@Ivap float =null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		            
           insert into dbo.Detalle_pag_cat  values
                                 (@id_pag_detrac,
                                  @cat_id,
                                  @Precio,
                                  @Cantidad,
                                  @Ivap
								  )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Detalle de  Pago de Detraccion se ha ingresado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Detalle de  Pago de Detraccion no se ha podido ingresar.'
			   End
	 End
	 
	 else if (@Opcion='M')
    Begin
		   
		  if(@id_det_pag_cat=-1)
			  begin
				   insert into dbo.Detalle_pag_cat values
								( @id_pag_detrac,
                                  @cat_id,
                                  @Precio,
                                  @Cantidad,
                                  @Ivap)
					if (@@RowCount=1) 
					   Begin
					    
						set @rpta=@@IDENTITY
						set @mensaje='Detalle de  Pago de Detraccion se ha modificado satisfactorimente.'
					   End
					else
					   Begin
						set @rpta=0   
						set @mensaje='Detalle de  Pago de Detraccion no se ha podido modificar.'
					   End  
				end
           else
			   begin
				   update dbo.Detalle_pag_cat set id_pag_detrac		    = @id_pag_detrac,
										  cat_id                = @cat_id,
										  Precio         = @Precio,
										  Cantidad			 = @Cantidad,
										  Ivap			 = @Ivap
									  where id_det_pag_cat          = @id_det_pag_cat
					if (@@RowCount=1) 
					   Begin
						set @rpta=1
						set @mensaje='Detalle de  Pago de Detraccion se ha modificado satisfactorimente.'
					   End
					else
					   Begin
						set @rpta=0   
						set @mensaje='Detalle de  Pago de Detraccion no se ha podido modificar.'
					   End
				End 
	 End
	 
	 else if (@Opcion='E')
    Begin
		   
		  delete from  Detalle_pag_cat where id_det_pag_cat          = @id_det_pag_cat
		  set @rpta=1  
						set @mensaje='Item de Pago de Detracción se elimino satisfactoriamente.'
	 End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Devolucion_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_mantenimiento_Devolucion_Comp_de_Pago]
@Id_Devolucion_Comp					int=null,
@Fecha_Devolucion              datetime=null,
@Direccion                    varchar(250)=null,
@Descripcion					varchar(250)=null,
@Id_Ubigeo                int=null,
@Id_Ope                   int=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   		  
				--   declare @MSGREMITENTE varchar(max)
				--   SELECT   @MSGREMITENTE=  Remitente.nombre   from Ingreso_Comp_de_Pago inner join
				--  Remitente on remitente.id_remitente=Ingreso_Comp_de_Pago .id_remitente 

				--   --declare @MSGSERIE varchar(max)
				--   --SELECT   @MSGSERIE=  SERIE   from Ingreso_Comp_de_Pago 

				--   --declare @MSGNUMERO varchar(max)
				--   --SELECT   @MSGNUMERO=  NUMERO  from Ingreso_Comp_de_Pago 

				--    declare @MSGTIPOCOMP varchar(max)
				--   SELECT   @MSGTIPOCOMP=  Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp   from Ingreso_Comp_de_Pago INNER JOIN 
				--   Tipo_de_Comprobante_de_Pago ON Tipo_de_Comprobante_de_Pago .Id_Tipo_Comp = Ingreso_Comp_de_Pago .Id_Tipo_Comp 
				     
		  -- if  EXISTS( select * from dbo.Ingreso_Comp_de_Pago where  /*Serie=@Serie AND Numero=@Numero and */ @id_remitente=@id_remitente 
		  --             AND Id_Tipo_Comp=@Id_Tipo_Comp AND Id_Ing_Comp<>@Id_Ing_Comp)
			 --  Begin
				--   set @rpta=0
				--  --set @mensaje= @MSGREMITENTE +' YA TIENE REGISTRADA EL COMPROBANTE '+ @MSGTIPOCOMP + ' CON LA SERIE ' +@MSGSERIE + ' y NUMERO '+ @MSGNUMERO-- + ' --> EDITE O QUITE'
				--   set @mensaje= @MSGREMITENTE +' YA TIENE REGISTRADA EL COMPROBANTE '+ @MSGTIPOCOMP + ' CON LA SERIE  y NUMERO  --> EDITE O QUITE'


				---- set @mensaje= '...............'
				--   return 0
			 --  End
			            
           insert into dbo.Devolucion_Comp_de_Pago values
                                 (
                                  @Fecha_Devolucion,
								  @Direccion,
                                  @Descripcion,
                                  @Id_Ubigeo,
                            	  @Id_Ope
                                     )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Devolución de Documentos de Pago se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Devolución de Documentos de Pago no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   		           
           update dbo.Devolucion_Comp_de_Pago set  
                                                Fecha_Devolucion=@Fecha_Devolucion,
												Direccion=@Direccion,
                                                Descripcion=@Descripcion,
                                                Id_Ubigeo=@Id_Ubigeo,
												Id_Ope=@Id_Ope
												where
												Id_Devolucion_Comp = @Id_Devolucion_Comp
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Devolución de Documentos de Pago se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Devolución de Documentos de Pago no se ha podido modificar.'
			   End
	 End
	 
	 --else if (@Opcion='E')
  --    Begin
		  
		--   BEGIN TRY

		--   delete from dbo.Ingreso_Comp_de_Pago where   Id_Ing_Comp = @Id_Ing_Comp
		--	if (@@RowCount=1) 
		--	   Begin
		--		set @rpta=1
		--		set @mensaje='Ingreso de Documentos de Pago se ha eliminado satisfactorimente.'
		--	   End
		--	else
		--	   Begin
		--		set @rpta=0   
		--		set @mensaje='Ingreso de Documentos de Pago no se ha podido eliminar.'
		--	   End
			   
		--  END TRY
		--  BEGIN CATCH
		--	    set @rpta=0   
		--		set @mensaje='Ingreso de Documentos de Pago no se puede eliminar porque esta siendo utilizado.'
		--END CATCH;

	   
     --End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_empresa_transportes]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pa_mantenimiento_empresa_transportes]
@id_emp_trans						int=null,
@nombre					    varchar(MAX)=null,
@ruc						varchar(11)=null,
@domicilio						varchar(MAX)=null,



@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   
		   if  EXISTS( select * from dbo.EmpresaTransporte where ruc=@ruc and id_emp_trans <> @id_emp_trans)
			   Begin
				   set @rpta=0
				   set @mensaje='Nro RUC ya existe.'
				   return 0
			   End 
           
           insert into dbo.EmpresaTransporte values
                                 (@nombre,
                                  @ruc,
                                  @domicilio	)
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Empresa de transportes se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Empresa de transportes no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		 
		   if  EXISTS( select * from dbo.EmpresaTransporte where ruc=@ruc and id_emp_trans <> @id_emp_trans)
			   Begin
				   set @rpta=0
				   set @mensaje='Nro RUC ya existe.'
				   return 0
			   End 
		    
           
           update dbo.EmpresaTransporte set    nombre		 = @nombre,
                                  ruc = @ruc,
                                  domicilio	= @domicilio	
						      where id_emp_trans = @id_emp_trans
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Empresa de transportes se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Empresa de transportes no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.EmpresaTransporte where   id_emp_trans = @id_emp_trans
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Empresa de transportes se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Empresa de transportes no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Empresa de transportes no se puede eliminar porque esta siendo utilizado.'
		END CATCH;

	   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_envase]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_mantenimiento_envase]
@envas_id					int=null,
@envas_nom				    varchar(MAX)=null,
@envas_desc					varchar(MAX)=null,



@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   
			   
		    if  EXISTS( select * from dbo.envasado  where envas_nom =@envas_nom	 and envas_id  <> @envas_id)
			   Begin
				   set @rpta=0
				   set @mensaje='Nombre de envase ya existe.'
				   return 0
			   End 	   
		   	   
           
           insert into dbo.envasado  values
                                 (@envas_nom,
                                  @envas_desc                                 								)
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Envasado se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Envasado no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		   
		   if  EXISTS( select * from dbo.envasado  where envas_nom=@envas_nom and envas_id  <> @envas_id )
			   Begin
				   set @rpta=0
				   set @mensaje='Nombre Envasado ya existe.'
				   return 0
			   End 
		    
           
           update dbo.envasado  set  envas_nom=@envas_nom,
                                    envas_desc=@envas_desc  
						      where envas_id = @envas_id
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Envasado se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Envasado no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.envasado  where   envas_id = @envas_id
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Envasado se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Envasado no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Envasado no se puede eliminar porque esta siendo utilizado.'
		END CATCH;
   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Envio_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_mantenimiento_Envio_Comp_de_Pago]
@Id_Envio_Comp					int=null,
@Fecha_Envio              datetime=null,
@Descripcion					varchar(250)=null,
@Id_Comisionista                int=null,
@Id_Zona                     int=null,
@Id_Ope                   int=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   		  
				--   declare @MSGREMITENTE varchar(max)
				--   SELECT   @MSGREMITENTE=  Remitente.nombre   from Ingreso_Comp_de_Pago inner join
				--  Remitente on remitente.id_remitente=Ingreso_Comp_de_Pago .id_remitente 

				--   --declare @MSGSERIE varchar(max)
				--   --SELECT   @MSGSERIE=  SERIE   from Ingreso_Comp_de_Pago 

				--   --declare @MSGNUMERO varchar(max)
				--   --SELECT   @MSGNUMERO=  NUMERO  from Ingreso_Comp_de_Pago 

				--    declare @MSGTIPOCOMP varchar(max)
				--   SELECT   @MSGTIPOCOMP=  Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp   from Ingreso_Comp_de_Pago INNER JOIN 
				--   Tipo_de_Comprobante_de_Pago ON Tipo_de_Comprobante_de_Pago .Id_Tipo_Comp = Ingreso_Comp_de_Pago .Id_Tipo_Comp 
				     
		  -- if  EXISTS( select * from dbo.Ingreso_Comp_de_Pago where  /*Serie=@Serie AND Numero=@Numero and */ @id_remitente=@id_remitente 
		  --             AND Id_Tipo_Comp=@Id_Tipo_Comp AND Id_Ing_Comp<>@Id_Ing_Comp)
			 --  Begin
				--   set @rpta=0
				--  --set @mensaje= @MSGREMITENTE +' YA TIENE REGISTRADA EL COMPROBANTE '+ @MSGTIPOCOMP + ' CON LA SERIE ' +@MSGSERIE + ' y NUMERO '+ @MSGNUMERO-- + ' --> EDITE O QUITE'
				--   set @mensaje= @MSGREMITENTE +' YA TIENE REGISTRADA EL COMPROBANTE '+ @MSGTIPOCOMP + ' CON LA SERIE  y NUMERO  --> EDITE O QUITE'


				---- set @mensaje= '...............'
				--   return 0
			 --  End
			            
           insert into dbo.Envio_Comp_de_Pago values
                                 (
                                  @Fecha_Envio,
                                  @Descripcion,
                                  @Id_Comisionista,
                                  @Id_Zona,
								  @Id_Ope
                                     )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Envio de Documentos de Pago se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Envio de Documentos de Pago no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   		           
           update dbo.Envio_Comp_de_Pago set  
                                                Fecha_Envio=@Fecha_Envio,
                                                Descripcion=@Descripcion,
                                                Id_Comisionista=@Id_Comisionista,
												Id_Zona=@Id_Zona,
												Id_Ope=@Id_Ope
												where
												Id_Envio_Comp = @Id_Envio_Comp
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Envio de Documentos de Pago se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Envio de Documentos de Pago no se ha podido modificar.'
			   End
	 End
	 
	 --else if (@Opcion='E')
  --    Begin
		  
		--   BEGIN TRY

		--   delete from dbo.Ingreso_Comp_de_Pago where   Id_Ing_Comp = @Id_Ing_Comp
		--	if (@@RowCount=1) 
		--	   Begin
		--		set @rpta=1
		--		set @mensaje='Ingreso de Documentos de Pago se ha eliminado satisfactorimente.'
		--	   End
		--	else
		--	   Begin
		--		set @rpta=0   
		--		set @mensaje='Ingreso de Documentos de Pago no se ha podido eliminar.'
		--	   End
			   
		--  END TRY
		--  BEGIN CATCH
		--	    set @rpta=0   
		--		set @mensaje='Ingreso de Documentos de Pago no se puede eliminar porque esta siendo utilizado.'
		--END CATCH;

	   
     --End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Ingreso_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_mantenimiento_Ingreso_Comp_de_Pago]
@Id_Ing_Comp					int=null,
@Fecha_Ingreso              datetime=null,
@Descripcion					varchar(250)=null,
@id_remitente                 int=null,
@Id_Ope                     int=null,
@Id_Tipo_Comp                    int=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   		  
				--   declare @MSGREMITENTE varchar(max)
				--   SELECT   @MSGREMITENTE=  Remitente.nombre   from Ingreso_Comp_de_Pago inner join
				--  Remitente on remitente.id_remitente=Ingreso_Comp_de_Pago .id_remitente 

				--   --declare @MSGSERIE varchar(max)
				--   --SELECT   @MSGSERIE=  SERIE   from Ingreso_Comp_de_Pago 

				--   --declare @MSGNUMERO varchar(max)
				--   --SELECT   @MSGNUMERO=  NUMERO  from Ingreso_Comp_de_Pago 

				--    declare @MSGTIPOCOMP varchar(max)
				--   SELECT   @MSGTIPOCOMP=  Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp   from Ingreso_Comp_de_Pago INNER JOIN 
				--   Tipo_de_Comprobante_de_Pago ON Tipo_de_Comprobante_de_Pago .Id_Tipo_Comp = Ingreso_Comp_de_Pago .Id_Tipo_Comp 
				     
		  -- if  EXISTS( select * from dbo.Ingreso_Comp_de_Pago where  /*Serie=@Serie AND Numero=@Numero and */ @id_remitente=@id_remitente 
		  --             AND Id_Tipo_Comp=@Id_Tipo_Comp AND Id_Ing_Comp<>@Id_Ing_Comp)
			 --  Begin
				--   set @rpta=0
				--  --set @mensaje= @MSGREMITENTE +' YA TIENE REGISTRADA EL COMPROBANTE '+ @MSGTIPOCOMP + ' CON LA SERIE ' +@MSGSERIE + ' y NUMERO '+ @MSGNUMERO-- + ' --> EDITE O QUITE'
				--   set @mensaje= @MSGREMITENTE +' YA TIENE REGISTRADA EL COMPROBANTE '+ @MSGTIPOCOMP + ' CON LA SERIE  y NUMERO  --> EDITE O QUITE'


				---- set @mensaje= '...............'
				--   return 0
			 --  End
			            
           insert into dbo.Ingreso_Comp_de_Pago values
                                 (
                                  @Fecha_Ingreso,
                                  @Descripcion,
                                  @id_remitente,
                                  @Id_Ope,
								  @Id_Tipo_Comp
                                     )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Ingreso de Documentos de Pago se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Ingreso de Documentos de Pago no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   		           
           update dbo.Ingreso_Comp_de_Pago set  
                                                Fecha_Ingreso=@Fecha_Ingreso,
                                                Descripcion=@Descripcion,
                                                id_remitente=@id_remitente,
												Id_Ope=@Id_Ope,
												Id_Tipo_Comp=@Id_Tipo_Comp
												where
												Id_Ing_Comp = @Id_Ing_Comp
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Ingreso de Documentos de Pago se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Ingreso de Documentos de Pago no se ha podido modificar.'
			   End
	 End
	 
	 --else if (@Opcion='E')
  --    Begin
		  
		--   BEGIN TRY

		--   delete from dbo.Ingreso_Comp_de_Pago where   Id_Ing_Comp = @Id_Ing_Comp
		--	if (@@RowCount=1) 
		--	   Begin
		--		set @rpta=1
		--		set @mensaje='Ingreso de Documentos de Pago se ha eliminado satisfactorimente.'
		--	   End
		--	else
		--	   Begin
		--		set @rpta=0   
		--		set @mensaje='Ingreso de Documentos de Pago no se ha podido eliminar.'
		--	   End
			   
		--  END TRY
		--  BEGIN CATCH
		--	    set @rpta=0   
		--		set @mensaje='Ingreso de Documentos de Pago no se puede eliminar porque esta siendo utilizado.'
		--END CATCH;

	   
     --End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_logotipo]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pa_mantenimiento_logotipo]
@logo_id				int=null,
@logo_nom			    varchar(MAX)=null,
@logo_descr				varchar(MAX)=null,



@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   
			   
		    if  EXISTS( select * from dbo.logotipo   where logo_nom =@logo_nom	 and logo_id  <> @logo_id)
			   Begin
				   set @rpta=0
				   set @mensaje='Nombre de logotipo ya existe.'
				   return 0
			   End 	   
		   	   
           
           insert into dbo.logotipo   values
                                 (@logo_nom,
                                  @logo_descr		                               								)
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Logotipo se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Logotipo no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		   
		   if  EXISTS( select * from dbo.logotipo   where logo_nom=@logo_nom and logo_id  <> @logo_id )
			   Begin
				   set @rpta=0
				   set @mensaje='Nombre logotipo ya existe.'
				   return 0
			   End 
		    
           
           update dbo.logotipo   set  logo_nom=@logo_nom,
                                    logo_descr	=@logo_descr	 
						      where logo_id = @logo_id
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Logotipo se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Logotipo no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.logotipo   where   logo_id = @logo_id
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Logotipo se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Logotipo no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Logotipo no se puede eliminar porque esta siendo utilizado.'
		END CATCH;
   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_nota_Arroz]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_mantenimiento_nota_Arroz]
@Id_nota_arroz						int=null,
@id_guia                           int=null,
@id_pag_detrac                INT =NULL,
@Id_Trabajador      INT =NULL,
@Fecha				    datetime=null,
@Destinatario_Arr varchar(250)=null,
@Telef_Dest_Arr varchar(50)=null,
@Direccion varchar (250)=null,
@costo_flete_arr float=null,
@a_cuenta_arr float=null,
@toneladas float=null,
@observacion varchar(250)=null,
@Comentario varchar(250)=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  if (@Opcion='N')
    Begin
    
		   	     if  EXISTS( select * from dbo.Nota_Env_Arroz  where id_guia =@id_guia	 and Id_nota_arroz	  <> @Id_nota_arroz	)
			   Begin
				   set @rpta=0
				   set @mensaje='Nota de Envio NO puede ser registrada, porque Guia ha sido seleccionada previamente.'
				   return 0
			   End 	   	   
           
           insert into dbo.Nota_Env_Arroz values(
                                      @id_guia ,
                                      @id_pag_detrac,
                                      @Id_Trabajador ,
                                       @Fecha	,
                                    @Destinatario_Arr ,
                                     @Telef_Dest_Arr ,
                                    @Direccion ,
                                     @costo_flete_arr ,
                                     @a_cuenta_arr ,
                                     @toneladas,
                                     @observacion ,
                                      @Comentario
                                     )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Nota de Envio - Venta de Arroz se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Nota de Envio - Venta de Arroz no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
    
		  if  EXISTS( select * from dbo.Nota_Env_Arroz  where id_guia =@id_guia	 and Id_nota_arroz	  <> @Id_nota_arroz	)
			   Begin
				   set @rpta=0
				   set @mensaje='Nota de Envio NO puede ser registrada, porque Guia ha sido seleccionada previamente.'
				   return 0
			   End 	   	   
           
           update dbo.Nota_Env_Arroz set    
                                     id_guia= @id_guia ,
                                     id_pag_detrac=@id_pag_detrac,
                                     Id_Trabajador=@Id_Trabajador , 
                                     Fecha=  @Fecha	,
                                   Destinatario_Arr = @Destinatario_Arr ,
                                    Telef_Dest_Arr=@Telef_Dest_Arr ,
                                    Direccion=@Direccion ,
                                     costo_flete_arr=@costo_flete_arr ,
                                     a_cuenta_arr=@a_cuenta_arr ,
                                     toneladas=@toneladas,
                                     observacion=@observacion ,
                                     Comentario= @Comentario
                                     where Id_nota_arroz = @Id_nota_arroz
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Nota de Envio - Venta de	Arroz se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Nota de Envio - Venta de Arroz no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.Nota_Env_Arroz where   Id_nota_arroz = @Id_nota_arroz
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Nota de Envio - Venta de	Arroz se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Nota de Envio - Venta de	Arroz no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Nota de Envio - Venta de	Arroz no se puede eliminar porque esta siendo utilizado.'
		END CATCH;

	   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Operacion]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_mantenimiento_Operacion]
@Id_Ope			int=null,
@Codigo_Ope        varchar(50)=null,
@Nombre_Ope 	    varchar(250)=null,
@Descrip_Ope		varchar(250)=null,
@Id_Tipo_Ope         int=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   
			        
            insert into dbo.Operacion     values
                                 (@Codigo_Ope,
                                  @Nombre_Ope,
                                  @Descrip_Ope,
                                  @Id_Tipo_Ope
                                   )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Operacion se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Operacion no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		   
		   --if  EXISTS( select * from dbo.envasado  where envas_nom=@envas_nom and envas_id  <> @envas_id )
			  -- Begin
				 --  set @rpta=0
				 --  set @mensaje='Nombre Envasado ya existe.'
				 --  return 0
			  -- End 
		    
           
           update dbo.Operacion    set  Codigo_Ope  = @Codigo_Ope,
                                      Nombre_Ope=@Nombre_Ope,
                                     Descrip_Ope=@Descrip_Ope,
                                     Id_Tipo_Ope=@Id_Tipo_Ope
                                   where Id_Ope = @Id_Ope
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Operacion se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Operacion no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.Operacion   where   Id_Ope = @Id_Ope
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Operacion se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Operacion no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Operacion no se puede eliminar porque esta siendo utilizado.'
		END CATCH;
   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Pago_Detrac]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_mantenimiento_Pago_Detrac]
@id_pag_detrac int =null,
@Fecha datetime = null,
@Descripcion varchar(250) =null,
@Fecha_Emis datetime=null,
@id_remitente INT =NULL,

@Opcion char(1),
@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		  		   
		   -----Validamos si la tabla cie10 tiene informacion
		  /* if  EXISTS( select * from dbo.Guia where nro_guia=@nro_guia )
			   Begin
				   set @rpta=0
				   set @mensaje='Guia remision ya existe.'
				   return 0
			   End*/
		   	   
           
           insert into dbo.Pago_Detrac  values
                                 (@Fecha ,
                                  @Descripcion,
                                  @Fecha_Emis,
                                  @id_remitente                                                               
								  )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Pago de Detraccion se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Pago de Detraccion no se ha podido guardar.'
			   End
	 End
	 else if (@Opcion='M')
    Begin
		   
		  /* if  EXISTS( select * from dbo.Guia where nro_guia=@nro_guia and id_guia<>@id_guia)
			   Begin
				   set @rpta=0
				   set @mensaje='Guia remision ya existe.'
				   return 0
			   End	   */
           
           update dbo.Pago_Detrac set  
                                  Fecha		 = @Fecha,
                                  Descripcion = @Descripcion,
                                  Fecha_Emis=@Fecha_Emis,
                                  id_remitente=@id_remitente
                                  where id_pag_detrac = @id_pag_detrac
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Pago de Detraccion se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Pago de Detraccion no se ha podido modificar.'
			   End
	 End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_peso_med]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[pa_mantenimiento_peso_med]
@Id_peso_med						int=null,
@id_guia                           int=null,
@Fecha				    datetime=null,
--@Peso_bruto                  varchar(10)=null,
@Observacion				varchar(700)=null,


@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
    
		  if  EXISTS( select * from dbo.Peso_Med  where id_guia =@id_guia	 and Id_peso_med  <> @Id_peso_med)
			   Begin
				   set @rpta=0
				   set @mensaje='Pesos y Medidas NO puede ser registrada, porque Guia ha sido seleccionada previamente.'
				   return 0
			   End 	   	  
		  
		   	   
           
           insert into dbo.Peso_Med values(
                                      @id_guia ,
                                      @Fecha,
                                   --   @Peso_bruto ,
                                      @Observacion
                                     )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Peso y Medidas se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Peso y Medidas no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
    
		  if  EXISTS( select * from dbo.Peso_Med  where id_guia =@id_guia	 and Id_peso_med  <> @Id_peso_med)
			   Begin
				   set @rpta=0
				   set @mensaje='Pesos y Medidas NO puede ser modificada, porque Guia ha sido seleccionada previamente.'
				   return 0
			   End 	   	 
           
           update dbo.Peso_Med set    
                                      Fecha= @Fecha,
                                     id_guia= @id_guia,
                                    -- Peso_bruto=@Peso_bruto ,
                                      Observacion=@Observacion
                                   where Id_peso_med = @Id_peso_med
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Peso y Medidas se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Peso y Medidas no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.Peso_Med where   Id_peso_med = @Id_peso_med
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Peso y Medidas se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Peso y Medidas no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Peso y Medidas no se puede eliminar porque esta siendo utilizado.'
		END CATCH;

	   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_producto]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pa_mantenimiento_producto]
@prod_id						int=null,
@prod_nom					    varchar(100)=null,
@prod_peso_uni						varchar(10)=null,
@prod_color						varchar(60)=null,
@Nomb_Comer        varchar (150)=null,
@cat_id						int=null,
@logo_id						int=null,
@envas_id					int=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		              
           insert into dbo.producto values
                                 (@prod_nom,
                                  @prod_peso_uni,
                                  @prod_color,
                                  @Nomb_Comer,
                                  @cat_id,
								  @logo_id,
								  @envas_id
								  )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Producto se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Producto no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		   --if  EXISTS( select * from dbo.Guia where nro_guia=@nro_guia and id_guia<>@id_guia)
			  -- Begin
				 --  set @rpta=0
				 --  set @mensaje='Guia remision ya existe.'
				 --  return 0
			  -- End	   
           
           update dbo.producto set    prod_nom		 = @prod_nom,
                                  prod_peso_uni = @prod_peso_uni,
                                  prod_color = @prod_color,
                                  Nomb_Comer=@Nomb_Comer,
                                  cat_id	= @cat_id,
                                  logo_id = @logo_id,
                                  envas_id = @envas_id
						      where prod_id = @prod_id
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Producto se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Producto no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.producto where   prod_id = @prod_id
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Producto se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Producto no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Producto no se puede eliminar porque esta siendo utilizado.'
		END CATCH;

	   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_remitente]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pa_mantenimiento_remitente]
@id_remitente						int=null,
@nombre					    varchar(MAX)=null,
@ruc						varchar(MAX)=null,
@Cuenta_Detrac              varchar(20)=null,
@direccion                  varchar(MAX)=null,
@descripcion                varchar(MAX)=null, 
@id_ubigeo                   int=null,


@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   
		   if  EXISTS( select * from dbo.Remitente where ruc=@ruc and id_remitente <> @id_remitente)
			   Begin
				   set @rpta=0
				   set @mensaje='Nro. ruc ya existe.'
				   return 0
			   End
		   
		    if  EXISTS( select * from dbo.Remitente where nombre=@nombre and id_remitente <> @id_remitente)
			   Begin
				   set @rpta=0
				   set @mensaje='Nombre remitente ya existe.'
				   return 0
			   End 	   
		   	   
           
           insert into dbo.Remitente values
                                 (@nombre,
                                  @ruc,
                                  @Cuenta_Detrac,
                                  @direccion,
                                  @descripcion,
                                  @id_ubigeo 
								  )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Remitente se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Remitente no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		   if  EXISTS( select * from dbo.Remitente where ruc=@ruc and id_remitente <> @id_remitente)
			   Begin
				   set @rpta=0
				   set @mensaje='Nro. ruc ya existe.'
				   return 0
			   End
		   if  EXISTS( select * from dbo.Remitente where nombre=@nombre and id_remitente <> @id_remitente)
			   Begin
				   set @rpta=0
				   set @mensaje='Nombre Remitente ya existe.'
				   return 0
			   End 
		    
           
           update dbo.Remitente set    nombre		 = @nombre,
                                  ruc = @ruc,
                                  Cuenta_Detrac=@Cuenta_Detrac,
                                  direccion =@direccion,
                                  descripcion =@descripcion, 
                                  id_ubigeo=@id_ubigeo 
						      where id_remitente = @id_remitente
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Remitente se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Remitente no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.Remitente where   id_remitente = @id_remitente
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Remitente se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Remitente no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Remitente no se puede eliminar porque esta siendo utilizado.'
		END CATCH;
   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Tipo_Cliente]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_mantenimiento_Tipo_Cliente]
@Id_Tipo_Cliente						int=null,
@Tipo_Cli				    varchar(50)=null,
@Descrip_Tipo_Cli		varchar(250)=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   
		   --if  EXISTS( select * from dbo.chofer where Brevete=@Brevete and id_chofer <> @id_chofer)
			  -- Begin
				 --  set @rpta=0
				 --  set @mensaje='Nro. BREVETE ya existe.'
				 --  return 0
			  -- End 
           
           insert into dbo.Tipo_Cliente values
                                 (
                                 @Tipo_Cli,
                                 @Descrip_Tipo_Cli
                                 -- @Telefono_chof		
								  )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Tipo de Cliente se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Tipo de Cliente no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		 
		   --if  EXISTS( select * from dbo.chofer where Brevete=@Brevete and id_chofer <> @id_chofer)
			  -- Begin
				 --  set @rpta=0
				 --  set @mensaje='Nro BREVETE ya existe.'
				 --  return 0
			  -- End 
		    
           
           update dbo.Tipo_Cliente set   --Id_tipo_trab= @Id_tipo_trab,
                                  Tipo_Cli= @Tipo_Cli,
                                 Descrip_Tipo_Cli=@Descrip_Tipo_Cli
                               -- Telefono_chof=  @Telefono_chof	
						      where Id_Tipo_Cliente = @Id_Tipo_Cliente
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Tipo de Cliente se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Tipo de Cliente no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.Tipo_Cliente where   Id_Tipo_Cliente = @Id_Tipo_Cliente
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Tipo de Cliente se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Tipo de Cliente no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Tipo de Cliente no se puede eliminar porque esta siendo utilizado.'
		END CATCH;

	   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Tipo_de_Comprobante_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_mantenimiento_Tipo_de_Comprobante_de_Pago]
@Id_Tipo_Comp			int=null,
@Codigo_Tipo_Comp          varchar(50)=null,
@Nombre_Tipo_Comp		    varchar(2000)=null,
@Siglas_Tipo_Comp               varchar (50)=null,
@Descrip_Tipo_Comp			varchar(250)=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   
			   
		    --if  EXISTS( select * from dbo.envasado  where envas_nom =@envas_nom	 and envas_id  <> @envas_id)
			   --Begin
				  -- set @rpta=0
				  -- set @mensaje='Nombre de envase ya existe.'
				  -- return 0
			   --End 	   
		   	   
           
           insert into dbo.Tipo_de_Comprobante_de_Pago    values
                                 (@Codigo_Tipo_Comp,
                                  @Nombre_Tipo_Comp,
                                  @Siglas_Tipo_Comp,
                                  @Descrip_Tipo_Comp
                                   )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Tipo de Comprobante de Pago se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Tipo de Comprobante de Pago no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		   
		   --if  EXISTS( select * from dbo.envasado  where envas_nom=@envas_nom and envas_id  <> @envas_id )
			  -- Begin
				 --  set @rpta=0
				 --  set @mensaje='Nombre Envasado ya existe.'
				 --  return 0
			  -- End 
		    
           
           update dbo.Tipo_de_Comprobante_de_Pago   set  Codigo_Tipo_Comp=@Codigo_Tipo_Comp,
                                        Nombre_Tipo_Comp=@Nombre_Tipo_Comp,
                                        Siglas_Tipo_Comp=@Siglas_Tipo_Comp,
                                    Descrip_Tipo_Comp=@Descrip_Tipo_Comp
                                   where Id_Tipo_Comp = @Id_Tipo_Comp
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Tipo de Comprobante de Pago se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Tipo de Comprobante de Pago no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.Tipo_de_Comprobante_de_Pago  where   Id_Tipo_Comp = @Id_Tipo_Comp
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Tipo de Comprobante de Pago se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Tipo de Comprobante de Pago no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Tipo de Comprobante de Pago no se puede eliminar porque esta siendo utilizado.'
		END CATCH;
   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Tipo_de_Documento_de_Identidad]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_mantenimiento_Tipo_de_Documento_de_Identidad]
@id_tip_doc		int=null,
@Codigo_Tipo_Documento          varchar(50)=null,
@nombre_tip_doc		    varchar(max)=null,
@Siglas_Tipo_Documento          varchar(50)=null,
@Descripcion			varchar(250)=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   
			   
		    --if  EXISTS( select * from dbo.envasado  where envas_nom =@envas_nom	 and envas_id  <> @envas_id)
			   --Begin
				  -- set @rpta=0
				  -- set @mensaje='Nombre de envase ya existe.'
				  -- return 0
			   --End 	   
		   	   
           
           insert into dbo.TipoDocumento    values
                                 (@Codigo_Tipo_Documento,
                                  @nombre_tip_doc,
                                  @Siglas_Tipo_Documento,
                                  @Descripcion
                                   )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Tipo de Documento de Identidad se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Tipo de Documento de Identidad no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		   
		   --if  EXISTS( select * from dbo.envasado  where envas_nom=@envas_nom and envas_id  <> @envas_id )
			  -- Begin
				 --  set @rpta=0
				 --  set @mensaje='Nombre Envasado ya existe.'
				 --  return 0
			  -- End 
		    
           
           update dbo.TipoDocumento   set  Codigo_Tipo_Documento=@Codigo_Tipo_Documento,
                                          nombre_tip_doc=@nombre_tip_doc,
                                        Siglas_Tipo_Documento=@Siglas_Tipo_Documento,
                                          Descripcion=@Descripcion
                                   where id_tip_doc = @id_tip_doc
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Tipo de Documento de Identidad se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Tipo de Documento de Identidad no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.TipoDocumento  where   id_tip_doc = @id_tip_doc
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Tipo de Documento de Identidad se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Tipo de Documento de Identidad no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Tipo de Documento de Identidad no se puede eliminar porque esta siendo utilizado.'
		END CATCH;
   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Tipo_Operacion]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_mantenimiento_Tipo_Operacion]
@Id_Tipo_Ope			int=null,
@Nombre_Tipo_Ope			    varchar(250)=null,
@Descrip_Tipo_Ope			varchar(250)=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   
			   
		    --if  EXISTS( select * from dbo.envasado  where envas_nom =@envas_nom	 and envas_id  <> @envas_id)
			   --Begin
				  -- set @rpta=0
				  -- set @mensaje='Nombre de envase ya existe.'
				  -- return 0
			   --End 	   
		   	   
           
           insert into dbo.Tipo_Operacion    values
                                 (@Nombre_Tipo_Ope,
                                  @Descrip_Tipo_Ope
                                   )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Tipo de Operacion se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Tipo de Operacion no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		   
		   --if  EXISTS( select * from dbo.envasado  where envas_nom=@envas_nom and envas_id  <> @envas_id )
			  -- Begin
				 --  set @rpta=0
				 --  set @mensaje='Nombre Envasado ya existe.'
				 --  return 0
			  -- End 
		    
           
           update dbo.Tipo_Operacion   set  Nombre_Tipo_Ope=@Nombre_Tipo_Ope,
                                    Descrip_Tipo_Ope=@Descrip_Tipo_Ope
                                   where Id_Tipo_Ope = @Id_Tipo_Ope
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Tipo de Operacion se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Tipo de Operacion no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.Tipo_Operacion  where   Id_Tipo_Ope = @Id_Tipo_Ope
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Tipo de Operacion se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Tipo de Operacion no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Tipo de Operacion no se puede eliminar porque esta siendo utilizado.'
		END CATCH;
   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Tipo_Trabaj]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_mantenimiento_Tipo_Trabaj]
@Id_tipo_trab						int=null,
@Tip_trabaj				    varchar(50)=null,
@Descrip_Tipo_trabaj		varchar(250)=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   
		   --if  EXISTS( select * from dbo.chofer where Brevete=@Brevete and id_chofer <> @id_chofer)
			  -- Begin
				 --  set @rpta=0
				 --  set @mensaje='Nro. BREVETE ya existe.'
				 --  return 0
			  -- End 
           
           insert into dbo.Tipo_Trabajador values
                                 (
                                 @Tip_trabaj,
                                 @Descrip_Tipo_trabaj
                                 -- @Telefono_chof		
								  )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Tipo de Trabajador se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Tipo de Trabajador no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		 
		   --if  EXISTS( select * from dbo.chofer where Brevete=@Brevete and id_chofer <> @id_chofer)
			  -- Begin
				 --  set @rpta=0
				 --  set @mensaje='Nro BREVETE ya existe.'
				 --  return 0
			  -- End 
		    
           
           update dbo.Tipo_Trabajador set   --Id_tipo_trab= @Id_tipo_trab,
                                  Tip_trabaj= @Tip_trabaj,
                                 Descrip_Tipo_trabaj=@Descrip_Tipo_trabaj
                               -- Telefono_chof=  @Telefono_chof	
						      where Id_tipo_trab = @Id_tipo_trab
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Tipo de Trabajador se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Tipo de Trabajador no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.Tipo_Trabajador where   Id_tipo_trab = @Id_tipo_trab
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Tipo de Trabajador se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Tipo de Trabajador no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Tipo de Trabajador no se puede eliminar porque esta siendo utilizado.'
		END CATCH;

	   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Trabajador]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_mantenimiento_Trabajador]
@Id_Trabajador						int=null,
@Nombres				    varchar(250)=null,
@Apellidos						varchar(250)=null,
@Nro_Dcto					varchar(12)=null,
@Direccion          varchar(250)=null,
@Telefono            varchar(50)=null,
@Correo                 varchar(150)=null,
@Fecha_Nac              datetime=null,
@Fecha_Ingreso        datetime=null,
@Descrip_Trab      varchar(250)=null,
@Id_tipo_trab      int=null,
@id_tip_doc     int=null,


@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   		           
           insert into dbo.Trabajador values
                                 (
                                  @Nombres,
                                  @Apellidos,
                                  @Nro_Dcto,
                                  @Direccion,
                                  @Telefono,
                                  @Correo,
                                  @Fecha_Nac,
                                  @Fecha_Ingreso,
                                  @Descrip_Trab,
                                  @Id_tipo_trab,
                                  @id_tip_doc
                                  								  )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Trabajador se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Trabajador no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   		           
           update dbo.Trabajador set   Nombres= @Nombres,
                                 Apellidos=@Apellidos,
                                 Nro_Dcto=@Nro_Dcto,
                                Direccion=  @Direccion,	
                                Telefono=@Telefono,
                                Correo=@Correo,
                                Fecha_Nac=@Fecha_Nac,
                                Fecha_Ingreso=@Fecha_Ingreso,
                                Descrip_Trab=@Descrip_Trab,
                                Id_tipo_trab=@Id_tipo_trab,
                                id_tip_doc=@id_tip_doc
						      where Id_Trabajador = @Id_Trabajador
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Trabajador se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Trabajador no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.Trabajador where   Id_Trabajador = @Id_Trabajador
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Trabajador se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Trabajador no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Trabajador no se puede eliminar porque esta siendo utilizado.'
		END CATCH;

	   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Ubigeos]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[pa_mantenimiento_Ubigeos] --******* COPIAR DE COLUMNA A OTRA --> UPDATE Ubigeo SET Codigo = id_ubigeo 
@id_ubigeo						int=null,
@Codigo                       varchar(70)=null,
@Departamento				    varchar(max)=null,
@Provincia					  varchar(max)=null,
@Distrito				    varchar(max)=null,
--@Telefono_chof					varchar(50)=null,


@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		  
		   --if  EXISTS( select * from dbo.chofer where Brevete=@Brevete and id_chofer <> @id_chofer)
			  -- Begin
				 --  set @rpta=0
				 --  set @mensaje='Nro. BREVETE ya existe.'
				 --  return 0
			  -- End 
           
           insert into dbo.Ubigeo values
                                 (
                                 @Codigo,
                                  @Departamento,
                                  @Provincia,
                                  @Distrito		
								  )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='UBIGEO se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='UBIGEO no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		 
		   --if  EXISTS( select * from dbo.chofer where Brevete=@Brevete and id_chofer <> @id_chofer)
			  -- Begin
				 --  set @rpta=0
				 --  set @mensaje='Nro BREVETE ya existe.'
				 --  return 0
			  -- End 
		    
       
           update dbo.Ubigeo set   Codigo=@Codigo,
		                         Departamento= @Departamento,
                                 Provincia=@Provincia,
                                 Distrito=@Distrito
                                where id_ubigeo = @id_ubigeo
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='UBIGEO se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='UBIGEO no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.Ubigeo where   id_ubigeo = @id_ubigeo
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='UBIGEO se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='UBIGEO no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='UBIGEO no se puede eliminar porque esta siendo utilizado.'
		END CATCH;

	   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_unidad_transporte]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[pa_mantenimiento_unidad_transporte]
@id_vehi						int=null,
@marca					    varchar(MAX)=null,
@nroplaca					varchar(MAX)=null,
@nrocertificado						varchar(MAX)=null,
@marca2 varchar(max)=null,
@nroplaca2					varchar(MAX)=null,
@nrocertificado2						varchar(MAX)=null,
@largo varchar (50) =null,
@ancho varchar (50) =null,
@alto varchar (50) =null,
@Peso_neto1 float=null,
@largo2 varchar (50) =null,
@ancho2 varchar (50) =null,
@alto2 varchar (50) =null,
@Peso_neto2 float=null,
@Conf_Vehi varchar (10)=null,
@Pes_Veh varchar(20) =null,
@Peso_Bonif  float=null,
@Descripcion varchar(200)=null,
@id_emp_trans						int=null,

@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   
		    if  EXISTS( select * from dbo.Vehiculo where nroplaca=@nroplaca and nroplaca2=@nroplaca2 AND id_emp_trans = @id_emp_trans 
		                and id_vehi <> @id_vehi)
			   Begin
				   set @rpta=0
				   set @mensaje='Nro. placa de Remolque, Semiremolque y Transportista ya existen.'
				   return 0
			   End
		   
		  
		   	   
           
           insert into dbo.Vehiculo values
                                 (@marca,
                                 @nroplaca,
                                  @nrocertificado,
                                  @marca2,
                                  @nroplaca2,
                                  @nrocertificado2,
                                  @largo ,
                                  @ancho,
                                  @alto ,
                                  @Peso_neto1,
                                  @largo2 ,
                                  @ancho2 ,
                                  @alto2,
                                  @Peso_neto2,
                                  @Conf_Vehi ,
                                  @Pes_Veh ,
								  @Peso_Bonif,
                                  @Descripcion,
                                  @id_emp_trans
								  )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Unidad de transporte se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Unidad de transporte no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		  if  EXISTS( select * from dbo.Vehiculo where nroplaca=@nroplaca and nroplaca2=@nroplaca2 AND id_emp_trans = @id_emp_trans 
		                and id_vehi <> @id_vehi)
			   Begin
				   set @rpta=0
				     set @mensaje='Nro. placa de Remolque, Semiremolque y Transportista ya existen.'
				   return 0
			   End 
           
           update dbo.Vehiculo set    marca		 = @marca,
                                    nroplaca = @nroplaca,
                                  nrocertificado = @nrocertificado,
                                  marca2= @marca2,
                                  nroplaca2=@nroplaca2,
                                 nrocertificado2= @nrocertificado2,
                                  largo=@largo ,
                                  ancho=@ancho,
                                  alto=@alto ,
                                  Peso_neto1=@Peso_neto1,
                                  largo2=@largo2 ,
                                  ancho2=@ancho2 ,
                                  alto2=@alto2,
                                  Peso_neto2=@Peso_neto2,
                                  Conf_Vehi=@Conf_Vehi ,
                                  Pes_Veh=@Pes_Veh ,
								  Peso_Bonif=@Peso_Bonif,
                                  Descripcion=@Descripcion,
                                  id_emp_trans			 = @id_emp_trans
						      where id_vehi = @id_vehi
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Unidad de transporte se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Unidad de transporte no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.Vehiculo where   id_vehi = @id_vehi
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Unidad de transporte se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Unidad de transporte no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Unidad de transporte no se puede eliminar porque esta siendo utilizado.'
		END CATCH;

	   
     End

GO
/****** Object:  StoredProcedure [dbo].[pa_mantenimiento_Zona]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[pa_mantenimiento_Zona]
@Id_Zona						int=null,
@Nombre_Zona				    varchar(50)=null,
@Orden_Zona						int=null,
@Descrip_Zona                 varchar(250)=null,
@id_ubigeo                   int=null,


@Opcion char(1),

@rpta int output,
@mensaje varchar(100) output
as
  
if (@Opcion='N')
    Begin
		   
		  		   
		    if  EXISTS( select * from dbo.Zona where Nombre_Zona=@Nombre_Zona and Id_Zona <> @Id_Zona)
			   Begin
				   set @rpta=0
				   set @mensaje='Nombre de Zona ya existe.'
				   return 0
			   End 	   
		   	   
           
           insert into dbo.Zona values
                                 (@Nombre_Zona,
                                  @Orden_Zona,
                                  @Descrip_Zona,
                                  @id_ubigeo 
								  )
			if (@@RowCount=1) 
			   Begin
			    
				set @rpta=@@IDENTITY
				set @mensaje='Zona se ha guardado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Zona no se ha podido guardar.'
			   End
	 End
else if (@Opcion='M')
    Begin
		   
		  if  EXISTS( select * from dbo.Zona where Nombre_Zona=@Nombre_Zona and Id_Zona <> @Id_Zona)
			   Begin
				   set @rpta=0
				   set @mensaje='Nombre de Zona ya existe.'
				   return 0
			   End 	   
           
           update dbo.Zona set    Nombre_Zona		 = @Nombre_Zona,
                                  Orden_Zona = @Orden_Zona,
                                  Descrip_Zona=@Descrip_Zona,
                                  id_ubigeo=@id_ubigeo 
						      where Id_Zona = @Id_Zona
			if (@@RowCount=1) 
			   Begin
			    set @rpta=1
				set @mensaje='Zona se ha modificado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Zona no se ha podido modificar.'
			   End
	 End
	 
	 else if (@Opcion='E')
      Begin
		  
		   BEGIN TRY

		   delete from dbo.Zona where   Id_Zona = @Id_Zona
			if (@@RowCount=1) 
			   Begin
				set @rpta=1
				set @mensaje='Zona se ha eliminado satisfactorimente.'
			   End
			else
			   Begin
				set @rpta=0   
				set @mensaje='Zona no se ha podido eliminar.'
			   End
			   
		  END TRY
		  BEGIN CATCH
			    set @rpta=0   
				set @mensaje='Zona no se puede eliminar porque esta siendo utilizado.'
		END CATCH;
   
     End

GO
/****** Object:  StoredProcedure [dbo].[Rep_ContGuiaFT]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Rep_ContGuiaFT]
@fecini  	    datetime			=	null,
@fecfin  	    datetime			=	null,
@Numero  	    varchar(7)			=	null,
@Remitente  	    varchar(100)			=	null
as
	begin
	
	--FECHA
	 if(NOT @fecini is null and NOT @fecfin is null and @Numero is null  and @Remitente is null )
			begin	
       select fecha,[Nro. Serie],Numero,Destinatario,[Direccion Destinatario],observacion,Comentario,Remitente, Empresa
				from   dbo.VistaNota_Envio_Arroz
				 WHERE  (fecha>=@fecini and fecha<=@fecfin)
				 order by fecha asc       
				 end
				
				--FECHA, numero
	 if(NOT @fecini is null and NOT @fecfin is null and Not @Numero is null  and @Remitente is null )
			begin	
        select fecha,[Nro. Serie],Numero,Destinatario,[Direccion Destinatario],observacion,Comentario,Remitente, Empresa
				from   dbo.VistaNota_Envio_Arroz
				 WHERE  (fecha>=@fecini and fecha<=@fecfin)and Numero like '%' + @Numero  + '%'
				 order by fecha asc       
				 end
				 
				 --FECHA, REMITENTE
	 if(NOT @fecini is null and NOT @fecfin is null and  @Numero is null  and NOT @Remitente is null )
			begin	
            select fecha,[Nro. Serie],Numero,Destinatario,[Direccion Destinatario],observacion,Comentario,Remitente, Empresa
				from   dbo.VistaNota_Envio_Arroz
				 WHERE  (fecha>=@fecini and fecha<=@fecfin)and Remitente like '%' + @Remitente  + '%'
				 order by fecha asc       
				 end
				 
				 
				  --FECHA, NUMERO, REMITENTE
	 if(NOT @fecini is null and NOT @fecfin is null and  NOT @Numero is null  and NOT @Remitente is null )
			begin	
          select fecha,[Nro. Serie],Numero,Destinatario,[Direccion Destinatario],observacion,Comentario,Remitente, Empresa
				from   dbo.VistaNota_Envio_Arroz
				 WHERE  (fecha>=@fecini and fecha<=@fecfin)and Numero like '%' + @Numero  + '%' and Remitente like '%' + @Remitente  + '%'
				 order by fecha asc       
				 end
				 
				 --NUMERO
	 if( @fecini is null and  @fecfin is null and Not @Numero is null  and @Remitente is null )
			begin	
            select fecha,[Nro. Serie],Numero,Destinatario,[Direccion Destinatario],observacion,Comentario,Remitente, Empresa
				from   dbo.VistaNota_Envio_Arroz
				 WHERE  Numero like '%' + @Numero  + '%'
				 order by fecha asc       
				 end
				 
				  -- NUMERO, REMITENTE
	 if( @fecini is null and  @fecfin is null and  NOT @Numero is null  and NOT @Remitente is null )
			begin	
            select fecha,[Nro. Serie],Numero,Destinatario,[Direccion Destinatario],observacion,Comentario,Remitente, Empresa
				from   dbo.VistaNota_Envio_Arroz
				 WHERE  Numero like '%' + @Numero  + '%' and Remitente like '%' + @Remitente  + '%'
				 order by fecha asc       
				 end
				 
				  --  REMITENTE
	 if( @fecini is null and  @fecfin is null and   @Numero is null  and NOT @Remitente is null )
			begin	
            select fecha,[Nro. Serie],Numero,Destinatario,[Direccion Destinatario],observacion,Comentario,Remitente, Empresa
				from   dbo.VistaNota_Envio_Arroz
				 WHERE Remitente like '%' + @Remitente  + '%'
				 order by fecha asc       
				 end
				 
				 else
			begin	
			 --TODOS
      select fecha,[Nro. Serie],Numero,Destinatario,[Direccion Destinatario],observacion,Comentario,Remitente, Empresa
				from   dbo.VistaNota_Envio_Arroz
				 order by fecha asc       
				 end
			end

GO
/****** Object:  StoredProcedure [dbo].[Rep_Control_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 Create procedure [dbo].[Rep_Control_Comp_de_Pago]
@_Fecha_Ing_Ini           varchar(max)			=	'',
@_Fecha_Ing_Fin           varchar(max)			=	'',
@_Tipo_Comp                 varchar(max)			=	'',
@_Remitente                varchar(max)			=	'',
@_Comisionista         varchar(max)			=	''--,
as
		
 begin
   	   select  remi.nombre as Remitente , 
	   comprob .Nombre_Tipo_Comp as [Comprobante de Pago], Serie, numero,
	   ing.Fecha_Ingreso as [Fecha de Ingreso],
	     CASE  d_ing.estado  WHEN 'ACTIVO' THEN 'COMPROBANTE SIN USAR, AUN EN ALMACEN' 
	  ELSE 'COMPROBANTE USADO O FUERA DE ALMACEN' END AS  [Estado Ingreso] ,
	  --  d_ing.estado as [Estado Ingreso] 

	    isnull(envio.Fecha_Envio, '') as [Fecha de Envio],
	    isnull(comi.Nombre_Com,'') as Comisionista,
		isnull(Zona .Nombre_Zona,'') as Zona,
		   CASE d_env.Estado WHEN 'ACTIVO' THEN 'COMPROBANTE ENVIADO' 
	   WHEN 'INACTIVO' THEN 'COMPROBANTE USADO O DEVUELTO' 
	   when 'PERDIDO' THEN 'COMPROBANTE PERDIDO  O NO DEVUELTO' 
	  ELSE '' END AS [Estado Envio],
	   -- isnull (d_env .Estado,'') as [Estado Envio],
	    isnull(devo.Fecha_Devolucion,'') as [Fecha de Devolucion],
		isnull(ubigeo.distrito,'') as Distrito,
	    isnull(d_dev .Estado,'')  as [Estado Dev] 
		from   Ingreso_Comp_de_Pago ing
	   left join Remitente Remi
	   on ing .id_remitente = remi.id_remitente 
	   left join Tipo_de_Comprobante_de_Pago comprob
	   on comprob .Id_Tipo_Comp = ing .Id_Tipo_Comp 
	   left join  Detalle_Ingreso_Comp_de_Pago d_ing 
	      on ing.Id_Ing_Comp=d_ing .Id_Ing_Comp
	      
	      left join Envio_Comp_de_Pago as Envio
	     left join Detalle_Envio_Comp_de_Pago d_env 
	   on Envio.Id_Envio_Comp=d_env .Id_Envio_Comp
	   LEFt JOIN  Comisionista as comi
	   on comi .Id_Comisionista = envio.Id_Comisionista 
	   left join zona as zona
	   on zona .Id_Zona = Envio .Id_Zona 
	   on d_ing.Id_Detalle_Ing_Comp = d_env.Id_Detalle_Ing_Comp 
	   
	    
	   left join Devolucion_Comp_de_Pago Devo
	  
	   left join Detalle_Devolucion_Comp_de_Pago d_dev
	    on devo.Id_Devolucion_Comp = d_dev.Id_Devolucion_Comp 
		left join Ubigeo 
		on Ubigeo .id_ubigeo = Devo .Id_Ubigeo 
	   on d_env.Id_Detalle_Env_Comp = d_dev.Id_Detalle_Env_Comp 
	   
	    
	   
		WHERE		
		 (ing.Fecha_Ingreso  BETWEEN  CONVERT(DATETIME, @_Fecha_Ing_Ini,102)  and CONVERT(DATETIME, @_Fecha_Ing_Fin,102) OR @_Fecha_Ing_Ini='' OR @_Fecha_Ing_Fin='')  
			and  ( comprob .Nombre_Tipo_Comp LIKE '%' + @_Tipo_Comp + '%' OR @_Tipo_Comp='')
			and   (remi.nombre LIKE '%' + @_Remitente + '%' OR @_Remitente='')
			and  (comi.Nombre_Com LIKE '%' + @_Comisionista + '%' OR @_Comisionista='')
	  
	  
		ORDER BY ing.Fecha_Ingreso
        end
GO
/****** Object:  StoredProcedure [dbo].[Rep_Fle_Transp]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Rep_Fle_Transp]
@fecini  	    datetime			=	null,
@fecfin  	    datetime			=	null,
@Numero  	    varchar(7)			=	null,
@Empresa 	    varchar(100)			=	null
as
	begin
	
	--FECHA
	 if(NOT @fecini is null and NOT @fecfin is null and @Numero is null  and @Empresa is null )
			begin	
       select [Id Nota Arroz],[Id Guia],[Id Pago Detrac.],fecha,[Nro. Serie],Numero,[Domicilio Transportista],
       Empresa,ruc,[Nro. Placa Remolque],[Nro. Placa Semi - Remolque],Chofer,Brevete,[Telefono Chofer],Destinatario,
       [Direccion Destinatario],[Telefono Destinatario],[Costo Flete],
       [A Cuenta],Toneladas,observacion,Comentario,Remitente
				from   dbo.VistaNota_Envio_Arroz
				 WHERE  (fecha>=@fecini and fecha<=@fecfin)
				 order by fecha asc       
				 end
				
				--FECHA, numero
	 if(NOT @fecini is null and NOT @fecfin is null and Not @Numero is null  and @Empresa is null )
			begin	
     select [Id Nota Arroz],[Id Guia],[Id Pago Detrac.],fecha,[Nro. Serie],Numero,[Domicilio Transportista],
       Empresa,ruc,[Nro. Placa Remolque],[Nro. Placa Semi - Remolque],Chofer,Brevete,[Telefono Chofer],Destinatario,
       [Direccion Destinatario],[Telefono Destinatario],[Costo Flete],
       [A Cuenta],Toneladas,observacion,Comentario,Remitente
				from   dbo.VistaNota_Envio_Arroz
				 WHERE  (fecha>=@fecini and fecha<=@fecfin)and Numero like '%' + @Numero  + '%'
				 order by fecha asc       
				 end
				 
				 --FECHA, TRANSPORTISTA
	 if(NOT @fecini is null and NOT @fecfin is null and  @Numero is null  and NOT @Empresa is null )
			begin	
     select [Id Nota Arroz],[Id Guia],[Id Pago Detrac.],fecha,[Nro. Serie],Numero,[Domicilio Transportista],
       Empresa,ruc,[Nro. Placa Remolque],[Nro. Placa Semi - Remolque],Chofer,Brevete,[Telefono Chofer],Destinatario,
       [Direccion Destinatario],[Telefono Destinatario],[Costo Flete],
       [A Cuenta],Toneladas,observacion,Comentario,Remitente
				from   dbo.VistaNota_Envio_Arroz
				 WHERE  (fecha>=@fecini and fecha<=@fecfin)and Empresa like '%' + @Empresa  + '%'
				 order by fecha asc       
				 end
				 
				 
				  --FECHA, NUMERO, TRANSPORTISTA
	 if(NOT @fecini is null and NOT @fecfin is null and  NOT @Numero is null  and NOT @Empresa is null )
			begin	
      select [Id Nota Arroz],[Id Guia],[Id Pago Detrac.],fecha,[Nro. Serie],Numero,[Domicilio Transportista],
       Empresa,ruc,[Nro. Placa Remolque],[Nro. Placa Semi - Remolque],Chofer,Brevete,[Telefono Chofer],Destinatario,
       [Direccion Destinatario],[Telefono Destinatario],[Costo Flete],
       [A Cuenta],Toneladas,observacion,Comentario,Remitente
				from   dbo.VistaNota_Envio_Arroz
				 WHERE  (fecha>=@fecini and fecha<=@fecfin)and Numero like '%' + @Numero  + '%' and Empresa like '%' + @Empresa  + '%'
				 order by fecha asc       
				 end
				 
				 --NUMERO
	 if( @fecini is null and  @fecfin is null and Not @Numero is null  and @Empresa is null )
			begin	
     select [Id Nota Arroz],[Id Guia],[Id Pago Detrac.],fecha,[Nro. Serie],Numero,[Domicilio Transportista],
       Empresa,ruc,[Nro. Placa Remolque],[Nro. Placa Semi - Remolque],Chofer,Brevete,[Telefono Chofer],Destinatario,
       [Direccion Destinatario],[Telefono Destinatario],[Costo Flete],
       [A Cuenta],Toneladas,observacion,Comentario,Remitente
				from   dbo.VistaNota_Envio_Arroz
				 WHERE  Numero like '%' + @Numero  + '%'
				 order by fecha asc       
				 end
				 
				  -- NUMERO, TRANSPORTISTA
	 if( @fecini is null and  @fecfin is null and  NOT @Numero is null  and NOT @Empresa is null )
			begin	
      select [Id Nota Arroz],[Id Guia],[Id Pago Detrac.],fecha,[Nro. Serie],Numero,[Domicilio Transportista],
       Empresa,ruc,[Nro. Placa Remolque],[Nro. Placa Semi - Remolque],Chofer,Brevete,[Telefono Chofer],Destinatario,
       [Direccion Destinatario],[Telefono Destinatario],[Costo Flete],
       [A Cuenta],Toneladas,observacion,Comentario,Remitente
				from   dbo.VistaNota_Envio_Arroz
				 WHERE  Numero like '%' + @Numero  + '%' and Empresa like '%' + @Empresa  + '%'
				 order by fecha asc       
				 end
				 
				  --  TRANSPORTISTA
	 if( @fecini is null and  @fecfin is null and   @Numero is null  and NOT @Empresa is null )
			begin	
     select [Id Nota Arroz],[Id Guia],[Id Pago Detrac.],fecha,[Nro. Serie],Numero,[Domicilio Transportista],
       Empresa,ruc,[Nro. Placa Remolque],[Nro. Placa Semi - Remolque],Chofer,Brevete,[Telefono Chofer],Destinatario,
       [Direccion Destinatario],[Telefono Destinatario],[Costo Flete],
       [A Cuenta],Toneladas,observacion,Comentario,Remitente
				from   dbo.VistaNota_Envio_Arroz
				 WHERE Empresa like '%' + @Empresa  + '%'
				 order by fecha asc       
				 end
				 
				 else
			begin	
			 --TODOS
	      select [Id Nota Arroz],[Id Guia],[Id Pago Detrac.],fecha,[Nro. Serie],Numero,[Domicilio Transportista],
       Empresa,ruc,[Nro. Placa Remolque],[Nro. Placa Semi - Remolque],Chofer,Brevete,[Telefono Chofer],Destinatario,
       [Direccion Destinatario],[Telefono Destinatario],[Costo Flete],
       [A Cuenta],Toneladas,observacion,Comentario,Remitente
				from   dbo.VistaNota_Envio_Arroz
				 order by fecha asc       
				 end
			end

GO
/****** Object:  StoredProcedure [dbo].[Rep_Listar_Devolucion_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Rep_Listar_Devolucion_Comp_de_Pago]
@_Fecha_Ing_Ini           varchar(max)			=	'',
@_Fecha_Ing_Fin           varchar(max)			=	'',
@_Comisionista                varchar(max)			=	'',
@_Remitente             varchar(max)			=	'',
@_Tipo_Comp                 varchar(max)			=	''--,

as
		
 begin
      
	   SELECT Id_Detalle_Dev_Comp ,Devolucion_Comp_de_Pago .Fecha_Devolucion as [Fecha de Devolucion],
	    Comisionista .Nombre_Com as Comisionista, Remitente .nombre as Remitente, 
	  Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp as [Comprobante de Pago] ,
	  Detalle_Ingreso_Comp_de_Pago .Serie , Detalle_Ingreso_Comp_de_Pago .Numero ,
	  Detalle_Devolucion_Comp_de_Pago.Estado, Detalle_Devolucion_Comp_de_Pago.Id_Devolucion_Comp , Detalle_Devolucion_Comp_de_Pago.Id_Detalle_Env_Comp
	 
	  from Detalle_Devolucion_Comp_de_Pago inner join 
	  Devolucion_Comp_de_Pago on Devolucion_Comp_de_Pago .Id_Devolucion_Comp = Detalle_Devolucion_Comp_de_Pago .Id_Devolucion_Comp 
	  INNER JOIN Detalle_Envio_Comp_de_Pago on Detalle_Envio_Comp_de_Pago .Id_Detalle_Env_Comp = Detalle_Devolucion_Comp_de_Pago .Id_Detalle_Env_Comp 
	  inner join Envio_Comp_de_Pago on Envio_Comp_de_Pago .Id_Envio_Comp = Detalle_Envio_Comp_de_Pago .Id_Envio_Comp 
	  inner join Comisionista on Comisionista .Id_Comisionista = Envio_Comp_de_Pago .Id_Comisionista 
	  inner join Detalle_Ingreso_Comp_de_Pago on Detalle_Ingreso_Comp_de_Pago .Id_Detalle_Ing_Comp = Detalle_Envio_Comp_de_Pago .Id_Detalle_ing_Comp 
	  inner join Ingreso_Comp_de_Pago on Ingreso_Comp_de_Pago .Id_Ing_Comp = Detalle_Ingreso_Comp_de_Pago.Id_Ing_Comp 
	  inner join Remitente on Remitente .id_remitente = Ingreso_Comp_de_Pago.id_remitente
	  inner join Tipo_de_Comprobante_de_Pago on Tipo_de_Comprobante_de_Pago .Id_Tipo_Comp = Ingreso_Comp_de_Pago .Id_Tipo_Comp 

	  WHERE (Devolucion_Comp_de_Pago .Fecha_Devolucion BETWEEN  CONVERT(DATETIME, @_Fecha_Ing_Ini,102)  and CONVERT(DATETIME, @_Fecha_Ing_Fin,102) OR @_Fecha_Ing_Ini='' OR @_Fecha_Ing_Fin='')  
		and (Comisionista .Nombre_Com  LIKE '%' + @_Comisionista + '%' OR @_Comisionista='')
		 and  (Remitente .nombre   LIKE '%' + @_Remitente + '%' OR @_Remitente='')
		and  (Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp LIKE '%' + @_Tipo_Comp + '%' OR @_Tipo_Comp='')
	   
		--and  Detalle_Ingreso_Comp_de_Pago.Estado = 'ACTIVO'
		--AND Ingreso_Comp_de_Pago .Estado  = 'ACTIVO'
		--	--	print @_Tipo_Secado

		ORDER BY Devolucion_Comp_de_Pago .Fecha_Devolucion
        end

GO
/****** Object:  StoredProcedure [dbo].[Rep_Listar_Envio_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Rep_Listar_Envio_Comp_de_Pago]
@_Fecha_Ing_Ini           varchar(max)			=	'',
@_Fecha_Ing_Fin           varchar(max)			=	'',
@_Comisionista                varchar(max)			=	'',
@_Remitente             varchar(max)			=	'',
@_Tipo_Comp                 varchar(max)			=	''--,

as
		
 begin
      
	 SELECT Id_Detalle_Env_Comp ,Envio_Comp_de_Pago .Fecha_Envio as  [Fecha de Envio], Comisionista .Nombre_Com as Comisionista,
	 Remitente .nombre as Remitente, Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp as [Comprobante de Pago] ,
	  Detalle_Ingreso_Comp_de_Pago .Serie , Detalle_Ingreso_Comp_de_Pago .Numero , --Detalle_Envio_Comp_de_Pago.ESTADO,
	   CASE Detalle_Envio_Comp_de_Pago.Estado WHEN 'ACTIVO' THEN 'COMPROBANTE ENVIADO' 
	   WHEN 'INACTIVO' THEN 'COMPROBANTE USADO O DEVUELTO' 
	  ELSE 'COMPROBANTE PERDIDO  O NO DEVUELTO' END AS Estado,
	  Detalle_Envio_Comp_de_Pago.Id_Envio_Comp , Detalle_Envio_Comp_de_Pago.Id_Detalle_Ing_Comp, Ingreso_Comp_de_Pago .Id_Ing_Comp 
	  from Detalle_Envio_Comp_de_Pago inner join 
	  Detalle_Ingreso_Comp_de_Pago on Detalle_Ingreso_Comp_de_Pago .Id_Detalle_Ing_Comp = Detalle_Envio_Comp_de_Pago .Id_Detalle_Ing_Comp 
	  inner join Ingreso_Comp_de_Pago on Ingreso_Comp_de_Pago .Id_Ing_Comp = Detalle_Ingreso_Comp_de_Pago.Id_Ing_Comp 
	  inner join Remitente on Remitente .id_remitente = Ingreso_Comp_de_Pago.id_remitente
	  inner join Tipo_de_Comprobante_de_Pago on Tipo_de_Comprobante_de_Pago .Id_Tipo_Comp = Ingreso_Comp_de_Pago .Id_Tipo_Comp 
	  inner join Envio_Comp_de_Pago on Envio_Comp_de_Pago .Id_Envio_Comp = Detalle_Envio_Comp_de_Pago .Id_Envio_Comp 
	  inner join Comisionista on Comisionista.Id_Comisionista = Envio_Comp_de_Pago .Id_Comisionista 
        

	  WHERE (Envio_Comp_de_Pago .Fecha_Envio BETWEEN  CONVERT(DATETIME, @_Fecha_Ing_Ini,102)  and CONVERT(DATETIME, @_Fecha_Ing_Fin,102) OR @_Fecha_Ing_Ini='' OR @_Fecha_Ing_Fin='')  
		and (Comisionista .Nombre_Com  LIKE '%' + @_Comisionista + '%' OR @_Comisionista='')
		 and  (Remitente .nombre   LIKE '%' + @_Remitente + '%' OR @_Remitente='')
		and  (Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp LIKE '%' + @_Tipo_Comp + '%' OR @_Tipo_Comp='')
	   
		--and  Detalle_Ingreso_Comp_de_Pago.Estado = 'ACTIVO'
		--AND Ingreso_Comp_de_Pago .Estado  = 'ACTIVO'
		--	--	print @_Tipo_Secado

		ORDER BY Envio_Comp_de_Pago .Fecha_Envio
        end

GO
/****** Object:  StoredProcedure [dbo].[Rep_Listar_Ingreso_Comp_de_Pago]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[Rep_Listar_Ingreso_Comp_de_Pago]
@_Fecha_Ing_Ini           varchar(max)			=	'',
@_Fecha_Ing_Fin           varchar(max)			=	'',
@_Remitente                varchar(max)			=	'',
@_Tipo_Comp                 varchar(max)			=	'',
@_Numero               varchar(max)			=	''--,
as
		
 begin
      
	  SELECT  Id_Detalle_Ing_Comp AS [Id Det Ing Comp], Ingreso_Comp_de_Pago .Fecha_Ingreso as [Fecha de Ingreso],
	   Remitente .nombre as Empresa, Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp as [Tipo de Comprobante de Pago],
	  Serie,Numero, CASE Detalle_Ingreso_Comp_de_Pago.Estado WHEN 'ACTIVO' THEN 'COMPROBANTE SIN USAR, AUN EN ALMACEN' 
	  ELSE 'COMPROBANTE USADO O FUERA DE ALMACEN' END AS Estado,   Operacion .Nombre_Ope as Operacion,
	  Ingreso_Comp_de_Pago.Descripcion ,
	 	  
	  Detalle_Ingreso_Comp_de_Pago . Estado as Estadoo, Ingreso_Comp_de_Pago.Id_Ing_Comp AS [Id Ing Comp]
	  from Detalle_Ingreso_Comp_de_Pago 
	  inner join Ingreso_Comp_de_Pago on Ingreso_Comp_de_Pago .Id_Ing_Comp = Detalle_Ingreso_Comp_de_Pago.Id_Ing_Comp
	  inner join Remitente on Remitente .id_remitente = Ingreso_Comp_de_Pago .id_remitente 
	  inner join Tipo_de_Comprobante_de_Pago on Tipo_de_Comprobante_de_Pago .Id_Tipo_Comp = Ingreso_Comp_de_Pago .Id_Tipo_Comp 
	  inner join Operacion on Ingreso_Comp_de_Pago.Id_ope = Operacion .Id_Ope

	  WHERE (Fecha_Ingreso  BETWEEN  CONVERT(DATETIME, @_Fecha_Ing_Ini,102)  and CONVERT(DATETIME, @_Fecha_Ing_Fin,102) OR @_Fecha_Ing_Ini='' OR @_Fecha_Ing_Fin='')  
		and (Remitente .nombre LIKE '%' + @_Remitente + '%' OR @_Remitente='')
		and  (Tipo_de_Comprobante_de_Pago .Nombre_Tipo_Comp LIKE '%' + @_Tipo_Comp + '%' OR @_Tipo_Comp='')
	    and  (Detalle_Ingreso_Comp_de_Pago .Serie  LIKE '%' + @_Numero + '%' OR @_Numero='')
		--and  Detalle_Ingreso_Comp_de_Pago.Estado = 'ACTIVO'
		--AND Ingreso_Comp_de_Pago .Estado  = 'ACTIVO'
		--	--	print @_Tipo_Secado

		ORDER BY Ingreso_Comp_de_Pago .Fecha_Ingreso
        end

GO
/****** Object:  StoredProcedure [dbo].[Rep_Ventas_Rem]    Script Date: 13/04/2022 15:03:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Rep_Ventas_Rem]
@fecini  	    datetime			=	null,
@fecfin  	    datetime			=	null,
@Numero  	    varchar(7)			=	null,
@Remitente  	    varchar(100)			=	null
as
	begin
	
	--FECHA
	 if(NOT @fecini is null and NOT @fecfin is null and @Numero is null  and @Remitente is null )
			begin	
       select [ID Guia],Emisión,Numero,Remitente,Monto,Montoo, [Monto Total],[Sacos Total],Categoria
				from   dbo.VistaRepVentasxRem
				 WHERE  (Emisión>=@fecini and Emisión<=@fecfin)
				 order by Emisión asc       
				 end
				
				--FECHA, numero
	 if(NOT @fecini is null and NOT @fecfin is null and Not @Numero is null  and @Remitente is null )
			begin	
       select [ID Guia],Emisión,Numero,Remitente,Monto,Montoo, [Monto Total],[Sacos Total],Categoria
				from   dbo.VistaRepVentasxRem
				 WHERE  (Emisión>=@fecini and Emisión<=@fecfin)and Numero like '%' + @Numero  + '%'
				 order by Emisión asc       
				 end
				 
				 --FECHA, REMITENTE
	 if(NOT @fecini is null and NOT @fecfin is null and  @Numero is null  and NOT @Remitente is null )
			begin	
       select[ID Guia],Emisión,Numero,Remitente,Monto,Montoo, [Monto Total],[Sacos Total],Categoria
				from   dbo.VistaRepVentasxRem
				 WHERE  (Emisión>=@fecini and Emisión<=@fecfin)and Remitente like '%' + @Remitente  + '%'
				 order by Emisión asc       
				 end
				 
				 
				  --FECHA, NUMERO, REMITENTE
	 if(NOT @fecini is null and NOT @fecfin is null and  NOT @Numero is null  and NOT @Remitente is null )
			begin	
       select[ID Guia],Emisión,Numero,Remitente,Monto,Montoo, [Monto Total],[Sacos Total],Categoria
				from   dbo.VistaRepVentasxRem
				 WHERE  (Emisión>=@fecini and Emisión<=@fecfin)and Numero like '%' + @Numero  + '%' and Remitente like '%' + @Remitente  + '%'
				 order by Emisión asc       
				 end
				 
				 --NUMERO
	 if( @fecini is null and  @fecfin is null and Not @Numero is null  and @Remitente is null )
			begin	
       select [ID Guia],Emisión,Numero,Remitente,Monto,Montoo, [Monto Total],[Sacos Total],Categoria
				from   dbo.VistaRepVentasxRem
				 WHERE  Numero like '%' + @Numero  + '%'
				 order by Emisión asc       
				 end
				 
				  -- NUMERO, REMITENTE
	 if( @fecini is null and  @fecfin is null and  NOT @Numero is null  and NOT @Remitente is null )
			begin	
       select [ID Guia],Emisión,Numero,Remitente,Monto,Montoo, [Monto Total],[Sacos Total],Categoria
				from   dbo.VistaRepVentasxRem
				 WHERE  Numero like '%' + @Numero  + '%' and Remitente like '%' + @Remitente  + '%'
				 order by Emisión asc       
				 end
				 
				  --  REMITENTE
	 if( @fecini is null and  @fecfin is null and   @Numero is null  and NOT @Remitente is null )
			begin	
       select [ID Guia],Emisión,Numero,Remitente,Monto,Montoo, [Monto Total],[Sacos Total],Categoria
				from   dbo.VistaRepVentasxRem
				 WHERE Remitente like '%' + @Remitente  + '%'
				 order by Emisión asc       
				 end
				 
				 else
			begin	
			 --TODOS
	        select [ID Guia],Emisión,Numero,Remitente,Monto,Montoo, [Monto Total],[Sacos Total],Categoria
				from   dbo.VistaRepVentasxRem
				 order by Emisión asc       
				 end
			end

GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Esta tabla y su detalle nos proporciona datos sobre los ingresos de comprobantes (guias de remision, boletas, facturas, ect)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ingreso_Comp_de_Pago', @level2type=N'COLUMN',@level2name=N'Id_Ing_Comp'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "categoria"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 132
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1785
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaCategoria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaCategoria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Chofer"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaChofer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Cliente"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 216
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Tipo_Cliente"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 110
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Zona"
            Begin Extent = 
               Top = 59
               Left = 500
               Bottom = 198
               Right = 698
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ubigeo"
            Begin Extent = 
               Top = 6
               Left = 746
               Bottom = 133
               Right = 944
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TipoDocumento"
            Begin Extent = 
               Top = 148
               Left = 267
               Bottom = 252
               Right = 465
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 17
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaCliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1650
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaCliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaCliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[45] 4[18] 2[21] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Comisionista"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 225
               Right = 247
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Zona"
            Begin Extent = 
               Top = 6
               Left = 285
               Bottom = 138
               Right = 494
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TipoDocumento"
            Begin Extent = 
               Top = 147
               Left = 282
               Bottom = 277
               Right = 507
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ubigeo"
            Begin Extent = 
               Top = 6
               Left = 532
               Bottom = 161
               Right = 741
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
     ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaComisionista'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaComisionista'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaComisionista'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[39] 4[22] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Destinatario"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 175
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ubigeo"
            Begin Extent = 
               Top = 96
               Left = 550
               Bottom = 204
               Right = 739
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TipoDocumento"
            Begin Extent = 
               Top = 9
               Left = 330
               Bottom = 113
               Right = 528
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2280
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaDestinatarios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaDestinatarios'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[16] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Detalle_pag_cat"
            Begin Extent = 
               Top = 6
               Left = 490
               Bottom = 159
               Right = 688
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "categoria"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 144
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaDetalleCat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaDetalleCat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[36] 4[30] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "DetalleGuia"
            Begin Extent = 
               Top = 5
               Left = 296
               Bottom = 173
               Right = 494
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vistaproductos"
            Begin Extent = 
               Top = 3
               Left = 554
               Bottom = 113
               Right = 752
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "vistaProd_pajilla"
            Begin Extent = 
               Top = 127
               Left = 560
               Bottom = 220
               Right = 711
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vistaguias"
            Begin Extent = 
               Top = 1
               Left = 34
               Bottom = 246
               Right = 232
            End
            DisplayFlags = 280
            TopColumn = 31
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 51
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 3420
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistadetalleguias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2310
         Width = 1845
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 5010
         Alias = 3660
         Table = 1950
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistadetalleguias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistadetalleguias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[33] 4[35] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -96
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Detalle_pag_cat"
            Begin Extent = 
               Top = 15
               Left = 277
               Bottom = 168
               Right = 475
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Pago_Detrac"
            Begin Extent = 
               Top = 6
               Left = 556
               Bottom = 126
               Right = 738
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "categoria"
            Begin Extent = 
               Top = 17
               Left = 24
               Bottom = 155
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1560
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 7050
         Alias = 2205
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaDetallePago_Cat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaDetallePago_Cat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "EmpresaTransporte"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 139
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaemptransportes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaemptransportes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "envasado"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaEnvasado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaEnvasado'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[35] 4[26] 2[18] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Guia"
            Begin Extent = 
               Top = 6
               Left = 20
               Bottom = 125
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 5
         End
         Begin Table = "Chofer"
            Begin Extent = 
               Top = 134
               Left = 3
               Bottom = 253
               Right = 201
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "vistaunidadtransportes"
            Begin Extent = 
               Top = 0
               Left = 793
               Bottom = 190
               Right = 998
            End
            DisplayFlags = 280
            TopColumn = 15
         End
         Begin Table = "vistaremitentes"
            Begin Extent = 
               Top = 0
               Left = 272
               Bottom = 119
               Right = 470
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VistaToT_Guia"
            Begin Extent = 
               Top = 40
               Left = 587
               Bottom = 145
               Right = 785
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vistaDestinatarios"
            Begin Extent = 
               Top = 126
               Left = 356
               Bottom = 234
               Right = 545
            End
            DisplayFlags = 280
            TopColumn = 7
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 32
         Width = 284
         Width = ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaGuia_Peso_Nota'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1950
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 2970
         Alias = 1545
         Table = 2145
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaGuia_Peso_Nota'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaGuia_Peso_Nota'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[25] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -192
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Ubigeo"
            Begin Extent = 
               Top = 25
               Left = 405
               Bottom = 150
               Right = 603
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vistaptopartida"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 456
               Right = 261
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 40
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 4560
         Width = 1500
         Width = 2790
         Width = 2130
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 6465
         Alias = 1455
         Table = 2640
         Output = 720
         Append = 1400
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaguias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaguias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaguias'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "logotipo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 110
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaLogotipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaLogotipo'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[31] 4[30] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Nota_Env_Arroz"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 176
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Guia"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 146
               Right = 490
            End
            DisplayFlags = 280
            TopColumn = 13
         End
         Begin Table = "Vehiculo"
            Begin Extent = 
               Top = 6
               Left = 528
               Bottom = 125
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 15
         End
         Begin Table = "Chofer"
            Begin Extent = 
               Top = 166
               Left = 584
               Bottom = 306
               Right = 782
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EmpresaTransporte"
            Begin Extent = 
               Top = 153
               Left = 300
               Bottom = 272
               Right = 498
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Remitente"
            Begin Extent = 
               Top = 202
               Left = 31
               Bottom = 330
               Right = 229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Trabajador"
            Begin Extent = 
               Top = 6
               Left = 764
               Bottom = 114
               Right = 953
            End
            D' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaNota_Envio_Arroz'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'isplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 26
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 3795
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3270
         Alias = 2280
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaNota_Envio_Arroz'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaNota_Envio_Arroz'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[39] 4[24] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "DetalleGuia"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 168
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Guia"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 125
               Right = 490
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Nota_Env_Arroz"
            Begin Extent = 
               Top = 6
               Left = 528
               Bottom = 147
               Right = 726
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Pago_Detrac"
            Begin Extent = 
               Top = 10
               Left = 756
               Bottom = 140
               Right = 954
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Chofer"
            Begin Extent = 
               Top = 182
               Left = 56
               Bottom = 321
               Right = 254
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Vehiculo"
            Begin Extent = 
               Top = 145
               Left = 302
               Bottom = 264
               Right = 500
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "EmpresaTransporte"
            Begin Extent = 
               Top = 162
               Left = 561
               Bottom = 281
               Right = 759
            End
           ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaNota_Envio_Arroz_Det'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N' DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "producto"
            Begin Extent = 
               Top = 6
               Left = 992
               Bottom = 125
               Right = 1190
            End
            DisplayFlags = 280
            TopColumn = 2
         End
         Begin Table = "logotipo"
            Begin Extent = 
               Top = 151
               Left = 1079
               Bottom = 255
               Right = 1277
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "categoria"
            Begin Extent = 
               Top = 212
               Left = 785
               Bottom = 331
               Right = 983
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Detalle_pag_cat"
            Begin Extent = 
               Top = 252
               Left = 1076
               Bottom = 401
               Right = 1274
            End
            DisplayFlags = 280
            TopColumn = 1
         End
         Begin Table = "Trabajador"
            Begin Extent = 
               Top = 301
               Left = 352
               Bottom = 409
               Right = 541
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 41
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4335
         Alias = 2310
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaNota_Envio_Arroz_Det'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaNota_Envio_Arroz_Det'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Pago_Detrac"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 155
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Remitente"
            Begin Extent = 
               Top = 8
               Left = 328
               Bottom = 176
               Right = 526
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaPago_Detrac'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaPago_Detrac'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[37] 4[28] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Peso_Med"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 198
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vistaGuia_Peso_Nota"
            Begin Extent = 
               Top = 10
               Left = 362
               Bottom = 194
               Right = 563
            End
            DisplayFlags = 280
            TopColumn = 28
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 28
         Width = 284
         Width = 1500
         Width = 1500
         Width = 2250
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2085
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4590
         Alias = 2565
         Table = 2910
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaPeso_Medida'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaPeso_Medida'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "producto"
            Begin Extent = 
               Top = 0
               Left = 264
               Bottom = 179
               Right = 462
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "categoria"
            Begin Extent = 
               Top = 0
               Left = 546
               Bottom = 119
               Right = 744
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "DetalleGuia"
            Begin Extent = 
               Top = 6
               Left = 24
               Bottom = 151
               Right = 222
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "logotipo"
            Begin Extent = 
               Top = 80
               Left = 770
               Bottom = 184
               Right = 968
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1710
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaPrecio_Cat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaPrecio_Cat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaPrecio_Cat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[34] 4[30] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "VistaPrecio_Cat"
            Begin Extent = 
               Top = 5
               Left = 351
               Bottom = 153
               Right = 549
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "vistadetalleguias"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 243
            End
            DisplayFlags = 280
            TopColumn = 41
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 5655
         Alias = 1575
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaPrecio_Ivap'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaPrecio_Ivap'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "producto"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 114
               Right = 189
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "logotipo"
            Begin Extent = 
               Top = 12
               Left = 270
               Bottom = 105
               Right = 421
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "categoria"
            Begin Extent = 
               Top = 131
               Left = 297
               Bottom = 224
               Right = 448
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "envasado"
            Begin Extent = 
               Top = 12
               Left = 461
               Bottom = 105
               Right = 612
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 8280
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      E' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaProd_pajilla'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'nd
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaProd_pajilla'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaProd_pajilla'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "producto"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 180
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "logotipo"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 110
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "envasado"
            Begin Extent = 
               Top = 6
               Left = 510
               Bottom = 122
               Right = 708
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "categoria"
            Begin Extent = 
               Top = 6
               Left = 746
               Bottom = 135
               Right = 944
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 855
         Width = 14385
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaproductos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaproductos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaproductos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[42] 4[29] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "producto"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 179
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "logotipo"
            Begin Extent = 
               Top = 6
               Left = 274
               Bottom = 110
               Right = 472
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "envasado"
            Begin Extent = 
               Top = 143
               Left = 309
               Bottom = 247
               Right = 507
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "categoria"
            Begin Extent = 
               Top = 72
               Left = 558
               Bottom = 194
               Right = 756
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 3075
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 3570
         Alias = 1575
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      E' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaproductos2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'nd
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaproductos2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaproductos2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[49] 4[21] 2[8] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -288
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Guia"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 373
               Right = 248
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Chofer"
            Begin Extent = 
               Top = 381
               Left = 614
               Bottom = 543
               Right = 812
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Destinatario"
            Begin Extent = 
               Top = 21
               Left = 1014
               Bottom = 163
               Right = 1212
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TipoDocumento"
            Begin Extent = 
               Top = 190
               Left = 889
               Bottom = 290
               Right = 1087
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ubigeo"
            Begin Extent = 
               Top = 27
               Left = 389
               Bottom = 164
               Right = 587
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Vehiculo"
            Begin Extent = 
               Top = 144
               Left = 667
               Bottom = 263
               Right = 865
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "MotivoTraslado"
            Begin Extent = 
               Top = 167
               Left = 403
               Bottom = 256
               Right = 601
            End
          ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaptopartida'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane2', @value=N'  DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Remitente"
            Begin Extent = 
               Top = 333
               Left = 388
               Bottom = 437
               Right = 586
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "EmpresaTransporte"
            Begin Extent = 
               Top = 358
               Left = 1031
               Bottom = 467
               Right = 1229
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 40
         Width = 284
         Width = 1500
         Width = 1935
         Width = 2055
         Width = 1500
         Width = 1500
         Width = 3345
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 4695
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 5070
         Alias = 5520
         Table = 1800
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaptopartida'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=2 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaptopartida'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[36] 4[30] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Remitente"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 170
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ubigeo"
            Begin Extent = 
               Top = 27
               Left = 380
               Bottom = 146
               Right = 578
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 2640
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaremitentes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaremitentes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[20] 2[17] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vistadetalleguias"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 206
               Right = 259
            End
            DisplayFlags = 280
            TopColumn = 36
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 10
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaRepVentasxRem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaRepVentasxRem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Tipo_Cliente"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 117
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1500
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaTipo_Cliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaTipo_Cliente'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[26] 2[15] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "TipoDocumento"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 169
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2100
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaTipo_Dcto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaTipo_Dcto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Tipo_Trabajador"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 133
               Right = 235
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1815
         Table = 1815
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaTipo_Trabaj'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaTipo_Trabaj'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "vistadetalleguias"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 181
               Right = 243
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 12
         Column = 2505
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaToT_Guia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaToT_Guia'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[37] 4[28] 2[13] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Tipo_Trabajador"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 124
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Trabajador"
            Begin Extent = 
               Top = 6
               Left = 318
               Bottom = 242
               Right = 516
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TipoDocumento"
            Begin Extent = 
               Top = 11
               Left = 593
               Bottom = 100
               Right = 791
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 16
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 4755
         Alias = 2220
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaTrabajador'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaTrabajador'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[39] 4[24] 2[14] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Ubigeo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 139
               Right = 237
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaubigeos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaubigeos'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[44] 4[23] 2[9] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1[50] 2[25] 3) )"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = -192
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Vehiculo"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 219
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 10
         End
         Begin Table = "EmpresaTransporte"
            Begin Extent = 
               Top = 5
               Left = 327
               Bottom = 124
               Right = 525
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 23
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1665
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 2325
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2400
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaunidadtransportes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'vistaunidadtransportes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[32] 4[30] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Zona"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 140
               Right = 236
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Ubigeo"
            Begin Extent = 
               Top = 11
               Left = 323
               Bottom = 130
               Right = 521
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 1635
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaZona'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VistaZona'
GO
USE [master]
GO
ALTER DATABASE [BDGuiaRemision] SET  READ_WRITE 
GO
