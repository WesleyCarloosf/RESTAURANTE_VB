USE [BASEMACKEYS]
GO
/****** Object:  User [ferreteria1]    Script Date: 29/02/2020 17:35:18 ******/
CREATE USER [ferreteria1] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [magbri]    Script Date: 29/02/2020 17:35:18 ******/
CREATE USER [magbri] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [peruinka]    Script Date: 29/02/2020 17:35:18 ******/
CREATE USER [peruinka] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [magbri]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [magbri]
GO
ALTER ROLE [db_datareader] ADD MEMBER [magbri]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [magbri]
GO
ALTER ROLE [db_denydatareader] ADD MEMBER [magbri]
GO
ALTER ROLE [db_owner] ADD MEMBER [peruinka]
GO
ALTER ROLE [db_accessadmin] ADD MEMBER [peruinka]
GO
ALTER ROLE [db_securityadmin] ADD MEMBER [peruinka]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [peruinka]
GO
ALTER ROLE [db_backupoperator] ADD MEMBER [peruinka]
GO
ALTER ROLE [db_datareader] ADD MEMBER [peruinka]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [peruinka]
GO
/****** Object:  Table [dbo].[ASISTENCIAS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ASISTENCIAS](
	[Id_asistencia] [int] IDENTITY(1,1) NOT NULL,
	[Id_personal] [int] NULL,
	[Fecha_entrada] [datetime] NULL,
	[Fecha_salida] [datetime] NULL,
	[Estado] [varchar](50) NULL,
	[Horas] [numeric](18, 2) NULL,
 CONSTRAINT [PK_ASISTENCIAS] PRIMARY KEY CLUSTERED 
(
	[Id_asistencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Caja]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Caja](
	[Id_Caja] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Tema] [varchar](50) NULL,
	[Serial_PC] [varchar](50) NULL,
	[Impresora_Ticket] [varchar](max) NULL,
	[Impresora_A4] [varchar](max) NULL,
 CONSTRAINT [PK_Caja_1] PRIMARY KEY CLUSTERED 
(
	[Id_Caja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[categoria]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[categoria](
	[idcategoria] [int] IDENTITY(1,1) NOT NULL,
	[nombrecategoria] [varchar](50) NULL,
 CONSTRAINT [PK_categoria] PRIMARY KEY CLUSTERED 
(
	[idcategoria] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CLIENTE_FACTURA_PERU]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CLIENTE_FACTURA_PERU](
	[CLIE_CODIGO] [varchar](8) NOT NULL,
	[TPDC_CODIGO] [varchar](1) NOT NULL,
	[REEC_CODIGO] [varchar](1) NOT NULL,
	[UBDS_CODIGO] [varchar](6) NOT NULL,
	[CLIE_NOMBRES] [varchar](150) NOT NULL,
	[CLIE_APELLIDOPATERNO] [varchar](100) NOT NULL,
	[CLIE_APELLIDOMATERNO] [varchar](100) NOT NULL,
	[CLIE_NRODOCUMENTO] [varchar](18) NOT NULL,
	[CLIE_SEXO] [varchar](15) NOT NULL,
	[CLIE_FECHANACIMIENTO] [datetime] NULL,
	[CLIE_ESTADOCIVIL] [varchar](25) NULL,
	[CLIE_DIRECCION] [varchar](300) NULL,
	[CLIE_REFERENCIA] [varchar](300) NULL,
	[CLIE_TELEFONO] [varchar](75) NULL,
	[CLIE_EMAIL] [varchar](120) NULL,
	[CLIE_OCUPACION] [varchar](150) NULL,
	[CLIE_EMPRESA] [varchar](100) NULL,
	[CLIE_EMPRESADIRECCION] [varchar](300) NULL,
	[CLIE_EMPRESATELEFONO] [varchar](75) NULL,
	[CLIE_ESTADO] [varchar](2) NULL,
	[CLIE_ID_OBRA] [numeric](18, 0) NULL,
	[FlgAnexoConcar] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[clientes]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[clientes](
	[idclientev] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](max) NULL,
	[Direccion_para_factura] [varchar](max) NULL,
	[Ruc] [varchar](max) NULL,
	[movil] [varchar](50) NULL,
	[Cliente] [varchar](50) NULL,
	[Proveedor] [varchar](50) NULL,
	[Estado] [varchar](50) NULL,
	[Saldo] [numeric](18, 2) NULL,
 CONSTRAINT [PK_clientes] PRIMARY KEY CLUSTERED 
(
	[idclientev] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONCEPTOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONCEPTOS](
	[Id_concepto] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](max) NULL,
 CONSTRAINT [PK_CONCEPTOS] PRIMARY KEY CLUSTERED 
(
	[Id_concepto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONEXION]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONEXION](
	[Id_conexion] [int] IDENTITY(1,1) NOT NULL,
	[Data_source_REMOTO] [varchar](max) NULL,
 CONSTRAINT [PK_CONEXION] PRIMARY KEY CLUSTERED 
(
	[Id_conexion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CONTROL_DE_COBROS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CONTROL_DE_COBROS](
	[Id_control_de_cobros] [int] IDENTITY(1,1) NOT NULL,
	[Monto] [numeric](18, 2) NULL,
	[Concepto] [varchar](max) NULL,
	[Id_venta] [int] NULL,
 CONSTRAINT [PK_CONTROL_DE_COBROS] PRIMARY KEY CLUSTERED 
(
	[Id_control_de_cobros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Control_de_L]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Control_de_L](
	[Id_controlar_licencia] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_activacion] [date] NULL,
	[Fecha_finalizacion] [date] NULL,
	[Dias_de_uso] [int] NULL,
	[Fecha_de_registro_de_uso] [date] NULL,
	[Dias_de_licencia] [int] NULL,
 CONSTRAINT [PK_Control_de_L] PRIMARY KEY CLUSTERED 
(
	[Id_controlar_licencia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Correo_base]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Correo_base](
	[Id_correo_base] [int] IDENTITY(1,1) NOT NULL,
	[Correo] [varchar](max) NULL,
	[Password] [varchar](max) NULL,
	[Estado_De_envio] [varchar](max) NULL,
 CONSTRAINT [PK_Correo_base] PRIMARY KEY CLUSTERED 
(
	[Id_correo_base] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DETALLE_CONTROL_DE_COBROS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DETALLE_CONTROL_DE_COBROS](
	[Id_detalle_de_control_de_cobros] [int] IDENTITY(1,1) NOT NULL,
	[Pago_realizado] [numeric](18, 2) NULL,
	[Fecha_que_pago] [datetime] NULL,
	[Tipo_de_cobro] [varchar](50) NULL,
	[Detalle] [varchar](max) NULL,
	[Id_cliente] [int] NULL,
	[Id_usuario] [int] NULL,
	[Id_caja] [int] NULL,
	[Comprobante] [varchar](max) NULL,
 CONSTRAINT [PK_DETALLE_CONTROL_DE_COBROS] PRIMARY KEY CLUSTERED 
(
	[Id_detalle_de_control_de_cobros] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[detalle_venta]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[detalle_venta](
	[iddetalle_venta] [int] IDENTITY(1,1) NOT NULL,
	[idventa] [int] NOT NULL,
	[Id_producto] [int] NOT NULL,
	[cantidad] [numeric](18, 2) NULL,
	[preciounitario] [numeric](18, 2) NULL,
	[Modena] [varchar](50) NULL,
	[Total_a_pagar]  AS ([preciounitario]*[cantidad]),
	[Unidad_de_medida] [varchar](50) NULL,
	[Cantidad_mostrada] [numeric](18, 2) NULL,
	[Estado] [varchar](50) NULL,
	[Descripcion] [varchar](50) NULL,
	[Codigo] [varchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[Se_vende_a] [varchar](50) NULL,
	[Usa_inventarios] [varchar](50) NULL,
	[Costo] [numeric](18, 2) NULL,
	[Ganancia]  AS ([cantidad]*[preciounitario]-[cantidad]*[Costo]),
 CONSTRAINT [PK_detalle_venta] PRIMARY KEY CLUSTERED 
(
	[iddetalle_venta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EMPRESA]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EMPRESA](
	[Id_empresa] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_Empresa] [varchar](50) NULL,
	[Logo] [image] NULL,
	[Impuesto] [varchar](50) NULL,
	[Porcentaje_impuesto] [numeric](18, 0) NULL,
	[Moneda] [varchar](50) NULL,
	[Trabajas_con_impuestos] [varchar](50) NULL,
	[Modo_de_busqueda] [varchar](50) NULL,
	[Carpeta_para_copias_de_seguridad] [varchar](max) NULL,
	[Correo_para_envio_de_reportes] [varchar](50) NULL,
	[Ultima_fecha_de_copia_de_seguridad] [varchar](50) NULL,
	[Ultima_fecha_de_copia_date] [datetime] NULL,
	[Frecuencia_de_copias] [int] NULL,
	[Estado] [varchar](50) NULL,
	[Tipo_de_empresa] [varchar](50) NULL,
	[Pais] [varchar](max) NULL,
	[Redondeo_de_total] [varchar](50) NULL,
 CONSTRAINT [PK_EMPRESA] PRIMARY KEY CLUSTERED 
(
	[Id_empresa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[GASTOSVARIOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[GASTOSVARIOS](
	[Idgasto] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_del_Gasto] [datetime] NULL,
	[Nro_Comprobante] [varchar](50) NULL,
	[Tipo_de_Comprobante] [varchar](50) NULL,
	[Importe] [numeric](18, 2) NULL,
	[Descripcion] [varchar](500) NULL,
	[Id_concepto] [int] NULL,
	[Id_usuario] [int] NULL,
	[TIPO] [varchar](50) NULL,
	[Id_caja] [int] NULL,
 CONSTRAINT [PK_GASTOSVARIOS] PRIMARY KEY CLUSTERED 
(
	[Idgasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupo_de_Productos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grupo_de_Productos](
	[Idline] [int] IDENTITY(1,1) NOT NULL,
	[Linea] [varchar](50) NULL,
	[Por_defecto] [varchar](50) NULL,
 CONSTRAINT [PK_linea] PRIMARY KEY CLUSTERED 
(
	[Idline] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[HORARIOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[HORARIOS](
	[Id_horarios] [int] IDENTITY(1,1) NOT NULL,
	[Cargo] [varchar](50) NULL,
	[Horas_laborales_diarias] [numeric](18, 1) NULL,
	[Costo_hora_normal] [numeric](18, 2) NULL,
	[Costo_hora_extra] [numeric](18, 2) NULL,
	[Horas_libres_diarias] [numeric](18, 1) NULL,
	[lunes] [int] NULL,
	[martes] [int] NULL,
	[miercoles] [int] NULL,
	[jueves] [int] NULL,
	[viernes] [int] NULL,
	[sabado] [int] NULL,
	[domingo] [int] NULL,
 CONSTRAINT [PK_HORARIOS] PRIMARY KEY CLUSTERED 
(
	[Id_horarios] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[INGRESOSVARIOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING OFF
GO
CREATE TABLE [dbo].[INGRESOSVARIOS](
	[Idgasto] [int] IDENTITY(1,1) NOT NULL,
	[Fecha_del_Gasto] [datetime] NULL,
	[Nro_Comprobante] [varchar](50) NULL,
	[Tipo_de_Comprobante] [varchar](50) NULL,
	[Importe] [decimal](18, 2) NULL,
	[Observacion] [varchar](500) NULL,
	[Estado] [varchar](50) NULL,
	[Id_concepto] [int] NULL,
 CONSTRAINT [PK_INGRESOSVARIOS] PRIMARY KEY CLUSTERED 
(
	[Idgasto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Inicios_de_sesion]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inicios_de_sesion](
	[Id_inicio_sesion] [int] IDENTITY(1,1) NOT NULL,
	[Id_usuario] [int] NULL,
	[Id_caja] [int] NULL,
 CONSTRAINT [PK_Inicios_de_sesion] PRIMARY KEY CLUSTERED 
(
	[Id_inicio_sesion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KARDEX]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KARDEX](
	[Id_kardex] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [datetime] NULL,
	[Motivo] [varchar](200) NULL,
	[Cantidad] [numeric](18, 0) NULL,
	[Id_producto] [int] NULL,
	[Id_usuario] [int] NULL,
	[Tipo] [varchar](50) NULL,
	[Estado] [varchar](50) NULL,
	[Total]  AS ([Cantidad]*[Costo_unt]),
	[Costo_unt] [numeric](18, 2) NULL,
	[Habia] [numeric](18, 2) NULL,
	[Hay] [numeric](18, 2) NULL,
	[Id_caja] [int] NULL,
 CONSTRAINT [PK_KARDEX] PRIMARY KEY CLUSTERED 
(
	[Id_kardex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Marcan]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Marcan](
	[Id_marca] [int] IDENTITY(1,1) NOT NULL,
	[S] [varchar](max) NULL,
	[F] [varchar](max) NULL,
	[E] [varchar](max) NULL,
	[FA] [varchar](max) NULL,
 CONSTRAINT [PK_Licencias] PRIMARY KEY CLUSTERED 
(
	[Id_marca] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Mesas]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Mesas](
	[Id_mesa] [int] IDENTITY(1,1) NOT NULL,
	[Id_salon] [int] NULL,
	[Mesa] [varchar](50) NULL,
 CONSTRAINT [PK_Mesas] PRIMARY KEY CLUSTERED 
(
	[Id_mesa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Monedero_Electronico_del_ahorro]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Monedero_Electronico_del_ahorro](
	[Id_monedero] [int] IDENTITY(1,1) NOT NULL,
	[Puntos_acumulados] [numeric](18, 0) NULL,
	[Id_conversion] [int] NULL,
	[Estado] [varchar](50) NULL,
	[Id_venta] [int] NULL,
 CONSTRAINT [PK_Monedero_Electronico_del_ahorro] PRIMARY KEY CLUSTERED 
(
	[Id_monedero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MOVIMIENTOCAJA]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MOVIMIENTOCAJA](
	[idmovcaja] [varchar](12) NOT NULL,
	[fechamov] [datetime] NULL,
	[tipomov] [varchar](20) NULL,
	[nombretipomov] [varchar](20) NULL,
	[descripciontipomov] [varchar](120) NULL,
	[totalmov] [real] NULL,
	[movcerrado] [char](2) NULL,
	[estado] [char](1) NULL,
	[mediodepago] [varchar](20) NULL,
	[idcompraventa] [varchar](12) NULL,
	[idusuario] [numeric](18, 0) NULL,
	[idcierrecaja] [varchar](12) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[MOVIMIENTOCAJACIERRE]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MOVIMIENTOCAJACIERRE](
	[idcierrecaja] [int] IDENTITY(1,1) NOT NULL,
	[fechainicio] [datetime] NULL,
	[fechafin] [datetime] NULL,
	[fechacierre] [datetime] NULL,
	[ingresos] [numeric](18, 2) NULL,
	[egresos] [numeric](18, 2) NULL,
	[Saldo_queda_en_caja] [numeric](18, 2) NULL,
	[Id_usuario] [int] NULL,
	[Total_calculado] [numeric](18, 2) NULL,
	[Total_real] [numeric](18, 2) NULL,
	[Estado] [varchar](50) NULL,
	[Diferencia] [numeric](18, 2) NULL,
	[Id_caja] [int] NULL,
 CONSTRAINT [PK_MOVIMIENTOCAJACIERRE] PRIMARY KEY CLUSTERED 
(
	[idcierrecaja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OFERTAS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OFERTAS](
	[Id_oferta] [int] IDENTITY(1,1) NOT NULL,
	[Id_presentacion_fraccionada] [int] NULL,
	[Cantidad_condicional] [numeric](18, 2) NULL,
	[Id_unidad_condicional] [int] NULL,
	[Descuento] [numeric](18, 2) NULL,
 CONSTRAINT [PK_OFERTAS] PRIMARY KEY CLUSTERED 
(
	[Id_oferta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[permisos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permisos](
	[Id_Permiso] [int] IDENTITY(1,1) NOT NULL,
	[Id_Usuario] [int] NULL,
	[ventas] [int] NULL,
	[aplicar_descuentos] [int] NULL,
	[Devoluciones] [int] NULL,
	[clientes_proveedores] [int] NULL,
	[productos] [int] NULL,
	[invetarios_kardex] [int] NULL,
	[configuraciones] [int] NULL,
	[usuarios] [int] NULL,
	[reportes] [int] NULL,
	[Manejar_caja] [int] NULL,
	[Herramientas] [int] NULL,
 CONSTRAINT [PK_p] PRIMARY KEY CLUSTERED 
(
	[Id_Permiso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Producto1]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Producto1](
	[Id_Producto1] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](50) NULL,
	[Imagen] [varchar](50) NULL,
	[Id_grupo] [int] NULL,
	[Usa_inventarios] [varchar](50) NULL,
	[Stock] [varchar](50) NULL,
	[Precio_de_compra] [numeric](18, 2) NULL,
	[Fecha_de_vencimiento] [varchar](50) NULL,
	[Precio_de_venta] [numeric](18, 2) NULL,
	[Codigo] [varchar](50) NULL,
	[Se_vende_a] [varchar](50) NULL,
	[Impuesto] [varchar](50) NULL,
	[Stock_minimo] [numeric](18, 2) NULL,
	[Precio_mayoreo] [numeric](18, 2) NULL,
	[Sub_total_pv]  AS ([Precio_de_venta]-([Precio_de_venta]*[Impuesto])/(100)),
	[Sub_total_pm]  AS ([Precio_mayoreo]-([Precio_mayoreo]*[Impuesto])/(100)),
	[A_partir_de] [numeric](18, 2) NULL,
 CONSTRAINT [PK_Producto1] PRIMARY KEY CLUSTERED 
(
	[Id_Producto1] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[programacion_de_cuotas]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[programacion_de_cuotas](
	[Id_Programacion_cuota] [int] IDENTITY(1,1) NOT NULL,
	[Monto_cuota] [decimal](18, 2) NULL,
	[Cuotas] [nchar](10) NULL,
	[Estado] [varchar](50) NULL,
	[Fechas_Programadas] [varchar](50) NULL,
	[Saldo] [decimal](18, 2) NULL,
	[Id_programacion_de_cuota_padre] [int] NULL,
 CONSTRAINT [PK_programacion_de_cuotas] PRIMARY KEY CLUSTERED 
(
	[Id_Programacion_cuota] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROGRAMACION_DE_CUOTAS_PADRE]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PROGRAMACION_DE_CUOTAS_PADRE](
	[Id_programacion_de_cuota_padre] [int] IDENTITY(1,1) NOT NULL,
	[Monto_total] [numeric](18, 2) NULL,
	[Porcentaje_de_inicial] [varchar](50) NULL,
	[Monto_inicial] [numeric](18, 2) NULL,
	[Total_a_financiar] [numeric](18, 2) NULL,
	[Modalidad_de_cuotas] [varchar](50) NULL,
	[Tasa_de_interes_anual] [varchar](50) NULL,
	[Cuotas_totales] [int] NULL,
	[Id_venta] [int] NULL,
	[Valor_final] [numeric](18, 2) NULL,
	[Banco_financiero] [varchar](50) NULL,
	[Bono_de_buen_pagador] [numeric](18, 2) NULL,
	[Estado_de_cobro_de_bono] [varchar](50) NULL,
 CONSTRAINT [PK_PROGRAMACION_DE_CUOTAS_PADRE] PRIMARY KEY CLUSTERED 
(
	[Id_programacion_de_cuota_padre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PROMOCIONES]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PROMOCIONES](
	[Id_promocion] [int] IDENTITY(1,1) NOT NULL,
	[Id_Producto] [int] NULL,
	[A_partir_de] [numeric](18, 2) NULL,
	[Precio_de_promocion] [numeric](18, 2) NULL,
 CONSTRAINT [PK_PROMOCIONES] PRIMARY KEY CLUSTERED 
(
	[Id_promocion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Propiedades_de_mesas]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Propiedades_de_mesas](
	[Id_propiedades] [int] IDENTITY(1,1) NOT NULL,
	[x] [int] NULL,
	[y] [int] NULL,
	[Tamanio_letra] [int] NULL,
 CONSTRAINT [PK_Propiedades_de_mesas] PRIMARY KEY CLUSTERED 
(
	[Id_propiedades] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SALON]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SALON](
	[Id_salon] [int] IDENTITY(1,1) NOT NULL,
	[Salon] [varchar](50) NULL,
 CONSTRAINT [PK_SALON] PRIMARY KEY CLUSTERED 
(
	[Id_salon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Serializacion]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Serializacion](
	[Id_serializacion] [int] IDENTITY(1,1) NOT NULL,
	[Serie] [varchar](50) NULL,
	[Cantidad_de_numeros] [varchar](50) NULL,
	[numerofin] [varchar](50) NULL,
	[Destino] [varchar](50) NULL,
	[Id_tipodoc] [varchar](50) NULL,
	[Por_defecto] [varchar](50) NULL,
 CONSTRAINT [PK_Serializacion] PRIMARY KEY CLUSTERED 
(
	[Id_serializacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Ticket]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Ticket](
	[Id_ticket] [int] IDENTITY(1,1) NOT NULL,
	[Id_Empresa] [int] NULL,
	[Identificador_fiscal] [varchar](max) NULL,
	[Direccion] [varchar](max) NULL,
	[Provincia_Departamento_Pais] [varchar](max) NULL,
	[Nombre_de_Moneda] [varchar](max) NULL,
	[Agradecimiento] [varchar](max) NULL,
	[pagina_Web_Facebook] [varchar](max) NULL,
	[Anuncio] [varchar](max) NULL,
	[Datos_fiscales_de_autorizacion] [varchar](max) NULL,
	[Por_defecto] [varchar](max) NULL,
 CONSTRAINT [PK_Ticket] PRIMARY KEY CLUSTERED 
(
	[Id_ticket] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[USUARIO2]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USUARIO2](
	[idUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nombre_y_Apelllidos] [varchar](50) NULL,
	[Login] [varchar](50) NULL,
	[Password] [varchar](50) NULL,
	[Icono] [image] NULL,
	[Nombre_de_icono] [varchar](max) NULL,
	[Correo] [varchar](max) NULL,
	[Rol] [varchar](max) NULL,
	[Estado] [varchar](50) NULL,
 CONSTRAINT [PK_USUARIO2] PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ventas](
	[idventa] [int] IDENTITY(1,1) NOT NULL,
	[idclientev] [int] NULL,
	[fecha_venta] [datetime] NULL,
	[Numero_de_doc] [varchar](50) NULL,
	[Monto_total] [numeric](18, 2) NULL,
	[Tipo_de_pago] [varchar](50) NULL,
	[Estado] [varchar](50) NULL,
	[IGV] [numeric](18, 1) NULL,
	[Comprobante] [varchar](50) NULL,
	[Id_usuario] [int] NULL,
	[Fecha_de_pago] [varchar](50) NULL,
	[ACCION] [varchar](50) NULL,
	[Saldo] [numeric](18, 2) NULL,
	[Pago_con] [numeric](18, 2) NULL,
	[Porcentaje_IGV] [numeric](18, 2) NULL,
	[Id_caja] [int] NULL,
	[Referencia_tarjeta] [varchar](50) NULL,
	[Vuelto] [numeric](18, 2) NULL,
	[Efectivo] [numeric](18, 2) NULL,
 CONSTRAINT [PK_ventas] PRIMARY KEY CLUSTERED 
(
	[idventa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[ASISTENCIAS]  WITH CHECK ADD  CONSTRAINT [FK_ASISTENCIAS_USUARIO2] FOREIGN KEY([Id_personal])
REFERENCES [dbo].[USUARIO2] ([idUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ASISTENCIAS] CHECK CONSTRAINT [FK_ASISTENCIAS_USUARIO2]
GO
ALTER TABLE [dbo].[CONTROL_DE_COBROS]  WITH CHECK ADD  CONSTRAINT [FK_CONTROL_DE_COBROS_ventas] FOREIGN KEY([Id_venta])
REFERENCES [dbo].[ventas] ([idventa])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CONTROL_DE_COBROS] CHECK CONSTRAINT [FK_CONTROL_DE_COBROS_ventas]
GO
ALTER TABLE [dbo].[DETALLE_CONTROL_DE_COBROS]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_CONTROL_DE_COBROS_clientes] FOREIGN KEY([Id_cliente])
REFERENCES [dbo].[clientes] ([idclientev])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DETALLE_CONTROL_DE_COBROS] CHECK CONSTRAINT [FK_DETALLE_CONTROL_DE_COBROS_clientes]
GO
ALTER TABLE [dbo].[DETALLE_CONTROL_DE_COBROS]  WITH CHECK ADD  CONSTRAINT [FK_DETALLE_CONTROL_DE_COBROS_USUARIO2] FOREIGN KEY([Id_usuario])
REFERENCES [dbo].[USUARIO2] ([idUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DETALLE_CONTROL_DE_COBROS] CHECK CONSTRAINT [FK_DETALLE_CONTROL_DE_COBROS_USUARIO2]
GO
ALTER TABLE [dbo].[detalle_venta]  WITH CHECK ADD  CONSTRAINT [FK_detalle_venta_ventas1] FOREIGN KEY([idventa])
REFERENCES [dbo].[ventas] ([idventa])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[detalle_venta] CHECK CONSTRAINT [FK_detalle_venta_ventas1]
GO
ALTER TABLE [dbo].[INGRESOSVARIOS]  WITH CHECK ADD  CONSTRAINT [FK_INGRESOSVARIOS_CONCEPTOS] FOREIGN KEY([Id_concepto])
REFERENCES [dbo].[CONCEPTOS] ([Id_concepto])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[INGRESOSVARIOS] CHECK CONSTRAINT [FK_INGRESOSVARIOS_CONCEPTOS]
GO
ALTER TABLE [dbo].[KARDEX]  WITH CHECK ADD  CONSTRAINT [FK_KARDEX_Producto1] FOREIGN KEY([Id_producto])
REFERENCES [dbo].[Producto1] ([Id_Producto1])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KARDEX] CHECK CONSTRAINT [FK_KARDEX_Producto1]
GO
ALTER TABLE [dbo].[KARDEX]  WITH CHECK ADD  CONSTRAINT [FK_KARDEX_USUARIO2] FOREIGN KEY([Id_usuario])
REFERENCES [dbo].[USUARIO2] ([idUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KARDEX] CHECK CONSTRAINT [FK_KARDEX_USUARIO2]
GO
ALTER TABLE [dbo].[Mesas]  WITH CHECK ADD  CONSTRAINT [fk_mesa_salon] FOREIGN KEY([Id_salon])
REFERENCES [dbo].[SALON] ([Id_salon])
GO
ALTER TABLE [dbo].[Mesas] CHECK CONSTRAINT [fk_mesa_salon]
GO
ALTER TABLE [dbo].[MOVIMIENTOCAJACIERRE]  WITH CHECK ADD  CONSTRAINT [FK_MOVIMIENTOCAJACIERRE_Caja] FOREIGN KEY([Id_caja])
REFERENCES [dbo].[Caja] ([Id_Caja])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MOVIMIENTOCAJACIERRE] CHECK CONSTRAINT [FK_MOVIMIENTOCAJACIERRE_Caja]
GO
ALTER TABLE [dbo].[MOVIMIENTOCAJACIERRE]  WITH CHECK ADD  CONSTRAINT [FK_MOVIMIENTOCAJACIERRE_USUARIO2] FOREIGN KEY([Id_usuario])
REFERENCES [dbo].[USUARIO2] ([idUsuario])
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[MOVIMIENTOCAJACIERRE] CHECK CONSTRAINT [FK_MOVIMIENTOCAJACIERRE_USUARIO2]
GO
ALTER TABLE [dbo].[permisos]  WITH CHECK ADD  CONSTRAINT [FK_permisos_USUARIO2] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[USUARIO2] ([idUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[permisos] CHECK CONSTRAINT [FK_permisos_USUARIO2]
GO
ALTER TABLE [dbo].[programacion_de_cuotas]  WITH CHECK ADD  CONSTRAINT [FK_programacion_de_cuotas_PROGRAMACION_DE_CUOTAS_PADRE] FOREIGN KEY([Id_programacion_de_cuota_padre])
REFERENCES [dbo].[PROGRAMACION_DE_CUOTAS_PADRE] ([Id_programacion_de_cuota_padre])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[programacion_de_cuotas] CHECK CONSTRAINT [FK_programacion_de_cuotas_PROGRAMACION_DE_CUOTAS_PADRE]
GO
ALTER TABLE [dbo].[PROGRAMACION_DE_CUOTAS_PADRE]  WITH CHECK ADD  CONSTRAINT [FK_PROGRAMACION_DE_CUOTAS_PADRE_ventas] FOREIGN KEY([Id_venta])
REFERENCES [dbo].[ventas] ([idventa])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PROGRAMACION_DE_CUOTAS_PADRE] CHECK CONSTRAINT [FK_PROGRAMACION_DE_CUOTAS_PADRE_ventas]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD  CONSTRAINT [FK_ventas_USUARIO2] FOREIGN KEY([Id_usuario])
REFERENCES [dbo].[USUARIO2] ([idUsuario])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ventas] CHECK CONSTRAINT [FK_ventas_USUARIO2]
GO
/****** Object:  StoredProcedure [dbo].[a]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[a]
@salon varchar (50)
as
insert into SALON (Salon) values(@salon);
GO
/****** Object:  StoredProcedure [dbo].[activar_la_escritura_de_mdf]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[activar_la_escritura_de_mdf]
as
ALTER DATABASE   BASEMAGBRI Set Read_write


GO
/****** Object:  StoredProcedure [dbo].[actualizar_estado_de_cuota]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[actualizar_estado_de_cuota]
@idprogramacioncuota as integer

as 
update  programacion_de_cuotas  set Estado='PAGADO'
where Id_Programacion_cuota=@idprogramacioncuota AND Saldo  = 0 AND Estado='DEUDA'



GO
/****** Object:  StoredProcedure [dbo].[actualizar_serializacion_mas_uno]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[actualizar_serializacion_mas_uno]

@idserie as int  ,


@numerofin as numeric(18,0)  
as 

update Serializacion set  numerofin=numerofin+1          
where Id_serializacion=@idserie 




GO
/****** Object:  StoredProcedure [dbo].[actualizar_serializacion_mas_uno_en_Cobros]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[actualizar_serializacion_mas_uno_en_Cobros]

as 

update Serializacion set  numerofin=numerofin+1          
where Id_tipodoc='INGRESO'



GO
/****** Object:  StoredProcedure [dbo].[actualizarestado_venta]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[actualizarestado_venta]

@resto as decimal(18,2),
@idventa as int
as
if @resto <>0.00
update ventas  set Estado='DEUDA'
where Estado='DEUDA' and idventa  =@idventa
else
update ventas set Estado='CREDITO PAGADO'
where  Estado='DEUDA' and idventa  =@idventa



GO
/****** Object:  StoredProcedure [dbo].[actualizartotal_venta]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[actualizartotal_venta]
@idventa int,
@montototal as numeric(18,1),
@IGV as numeric(18,1)

,@Saldo numeric(18,2),
@Tipo_de_pago varchar(50),
@Estado varchar(50),
@Id_series varchar(50),
@Numero_de_doc varchar(50),
@fecha_venta datetime,
@ACCION varchar(50),
@Fecha_de_pago varchar(50),
@idcliente int,
@Pago_con numeric(18,2),
@Referencia_tarjeta varchar(50)
as

   BEGIN
if EXISTS (SELECT Numero_de_doc  FROM ventas  where Numero_de_doc  = @Numero_de_doc  )
RAISERROR ('Ya existe un Numero de Comprobante con ese Numero y Serie', 16,1)
else
BEGIN
update ventas set Monto_total  =@montototal, IGV=@IGV ,Saldo=@Saldo,
Tipo_de_pago=@Tipo_de_pago 
,Estado=@Estado ,
Comprobante =@Id_series ,
Numero_de_doc=@Numero_de_doc ,
fecha_venta=@fecha_venta ,
ACCION=@ACCION ,Fecha_de_pago =@Fecha_de_pago ,idclientev=@idcliente ,
Pago_con=@Pago_con,Referencia_tarjeta=@Referencia_tarjeta
where idventa =@idventa 
END
END



GO
/****** Object:  StoredProcedure [dbo].[actualizartotal_venta_EFECTIVO]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[actualizartotal_venta_EFECTIVO]
@idventa int,
@montototal as numeric(18,1),
@IGV as numeric(18,1)

,@Saldo numeric(18,2),
@Tipo_de_pago varchar(50),
@Estado varchar(50),
@Id_series varchar(50),
@Numero_de_doc varchar(50),
@fecha_venta datetime,
@ACCION varchar(50),
@Fecha_de_pago varchar(50),
@idcliente int,
@Pago_con numeric(18,2),
@Referencia_tarjeta varchar(50),
@Vuelto as numeric(18,2)
as

   BEGIN
if EXISTS (SELECT Numero_de_doc  FROM ventas  where Numero_de_doc  = @Numero_de_doc  )
RAISERROR ('Ya existe un Numero de Comprobante con ese Numero y Serie', 16,1)
else
BEGIN
update ventas set Monto_total  =@montototal, IGV=@IGV ,Saldo=@Saldo,
Tipo_de_pago=@Tipo_de_pago 
,Estado=@Estado ,
Comprobante =@Id_series ,
Numero_de_doc=@Numero_de_doc ,
fecha_venta=@fecha_venta ,
ACCION=@ACCION ,Fecha_de_pago =@Fecha_de_pago ,idclientev=@idcliente ,
Pago_con=@Pago_con,Referencia_tarjeta=@Referencia_tarjeta,
Vuelto=@Vuelto 
where idventa =@idventa 
END
END



GO
/****** Object:  StoredProcedure [dbo].[actualizarventasfacturaspagadas]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[actualizarventasfacturaspagadas]
@idcliente as integer

as
update ventas set Estado = 'PAGADO'  
where idclientev=@idcliente 






GO
/****** Object:  StoredProcedure [dbo].[aplicar_precio_mayoreo]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[aplicar_precio_mayoreo]
@Id_producto  int

,@Id_venta  as int   	

as 

 DECLARE @APARTIR_DE AS numeric(18,2)
  DECLARE @Precio_normal AS numeric(18,2)
  DECLARE @Precio_pormayor AS numeric(18,2)
SET @APARTIR_DE = (SELECT A_partir_de FROM Producto1 WHERE Producto1.Id_Producto1 =@Id_producto)
SET @Precio_normal = (SELECT Precio_de_venta  FROM Producto1 WHERE Producto1.Id_Producto1 =@Id_producto)
SET @Precio_pormayor = (SELECT Precio_mayoreo  FROM Producto1 WHERE Producto1.Id_Producto1 =@Id_producto)
PRINT @APARTIR_DE
PRINT @Precio_normal
PRINT @Precio_pormayor
begin
if EXISTS (SELECT A_partir_de,Id_Producto1   FROM Producto1  where Id_Producto1 =@Id_producto and @APARTIR_DE=0  )
RAISERROR ('Este Producto no Permite el Precio al Mayoreo', 16,1)
else

begin
update detalle_venta  set 
preciounitario=@Precio_pormayor 

where  detalle_venta .Id_producto    =@Id_producto and detalle_venta.idventa=@Id_venta 
end
end


GO
/****** Object:  StoredProcedure [dbo].[aumentar_saldo_a_cliente]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[aumentar_saldo_a_cliente]
@idcliente as integer,
@Saldo numeric(18,2)
          
as 
update clientes set 

          
			Saldo =Saldo+@Saldo 
where idclientev =@idcliente 






GO
/****** Object:  StoredProcedure [dbo].[aumentar_stock]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aumentar_stock]
@Id_presentacionfraccionada as INT,
@cantidad as decimal (18,2)

as
update Producto1   set Stock=Stock+@cantidad where Id_Producto1  =@Id_presentacionfraccionada AND Usa_inventarios ='SI'




GO
/****** Object:  StoredProcedure [dbo].[aumentar_stock_en_detalle_de_venta]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[aumentar_stock_en_detalle_de_venta]
@Id_presentacionfraccionada as varchar(50),
@cantidad as decimal (18,2)

as
update detalle_venta   set Stock=Stock+@cantidad where Id_producto   =@Id_presentacionfraccionada AND Stock  <>'Ilimitado' AND Estado ='EN ESPERA'



GO
/****** Object:  StoredProcedure [dbo].[aumentar_stock_y_editar_precios]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[aumentar_stock_y_editar_precios]
@Id_presentacionfraccionada as INT,
@cantidad as decimal (18,2), 
@Precio_de_compra numeric(18,2),        
@Precio_de_venta numeric(18,2),       
@Precio_mayoreo numeric(18,2)
as
update Producto1   set Stock=Stock+@cantidad,Precio_de_compra =@Precio_de_compra ,
Precio_de_venta=@Precio_de_venta, Precio_mayoreo=@Precio_mayoreo  where Id_Producto1  =@Id_presentacionfraccionada AND Usa_inventarios ='SI'




GO
/****** Object:  StoredProcedure [dbo].[AUTORIZAR_A_USUARIOS_PARA_QUE_PROPIETARIO_DE_BASE_DE_DATOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AUTORIZAR_A_USUARIOS_PARA_QUE_PROPIETARIO_DE_BASE_DE_DATOS]
AS
Alter authorization on database::BASEUP to peruinka


GO
/****** Object:  StoredProcedure [dbo].[backup_base]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[backup_base]
@ruta as varchar(max)
as
BACKUP DATABASE [BASEMACKEYS]
TO DISK =N'C:\BASE_MAESTRA_PERUINKA_INDUSTRIAS\BASE\BASEMACKEYS.bak'
WITH DESCRIPTION =N'respaldo de la base de datos de BASEMACKEYS',
NOFORMAT,
INIT,
NAME=N'BASEMACKEYS',
SKIP,
NOREWIND,
NOUNLOAD,
STATS=10,
CHECKSUM


GO
/****** Object:  StoredProcedure [dbo].[Buscar__id_cajas]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Buscar__id_cajas]
@Caja varchar(50)
as
select * from Caja 
where Descripcion =@Caja
order by Id_Caja desc


GO
/****** Object:  StoredProcedure [dbo].[buscar_ASISTENCIAS_por_id]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[buscar_ASISTENCIAS_por_id]
--declare @fecha_sistema date set @fecha_sistema = (SELECT GETDATE())
@letra int
AS 

SELECT        *
FROM            dbo.ASISTENCIAS 						 
WHEre Id_personal=@letra AND Estado='ENTRADA'




GO
/****** Object:  StoredProcedure [dbo].[buscar_ASISTENCIAS_por_id_para_horas]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[buscar_ASISTENCIAS_por_id_para_horas]
@letra int
AS 
declare @fecha_sistema date set @fecha_sistema = (SELECT GETDATE())
SELECT        *
FROM            dbo.ASISTENCIAS 						 
WHEre Id_personal=@letra and convert(date,Fecha_entrada)=@fecha_sistema 




GO
/****** Object:  StoredProcedure [dbo].[buscar_cliente_Form]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_cliente_Form]

@letra VARCHAR(50)
AS BEGIN
SELECT       top  10 idclientev, Nombre, Direccion_para_factura as Direccion, Ruc,  movil as Celular
                , Estado 
FROM            dbo.clientes 
WHEre Nombre  LIKE  '%' + @letra+'%' and Cliente  ='SI' 
END


GO
/****** Object:  StoredProcedure [dbo].[buscar_cliente_POR_nombre_PARA_COBROS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_cliente_POR_nombre_PARA_COBROS]

@letra VARCHAR(50)
AS BEGIN
SELECT       dbo.clientes .Nombre ,dbo.clientes.idclientev ,Saldo 
FROM            clientes 
WHEre Nombre  LIKE  '%' + @letra+'%' and Cliente  ='SI' and Estado ='ACTIVO'
END



GO
/****** Object:  StoredProcedure [dbo].[buscar_cliente_POR_nombre_PARA_COMPRAS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_cliente_POR_nombre_PARA_COMPRAS]

@letra VARCHAR(50)
AS BEGIN
SELECT       dbo.clientes .Nombre ,dbo.clientes.idclientev 
FROM            clientes 
WHEre Nombre  LIKE  '%' + @letra+'%' and Proveedor ='SI' 
END



GO
/****** Object:  StoredProcedure [dbo].[buscar_cliente_POR_nombre_PARA_PAGOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_cliente_POR_nombre_PARA_PAGOS]

@letra VARCHAR(50)
AS BEGIN
SELECT       dbo.clientes .Nombre ,dbo.clientes.idclientev ,Saldo 
FROM            clientes 
WHEre Nombre  LIKE  '%' + @letra+'%' and Proveedor   ='SI' and Estado ='ACTIVO'
END



GO
/****** Object:  StoredProcedure [dbo].[buscar_cliente_POR_nombre_PARA_VENTAS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_cliente_POR_nombre_PARA_VENTAS]

@letra VARCHAR(50)
AS BEGIN
SELECT        DBO.clientes.Nombre ,DBO.clientes.idclientev  
FROM            clientes 

WHEre Nombre  LIKE  '%' + @letra+'%' and Cliente='SI'  
END


GO
/****** Object:  StoredProcedure [dbo].[buscar_cliente_POR_nombre_PARA_VENTAS_buscador]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_cliente_POR_nombre_PARA_VENTAS_buscador]

@letra VARCHAR(50)
AS BEGIN
SELECT        DBO.clientes.Nombre  ,clientes.idclientev,clientes.Saldo 
 
FROM         clientes 
WHEre Nombre  LIKE  '%' + @letra+'%' and Cliente='SI' 
group by	DBO.clientes.Nombre ,clientes.idclientev,clientes.Saldo 
END




GO
/****** Object:  StoredProcedure [dbo].[buscar_cliente_POR_nombre_PARA_VENTAS_todos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_cliente_POR_nombre_PARA_VENTAS_todos]

@letra VARCHAR(50)
AS BEGIN
SELECT        DBO.clientes.Nombre ,DBO.clientes.idclientev ,Direccion_para_factura  ,movil  ,Ruc
FROM         clientes
WHEre Nombre+movil +Direccion_para_factura   LIKE  '%' + @letra+'%' and Cliente='SI'AND Estado ='ACTIVO' ORDER BY idclientev desc
END


GO
/****** Object:  StoredProcedure [dbo].[buscar_cobros_x_vendedor_y_fecha]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[buscar_cobros_x_vendedor_y_fecha]
@idvendedor as int,
@fecha as date

as
SELECT       sum(DETALLE_CONTROL_DE_COBROS.Pago_realizado ) as TOTAL
						
FROM            DETALLE_CONTROL_DE_COBROS  
where Id_usuario =@idvendedor AND CONVERT(DATE,Fecha_que_pago )=@fecha 


GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_CONCEPTOS_EN_GASTOS_VARIOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[BUSCAR_CONCEPTOS_EN_GASTOS_VARIOS]
@letra VARCHAR(50)
AS BEGIN
SELECT        dbo.CONCEPTOS.Id_concepto, dbo.CONCEPTOS.Descripcion AS Concepto 
                      
FROM            dbo.CONCEPTOS 
						 WHERE CONCEPTOS.Descripcion   LIKE  '%' + @letra+'%' 
						 END



GO
/****** Object:  StoredProcedure [dbo].[buscar_creditos_x_vendedor_y_fecha]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_creditos_x_vendedor_y_fecha]
@idvendedor as int,
@fecha as date

as
SELECT       sum(ventas.Saldo ) as TOTAL
	FROM           
                         dbo.ventas 
						

     
where Id_usuario =@idvendedor AND CONVERT(DATE,ventas.fecha_venta   )=@fecha and
ventas.Estado='DEUDA' AND  ventas.Tipo_de_pago='CREDITO'


GO
/****** Object:  StoredProcedure [dbo].[buscar_Empresa]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_Empresa]
@letra varchar(50)
as
select LOGO, Nombre_Empresa as Empresa ,(Impuesto + ' ('+  CONVERT(VARCHAR(50),Porcentaje_impuesto) + ')') Impuesto ,Moneda , Id_empresa AS OKA ,Id_empresa  
,Porcentaje_impuesto  ,Impuesto ,Trabajas_con_impuestos,Modo_de_busqueda 
from Empresa
where EMPRESA.Nombre_Empresa =@letra



GO
/****** Object:  StoredProcedure [dbo].[Buscar_id_USUARIOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Buscar_id_USUARIOS]
@Nombre_y_Apelllidos varchar(50)
as
select * from USUARIO2 
where Nombre_y_Apelllidos =@Nombre_y_Apelllidos
order by idUsuario desc



GO
/****** Object:  StoredProcedure [dbo].[buscar_linea]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_linea]
@linea as varchar(50)
as begin
select * from linea Where Linea LIKE @linea+'%'
end







GO
/****** Object:  StoredProcedure [dbo].[buscar_MOVIMIENTOS_DE_KARDEX]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[buscar_MOVIMIENTOS_DE_KARDEX]
@idProducto int
AS BEGIN
SELECT       KARDEX.Fecha ,Producto1.Descripcion ,KARDEX.Motivo as Movimiento, KARDEX.Habia ,KARDEX.Tipo ,KARDEX.Cantidad ,KARDEX.Hay ,USUARIO2.Nombre_y_Apelllidos as Cajero ,Grupo_de_Productos.Linea as Categoria
,EMPRESA.Nombre_Empresa,EMPRESA.Logo 
FROM            dbo.KARDEX INNER JOIN Producto1 on Producto1.Id_Producto1=KARDEX.Id_producto inner join USUARIO2 on USUARIO2.idUsuario =KARDEX.Id_usuario 
               cross join EMPRESA
			INNER JOIN Grupo_de_Productos on
Grupo_de_Productos.Idline=Producto1.Id_grupo
						 
WHEre Producto1.Id_Producto1=@idProducto   order by KARDEX.Fecha Desc

END


GO
/****** Object:  StoredProcedure [dbo].[buscar_MOVIMIENTOS_DE_KARDEX_filtros_acumulado]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[buscar_MOVIMIENTOS_DE_KARDEX_filtros_acumulado]
@fecha date,
@tipo varchar(50),
@Id_usuario int 
AS BEGIN
SELECT     Producto1.Descripcion ,KARDEX.Tipo ,sum (KARDEX.Cantidad) Cantidad_Total ,@fecha as fecha, USUARIO2.Nombre_y_Apelllidos,@tipo as Tipo_consultado
 FROM            dbo.KARDEX INNER JOIN Producto1 on Producto1.Id_Producto1=KARDEX.Id_producto inner join USUARIO2 on USUARIO2.idUsuario =KARDEX.Id_usuario 
         
				 
WHEre KARDEX.Id_usuario =@Id_usuario and (KARDEX.Tipo=@tipo or @tipo ='-Todos-') and convert(date,KARDEX.Fecha) =convert(date,@fecha )
group by Producto1.Descripcion,KARDEX.Tipo,USUARIO2.Nombre_y_Apelllidos
ORDER BY sum (KARDEX.Cantidad) DESC
END


GO
/****** Object:  StoredProcedure [dbo].[buscar_producto_por_descripcion]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[buscar_producto_por_descripcion]
@letra VARCHAR(50)
AS BEGIN
select top 10 Id_Producto1,Codigo , Grupo_de_Productos.Linea as Grupo,Descripcion ,Impuesto,Usa_inventarios ,Precio_de_compra AS P_Compra,Precio_mayoreo as P_mayoreo,Se_vende_a as Se_vende_por,Stock_minimo ,Fecha_de_vencimiento as F_vencimiento ,Stock,Precio_de_venta as P_venta 
,Grupo_de_Productos.Idline,A_partir_de 

FROM            dbo.Producto1 
INNER JOIN Grupo_de_Productos on
Grupo_de_Productos.Idline=Producto1.Id_grupo
              
WHEre (dbo.Producto1.Descripcion)+Codigo +Grupo_de_Productos.Linea   LIKE  '%' + @letra+'%' ORDER BY DBO.Producto1.Descripcion  asc
 
END


GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_PRODUCTOS_KARDEX]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BUSCAR_PRODUCTOS_KARDEX]

@letrab VARCHAR(50)
AS BEGIN
SELECT       top 10 Id_Producto1, (Descripcion) AS Descripcion, Imagen, Grupo_de_Productos.Linea, Usa_inventarios, Stock, Precio_de_compra, Fecha_de_vencimiento, Precio_de_venta, Codigo, Se_vende_a, Impuesto, Stock_minimo, Precio_mayoreo, Sub_total_pv, 
                         Sub_total_pm
FROM            dbo.Producto1 
                      	INNER JOIN Grupo_de_Productos on
Grupo_de_Productos.Idline=Producto1.Id_grupo
  
						 where  (Descripcion+Grupo_de_Productos.Linea  + Codigo) LIKE  '%' + @letrab+'%' and Usa_inventarios ='SI'
end 



GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_PRODUCTOS_oka]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BUSCAR_PRODUCTOS_oka]

@letrab VARCHAR(50)
AS BEGIN
SELECT      TOP 10  Id_Producto1,(Descripcion+' /Precio: '+EMPRESA.Moneda   +' '+ convert(varchar(50),Precio_de_venta)  +' /Codigo: '+ Codigo  ) AS Descripcion, Imagen, Grupo_de_Productos.Linea as Grupo, Usa_inventarios, Stock, Precio_de_compra, Fecha_de_vencimiento, Precio_de_venta, Codigo, Se_vende_a, producto1.Impuesto, Stock_minimo, Precio_mayoreo, Sub_total_pv, 
                         Sub_total_pm,Descripcion as Descripcion2,A_partir_de  
FROM            dbo.Producto1  cross join EMPRESA 
INNER JOIN Grupo_de_Productos on
Grupo_de_Productos.Idline=Producto1.Id_grupo
                      
  
						 where  (Descripcion+' /Precio: '+EMPRESA.Moneda   +' '+ convert(varchar(50),Precio_de_venta)  +' /Codigo: '+ Codigo  ) LIKE  '%' + @letrab+'%' 
end  


GO
/****** Object:  StoredProcedure [dbo].[BUSCAR_PRODUCTOS_oka_por_teclado]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[BUSCAR_PRODUCTOS_oka_por_teclado]

@letrab VARCHAR(50)
AS BEGIN
SELECT        Id_Producto1, (Descripcion+ Codigo  ) AS Descripcion, Imagen, Grupo_de_Productos.Linea, Usa_inventarios, Stock, Precio_de_compra, Fecha_de_vencimiento, Precio_de_venta, Codigo, Se_vende_a, Impuesto, Stock_minimo, Precio_mayoreo, Sub_total_pv, 
                         Sub_total_pm
FROM            dbo.Producto1 
                      
  INNER JOIN Grupo_de_Productos on
Grupo_de_Productos.Idline=Producto1.Id_grupo
						 where  (Descripcion+Codigo ) LIKE  '%' + @letrab+'%' 
end 


GO
/****** Object:  StoredProcedure [dbo].[buscar_productos_vencidos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_productos_vencidos]
@letra as varchar(50)
as

select Id_Producto1,Codigo ,Descripcion 

,Fecha_de_vencimiento as F_vencimiento ,Stock,empresa.Nombre_Empresa,empresa.Logo
,datediff(day,Fecha_de_vencimiento,CONVERT(DATE,GETDATE ()))as [Dias Vencidos] from Producto1
cross join EMPRESA 
where   Descripcion +codigo LIKE  '%' + @letra+'%' and Fecha_de_vencimiento <>'NO APLICA' AND Fecha_de_vencimiento <= CONVERT(DATE,GETDATE ()) 
order by (datediff(day,Fecha_de_vencimiento,CONVERT(DATE,GETDATE ()))) asc



GO
/****** Object:  StoredProcedure [dbo].[buscar_proveedor_Form]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_proveedor_Form]

@letra VARCHAR(50)
AS BEGIN
SELECT        top 10 idclientev, Nombre, Direccion_para_factura as Direccion, Ruc,  movil as Celular
                , Estado 
FROM            dbo.clientes 
WHEre Nombre  LIKE  '%' + @letra+'%' and Proveedor   ='SI' 
END


GO
/****** Object:  StoredProcedure [dbo].[buscar_proveedor_POR_nombre]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_proveedor_POR_nombre]

@letra VARCHAR(50)
AS BEGIN
SELECT   Nombre as Cliente , idclientev 
    
FROM   clientes        
                        
WHEre Nombre  LIKE  '%' + @letra+'%' and Proveedor ='SI'
END




GO
/****** Object:  StoredProcedure [dbo].[buscar_PROVEEDOR_POR_nombre_PARA_VENTAS_todos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_PROVEEDOR_POR_nombre_PARA_VENTAS_todos]

@letra VARCHAR(50)
AS BEGIN
SELECT        DBO.clientes.Nombre ,DBO.clientes.idclientev  ,movil  
FROM         clientes
WHEre Nombre+movil   LIKE  '%' + @letra+'%' and Proveedor ='SI' AND Estado ='ACTIVO'  ORDER BY idclientev desc
END


GO
/****** Object:  StoredProcedure [dbo].[buscar_Tipo_de_documentos_para_insertar_en_ventas]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_Tipo_de_documentos_para_insertar_en_ventas]
@letra VARCHAR(50)
AS BEGIN

SELECT        Serializacion.Id_tipodoc  AS COMPROBANTE , Serializacion.Id_tipodoc  ,dbo.Serializacion.Serie ,dbo.Serializacion.Cantidad_de_numeros  , dbo.Serializacion.numerofin ,dbo.Serializacion.Id_serializacion ,(dbo.Serializacion.Serie  +' - '+ dbo.Serializacion.Cantidad_de_numeros + dbo.Serializacion.numerofin) as serie_completa,Serializacion.Id_tipodoc,Serializacion.Id_tipodoc 
FROM            dbo.Serializacion 
 
 WHEre Serializacion.Id_tipodoc =@letra  and dbo.Serializacion .Destino  ='VENTAS'
 end



GO
/****** Object:  StoredProcedure [dbo].[buscar_USUARIO_por_correo]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[buscar_USUARIO_por_correo]
@correo VARCHAR(max)

AS 
SELECT        Password 
FROM            dbo.USUARIO2						 
WHEre Correo =@correo


GO
/****** Object:  StoredProcedure [dbo].[buscar_USUARIO_por_DNI]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[buscar_USUARIO_por_DNI]
@letrab VARCHAR(50)
AS BEGIN
select USUARIO2 .idUsuario,USUARIO2.Nombre_y_Apelllidos as [Nombres] ,USUARIO2 .Login as Usuario,USUARIO2.Password 
,Icono ,Nombre_de_icono ,Correo ,rol,Estado  from usuario2						 
WHEre Nombre_y_Apelllidos+login LIKE  '%' + @letrab+'%' 
END



GO
/****** Object:  StoredProcedure [dbo].[buscar_USUARIO_por_nombre]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[buscar_USUARIO_por_nombre]
@letra VARCHAR(50),
@pas varchar(50)
AS BEGIN
SELECT        idUsuario, Nombre_y_Apelllidos,Password 
FROM            dbo.USUARIO2						 
WHEre Nombre_y_Apelllidos LIKE  '%' + @letra+'%' AND Password=@pas
END


GO
/****** Object:  StoredProcedure [dbo].[buscar_ventas_a_credito_con_productos_x_vendedor_y_fecha]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_ventas_a_credito_con_productos_x_vendedor_y_fecha]
@idvendedor as int,
@fecha as date

as
SELECT       sum(ventas.Monto_total) as TOTAL
						
FROM            ventas
where Id_usuario =@idvendedor AND CONVERT(DATE,fecha_venta)=@fecha AND Estado='DEUDA' AND ACCION='VENTA'


GO
/****** Object:  StoredProcedure [dbo].[buscar_ventas_por_fecha]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_ventas_por_fecha]


@fi  date,
@ff date
AS 
SELECT       ventas. idventa , fecha_venta ,Comprobante +' '+Numero_de_doc  ,Monto_total ,USUARIO2.Nombre_y_Apelllidos ,ventas.Pago_con
,Empresa.Moneda + ' '+convert(varchar(50),Ventas.Monto_total)   as TOTAL
,clientes.Nombre as CLiente,ventas.Tipo_de_pago, ventas.Pago_con , ventas. vuelto 
FROM            dbo.ventas 	inner join USUARIO2  on USUARIO2 .idUsuario  =ventas.Id_usuario  	inner join detalle_venta on detalle_venta.idventa=ventas.idventa 				 
CROSS JOIN EMPRESA
inner join clientes on clientes.idclientev =ventas.idclientev

WHEre  convert(date,ventas.fecha_venta) >=@fi and convert(date,ventas.fecha_venta)  <=@ff and
ACCION ='VENTA' AND ventas.Estado='CONFIRMADO'



GO
/****** Object:  StoredProcedure [dbo].[buscar_ventas_por_numero_de_comprobante]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_ventas_por_numero_de_comprobante]


@letra VARCHAR(50)
AS 
SELECT      TOP 10 ventas. idventa , fecha_venta ,Comprobante +' '+Numero_de_doc  ,Monto_total ,USUARIO2.Nombre_y_Apelllidos ,ventas.Pago_con
,Empresa.Moneda + ' '+convert(varchar(50),Ventas.Monto_total)   as TOTAL
,clientes.Nombre as CLiente,ventas.Tipo_de_pago, ventas.Pago_con , ventas. vuelto 
FROM            dbo.ventas 	inner join USUARIO2  on USUARIO2 .idUsuario  =ventas.Id_usuario  	inner join detalle_venta on detalle_venta.idventa=ventas.idventa 				 
CROSS JOIN EMPRESA
inner join clientes on clientes.idclientev =ventas.idclientev
WHEre Comprobante +Numero_de_doc    LIKE  '%' + @letra+'%' and ventas.Monto_total >0 AND ventas.Estado='CONFIRMADO'
AND ACCION ='VENTA' 



GO
/****** Object:  StoredProcedure [dbo].[buscar_ventas_por_numero_usuario]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_ventas_por_numero_usuario]


@letra VARCHAR(50)
AS 

SELECT       ventas. idventa , fecha_venta ,Comprobante +' '+Numero_de_doc  ,Monto_total ,USUARIO2.Nombre_y_Apelllidos ,ventas.Pago_con
,Empresa.Moneda + ' '+convert(varchar(50),Ventas.Monto_total)   as TOTAL
FROM            dbo.ventas 	inner join USUARIO2  on USUARIO2 .idUsuario  =ventas.Id_usuario  	inner join detalle_venta on detalle_venta.idventa=ventas.idventa 				 
CROSS JOIN EMPRESA

WHEre USUARIO2.Nombre_y_Apelllidos    LIKE  '%' + @letra+'%'



GO
/****** Object:  StoredProcedure [dbo].[buscar_ventas_por_numero_usuario_FILTRADO]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[buscar_ventas_por_numero_usuario_FILTRADO]


@letra VARCHAR(50)
AS 
SELECT        idventa , fecha_venta ,Comprobante +Numero_de_doc  ,Monto_total ,USUARIO2.Nombre_y_Apelllidos ,ventas.Pago_con
FROM            dbo.ventas 	inner join USUARIO2  on USUARIO2 .idUsuario  =ventas.Id_usuario  					 
WHEre USUARIO2.Nombre_y_Apelllidos =@letra   



GO
/****** Object:  StoredProcedure [dbo].[buscar_ventas_por_usuario_sin_repeticion]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[buscar_ventas_por_usuario_sin_repeticion]

AS
SELECT USUARIO2.idUsuario ,USUARIO2.Nombre_y_Apelllidos,VENTAS.Tipo_de_pago ,ventas.Fecha_de_pago 
FROM            dbo.ventas 	inner join USUARIO2  on USUARIO2 .idUsuario  =ventas.Id_usuario  					 






GO
/****** Object:  StoredProcedure [dbo].[BuscarProducto]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- ALTER date: <ALTER Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[BuscarProducto] 
	-- Add the parameters for the stored procedure here
	@IdProducto int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM Producto
	WHERE IdProducto=@IdProducto
END









GO
/****** Object:  StoredProcedure [dbo].[Cambiar_Password]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Cambiar_Password]
@login varchar(50),
@Password varchar(50),
@NuevoPassword varchar(50)
as
update USUARIO2 set Password = @NuevoPassword
where Login = @login and Password = @Password







GO
/****** Object:  StoredProcedure [dbo].[CERRAR_CAJA]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CERRAR_CAJA]
@idcaja as integer,
@fechafin datetime,
@fechacierre datetime


		
as 
update MOVIMIENTOCAJACIERRE set 
Estado ='CAJA CERRADA'
where Id_caja =@idcaja AND Estado='CAJA APERTURADA'






GO
/****** Object:  StoredProcedure [dbo].[cerrar_caja_diaria]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[cerrar_caja_diaria]

	 @fechafin datetime,
	 @fechacierre datetime, 
	  @ingresos numeric(18,2), 
    @egresos numeric(18,2),
	
	@saldo numeric(18,2),
	 @totalcaluclado numeric(18,2),
	  @totalreal real, 
	 @estado as varchar(50),
	 @diferencia numeric(18,2)
as BEGIN
if EXISTS (SELECT idcierrecaja   FROM MOVIMIENTOCAJACIERRE   where idcierrecaja   = idcierrecaja  and Estado='CAJA CERRADA' )
RAISERROR ('YA SE CERRO CAJA DIARIA; COORDINE CON EL ADMINISTRADOR A CARGO', 16,1)
else
BEGIN 

update MOVIMIENTOCAJACIERRE  set 
fechafin=@fechafin ,
fechacierre=@fechacierre,
ingresos=@ingresos,
egresos=@egresos  ,
Saldo_queda_en_caja =@saldo  ,
Total_calculado =@totalcaluclado  ,
Total_real =@totalreal  ,
Estado=@estado, 
Diferencia=@diferencia 
where idcierrecaja  =idcierrecaja


select*from MOVIMIENTOCAJACIERRE 
END
END





GO
/****** Object:  StoredProcedure [dbo].[cerrar_caja_por_turno]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[cerrar_caja_por_turno]
@idcierrecaja as int,
	 @fechafin datetime,
	 @fechacierre datetime, 
	  @ingresos numeric(18,2), 
    @egresos numeric(18,2),	
	@saldo numeric(18,2),
	 @totalcaluclado numeric,
	  @totalreal real, 
	 @estado as varchar(50),
	 @diferencia numeric(18,2),
	 @idusuario as int
as 
update MOVIMIENTOCAJACIERRE  set 
fechafin=@fechafin ,
fechacierre=@fechacierre,
ingresos=@ingresos,
egresos=@egresos  ,
Saldo_queda_en_caja =@saldo  ,
Total_calculado =@totalcaluclado  ,
Total_real =@totalreal  ,
Estado=@estado, 
Diferencia=@diferencia 
where idcierrecaja  =@idcierrecaja








GO
/****** Object:  StoredProcedure [dbo].[cobrar_CONTROL_DE_COBROS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[cobrar_CONTROL_DE_COBROS]
@Id_venta as int,

@Monto numeric(18,2)

as 
update CONTROL_DE_COBROS  set Monto=Monto - @Monto 
where Id_venta    =@Id_venta  



GO
/****** Object:  StoredProcedure [dbo].[contar_detalles_de_venta_en_espera]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[contar_detalles_de_venta_en_espera]
@id_producto int
as
BEGIN
SET NOCOUNT ON;
SELECT DISTINCT      detalle_venta .Stock 
FROM            dbo.detalle_venta INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa 
where  ventas.Monto_total  =0 and detalle_venta.Id_producto =@id_producto
end


GO
/****** Object:  StoredProcedure [dbo].[contar_productos_en_espera]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[contar_productos_en_espera]
 as
 SELECT      count(detalle_venta.Id_producto  ) as id_producto
FROM            dbo.ventas inner join detalle_venta on detalle_venta.idventa =detalle_venta.idventa  
             
where  
 ventas.Estado='EN ESPERA'or  ventas.Estado='SIN CONFIRMAR'


GO
/****** Object:  StoredProcedure [dbo].[contar_productos_vencidos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[contar_productos_vencidos]

as

Select
 count(Id_Producto1) id
from Producto1 where Fecha_de_vencimiento <>'NO APLICA' AND Fecha_de_vencimiento <= CONVERT(DATE,GETDATE ())


GO
/****** Object:  StoredProcedure [dbo].[contar_ventas_en_espera]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[contar_ventas_en_espera]

AS 

 SELECT      ventas.idventa , count(detalle_venta.Id_producto  ) as id_producto,Comprobante ,ventas.fecha_venta 
FROM            dbo.ventas inner join detalle_venta on detalle_venta.idventa =detalle_venta.idventa  
     
where  
 ventas.Estado='EN ESPERA'or  ventas.Estado='SIN CONFIRMAR'

 group by ventas.idventa,Comprobante ,ventas.fecha_venta



GO
/****** Object:  StoredProcedure [dbo].[CONTARNOTIFICADOR_COBROS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[CONTARNOTIFICADOR_COBROS]

as 
SELECT       count(idclientev )
FROM          
                         dbo.clientes 
						 WHERE Saldo >0 AND Cliente ='SI'


GO
/****** Object:  StoredProcedure [dbo].[CONTARNOTIFICADOR_PAGOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[CONTARNOTIFICADOR_PAGOS]

as 
SELECT       count(idclientev )
FROM          
                         dbo.clientes 
						 WHERE Saldo >0 AND Proveedor  ='SI'


GO
/****** Object:  StoredProcedure [dbo].[disminuir_stock]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[disminuir_stock]
@Id_presentacionfraccionada as varchar(50),
@cantidad as decimal (18,2)

as
update Producto1  set Stock=Stock-@cantidad where Id_Producto1  =@Id_presentacionfraccionada AND Usa_inventarios ='SI'
and Stock >= @cantidad 




GO
/****** Object:  StoredProcedure [dbo].[disminuir_stock_en_detalle_de_venta]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[disminuir_stock_en_detalle_de_venta]
@Id_presentacionfraccionada as varchar(50),
@cantidad as decimal (18,2)

as
update detalle_venta   set Stock=Stock-@cantidad where Id_producto   =@Id_presentacionfraccionada AND Stock  <>'Ilimitado'





GO
/****** Object:  StoredProcedure [dbo].[disminuir_stock_y_editar_precios]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[disminuir_stock_y_editar_precios]
@Id_presentacionfraccionada as varchar(50),
@cantidad as decimal (18,2), 
@Precio_de_compra numeric(18,2),        
@Precio_de_venta numeric(18,2),       
@Precio_mayoreo numeric(18,2)

as
update Producto1  set Stock=Stock-@cantidad,Precio_de_compra =@Precio_de_compra ,
Precio_de_venta=@Precio_de_venta, Precio_mayoreo=@Precio_mayoreo
 where Id_Producto1  =@Id_presentacionfraccionada AND Usa_inventarios ='SI'
and Stock >= @cantidad 




GO
/****** Object:  StoredProcedure [dbo].[disminuirmontocuota]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[disminuirmontocuota]
@Id_control_de_cobros as integer,
@montopagado as decimal(18,2)

as 
update  CONTROL_DE_COBROS   set Monto  =Monto -@montopagado 
where Id_control_de_cobros =@Id_control_de_cobros 



GO
/****** Object:  StoredProcedure [dbo].[disminuirSaldocliente]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[disminuirSaldocliente]
@Id_cliente as integer,
@montopagado as numeric(18,2)

as 
update  clientes    set Saldo   =Saldo  -@montopagado 
where idclientev  =@Id_cliente 



GO
/****** Object:  StoredProcedure [dbo].[editar_ASISTENCIAS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_ASISTENCIAS]
@Id_personal as int,
@Fecha_salida DATETIME,
@Horas NUMERIC(18,2)
as 
update ASISTENCIAS set 
Fecha_salida =@Fecha_salida ,
Horas =@Horas ,
Estado='SALIDA'
where Id_personal   =@Id_personal  AND Estado='ENTRADA' 






GO
/****** Object:  StoredProcedure [dbo].[editar_caja]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_caja]
@idcaja integer,
@descripcion varchar(50)

        
           		
as 
update Caja set 
Descripcion  =@descripcion 

where Id_Caja    =@idcaja    


GO
/****** Object:  StoredProcedure [dbo].[editar_caja_impresoras]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editar_caja_impresoras]
@idcaja integer,


	   @Impresora_Ticket varchar(max),
	   @Impresora_A4 varchar(max)
        
           		
as 
update Caja set 
 Impresora_Ticket=@Impresora_Ticket
 ,Impresora_A4= @Impresora_A4
where Id_Caja    =@idcaja    




GO
/****** Object:  StoredProcedure [dbo].[editar_categoria]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_categoria]
@idcategoria integer,
@nombrecategoria varchar(50)
as 
update categoria set nombrecategoria = @nombrecategoria 
where idcategoria = @idcategoria 








GO
/****** Object:  StoredProcedure [dbo].[editar_cliente]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_cliente]
@idcliente as integer,
@Nombre varchar(MAX),
           @Direccion_para_factura varchar(MAX),
            @Ruc varchar(MAX),                      
            @movil varchar(50)
		
as 
if EXISTS (SELECT Nombre  FROM clientes  where (Nombre  = @Nombre and idclientev  <>@idcliente ) )

RAISERROR ('YA EXISTE UN REGISTRO  CON ESTE NOMBRE, POR FAVOR INGRESE DE NUEVO', 16,1)
update clientes set 
Nombre =@Nombre ,
          Direccion_para_factura = @Direccion_para_factura ,
           Ruc = @Ruc ,
          
          movil  = @movil 
where idclientev =@idcliente 



GO
/****** Object:  StoredProcedure [dbo].[editar_CONCEPTO]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_CONCEPTO]
@Id_concepto as int,
@Descripcion varchar(50)
as 
update CONCEPTOS set 

Descripcion=@Descripcion 

where Id_concepto    =@Id_concepto




GO
/****** Object:  StoredProcedure [dbo].[editar_correo_base]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[editar_correo_base]
 @Correo varchar(max),
@Password varchar(max),
@Estado_De_envio varchar(max)

as

update  Correo_base set Correo =@Correo, Password=@Password,Estado_De_envio=@Estado_De_envio


GO
/****** Object:  StoredProcedure [dbo].[editar_correo_Empresa]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[editar_correo_Empresa]
 @Correo_para_envio_de_reportes varchar(max)

as

update  EMPRESA set Correo_para_envio_de_reportes =@Correo_para_envio_de_reportes 


GO
/****** Object:  StoredProcedure [dbo].[editar_detalle_descuento_por_producto]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_detalle_descuento_por_producto]

  @porcentaje numeric(18,18)
,@Id_detalleventa  as int   	

as 
	update detalle_venta  set 
preciounitario =preciounitario-@porcentaje*preciounitario


where  detalle_venta.iddetalle_venta =@Id_detalleventa  



GO
/****** Object:  StoredProcedure [dbo].[editar_detalle_venta_restar]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_detalle_venta_restar]
@iddetalle_venta  int,
@cantidad as numeric(18, 2),
@Cantidad_mostrada  numeric(18, 2) ,
  @Id_producto varchar(50)    
   ,@Id_venta  as int        		
as 

 DECLARE @APARTIR_DE AS numeric(18,2)
  DECLARE @Precio_normal AS numeric(18,2)
  DECLARE @Precio_pormayor AS numeric(18,2)
SET @APARTIR_DE = (SELECT A_partir_de FROM Producto1 WHERE Producto1.Id_Producto1 =@Id_producto)
SET @Precio_normal = (SELECT Precio_de_venta  FROM Producto1 WHERE Producto1.Id_Producto1 =@Id_producto)
SET @Precio_pormayor = (SELECT Precio_mayoreo  FROM Producto1 WHERE Producto1.Id_Producto1 =@Id_producto)
PRINT @APARTIR_DE
PRINT @Precio_normal
PRINT @Precio_pormayor

begin




 		   BEGIN
if EXISTS (SELECT cantidad ,Id_producto    FROM detalle_venta  where detalle_venta .iddetalle_venta   = @iddetalle_venta  AND cantidad <=0 and detalle_venta .idventa    = @Id_venta )

delete from detalle_venta where detalle_venta .iddetalle_venta  =@iddetalle_venta and detalle_venta .idventa    = @Id_venta
else


update detalle_venta  set 
cantidad    =cantidad -@cantidad ,
Cantidad_mostrada=Cantidad_mostrada-@Cantidad_mostrada
where  detalle_venta .Id_producto    =@Id_producto and detalle_venta.idventa=@Id_venta 
end
end


begin
IF EXISTS (SELECT Descripcion ,cantidad,Id_producto ,idventa FROM detalle_venta  WHERE cantidad>=@APARTIR_DE and detalle_venta.Id_producto =@Id_producto  and detalle_venta.idventa=@Id_venta and detalle_venta .Codigo  <>'0')

	update detalle_venta  set 

preciounitario=@Precio_pormayor

where  detalle_venta .Id_producto    =@Id_producto and detalle_venta.idventa=@Id_venta AND @Precio_pormayor >0 AND @APARTIR_DE >0
	END

	BEGIN
	IF EXISTS (SELECT cantidad  FROM detalle_venta  WHERE cantidad<@APARTIR_DE and Id_producto =@Id_producto and detalle_venta.idventa=@Id_venta and detalle_venta .Codigo  <>'0')

	update detalle_venta  set 

preciounitario=@Precio_normal


where  detalle_venta .Id_producto    =@Id_producto and detalle_venta.idventa=@Id_venta  
	END


	BEGIN
	IF EXISTS (SELECT cantidad  FROM detalle_venta  WHERE  detalle_venta.idventa=@Id_venta and detalle_venta .Codigo  ='0')

	update detalle_venta  set 
codigo=0


where  detalle_venta .codigo    ='0' and detalle_venta.idventa=@Id_venta 
	END



GO
/****** Object:  StoredProcedure [dbo].[editar_detalle_venta_restar_en_Historial]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editar_detalle_venta_restar_en_Historial]
@Descripcion  varchar(50),
@cantidad as numeric(18, 2),
@Cantidad_mostrada  numeric(18, 2) 
      ,  @idventa int
           		
as 


 		   BEGIN
if EXISTS (SELECT cantidad ,Id_producto    FROM detalle_venta  where detalle_venta .Descripcion   = @Descripcion  AND cantidad <=0 )

delete from detalle_venta where detalle_venta .Descripcion  =@Descripcion 
else
BEGIN
update detalle_venta set 
cantidad    =cantidad -@cantidad,   
Cantidad_mostrada=Cantidad_mostrada-@Cantidad_mostrada
where detalle_venta .Descripcion      =@Descripcion and detalle_venta.idventa=@idventa 
end
end  


GO
/****** Object:  StoredProcedure [dbo].[editar_detalle_venta_sumar]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_detalle_venta_sumar]
@Id_producto  int,
@cantidad as numeric(18, 2),
@Cantidad_mostrada  numeric(18, 2)   
,@Id_venta  as int   	

as 

 DECLARE @APARTIR_DE AS numeric(18,2)
  DECLARE @Precio_normal AS numeric(18,2)
  DECLARE @Precio_pormayor AS numeric(18,2)
SET @APARTIR_DE = (SELECT A_partir_de FROM Producto1 WHERE Producto1.Id_Producto1 =@Id_producto)
SET @Precio_normal = (SELECT Precio_de_venta  FROM Producto1 WHERE Producto1.Id_Producto1 =@Id_producto)
SET @Precio_pormayor = (SELECT Precio_mayoreo  FROM Producto1 WHERE Producto1.Id_Producto1 =@Id_producto)
PRINT @APARTIR_DE
PRINT @Precio_normal
PRINT @Precio_pormayor

begin
update detalle_venta  set 
cantidad    =cantidad +@cantidad ,
Cantidad_mostrada=Cantidad_mostrada+@Cantidad_mostrada
where  detalle_venta .Id_producto    =@Id_producto and detalle_venta.idventa=@Id_venta 
end



	BEGIN
	IF EXISTS (SELECT Descripcion ,cantidad,Id_producto ,idventa FROM detalle_venta  WHERE cantidad>=@APARTIR_DE and detalle_venta.Id_producto =@Id_producto  and detalle_venta.idventa=@Id_venta and detalle_venta .Codigo  <>'0')

	update detalle_venta  set 

preciounitario=@Precio_pormayor

where  detalle_venta .Id_producto    =@Id_producto and detalle_venta.idventa=@Id_venta AND @Precio_pormayor >0 AND @APARTIR_DE >0
	END

	BEGIN
	IF EXISTS (SELECT cantidad  FROM detalle_venta  WHERE cantidad<@APARTIR_DE and Id_producto =@Id_producto and detalle_venta.idventa=@Id_venta and detalle_venta .Codigo  <>'0')

	update detalle_venta  set 

preciounitario=@Precio_normal


where  detalle_venta .Id_producto    =@Id_producto and detalle_venta.idventa=@Id_venta  
	END


	BEGIN
	IF EXISTS (SELECT cantidad  FROM detalle_venta  WHERE  detalle_venta.idventa=@Id_venta and detalle_venta .Codigo  ='0')

	update detalle_venta  set 
codigo=0


where  detalle_venta .codigo    ='0' and detalle_venta.idventa=@Id_venta 
	END



GO
/****** Object:  StoredProcedure [dbo].[editar_dinero_caja_inicial]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_dinero_caja_inicial]
@Id_caja as integer,
@saldo numeric(18,2)


as
update MOVIMIENTOCAJACIERRE  set  Saldo_queda_en_caja =@saldo
where Id_caja =@Id_caja AND Estado ='CAJA APERTURADA'






GO
/****** Object:  StoredProcedure [dbo].[editar_Empresa]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[editar_Empresa]
 @Id_empresa int,
@Nombre_Empresa  varchar(50),

@logo as image,
@Impuesto varchar(50),
@Porcentaje_impuesto numeric(18,0),
@Moneda varchar(50),
@Trabajas_con_impuestos VARCHAR(50),
@Modo_de_busqueda VARCHAR(50),

@Carpeta_para_copias_de_seguridad varchar(max),
@Correo_para_envio_de_reportes varchar(50),
@Redondeo varchar(50)
as

update  EMPRESA set Nombre_Empresa=@Nombre_Empresa,Logo=@logo ,Impuesto=@Impuesto ,
Porcentaje_impuesto=@Porcentaje_impuesto,Moneda=@Moneda,Trabajas_con_impuestos=@Trabajas_con_impuestos
,Modo_de_busqueda=@Modo_de_busqueda ,Redondeo_de_total =@Redondeo 
,Carpeta_para_copias_de_seguridad =@Carpeta_para_copias_de_seguridad ,Correo_para_envio_de_reportes =@Correo_para_envio_de_reportes 
where Id_empresa=@Id_empresa 



GO
/****** Object:  StoredProcedure [dbo].[editar_Empresa_copia_de_seguridad]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[editar_Empresa_copia_de_seguridad]
 @Ultima_fecha_de_copia_de_seguridad varchar(50),
 @Carpeta_para_copias_de_seguridad varchar(max),
 @Ultima_fecha_de_copia_date datetime
as

update  EMPRESA set Ultima_fecha_de_copia_de_seguridad =@Ultima_fecha_de_copia_de_seguridad ,
Carpeta_para_copias_de_seguridad =@Carpeta_para_copias_de_seguridad ,Ultima_fecha_de_copia_date=@Ultima_fecha_de_copia_date



GO
/****** Object:  StoredProcedure [dbo].[editar_FORMATO_TICKET]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_FORMATO_TICKET]
    	  @Identificador_fiscal varchar(max),
           @Direccion varchar(max),
         
           @Provincia_Departamento_Pais varchar(max),
           @Nombre_de_Moneda varchar(max),
           @Agradecimiento varchar(max),
           @pagina_Web_Facebook varchar(max),
           @Anuncio varchar(max),
	   @Datos_fiscales_de_autorizacion varchar(max),
	   @Por_defecto  varchar(max),
	   @Nombre_Empresa varchar(max),
	   @Logo image
    as
	begin
    update Ticket set  
	Identificador_fiscal=@Identificador_fiscal ,
          Direccion =@Direccion ,    
           Provincia_Departamento_Pais=@Provincia_Departamento_Pais ,
           Nombre_de_Moneda=@Nombre_de_Moneda ,
          Agradecimiento  =@Agradecimiento ,
          pagina_Web_Facebook = @pagina_Web_Facebook ,
         Anuncio =  @Anuncio,
		   Datos_fiscales_de_autorizacion=@Datos_fiscales_de_autorizacion,
		   Por_defecto=@Por_defecto
		   end 

		   begin
		    update EMPRESA  set  
			Nombre_Empresa=@Nombre_Empresa, 
			Logo=@Logo 
			end 


GO
/****** Object:  StoredProcedure [dbo].[editar_frecuencia_y_carpeta_Empresa]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[editar_frecuencia_y_carpeta_Empresa]

@Carpeta_para_copias_de_seguridad varchar(max),
@Frecuencia_de_copias int
as

update  EMPRESA set Carpeta_para_copias_de_seguridad =@Carpeta_para_copias_de_seguridad  ,
Frecuencia_de_copias =@Frecuencia_de_copias 



GO
/****** Object:  StoredProcedure [dbo].[editar_gasto]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_gasto]
@idgasto int,
@fecha datetime,

@observacion varchar(500),
@Nro_Comprobante varchar(50),

@Tipo_de_Comprobante varchar(50),

@importe decimal(18,2),

@Id_concepto int


as 
update GASTOSVARIOS  set Nro_Comprobante=@Nro_Comprobante,
Tipo_de_Comprobante=@Tipo_de_Comprobante,
Fecha_del_Gasto=@fecha 
 ,Id_concepto =@Id_concepto 
  ,Importe =@importe  ,
  Descripcion =@observacion  

where Idgasto  =@idgasto  


GO
/****** Object:  StoredProcedure [dbo].[editar_Grupo]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[editar_Grupo]
@id int,
@Grupo varchar(50)

as
if EXISTS (SELECT Linea FROM Grupo_de_Productos  where Linea = @Grupo and Idline<>@id  )
RAISERROR ('YA EXISTE UN GRUPO CON ESTE NOMBRE, Ingrese de nuevo', 16,1)
else
update  Grupo_de_Productos set Linea=@grupo
where Idline=@id


GO
/****** Object:  StoredProcedure [dbo].[editar_IGV_Empresa]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE proc [dbo].[editar_IGV_Empresa]

@Impuesto varchar(50),
@Porcentaje_impuesto numeric(18,0),

@Trabajas_con_impuestos VARCHAR(50)
as

update  EMPRESA set Impuesto=@Impuesto ,
Porcentaje_impuesto=@Porcentaje_impuesto,Trabajas_con_impuestos=@Trabajas_con_impuestos





GO
/****** Object:  StoredProcedure [dbo].[editar_ingreso]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_ingreso]
@idgasto as int,
@fecha datetime,

@observacion varchar(500),
@Nro_Comprobante varchar(50),

@Tipo_de_Comprobante varchar(50),
@importe decimal(18,2),
@estado as varchar(50),
@Id_concepto INT
as 
update INGRESOSVARIOS  set Estado=@estado ,Nro_Comprobante=@Nro_Comprobante,Tipo_de_Comprobante=@Tipo_de_Comprobante,Fecha_del_Gasto=@fecha  ,Id_concepto =@Id_concepto  ,Importe =@importe  ,Observacion =@observacion  
where Idgasto  =@idgasto  






GO
/****** Object:  StoredProcedure [dbo].[editar_lineas]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_lineas]
@Idline as integer,
@Linea varchar(50)
        
           		
as 
update linea set 
Linea =@Linea  

where Idline   =@Idline   




GO
/****** Object:  StoredProcedure [dbo].[editar_logo_de_EMPRESA]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_logo_de_EMPRESA]
@logo image
as 

update EMPRESA  set  Logo   =@logo            






GO
/****** Object:  StoredProcedure [dbo].[EDITAR_marcan]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[EDITAR_marcan]

	@e varchar(max)
    as
	
    UPDATE Marcan SET E=@e


GO
/****** Object:  StoredProcedure [dbo].[EDITAR_marcan_a]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[EDITAR_marcan_a]

	@e varchar(50),
	@fa varchar(50),
	@f  varchar(max),
	@s varchar(50)
    as
	
    UPDATE Marcan SET E=@e, FA=@fa, F=@f 
	where S=@s 


GO
/****** Object:  StoredProcedure [dbo].[editar_Modo_de_busqueda]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_Modo_de_busqueda]
@Modo_de_busqueda as VARCHAR(50)

as 
update EMPRESA  set 
Modo_de_busqueda=@Modo_de_busqueda



GO
/****** Object:  StoredProcedure [dbo].[editar_nombre_de_EMPRESA]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_nombre_de_EMPRESA]
@nombre varchar(50),
@moneda varchar(50)
as 

update EMPRESA   set  Nombre_Empresa  =@nombre  ,Moneda=@moneda  


GO
/****** Object:  StoredProcedure [dbo].[editar_nombre_de_EMPRESA_con_imagen]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editar_nombre_de_EMPRESA_con_imagen]
@nombre varchar(50),

@Imagen image
as 

update EMPRESA   set  Nombre_Empresa  =@nombre  ,Logo =@Imagen 


GO
/****** Object:  StoredProcedure [dbo].[editar_permisos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_permisos]
   	@Id_Usuario  int ,
	@ventas int ,
	@aplicar_descuentos int ,
	@Devoluciones int ,
	@Manejar_caja int,
	@Herramientas int,
	@clientes_proveedores int,
	@productos int,
	@invetarios_kardex int,
	@configuraciones int,
	@usuarios int,
	@reportes int
AS
update permisos  set 
ventas=@ventas,
	aplicar_descuentos =@aplicar_descuentos  ,
		Devoluciones =@Devoluciones  ,
Manejar_caja =@Manejar_caja ,
	Herramientas =@Herramientas ,
	clientes_proveedores =@clientes_proveedores ,
	productos =@productos ,
	invetarios_kardex =@invetarios_kardex ,
	configuraciones = @configuraciones ,
	usuarios=@usuarios ,
	reportes=@reportes 


where Id_Usuario   =@Id_Usuario 



GO
/****** Object:  StoredProcedure [dbo].[editar_precio_unitario_en_detalle_De_venta]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editar_precio_unitario_en_detalle_De_venta]
@iddetalle_venta int,
@precio numeric(18,2)
as
update  detalle_venta set  preciounitario=@precio
where iddetalle_venta=@iddetalle_venta




GO
/****** Object:  StoredProcedure [dbo].[editar_Producto1]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_Producto1]
@Id_Producto1 int,
 @Descripcion varchar(50),
		    @Imagen varchar(50),			         
         
          @Id_grupo INT,
		  @Usa_inventarios varchar(50),
	  @Stock varchar(50),
           @Precio_de_compra numeric(18,2),
           @Fecha_de_vencimiento varchar(50),
           @Precio_de_venta numeric(18,2),
           @Codigo varchar(50),
           @Se_vende_a varchar(50),
           @Impuesto varchar(50),
           @Stock_minimo numeric(18,2),
           @Precio_mayoreo numeric(18,2)
		 	,@A_partir_de numeric(18,2)
as 

if EXISTS (SELECT Descripcion FROM Producto1  where (Descripcion = @Descripcion and Id_Producto1 <>@Id_Producto1 ) )

RAISERROR ('YA EXISTE UN PRODUCTO  CON ESTE NOMBRE, POR FAVOR INGRESE DE NUEVO', 16,1)

else if EXISTS (SELECT Codigo  FROM Producto1  where (Codigo  = @Codigo  and Id_Producto1 <>@Id_Producto1 ))

RAISERROR ('YA EXISTE UN PRODUCTO  CON ESTE CODIGO, POR FAVOR INGRESE DE NUEVO/ SE GENERARA CODIGO AUTOMATICO', 16,1)

else if EXISTS (SELECT Descripcion,Codigo  FROM Producto1  where (Id_Producto1 =@Id_Producto1 ))

update Producto1 set  

      Descripcion =@Descripcion ,
		  Imagen =  @Imagen ,			         
         
         Id_grupo = @Id_grupo 	,
		  Usa_inventarios =@Usa_inventarios ,
		  Stock = @Stock ,
           Precio_de_compra =@Precio_de_compra ,
        Fecha_de_vencimiento =   @Fecha_de_vencimiento ,
          Precio_de_venta = @Precio_de_venta ,
         Codigo =  @Codigo ,
         Se_vende_a =  @Se_vende_a ,
           Impuesto =@Impuesto,
           Stock_minimo =@Stock_minimo ,
         Precio_mayoreo =  @Precio_mayoreo 
		 	,A_partir_de=@A_partir_de 
where id_Producto1=@Id_Producto1








GO
/****** Object:  StoredProcedure [dbo].[editar_Producto1_SIN_CONTROL_DE_INVENTARIO]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_Producto1_SIN_CONTROL_DE_INVENTARIO]
@Id_Producto1 int,
	  @Stock varchar(50),
          
           @Stock_minimo numeric(18,2),
		   @Usa_inventarios varchar(50),
          @Fecha_de_vencimiento varchar(50) 
		 
as 
update Producto1 set  

		  Usa_inventarios =@Usa_inventarios ,
		  Stock = @Stock ,
 
           Stock_minimo =@Stock_minimo 
  ,Fecha_de_vencimiento=@Fecha_de_vencimiento
where id_Producto1=@Id_Producto1


GO
/****** Object:  StoredProcedure [dbo].[editar_saldo_total]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editar_saldo_total]
@idcliente as integer,
@saldo as numeric(18,2)


as

update clientes  set  Saldo=@saldo
where idclientev=@idcliente 






GO
/****** Object:  StoredProcedure [dbo].[editar_serializacion]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_serializacion]
@serie VARCHAR(50)  ,
@Cantidad_de_numeros AS VARCHAR(50)    ,
@numerofin as varchar(50) ,
@Tipo as varchar(50), 
   @Id_serie as int
as 
update Serializacion set  Serie =@serie   ,Cantidad_de_numeros=@Cantidad_de_numeros ,numerofin=@numerofin   
         ,Id_tipodoc=@Tipo 
where Id_serializacion=@Id_serie 




GO
/****** Object:  StoredProcedure [dbo].[editar_serializacion_POR_DEFECTO]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_serializacion_POR_DEFECTO]


   @Id_serie as int
as 

BEGIN
update Serializacion set  Por_defecto  ='-' 
     END


	 BEGIN
	 update Serializacion set  Por_defecto  ='SI'
where Id_serializacion=@Id_serie 

END


GO
/****** Object:  StoredProcedure [dbo].[editar_serializacion_TICKET]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_serializacion_TICKET]

@numeroinicio AS VARCHAR(50)    ,
@numerofin as varchar(50) 


as 
update Serializacion set  Cantidad_de_numeros=@numeroinicio ,numerofin=@numerofin   

where Id_tipodoc ='TICKET'



GO
/****** Object:  StoredProcedure [dbo].[editar_usuario]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[editar_usuario]
@idusuario int,
@nombres varchar(50),

@paswor varchar(50)
,@Icono IMAGE
,
@Nombre_de_icono varchar(max)
,@Correo varchar(max),
@rol as varchar(MAX),
@Login as varchar(50)
as
begin
if EXISTS (SELECT Login,idUsuario FROM USUARIO2 where (Login  = @login  AND idUsuario<>@idUsuario and Estado='ACTIVO') or (Nombre_y_Apelllidos   = @nombres  AND idUsuario<>@idUsuario and Estado='ACTIVO'))
RAISERROR ('Usuario en Uso, usa otro nombre de Usuario por favor', 16,1)
else 

update USUARIO2 set Nombre_y_Apelllidos= @nombres,Password =@paswor , Icono=@Icono ,Nombre_de_icono =@Nombre_de_icono
 ,Correo =@Correo , Rol=@rol , Login =@Login 
 where idUsuario = @idusuario 
 end




GO
/****** Object:  StoredProcedure [dbo].[editar_usuario_solo_nombre]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editar_usuario_solo_nombre]
@idusuario int,
@nombres varchar(50)
as
update USUARIO2 set Nombre_y_Apelllidos= @nombres
 where idUsuario = @idusuario



GO
/****** Object:  StoredProcedure [dbo].[editar_venta]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[editar_venta]
@idventa int,
@montototal as numeric(18,1),
@IGV as numeric(18,1)

as
if @montototal <>0
update ventas set Monto_total  =@montototal, IGV=@IGV 

where idventa =@idventa 
else
begin 
delete
from ventas 
where idventa=@idventa 
end






GO
/****** Object:  StoredProcedure [dbo].[eliminar_caja]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_caja]
@id integer
as
delete from Caja   where Id_Caja  =@id 




GO
/****** Object:  StoredProcedure [dbo].[eliminar_categoria]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[eliminar_categoria]
@idcategoria integer
as 
delete from categoria where idcategoria=@idcategoria








GO
/****** Object:  StoredProcedure [dbo].[eliminar_cliente]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_cliente]
@idcliente integer
as
update  clientes set  Estado ='ELIMINADO'
where idclientev=@idcliente AND Estado='ACTIVO'



GO
/****** Object:  StoredProcedure [dbo].[eliminar_concepto]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_concepto]
@idconcepto integer
as
delete from CONCEPTOS  where Id_concepto =@idconcepto 




GO
/****** Object:  StoredProcedure [dbo].[eliminar_DETALLE_CONTROL_DE_COBROS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminar_DETALLE_CONTROL_DE_COBROS]
@id as int
as
delete from DETALLE_CONTROL_DE_COBROS where Id_detalle_de_control_de_cobros =@id 








GO
/****** Object:  StoredProcedure [dbo].[eliminar_detalle_venta]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_detalle_venta]
@iddetalleventa as int
as
delete from detalle_venta where iddetalle_venta=@iddetalleventa 




GO
/****** Object:  StoredProcedure [dbo].[eliminar_Empresa]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_Empresa]
@id_Empresa as int


as

delete from EMPRESA 
where id_Empresa=@id_Empresa







GO
/****** Object:  StoredProcedure [dbo].[eliminar_gasto]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_gasto]
@idgasto integer
as
delete from GASTOSVARIOS  where Idgasto =@idgasto 







GO
/****** Object:  StoredProcedure [dbo].[eliminar_grupos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[eliminar_grupos]
@id int
as


if EXISTS (SELECT Idline FROM Grupo_de_Productos  where Por_defecto = 'SI' AND Idline=@id )
RAISERROR ('Este Grupo no se Permite que sea Eliminado ya que es Eliminarias todos los Productos', 16,1)
else

BEGIN
declare @Id_grupo int 
SET @Id_grupo = (SELECT Idline FROM Grupo_de_Productos  where Por_defecto = 'SI')
  
update Producto1 set Id_grupo=@Id_grupo where Id_grupo=@id
delete from Grupo_de_Productos 
where Idline=@id and Por_defecto <> 'SI'
END


GO
/****** Object:  StoredProcedure [dbo].[eliminar_ingreso]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_ingreso]
@idgasto integer
as
delete from INGRESOSVARIOS  where Idgasto =@idgasto 







GO
/****** Object:  StoredProcedure [dbo].[eliminar_producto]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_producto]
@idproducto  int
as
delete from Producto1  where Id_Producto1 =@idproducto 







GO
/****** Object:  StoredProcedure [dbo].[eliminar_PRODUCTO_DE_KARDEX]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_PRODUCTO_DE_KARDEX]
@id as int
as
delete from KARDEX  where Id_kardex  =@id




GO
/****** Object:  StoredProcedure [dbo].[eliminar_Producto1]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_Producto1]
@id int
as
delete  
from Producto1 

where 
Id_Producto1  =@id



--DELETE TablaConRegistrosAEliminar
       --FROM TablaConRegistrosAEliminar TDel INNER JOIN TablaParaCriterioDeEliminacion TFiltro
       --     ON TDel.idCampo_fk=TFiltro.idCampo_pk
       --WHERE TFiltro.criterio='Valor para filtrar'






GO
/****** Object:  StoredProcedure [dbo].[eliminar_Serializacion]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_Serializacion]
@id integer
as
if EXISTS (SELECT Destino FROM Serializacion  where Destino <>'OTROS' AND ID_SERIALIZACION=@id )
RAISERROR ('Este Comprobante no se Eliminara ya que generaria Error', 16,1)
else
delete from Serializacion   where Id_serializacion   =@id and Destino='OTROS'





GO
/****** Object:  StoredProcedure [dbo].[eliminar_usuario]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_usuario]
@idusuario as int,
@login varchar(50)

as
	   BEGIN
if EXISTS (SELECT Login   FROM USUARIO2  where @login ='admin'  )
RAISERROR ('El Usuario *Admin* es Inborrable, si se borraria Eliminarias el Acceso al Sistema de porvida, Accion Denegada', 16,1)
else
BEGIN
UPDATE USUARIO2  SET Estado ='ELIMINADO'
WHERE idUsuario =@idusuario and Login <>'admin' 
end
end


GO
/****** Object:  StoredProcedure [dbo].[eliminar_venta]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_venta]
@idventa as integer 
as
delete from ventas where idventa=@idventa 




GO
/****** Object:  StoredProcedure [dbo].[eliminar_venta__en_cero]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_venta__en_cero]

as
delete from ventas where Monto_total=0



GO
/****** Object:  StoredProcedure [dbo].[eliminar_venta_en_espera_todas]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_venta_en_espera_todas]
@Id_caja int
as
delete from ventas WHERE Estado= 'EN ESPERA' and Id_caja =@Id_caja 



GO
/****** Object:  StoredProcedure [dbo].[eliminar_venta_en_historial]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_venta_en_historial]
@Id_venta int
as
delete from ventas where  idventa=@Id_venta  AND Monto_total =0




GO
/****** Object:  StoredProcedure [dbo].[eliminar_venta_incompletas]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[eliminar_venta_incompletas]

@idusuario int
as
delete from ventas where  Id_usuario =@idusuario and  Estado ='EN ESPERA'




GO
/****** Object:  StoredProcedure [dbo].[imprimir_inventarios_todos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[imprimir_inventarios_todos]


AS 
SELECT    Codigo ,Descripcion,Precio_de_compra as Costo,Precio_de_venta as [Precio_Venta], Stock, Stock_minimo as [Stock_Minimo]
,Grupo_de_Productos.Linea  AS Categoria ,Precio_de_compra*Stock as Importe,EMPRESA.Nombre_Empresa,EMPRESA.Logo 
FROM         
						 dbo.Producto1 
						  cross join EMPRESA
						  inner join Grupo_de_Productos on Grupo_de_Productos.Idline=Producto1.Id_grupo 
where Producto1.Usa_inventarios ='SI'



GO
/****** Object:  StoredProcedure [dbo].[Insertar_ASISTENCIAS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Insertar_ASISTENCIAS]
   @Id_personal INT,
          @Fecha_entrada DATETIME,
         @Fecha_salida DATETIME,
           @Estado VARCHAR(50),
          
          @Horas VARCHAR(50)

as

insert into ASISTENCIAS values (   @Id_personal ,
          @Fecha_entrada ,
         @Fecha_salida ,
           @Estado ,
          
          @Horas)





GO
/****** Object:  StoredProcedure [dbo].[Insertar_caja]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Insertar_caja]

	
	@descripcion varchar(50),


	 @Tema varchar(50),
	  @Serial_PC varchar(50),
	   @Impresora_Ticket varchar(max),
	   @Impresora_A4 varchar(max)
    as
	BEGIN
if EXISTS (SELECT  Descripcion,Serial_PC      FROM Caja    where  Descripcion=@descripcion and Serial_PC =@Serial_PC   )
RAISERROR ('Ya Existe una Caja con ese Nombre ó puede ser que ya se haya creado una Caja para Esta Pc, Ingrese un nombre diferente e intente de Nuevo', 16,1)
else
BEGIN
    INSERT INTO Caja values 
	(@descripcion,@Tema ,@Serial_PC ,@Impresora_Ticket,@Impresora_A4)

	end
	end


GO
/****** Object:  StoredProcedure [dbo].[insertar_categoria]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_categoria]
@nombrecategoria varchar(50)
as
insert into categoria (nombrecategoria) values (@nombrecategoria)








GO
/****** Object:  StoredProcedure [dbo].[insertar_cliente]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[insertar_cliente]
@Nombre varchar(MAX),
           @Direccion_para_factura varchar(MAX),
            @Ruc varchar(MAX),                      
            @movil varchar(50),               
            @Cliente varchar(50),
            @Proveedor varchar(50),
			@Estado as varchar(50)
		,@Saldo numeric(18,2)
as
		   BEGIN
if EXISTS (SELECT Nombre  FROM clientes  where Nombre  = @Nombre)
RAISERROR ('YA EXISTE UN REGISTRO CON ESE NOMBRE', 16,1)
else
BEGIN
insert into clientes  values 
            (@Nombre
           ,@Direccion_para_factura
           ,@Ruc
           ,@movil     
          
           ,@Cliente
           ,@Proveedor
		   ,@Estado,
		   @Saldo
            )
			end
			end


GO
/****** Object:  StoredProcedure [dbo].[INSERTAR_CLIENTES_FACTURA_PERU]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/**********************************************************************
BASE DE DATOS		:	ERPDHMONT
NOMBRE				:	[Ventas].[USP_MANTENIMIENTO_CLIENTES_BOLETAS]
DESCRIPCION			:   Este procedure de insertar, ACTUALIZAR Y ELIMINAR datos de clientes nuevos que ingresara para
						que pueda imprimir sus boletas						
AUTOR				:	MILTON MORILLO MACHADO
FECHA DE CREACIÓN	:	23.05.2015
FECHA DE MODIFICACION : 
*********************************************************************
*/

CREATE PROCEDURE [dbo].[INSERTAR_CLIENTES_FACTURA_PERU]
@CLIE_CODIGO varchar(8),
@TPDC_CODIGO VARCHAR(1),
@UBDS_CODIGO VARCHAR(6),
@CLIE_NOMBRES VARCHAR(150),
@CLIE_APELLIDOPATERNO VARCHAR(100),
@CLIE_APELLIDOMATERNO VARCHAR(100),
@CLIE_NRODOCUMENTO VARCHAR(18),
@CLIE_SEXO VARCHAR(15),
@CLIE_FECHANACIMIENTO DATETIME,
@CLIE_ESTADOCIVIL VARCHAR(25),
@CLIE_DIRECCION VARCHAR(300),
@CLIE_REFERENCIA VARCHAR(300),
@CLIE_TELEFONO VARCHAR(75),
@CLIE_EMAIL VARCHAR(120),
@CLIE_OCUPACION VARCHAR(150),
@CLIE_EMPRESA VARCHAR(100),
@CLIE_ID_OBRA NUMERIC(18,0),
@TIPO INT

AS 

INSERT INTO CLIENTE_FACTURA_PERU
VALUES (@CLIE_CODIGO,@TPDC_CODIGO,0,@UBDS_CODIGO,@CLIE_NOMBRES,@CLIE_APELLIDOPATERNO,@CLIE_APELLIDOMATERNO,@CLIE_NRODOCUMENTO,@CLIE_SEXO,@CLIE_FECHANACIMIENTO,
		@CLIE_ESTADOCIVIL,@CLIE_DIRECCION,@CLIE_REFERENCIA,@CLIE_TELEFONO,@CLIE_EMAIL,@CLIE_OCUPACION,@CLIE_EMPRESA,0,0,0,@CLIE_ID_OBRA,1)



GO
/****** Object:  StoredProcedure [dbo].[insertar_Conceptos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertar_Conceptos]
@Descripcion varchar(50)
as 


insert into CONCEPTOS 
values ( 

@Descripcion 
)




GO
/****** Object:  StoredProcedure [dbo].[insertar_CONEXION]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_CONEXION]

@Data_source_remoto varchar(max)
as
insert into CONEXION  values (@Data_source_remoto)








GO
/****** Object:  StoredProcedure [dbo].[insertar_control_de_cobros]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[insertar_control_de_cobros]

         
            @monto as numeric(18,2) ,
			@Concepto varchar(MAX) ,
			 @Id_venta int    	
as

insert into CONTROL_DE_COBROS  values 
            (
        
            @monto,
			@Concepto ,
           
		    @Id_venta )



GO
/****** Object:  StoredProcedure [dbo].[insertar_correo_base]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_correo_base]
@Correo varchar(max),
@Password varchar(max),
@Estado_De_envio varchar(max)
as
insert into Correo_base values (@Correo,@Password,@Estado_De_envio)




GO
/****** Object:  StoredProcedure [dbo].[insertar_DETALLE_cierre_de_caja]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertar_DETALLE_cierre_de_caja]	
	@fechaini datetime,
	 @fechafin datetime,
	 @fechacierre datetime, 
	  @ingresos numeric(18,2), 
    @egresos numeric(18,2),
	@saldo numeric(18,2),
	@idusuario int,
	 @totalcaluclado numeric(18,2),
	  @totalreal numeric(18,2), 
	 
	 @estado as varchar(50),
	 @diferencia as numeric(18,2)	,
	 @idcierrepadre as int   
  AS BEGIN

if EXISTS (SELECT Estado FROM MOVIMIENTOCAJACIERRE 
 where  MOVIMIENTOCAJACIERRE.Estado='CAJA APERTURADA')
RAISERROR ('Ya Fue Iniciado el Turno de esta Caja', 16,1)
else
BEGIN
    INSERT INTO MOVIMIENTOCAJACIERRE values 
	(@fechaini ,
	 @fechafin ,
	 @fechacierre , 
	  @ingresos , 
    @egresos ,
	@saldo ,
	@idusuario ,
	 @totalcaluclado ,
	  @totalreal , 
	
	 @estado ,
	 @diferencia ,
	 @idcierrepadre )


	 end
	 end



GO
/****** Object:  StoredProcedure [dbo].[insertar_DETALLE_CONTROL_DE_COBROS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[insertar_DETALLE_CONTROL_DE_COBROS]

@Pago_realizado as numeric(18,2),
@Fecha_que_pago as datetime,
@Tipo_de_cobro    as varchar(50) ,
@Detalle as varchar(max)  ,
@idcliente int   
  ,@Id_usuario int  ,
  @Id_caja int        	
as
update Serializacion set  numerofin=numerofin+1   where Id_tipodoc='INGRESO'
declare @comprobante as varchar(max)
set @comprobante = (select numerofin from Serializacion  where Id_tipodoc='INGRESO') 
insert into DETALLE_CONTROL_DE_COBROS  values 
            (
@Pago_realizado ,
@Fecha_que_pago ,
           @Tipo_de_cobro,
		   @Detalle ,@idcliente,@Id_usuario ,@Id_caja ,@comprobante )




GO
/****** Object:  StoredProcedure [dbo].[insertar_DETALLE_CONTROL_DE_pagos_de_proveedores]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[insertar_DETALLE_CONTROL_DE_pagos_de_proveedores]
@Id_control_de_cobros int,
@Pago_realizado as numeric(18,2),
@Fecha_que_pago as datetime
,
@Tipo_de_cobro    as varchar(50)              
            	
as

insert into DETALLE_DE_PAGO_A_PROVEEDORES  values 
            (@Id_control_de_cobros ,
@Pago_realizado ,
@Fecha_que_pago ,
@Tipo_de_cobro
            )




GO
/****** Object:  StoredProcedure [dbo].[insertar_detalle_venta]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_detalle_venta]
@idventa as integer,
@Id_presentacionfraccionada as int,
@cantidad as numeric(18, 2),
@preciounitario as numeric(18, 2),
@moneda as varchar(50),

@unidades as varchar(50),
@Cantidad_mostrada as numeric(18,2),
@Estado as varchar(50),
@Descripcion varchar(50),
@Codigo varchar(50),
@Stock varchar(50),
@Se_vende_a VARCHAR(50),
@Usa_inventarios VARCHAR(50),
@Costo numeric(18,2)
as

 		   BEGIN
if EXISTS (SELECT Id_producto,idventa   FROM detalle_venta inner join Producto1 on Producto1.Id_Producto1=detalle_venta.Id_producto 
  where Producto1. Id_Producto1  = @Id_presentacionfraccionada AND idventa=@idventa  )

  
update detalle_venta set 
cantidad    =cantidad +@cantidad  , 
Cantidad_mostrada=Cantidad_mostrada+@Cantidad_mostrada
where Id_producto =@Id_presentacionfraccionada 


else
BEGIN

insert into detalle_venta 

 values (@idventa,@Id_presentacionfraccionada ,@cantidad,@preciounitario,@moneda,@unidades,@Cantidad_mostrada
,@Estado,@Descripcion,@Codigo,@Stock ,@Se_vende_a ,@Usa_inventarios,@Costo)


END
END



GO
/****** Object:  StoredProcedure [dbo].[insertar_detalle_venta_SERVICIO_PRODUCTO_RAPIDA]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_detalle_venta_SERVICIO_PRODUCTO_RAPIDA]
@idventa as integer,

@cantidad as numeric(18, 2),
@preciounitario as numeric(18, 2),
@moneda as varchar(50),
@unidades as varchar(50),
@Cantidad_mostrada as numeric(18,2),
@Estado as varchar(50),
@Descripcion varchar(50),
@Codigo varchar(50),
@Stock varchar(50),
@Se_vende_a VARCHAR(50),
@Usa_inventarios VARCHAR(50),
@Costo numeric(18,2)
as
DECLARE @id_producto AS int
SET @id_producto = (SELECT Id_Producto1 FROM Producto1 WHERE Producto1.Descripcion  ='*Generico*')
 		   BEGIN
if EXISTS (SELECT Id_producto,idventa   FROM detalle_venta inner join Producto1 on Producto1.Id_Producto1=detalle_venta.Id_producto 
  where Producto1. Id_Producto1  = @id_producto AND idventa=@idventa  )  
update detalle_venta set 
cantidad    =cantidad +@cantidad  , 
Cantidad_mostrada=Cantidad_mostrada+@Cantidad_mostrada
where Id_producto =@id_producto 
else
BEGIN
insert into detalle_venta 
 values (@idventa,@id_producto ,@cantidad,@preciounitario,@moneda,@unidades,@Cantidad_mostrada
,@Estado,@Descripcion,@Codigo,@Stock ,@Se_vende_a ,@Usa_inventarios,@Costo)
END
END



GO
/****** Object:  StoredProcedure [dbo].[insertar_Empresa]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertar_Empresa]

@Nombre_Empresa  varchar(50),

@logo as image,
@Impuesto varchar(50),
@Porcentaje_impuesto numeric(18,0),
@Moneda varchar(50),

@Trabajas_con_impuestos VARCHAR(50),
@Modo_de_busqueda VARCHAR(50),
@Carpeta_para_copias_de_seguridad varchar(max),
@Correo_para_envio_de_reportes varchar(50),
@Ultima_fecha_de_copia_de_seguridad varchar(50),

@Ultima_fecha_de_copia_date datetime,
@Frecuencia_de_copias int,
@Estado varchar(50),
@Tipo_de_empresa varchar(50),
@Pais varchar(max),
@Redondeo_de_total varchar(50)
as 
 BEGIN
if EXISTS (SELECT Nombre_Empresa   FROM EMPRESA   where Nombre_Empresa  = @Nombre_Empresa   )
RAISERROR ('YA EXISTE UNA EMPRESA CON ESE NOMBRE, Ingrese un nombre diferente', 16,1)
else
BEGIN
insert into EMPRESA  
values (@Nombre_Empresa,@logo,@Impuesto,@Porcentaje_impuesto,@Moneda ,@Trabajas_con_impuestos,@Modo_de_busqueda,
@Carpeta_para_copias_de_seguridad,@Correo_para_envio_de_reportes,@Ultima_fecha_de_copia_de_seguridad,
@Ultima_fecha_de_copia_date ,
@Frecuencia_de_copias ,
@Estado ,@Tipo_de_empresa,@Pais,@Redondeo_de_total)

END
END



GO
/****** Object:  StoredProcedure [dbo].[Insertar_FORMATO_TICKET]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Insertar_FORMATO_TICKET]

  
	  @Identificador_fiscal varchar(max),
           @Direccion varchar(max),
         
           @Provincia_Departamento_Pais varchar(max),
           @Nombre_de_Moneda varchar(max),
           @Agradecimiento varchar(max),
           @pagina_Web_Facebook varchar(max),
           @Anuncio varchar(max),
	   @Datos_fiscales_de_autorizacion varchar(max),
	   @Por_defecto as varchar(max)
	  
    as
	 DECLARE @Id_Empresa int  = (Select Id_empresa from EMPRESA )
    INSERT INTO Ticket values 

	(  
	@Id_Empresa ,
	  @Identificador_fiscal ,
           @Direccion,
         
           @Provincia_Departamento_Pais,
           @Nombre_de_Moneda ,
           @Agradecimiento ,
           @pagina_Web_Facebook ,
           @Anuncio,
	   @Datos_fiscales_de_autorizacion,
	   @Por_defecto )



GO
/****** Object:  StoredProcedure [dbo].[insertar_gasto_sin_comprobante]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertar_gasto_sin_comprobante]

@fecha datetime,
@Nro_Comprobante varchar(50),
@Tipo_de_Comprobante varchar(50),
@importe decimal(18,2),
@Descripcion varchar(500),
@Id_concepto int,
@Id_usuario int,
@TIPO VARCHAR(50),
@Id_caja int
as 

insert into GASTOSVARIOS 
values (@fecha,@Nro_Comprobante,@Tipo_de_Comprobante   , @importe,@Descripcion ,@Id_concepto,@Id_usuario,@TIPO,@Id_caja )







GO
/****** Object:  StoredProcedure [dbo].[insertar_Grupo]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertar_Grupo]
@Grupo varchar(50),
@Por_defecto varchar(50)
as
if EXISTS (SELECT Linea FROM Grupo_de_Productos  where Linea = @Grupo  )
RAISERROR ('YA EXISTE UN GRUPO CON ESTE NOMBRE, Ingrese de nuevo', 16,1)
else
insert into Grupo_de_Productos  values (@Grupo, @Por_defecto)


GO
/****** Object:  StoredProcedure [dbo].[insertar_HORARIOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[insertar_HORARIOS]

           @Cargo varchar(50),
     @Horas_laborales_diarias numeric(18,1)
           ,@Costo_hora_normal numeric(18,2)
           ,@Costo_hora_extra numeric(18,2)
           ,@Horas_libres_diarias numeric(18,1)
           ,@lunes int
           ,@martes int
           ,@miercoles int
           ,@jueves int
           ,@viernes int
           ,@sabado int
           ,@domingo int
		   as
insert into HORARIOS  VALUES(@Cargo ,
           @Horas_laborales_diarias
           , @Costo_hora_normal
           , @Costo_hora_extra
           , @Horas_libres_diarias
           , @lunes
           , @martes
           , @miercoles
           , @jueves
           , @viernes
           , @sabado
           , @domingo)    



GO
/****** Object:  StoredProcedure [dbo].[insertar_ingreso_sin_comprobante]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertar_ingreso_sin_comprobante]

@fecha datetime,

@observacion varchar(500),
@Nro_Comprobante varchar(50),

@Tipo_de_Comprobante varchar(50),

@importe decimal(18,2),
@estado as varchar(50),
@Id_concepto int
as 

insert into INGRESOSVARIOS (Estado,Fecha_del_Gasto ,Id_concepto,Importe, Observacion,Nro_Comprobante,Tipo_de_Comprobante)
values (@estado,@fecha,@Id_concepto   , @importe,@observacion ,@Nro_Comprobante,@Tipo_de_Comprobante)







GO
/****** Object:  StoredProcedure [dbo].[insertar_KARDEX_ENTRADA]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_KARDEX_ENTRADA]                
           @Fecha datetime,
		    @Motivo varchar(200),			         
         
          @Cantidad as numeric(18,0)	,
	
	  @Id_producto int	,
	   @Id_usuario as int,	
	   @Tipo as varchar(50),
	   @Estado varchar(50)	
	   
	    ,
		
	
		@Id_caja int
		  AS 
		  DECLARE @Hay AS numeric(18,2)
		 DECLARE @Habia as numeric(18,2)
		 declare @Costo_unt numeric(18,2)
SET @Hay = (SELECT Stock  FROM Producto1 WHERE Producto1.Id_Producto1   =@Id_producto and Producto1.Usa_inventarios ='SI' )
 SET @Costo_unt = (SELECT Producto1.Precio_de_compra   FROM Producto1 WHERE Producto1.Id_Producto1   =@Id_producto and Producto1.Usa_inventarios ='SI' )
		   
SET @Habia = @Hay-@Cantidad 
		   BEGIN
		   INSERT INTO KARDEX
     VALUES
		    (

        @Fecha ,
		    @Motivo ,			         
         
          @Cantidad 	,

	  @Id_producto 	,
	   @Id_usuario ,	
	   @Tipo,
			
		@Estado ,@Costo_unt, @Habia ,@Hay ,@Id_caja)


	
		END


GO
/****** Object:  StoredProcedure [dbo].[insertar_KARDEX_SALIDA]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_KARDEX_SALIDA]                
           @Fecha datetime,
		    @Motivo varchar(200),			         
         
          @Cantidad as numeric(18,0)	,
	
	  @Id_producto int	,
	   @Id_usuario as int,	
	   @Tipo as varchar(50),
	   @Estado varchar(50)	
	   
	    ,
		
	
		@Id_caja int
		  AS 
		  DECLARE @Hay AS numeric(18,2)
		 DECLARE @Habia as numeric(18,2)
		 declare @Costo_unt numeric(18,2)
SET @Hay = (SELECT Stock  FROM Producto1 WHERE Producto1.Id_Producto1   =@Id_producto and Producto1.Usa_inventarios ='SI' )
 SET @Costo_unt = (SELECT Producto1.Precio_de_compra   FROM Producto1 WHERE Producto1.Id_Producto1   =@Id_producto and Producto1.Usa_inventarios ='SI' )
		   
SET @Habia = @Hay+@Cantidad 
		   BEGIN
		   INSERT INTO KARDEX
     VALUES
		    (

        @Fecha ,
		    @Motivo ,			         
         
          @Cantidad 	,

	  @Id_producto 	,
	   @Id_usuario ,	
	   @Tipo,
			
		@Estado ,@Costo_unt, @Habia ,@Hay ,@Id_caja)


	
		END


GO
/****** Object:  StoredProcedure [dbo].[Insertar_lic]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Insertar_lic]

	
	@S varchar(50),
	@F varchar(max),

	 @E varchar(50)
	,@FA DATE
    as
	
    INSERT INTO Marcan values 
	(@S ,
	@F,

	 @E,
	 @FA)


GO
/****** Object:  StoredProcedure [dbo].[insertar_linea]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertar_linea]
@Linea varchar(50)

as

insert into linea  values (@Linea)





GO
/****** Object:  StoredProcedure [dbo].[Insertar_marcan]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Insertar_marcan]

	
	@s varchar(MAX),
	@f varchar(MAX),
	@e varchar(MAX),
	@fa varchar(MAX)
    as
	
    INSERT INTO Marcan values 
	(@s,@f,@e ,@fa)


GO
/****** Object:  StoredProcedure [dbo].[insertar_permisos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  procedure [dbo].[insertar_permisos]
	@Id_Usuario  int ,
	@ventas int ,
	@aplicar_descuentos int ,
	@Devoluciones int ,
	
	@clientes_proveedores int,
	@productos int,
	@invetarios_kardex int,
	@configuraciones int,
	@usuarios int,
	@reportes int,
	@Manejar_caja int,
	@Herramientas int
as
insert into permisos 
 values (	@Id_Usuario  ,
	@ventas,
	@aplicar_descuentos ,
	@Devoluciones  ,

	@clientes_proveedores ,
	@productos,
	@invetarios_kardex ,
	@configuraciones ,
	@usuarios ,
	@reportes ,
	@Manejar_caja,
	@Herramientas 

)




GO
/****** Object:  StoredProcedure [dbo].[insertar_Producto]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_Producto]   
           --Empezamos a declara primero los parametros para Productos
           @Descripcion varchar(50),
		    @Imagen varchar(50),			         
         
          @Id_grupo as int	,
		  @Usa_inventarios varchar(50),
		   @Stock varchar(50),
           @Precio_de_compra numeric(18,2),
           @Fecha_de_vencimiento varchar(50),
           @Precio_de_venta numeric(18,2),
           @Codigo varchar(50),
           @Se_vende_a varchar(50),
           @Impuesto varchar(50),
           @Stock_minimo numeric(18,2),
           @Precio_mayoreo numeric(18,2)
	,@A_partir_de numeric(18,2),
	--Ahora declaramos los parametros para el Ingreso a Kardex que es donde se controla el Inventario
	@Fecha datetime,
		    @Motivo varchar(200),			               
          @Cantidad as numeric(18,0)	,
	 
	   @Id_usuario as int,	
	   @Tipo as varchar(50),
	   @Estado varchar(50)	,   	   		
		@Id_caja int
		   AS 
		   --Ahora VALIDAMOS para que no se agregen productos con el mismo nombre y codigo de barras
		   BEGIN
if EXISTS (SELECT Descripcion,Codigo  FROM Producto1  where Descripcion = @Descripcion OR Codigo=@Codigo  )
RAISERROR ('YA EXISTE UN PRODUCTO  CON ESTE NOMBRE/CODIGO, POR FAVOR INGRESE DE NUEVO/ SE GENERARA CODIGO AUTOMATICO', 16,1)
else
BEGIN
DECLARE  @Id_producto  INT
		   INSERT INTO Producto1
     VALUES
		    (
           @Descripcion        
           ,@Imagen         
		    ,@Id_grupo 
		,@Usa_inventarios	,
		@Stock ,
           @Precio_de_compra ,
           @Fecha_de_vencimiento ,
           @Precio_de_venta ,
           @Codigo ,
           @Se_vende_a ,
           @Impuesto ,
           @Stock_minimo ,
           @Precio_mayoreo,
		   @A_partir_de
		 )
		 --Ahora Obtenemos el Id del producto que se acaba de ingresar
		    SELECT  @id_producto = scope_identity()
			 --Ahora Obtenemos los datos del producto ingresado para que sean insertados en la Tabla KARDEX
			  DECLARE @Hay AS numeric(18,2)
		 DECLARE @Habia as numeric(18,2)
		 declare @Costo_unt numeric(18,2)
		
       SET @Hay = (SELECT Stock  FROM Producto1 WHERE Producto1.Id_Producto1   =@Id_producto and Producto1.Usa_inventarios ='SI' )
       SET @Costo_unt = (SELECT Producto1.Precio_de_compra   FROM Producto1 WHERE Producto1.Id_Producto1   =@Id_producto and Producto1.Usa_inventarios ='SI' )		   
       SET @Habia = 0
	   --Ahora vamos a saber si el Producto usa Inventarios o no
		  set @Usa_inventarios = (SELECT Usa_inventarios   FROM Producto1 WHERE Producto1.Id_Producto1   =@Id_producto and Producto1.Usa_inventarios ='SI' )
		 --Ahora en caso si Use inventarios Entonces Pasamos a Insertar datos en la Tabla Kardex
		   if @Usa_inventarios ='SI'
		   BEGIN	 
		   INSERT INTO KARDEX
        VALUES
		    (
        @Fecha ,
		    @Motivo ,			                  
          @Cantidad 	,

	  @Id_producto 	,
	   @Id_usuario ,	
	   @Tipo,		
		@Estado ,@Costo_unt, @Habia ,@Hay ,@Id_caja)
		END
		
END
END



GO
/****** Object:  StoredProcedure [dbo].[insertar_Serializacion]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[insertar_Serializacion]

@Serie varchar (50),
@numeroinicio as varchar (50),
@numerofin as varchar (50),
@Destino as varchar(50),
@Id_tipodoc varchar(50)
,@Por_defecto varchar(50)
as BEGIN
if EXISTS (SELECT Id_tipodoc  FROM Serializacion  where  Id_tipodoc= @Id_tipodoc )
RAISERROR ('YA EXISTE ESTE COMPROBANTE INGRESE UNO NUEVO', 16,1)
else
BEGIN
insert into Serializacion  values (@Serie ,
@numeroinicio ,
@numerofin,@Destino ,@Id_tipodoc ,@Por_defecto)

END
END


GO
/****** Object:  StoredProcedure [dbo].[insertar_tipo_de_producto]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_tipo_de_producto]


@descripcion varchar(50),
@Ventas varchar(50),
@Compras varchar(50),
@Almacen varchar(50),
@Puede_tener_formulaciones varchar(50)  


as

insert into Tipos_De_productos

values (
@descripcion ,
@Ventas,
@Compras ,
@Almacen ,
@Puede_tener_formulaciones     )





GO
/****** Object:  StoredProcedure [dbo].[insertar_usuario]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[insertar_usuario]
@nombres varchar(50),


@Login varchar(50),
@Password varchar(50)
,@Icono image,
@Nombre_de_icono varchar(max)
,@Correo varchar(max),
@Rol varchar(MAX),
@Estado varchar(50)
as 
if EXISTS (SELECT Login FROM USUARIO2 where Login  = @login and Estado='ACTIVO'  )
RAISERROR ('YA EXISTE UN REGISTRO CON ESE USUARIO, POR FAVOR INGRESE DE NUEVO', 16,1)
else
insert into USUARIO2 
values (@nombres, @Login, @Password ,@Icono,@Nombre_de_icono ,@Correo, @Rol ,@Estado)



GO
/****** Object:  StoredProcedure [dbo].[insertar_venta]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_venta]
@idcliente as integer,
@fecha_venta as datetime,

@nume_documento as varchar(50),
@montototal  as numeric(18,2),
@Tipo_de_pago as varchar(50),
@estado as varchar(50),
@IGV as numeric(18, 1),

@Comprobante as VARCHAR(50),
@id_usuario as int,
@Fecha_de_pago as varchar(50),
@ACCION VARCHAR(50),
@Saldo numeric(18,2),
@Pago_con numeric(18,2),
@Porcentaje_IGV numeric(18,2),
@Id_caja int,
@Referencia_tarjeta varchar(50)

as 
declare @vuelto numeric(18,2)
declare @Efectivo numeric(18,2)
declare @id_numero varchar(50)
SET @vuelto =0
SET @Efectivo =0
SET @id_numero= (select max(idventa)+1 from ventas )
insert into ventas 
values (@idcliente,@fecha_venta,@nume_documento ,@montototal ,@Tipo_de_pago,@estado ,@IGV 
,@Comprobante +' '+ @id_numero ,@id_usuario,@Fecha_de_pago,@ACCION ,@Saldo,@Pago_con,@Porcentaje_IGV,@Id_caja,@Referencia_tarjeta,
@vuelto ,@Efectivo)


GO
/****** Object:  StoredProcedure [dbo].[insertar_venta_BASE]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[insertar_venta_BASE]
@idcliente as integer,
@fecha_venta as datetime,

@nume_documento as varchar(50),
@montototal  as numeric(18,2),
@Tipo_de_pago as varchar(50),
@estado as varchar(50),
@IGV as numeric(18, 1),

@Comprobante as VARCHAR(50),

@Fecha_de_pago as varchar(50),
@ACCION VARCHAR(50),
@Saldo numeric(18,2),
@Pago_con numeric(18,2),
@Porcentaje_IGV numeric(18,2),
@Id_caja int,
@Referencia_tarjeta varchar(50)

as
declare @id_usuario as int
declare @vuelto numeric(18,2)
declare @Efectivo numeric(18,2)
SET @vuelto =0
SET @Efectivo =0
SET @id_usuario= (SELECT max (idUsuario)  FROM USUARIO2 )
insert into ventas 
values (@idcliente,@fecha_venta,@nume_documento ,@montototal ,@Tipo_de_pago,@estado ,@IGV 
,@Comprobante,@id_usuario,@Fecha_de_pago,@ACCION ,@Saldo,@Pago_con,@Porcentaje_IGV,@Id_caja,@Referencia_tarjeta,
@vuelto ,@Efectivo)


GO
/****** Object:  StoredProcedure [dbo].[Limpiar_base_De_datos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Limpiar_base_De_datos]
@ventas int,
@productos int,
@clientes int,
@gastos int,
@movimientos_de_caja int
as
delete from ventas   where @ventas = 1
delete from Producto1   where @productos  = 1
delete from clientes where @clientes  = 1
delete from MOVIMIENTOCAJACIERRE where @movimientos_de_caja = 1
delete from MOVIMIENTOCAJA where @movimientos_de_caja = 1
delete from GASTOSVARIOS where @gastos  = 1



GO
/****** Object:  StoredProcedure [dbo].[ListarCategorias]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListarCategorias]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT *
	FROM Categoria
	ORDER BY nombrecategoria
END







GO
/****** Object:  StoredProcedure [dbo].[mostrar_5_productos_mas_rentables]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_5_productos_mas_rentables]
as
SELECT      TOP 5 convert(varchar(50),convert(numeric(18,0),sum(detalle_venta.Ganancia)) ),Producto1.Descripcion 
FROM            dbo.ventas inner join detalle_venta  ON detalle_venta .idventa =ventas.idventa INNER JOIN
Producto1 ON Producto1.Id_Producto1=detalle_venta.Id_producto 

                       
Group by Producto1.Descripcion  
order by convert(numeric(18,0),sum(detalle_venta.Ganancia))  desc


GO
/****** Object:  StoredProcedure [dbo].[mostrar_5_productos_mas_vendidos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_5_productos_mas_vendidos]
as
SELECT      TOP 5 COUNT(detalle_venta.Id_producto) ,Producto1.Descripcion 
FROM            dbo.ventas inner join detalle_venta  ON detalle_venta .idventa =ventas.idventa INNER JOIN
Producto1 ON Producto1.Id_Producto1=detalle_venta.Id_producto 

                       
Group by detalle_venta.Id_producto  ,Producto1.Descripcion  



GO
/****** Object:  StoredProcedure [dbo].[mostrar_cajas]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_cajas]
as
select * from Caja order by Id_Caja desc



GO
/****** Object:  StoredProcedure [dbo].[mostrar_cajas_por_empresa]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_cajas_por_empresa]
@empresa varchar(50),
@ip varchar(50)
as
select Caja.Id_Caja ,Caja.Descripcion
from Caja 


GO
/****** Object:  StoredProcedure [dbo].[mostrar_cajas_por_empresa_por_serial]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_cajas_por_empresa_por_serial]



@serial varchar(50)

AS
SELECT Caja.Id_Caja ,Caja.Descripcion ,
Serial_PC from Caja
 where Caja.Serial_PC = @serial 



GO
/****** Object:  StoredProcedure [dbo].[mostrar_cajas_por_empresa_sin_ip]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_cajas_por_empresa_sin_ip]

as
select Caja.Id_Caja ,Caja.Descripcion from Caja 


GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_cajas_por_serial]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_cajas_por_serial]

@serial varchar(50)

AS
SELECT Descripcion,Tema, Id_Caja,Serial_PC,Impresora_A4,Impresora_Ticket    from Caja
 where Caja.Serial_PC = @serial 


GO
/****** Object:  StoredProcedure [dbo].[mostrar_cajas_por_Serial_de_DiscoDuro]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_cajas_por_Serial_de_DiscoDuro]
@Serial as varchar(50)
as
select Caja.Id_Caja  ,Descripcion 
from Caja 
where caja.Serial_PC =@Serial


GO
/****** Object:  StoredProcedure [dbo].[mostrar_cargos_sin_repetir]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_cargos_sin_repetir]

AS BEGIN
SET NOCOUNT ON;
SELECT DISTINCT  
      Cargo,Id_horarios
FROM           HORARIOS 
                       
end




GO
/****** Object:  StoredProcedure [dbo].[mostrar_categoria]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_categoria]
as
select * from categoria order by idcategoria desc








GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_CIERRE_DE_CAJA_PENDIENTE]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_CIERRE_DE_CAJA_PENDIENTE]

@serial varchar(50)

AS
SELECT MOVIMIENTOCAJACIERRE.fechainicio,MOVIMIENTOCAJACIERRE.fechafin,caja.Id_Caja  FROM MOVIMIENTOCAJACIERRE inner join USUARIO2 on USUARIO2.idUsuario=MOVIMIENTOCAJACIERRE.Id_usuario
 inner join Caja on Caja.Id_Caja =MOVIMIENTOCAJACIERRE.Id_caja 
 where Caja.Serial_PC = @serial    AND MOVIMIENTOCAJACIERRE.Estado='CAJA APERTURADA' 


GO
/****** Object:  StoredProcedure [dbo].[mostrar_cliente]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_cliente]
as
SELECT        idclientev, Nombre, Direccion_para_factura as Direccion, Ruc,  movil as Celular, Cliente, Proveedor, 
                    clientes.Saldo ,     Estado as Activo
FROM            dbo.clientes 
WHERE clientes.Cliente='SI' order by Nombre  asc 




GO
/****** Object:  StoredProcedure [dbo].[mostrar_COBROS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_COBROS]

as 
SELECT       * from ventas 
WHERE Estado ='DEUDA'



GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_CONCEPTOS_EN_GASTOS_VARIOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_CONCEPTOS_EN_GASTOS_VARIOS]
AS
SELECT        dbo.CONCEPTOS.Id_concepto, dbo.CONCEPTOS.Descripcion AS Concepto 
                      
FROM            dbo.CONCEPTOS 
						
						


GO
/****** Object:  StoredProcedure [dbo].[mostrar_descripcion_produco_sin_repetir]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_descripcion_produco_sin_repetir]

@buscar varchar(50)
as 
select TOP 10 Descripcion  from Producto1  Where Descripcion  LIKE  '%' + @buscar +'%'




GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_DESPACHOS_DE_MERCADERIAS_PENDIENTES]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_DESPACHOS_DE_MERCADERIAS_PENDIENTES]
AS
select * from detalle_venta where Estado='DESPACHO PENDIENTE'



GO
/****** Object:  StoredProcedure [dbo].[mostrar_DETALLE_CONTROL_DE_COBROS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_DETALLE_CONTROL_DE_COBROS]
@id int
as
SELECT  Id_detalle_de_control_de_cobros ,Pago_realizado as [Importe],Tipo_de_cobro as [Tipo], Fecha_que_pago as Fecha  from DETALLE_CONTROL_DE_COBROS 

where Id_cliente=@id


GO
/****** Object:  StoredProcedure [dbo].[mostrar_DETALLE_CONTROL_DE_PAGOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_DETALLE_CONTROL_DE_PAGOS]
@id int
as
SELECT  Id_detalle_de_control_de_cobros ,Pago_realizado as [Importe],Tipo_de_cobro as [Tipo], Fecha_que_pago as Fecha  from DETALLE_CONTROL_DE_COBROS 

where Id_cliente=@id and DETALLE_CONTROL_DE_COBROS.Detalle ='PAGO'


GO
/****** Object:  StoredProcedure [dbo].[mostrar_detalle_de_cobro_para_Imprimir]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_detalle_de_cobro_para_Imprimir]
@Id_detalle_de_control_de_cobros int,
@pagado_en_letras  varchar(max)
as 
SELECT       (EMPRESA.Moneda + convert(varchar(50),Pago_realizado)) as Pago_realizado ,Fecha_que_pago,Detalle
,clientes.Nombre as Cliente, clientes.movil ,(EMPRESA.Moneda + convert(varchar(50),clientes.Saldo)) as Saldo ,
USUARIO2.Nombre_y_Apelllidos  as Usuario, (EMPRESA.Moneda + convert(varchar(50), (Pago_realizado+Saldo ))) as total
 ,@pagado_en_letras as Pagado_letras,clientes.Direccion_para_factura ,
 EMPRESA.Nombre_Empresa ,EMPRESA.Logo ,DETALLE_CONTROL_DE_COBROS.Comprobante
 from DETALLE_CONTROL_DE_COBROS  
inner join clientes on clientes.idclientev=DETALLE_CONTROL_DE_COBROS.Id_cliente 
inner join USUARIO2 on USUARIO2.idUsuario=DETALLE_CONTROL_DE_COBROS.Id_usuario 
cross join EMPRESA 

where DETALLE_CONTROL_DE_COBROS.Id_detalle_de_control_de_cobros =@Id_detalle_de_control_de_cobros 




GO
/****** Object:  StoredProcedure [dbo].[mostrar_Empresa]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_Empresa]
as
select LOGO, Nombre_Empresa as Empresa ,(Impuesto + ' ('+  CONVERT(VARCHAR(50),Porcentaje_impuesto) + ')') Impuesto ,Moneda  ,Id_empresa  
,Porcentaje_impuesto  ,Impuesto ,Modo_de_busqueda ,Trabajas_con_impuestos ,Trabajas_con_impuestos,Correo_para_envio_de_reportes,
Carpeta_para_copias_de_seguridad, Redondeo_de_total  ,Moneda
from Empresa


GO
/****** Object:  StoredProcedure [dbo].[mostrar_Empresa_igv]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_Empresa_igv]
@empresa as varchar(50)
as
select Porcentaje_impuesto , 'IGV'+' ('+CONVERT(VARCHAR(50),Porcentaje_impuesto)+'%)' as IGV FROM EMPRESA

WHERE Nombre_Empresa=@empresa 






GO
/****** Object:  StoredProcedure [dbo].[mostrar_estado_de_cuenta_de_cliente]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_estado_de_cuenta_de_cliente]
@Id_cliente as int
as 
SELECT      ( detalle_venta .Descripcion ) as Descripcion, dbo.detalle_venta.Cantidad_mostrada as Cant, 
                         dbo.detalle_venta.preciounitario as [Precio Unit] ,dbo.detalle_venta.Total_a_pagar as Total
FROM            dbo.detalle_venta INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa 
                       INNER JOIN
                         dbo.clientes ON dbo.ventas.idclientev = dbo.clientes.idclientev 
                       
						 where dbo.clientes.idclientev=@Id_cliente and dbo.ventas.Tipo_de_pago ='CREDITO' AND ((ventas.ACCION='VENTA') or (ventas.ACCION='POR COBRAR OTROS'))



GO
/****** Object:  StoredProcedure [dbo].[mostrar_estado_de_cuenta_de_proveedores]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_estado_de_cuenta_de_proveedores]
@Id_proveedor as int
as 
SELECT      ( detalle_venta .Descripcion ) as Descripcion, dbo.detalle_venta.Cantidad_mostrada as Cant, 
                         dbo.detalle_venta.preciounitario as [Precio Unit] ,dbo.detalle_venta.Total_a_pagar as Total
FROM            dbo.detalle_venta INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa 
                       INNER JOIN
                         dbo.clientes ON dbo.ventas.idclientev = dbo.clientes.idclientev 
                       
						 where dbo.clientes.idclientev=@Id_proveedor and dbo.ventas.Tipo_de_pago ='CREDITO' AND ventas.ACCION='POR PAGAR OTROS'



GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_FONDO_DE_CAJA_INICIAL]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_FONDO_DE_CAJA_INICIAL]
@id_caja int,
@fi as DATEtime,
@ff as DATEtime
AS
SELECT MOVIMIENTOCAJACIERRE.Saldo_queda_en_caja  FROM MOVIMIENTOCAJACIERRE inner join USUARIO2 on USUARIO2.idUsuario=MOVIMIENTOCAJACIERRE.Id_usuario
  inner join Caja on Caja.Id_Caja =MOVIMIENTOCAJACIERRE.Id_caja 
 where Caja.Id_Caja  = @id_caja    AND MOVIMIENTOCAJACIERRE.Estado='CAJA APERTURADA'  



GO
/****** Object:  StoredProcedure [dbo].[Mostrar_formato_ticket]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Mostrar_formato_ticket]
as
select EMPRESA.Logo,Empresa.Nombre_Empresa ,Ticket.*  from Ticket 
INNER JOIN EMPRESA ON EMPRESA.Id_empresa=Ticket.Id_Empresa 


GO
/****** Object:  StoredProcedure [dbo].[mostrar_Formato_ticket_con_datos_de_detalleventa]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE proc [dbo].[mostrar_Formato_ticket_con_datos_de_detalleventa]
@Subtotal as varchar(50),
@Total varchar (50),
@Descuento varchar(50),
@Son varchar(50),
@Impuesto varchar(50),
@Monto_impuesto varchar(50),
@Numero_comprobante as varchar(50),
@Cliente varchar(50),
@Cajero varchar(50)
as
Select *,@Subtotal as Subtotal,@Total as total,@Descuento as descuento,@Son as son , @Impuesto as impuesto
,@Monto_impuesto as monto_impuesto,@Numero_comprobante as numero_comprobante,@Cliente as cliente,@Cajero as cajero  from Ticket 



GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_GANANCIAS_DE_VENTAS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[MOSTRAR_GANANCIAS_DE_VENTAS]
as
select CONVERT(NUMERIC(18,1),SUM(Ganancia ) ) from detalle_venta  INNER JOIN VENTAS ON detalle_venta.idventa =ventas.idventa 




GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_Ganancias_por_fecha]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_Ganancias_por_fecha]
@FI AS DATE,
@FF AS DATE
as
select CONVERT(NUMERIC(18,1),sum( Ganancia )) 
FROM            dbo.detalle_venta  inner join ventas on ventas.idventa=detalle_venta.idventa 
WHERE convert(date,ventas.fecha_venta)>= @FI    AND   convert(date,ventas.fecha_venta)<= @FF 
                       


GO
/****** Object:  StoredProcedure [dbo].[mostrar_gastos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_gastos]
as
SELECT        dbo.CONCEPTOS.Descripcion AS Concepto, dbo.GASTOSVARIOS.Idgasto, dbo.GASTOSVARIOS.Fecha_del_Gasto, 
                         dbo.GASTOSVARIOS.Tipo_de_Comprobante + ' '+dbo.GASTOSVARIOS.Nro_Comprobante AS Comprobante, dbo.GASTOSVARIOS.Importe, 
						 dbo.GASTOSVARIOS.Descripcion  as Detalle, 
                         dbo.GASTOSVARIOS.Id_concepto,USUARIO2.Nombre_y_Apelllidos as Usuario
,GASTOSVARIOS.Nro_Comprobante ,GASTOSVARIOS.Tipo_de_Comprobante 
FROM            dbo.CONCEPTOS INNER JOIN
                         dbo.GASTOSVARIOS ON dbo.CONCEPTOS.Id_concepto = dbo.GASTOSVARIOS.Id_concepto inner join USUARIO2 
						 on USUARIO2.idUsuario=GASTOSVARIOS.Id_usuario 
 where GASTOSVARIOS.TIPO='SALIDA'
 order by Fecha_del_Gasto   desc


GO
/****** Object:  StoredProcedure [dbo].[mostrar_gastos_por_anio_en_comboboxAnio]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_gastos_por_anio_en_comboboxAnio]

AS BEGIN
SET NOCOUNT ON;
SELECT DISTINCT  
      DATEPART (year,Fecha_del_Gasto) as anio
FROM           GASTOSVARIOS 
WHERE GASTOSVARIOS.TIPO ='SALIDA' 
end



GO
/****** Object:  StoredProcedure [dbo].[mostrar_gastos_por_MES_en_comboboxMES]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[mostrar_gastos_por_MES_en_comboboxMES]
@anio int
AS BEGIN
SET NOCOUNT ON;
SELECT DISTINCT  
      datename(month,Fecha_del_Gasto) as mes
FROM           GASTOSVARIOS 
WHERE GASTOSVARIOS.TIPO ='SALIDA'  and DATEPART (year,Fecha_del_Gasto) =@anio
end



GO
/****** Object:  StoredProcedure [dbo].[mostrar_gastos_por_usuario]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_gastos_por_usuario]
@idusuario int,
@fecha date
as
select*from GASTOSVARIOS 
where Id_usuario=@idusuario and convert(date,Fecha_del_Gasto) =@fecha 



GO
/****** Object:  StoredProcedure [dbo].[mostrar_grupos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_grupos]

@buscar varchar(50)
as begin
select Idline,Linea  as Grupo from Grupo_de_Productos  Where Linea  LIKE  '%' + @buscar +'%'
end


GO
/****** Object:  StoredProcedure [dbo].[mostrar_HORARIOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_HORARIOS]
as
SELECT        *FROM HORARIOS


GO
/****** Object:  StoredProcedure [dbo].[mostrar_horas_dia]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[mostrar_horas_dia]
@idpersonal int,
@fecha_sistema date
AS 

SELECT       sum(Horas ) as  Horas
FROM            dbo.ASISTENCIAS 						 
WHEre Id_personal=@idpersonal and (convert(date,Fecha_salida )=@fecha_sistema or convert(date,Fecha_entrada  )=@fecha_sistema)




GO
/****** Object:  StoredProcedure [dbo].[mostrar_ingresos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_ingresos]
as
SELECT       dbo.GASTOSVARIOS.Descripcion  as Detalle, dbo.GASTOSVARIOS.Idgasto, dbo.GASTOSVARIOS.Fecha_del_Gasto, 
                         dbo.GASTOSVARIOS.Tipo_de_Comprobante + ' '+dbo.GASTOSVARIOS.Nro_Comprobante AS Comprobante, dbo.GASTOSVARIOS.Importe, 
						  
                         dbo.GASTOSVARIOS.Id_concepto,USUARIO2.Nombre_y_Apelllidos as Usuario
,GASTOSVARIOS.Nro_Comprobante ,GASTOSVARIOS.Tipo_de_Comprobante,GASTOSVARIOS.Tipo_de_Comprobante
FROM           
                         dbo.GASTOSVARIOS  inner join USUARIO2 
						 on USUARIO2.idUsuario=GASTOSVARIOS.Id_usuario 
 where GASTOSVARIOS.TIPO='INGRESO'
 order by Fecha_del_Gasto   desc


GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_Inventarios_bajo_minimo_COUNT]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_Inventarios_bajo_minimo_COUNT]
AS
select  count(Id_Producto1 ) from Producto1 
				where Stock <= Stock_minimo 	and Usa_inventarios ='SI'


GO
/****** Object:  StoredProcedure [dbo].[mostrar_inventarios_todos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_inventarios_todos]

@letra varchar(50)
AS 
SELECT    Codigo ,Descripcion,Precio_de_compra as Costo,Precio_de_venta as [Precio_Venta], Stock, Stock_minimo as [Stock_Minimo]
,Grupo_de_Productos.Linea  AS Categoria ,Precio_de_compra*Stock as Importe,EMPRESA.Nombre_Empresa,EMPRESA.Logo 
FROM         
						 dbo.Producto1 
						  cross join EMPRESA
						   inner join Grupo_de_Productos on Grupo_de_Productos.Idline=Producto1.Id_grupo 
where Descripcion+Codigo   LIKE  '%' + @letra+'%' AND Producto1.Usa_inventarios ='SI'



GO
/****** Object:  StoredProcedure [dbo].[mostrar_lineas]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_lineas]
as
select * from linea order by Idline desc 




GO
/****** Object:  StoredProcedure [dbo].[mostrar_mayores_GASTOS_POR_CONCEPTO_por_anio]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_mayores_GASTOS_POR_CONCEPTO_por_anio]
@anio as integer
as

SELECT    top 5 CONCEPTOS.Descripcion  , convert(varchar(50),SUM(Importe))    FROM GASTOSVARIOS INNER JOIN CONCEPTOS ON CONCEPTOS.Id_concepto =GASTOSVARIOS.Id_concepto 
WHERE GASTOSVARIOS.TIPO ='SALIDA' and DATEPART (year,Fecha_del_Gasto) =@anio
GROUP BY CONCEPTOS.Descripcion 
Order by SUM(Importe) desc


GO
/****** Object:  StoredProcedure [dbo].[mostrar_mayores_GASTOS_POR_CONCEPTO_por_mes_de_anio]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_mayores_GASTOS_POR_CONCEPTO_por_mes_de_anio]
@mes as varchar(50),
@anio as integer
as

SELECT    top 5 CONCEPTOS.Descripcion  , convert(varchar(50),SUM(Importe))    FROM GASTOSVARIOS INNER JOIN CONCEPTOS ON CONCEPTOS.Id_concepto =GASTOSVARIOS.Id_concepto 
WHERE GASTOSVARIOS.TIPO ='SALIDA' and datename(month,Fecha_del_Gasto) =@mes and DATEPART (year,Fecha_del_Gasto) =@anio
GROUP BY CONCEPTOS.Descripcion 
Order by SUM(Importe) desc


GO
/****** Object:  StoredProcedure [dbo].[mostrar_MOTIVOS_sin_repetir]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_MOTIVOS_sin_repetir]
@letrab VARCHAR(50)
AS BEGIN
SET NOCOUNT ON;
SELECT DISTINCT  
      Motivo 
FROM           KARDEX  
 where  (Motivo) LIKE  '%' + @letrab+'%'     AND Tipo = 'ENTRADA'             
end




GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_MOVIMIENTOS_DE_CAJA_POR_SERIAL]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_MOVIMIENTOS_DE_CAJA_POR_SERIAL]

@serial varchar(50)

AS
SELECT USUARIO2.Login,USUARIO2.Nombre_y_Apelllidos    FROM MOVIMIENTOCAJACIERRE inner join USUARIO2 on USUARIO2.idUsuario=MOVIMIENTOCAJACIERRE.Id_usuario
 inner join Caja on Caja.Id_Caja =MOVIMIENTOCAJACIERRE.Id_caja 
 where Caja.Serial_PC = @serial    AND MOVIMIENTOCAJACIERRE.Estado='CAJA APERTURADA' 




GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_MOVIMIENTOS_DE_CAJA_POR_SERIAL_y_usuario]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_MOVIMIENTOS_DE_CAJA_POR_SERIAL_y_usuario]

@serial varchar(50),
@idusuario int

AS
SELECT USUARIO2.Login,USUARIO2.Nombre_y_Apelllidos    FROM MOVIMIENTOCAJACIERRE inner join USUARIO2 on USUARIO2.idUsuario=MOVIMIENTOCAJACIERRE.Id_usuario
 inner join Caja on Caja.Id_Caja =MOVIMIENTOCAJACIERRE.Id_caja 
 where Caja.Serial_PC = @serial    AND MOVIMIENTOCAJACIERRE.Estado='CAJA APERTURADA' and MOVIMIENTOCAJACIERRE.Id_usuario =@idusuario and USUARIO2.Estado ='ACTIVO'



GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_MOVIMIENTOS_DE_KARDEX]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[MOSTRAR_MOVIMIENTOS_DE_KARDEX]

@idProducto int
AS
SELECT       KARDEX.Fecha ,Producto1.Descripcion ,KARDEX.Motivo as Movimiento, KARDEX.Cantidad ,KARDEX.Tipo ,KARDEX.Cantidad ,KARDEX.Hay  as Hay ,USUARIO2.Nombre_y_Apelllidos as Cajero ,Grupo_de_Productos .linea as Categoria, KARDEX.Costo_unt , KARDEX.Total 
,Grupo_de_Productos .linea ,EMPRESA.Nombre_Empresa,EMPRESA.Logo ,Producto1.Stock,convert(numeric(18,2), Producto1.Stock * KARDEX.Costo_unt) as TotalInventario
FROM            dbo.KARDEX INNER JOIN Producto1 on Producto1.Id_Producto1=KARDEX.Id_producto inner join USUARIO2 on USUARIO2.idUsuario =KARDEX.Id_usuario 
             cross join EMPRESA
			 inner join Grupo_de_Productos on Grupo_de_Productos.Idline=Producto1.Id_grupo 
			where    Producto1.Id_Producto1=@idProducto
			
			 order by KARDEX.Id_kardex  Desc 



GO
/****** Object:  StoredProcedure [dbo].[mostrar_permisos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_permisos]
@idusuario int
as
SELECT        dbo.permisos.*
FROM            dbo.USUARIO2 INNER JOIN
                         dbo.permisos ON dbo.USUARIO2.idUsuario = dbo.permisos.Id_Usuario
						 where dbo.USUARIO2.idUsuario =@idusuario 



GO
/****** Object:  StoredProcedure [dbo].[mostrar_permisos_por_usuario]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_permisos_por_usuario]
@LOGIN VARCHAR(50)
as 
select Rol 
from USUARIO2 
where USUARIO2.LOGIN =@LOGIN 


GO
/****** Object:  StoredProcedure [dbo].[mostrar_permisos_por_usuario_ROL_UNICO]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_permisos_por_usuario_ROL_UNICO]
@LOGIN VARCHAR(50)
as 
select 
USUARIO2.Rol 
from USUARIO2 
where USUARIO2.LOGIN =@LOGIN and USUARIO2.Estado ='ACTIVO'


GO
/****** Object:  StoredProcedure [dbo].[mostrar_Producto1]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_Producto1]
as

select Id_Producto1,Codigo ,Grupo_de_Productos.Linea as Grupo,Descripcion ,Impuesto,Usa_inventarios ,Precio_de_compra AS [P Compra],Precio_mayoreo as [P mayoreo],Se_vende_a as [Se vende por],Stock_minimo as [Stock minimo] ,Fecha_de_vencimiento as [F vencimiento] ,Stock,Precio_de_venta as [P venta] 
,A_partir_de,Grupo_de_Productos.Idline from Producto1 INNER JOIN Grupo_de_Productos on
Grupo_de_Productos.Idline=Producto1.Id_grupo


GO
/****** Object:  StoredProcedure [dbo].[mostrar_productos_agregados_a_venta]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_productos_agregados_a_venta]
@idventa as int
as
SELECT      detalle_venta . Codigo ,( detalle_venta .Descripcion ) as Producto, dbo.detalle_venta.Cantidad_mostrada as Cant, 
                         dbo.detalle_venta.preciounitario as P_Unit ,convert(numeric(18,2),dbo.detalle_venta.Total_a_pagar) as Importe, detalle_venta .Id_producto  ,DBO.detalle_venta.iddetalle_venta ,dbo.ventas.Estado 
						 , detalle_venta .Stock ,dbo.detalle_venta.cantidad ,ventas.idclientev 
						 , detalle_venta .Stock ,detalle_venta .Stock ,Usa_inventarios ,Se_vende_a ,detalle_venta.idventa 
FROM            dbo.detalle_venta INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa 
where dbo.detalle_venta .idventa =@idventa AND detalle_venta.cantidad >0 order by detalle_venta.iddetalle_venta desc



GO
/****** Object:  StoredProcedure [dbo].[mostrar_productos_agregados_a_venta_en_espera]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_productos_agregados_a_venta_en_espera]
@idventa as int
as
SELECT      ( detalle_venta .Descripcion ) as Producto, dbo.detalle_venta.Cantidad_mostrada as Cant, 
                         dbo.detalle_venta.preciounitario as P_Unit ,dbo.detalle_venta.Total_a_pagar as Importe
FROM            dbo.detalle_venta INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa 
where dbo.detalle_venta .idventa =@idventa AND detalle_venta.cantidad >0



GO
/****** Object:  StoredProcedure [dbo].[mostrar_productos_agregados_a_venta_historial]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_productos_agregados_a_venta_historial]
@idventa as int
as
SELECT      detalle_venta . Codigo ,dbo.detalle_venta.Cantidad_mostrada as Cant,( detalle_venta .Descripcion ) as Descripcion, 
                         dbo.detalle_venta.preciounitario as P_Unit ,Ventas.Monto_total as TOTAL, detalle_venta .Id_producto  ,DBO.detalle_venta.iddetalle_venta ,dbo.ventas.Estado 
						 , detalle_venta .Stock ,dbo.detalle_venta.cantidad ,ventas.idclientev
						  ,Usa_inventarios ,Se_vende_a ,ventas.Porcentaje_IGV,ventas.idventa
						  , Empresa.Moneda + ' '+convert(varchar(50),Ventas.Monto_total)   as TOTAL
FROM            dbo.detalle_venta INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa  
						 inner join USUARIO2 ON USUARIO2.idUsuario=ventas.Id_usuario 
						 cross join Empresa 
where dbo.detalle_venta .idventa =@idventa AND detalle_venta.cantidad >0 and ventas.Estado ='CONFIRMADO'



GO
/****** Object:  StoredProcedure [dbo].[MOSTRAR_PRODUCTOS_NUEVOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[MOSTRAR_PRODUCTOS_NUEVOS]
@DESCRIPCION as VARCHAR(MAX)
as

select Id_Producto1 FROM Producto1 
WHERE Descripcion  = @DESCRIPCION


GO
/****** Object:  StoredProcedure [dbo].[mostrar_productos_para_ventas]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_productos_para_ventas]
as
SELECT        (dbo.Producto1.Descripcion +' '+dbo.Presentaciones.Presentacion+ ' x'+dbo.Presentaciones.Cantidad_por_presentacion+ dbo.Presentaciones.Unidad_de_medida) as Descripcion,dbo.Producto1.Id_Producto1 ,
                       
                        dbo.Producto1.Imagen ,Presentaciones_fraccionadas.Id_presentacionfraccionada 
                  
FROM            
                         dbo.Producto1 INNER JOIN
                         dbo.Presentaciones_fraccionadas ON dbo.Producto1.Id_Producto1 = dbo.Presentaciones_fraccionadas.Id_producto INNER JOIN
                         dbo.Presentaciones ON dbo.Presentaciones_fraccionadas.Id_presentacion = dbo.Presentaciones.Id_Presentacion




GO
/****** Object:  StoredProcedure [dbo].[mostrar_productos_vencidos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_productos_vencidos]

as

select Id_Producto1,Codigo ,Descripcion 

,Fecha_de_vencimiento as F_vencimiento ,Stock
,datediff(day,Fecha_de_vencimiento,CONVERT(DATE,GETDATE ()))as [Dias Vencidos] from Producto1 

where   Fecha_de_vencimiento <>'NO APLICA' AND Fecha_de_vencimiento <= CONVERT(DATE,GETDATE ()) 



GO
/****** Object:  StoredProcedure [dbo].[mostrar_productos_vencidos_en_menos_de_30_dias]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_productos_vencidos_en_menos_de_30_dias]

as

select Id_Producto1,Codigo ,Descripcion 

,Fecha_de_vencimiento as F_vencimiento ,Stock
,(datediff(day,Fecha_de_vencimiento,CONVERT(DATE,GETDATE ())))*(-1)as [Dias a Vencer] from Producto1 

where   Fecha_de_vencimiento <>'NO APLICA' AND Fecha_de_vencimiento > CONVERT(DATE,GETDATE ()) and (datediff(day,Fecha_de_vencimiento,CONVERT(DATE,GETDATE ())))*(-1) <=30
order by (datediff(day,Fecha_de_vencimiento,CONVERT(DATE,GETDATE ())))*(-1) asc


GO
/****** Object:  StoredProcedure [dbo].[mostrar_PROVEEEDOR]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[mostrar_PROVEEEDOR]
as
SELECT        idclientev, Nombre, Direccion_para_factura as Direccion, Ruc, movil as Celular, Cliente, Proveedor, 
                    clientes.Saldo ,     Estado as Activo
FROM            dbo.clientes 
WHERE clientes.Proveedor ='SI' order by Nombre  asc 




GO
/****** Object:  StoredProcedure [dbo].[mostrar_recibo_digital_cobros]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostrar_recibo_digital_cobros]
@idcliente int,
@idcaja int
as
select *from DETALLE_CONTROL_DE_COBROS inner join clientes on clientes.idclientev=DETALLE_CONTROL_DE_COBROS.Id_cliente 

where DETALLE_CONTROL_DE_COBROS.Id_cliente=@idcliente


GO
/****** Object:  StoredProcedure [dbo].[mostrar_SALON]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc

[dbo].[mostrar_SALON]
@buscar varchar(50)
as begin
if exists(select * from SALON  where Salon like '%'+ @buscar + '%')
select * from SALON  where Salon like '%'+ @buscar + '%' ORDER BY Salon asc
else
select * from SALON order by Salon asc
end



GO
/****** Object:  StoredProcedure [dbo].[mostrar_solo_saldo_cliente_proveedor]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[mostrar_solo_saldo_cliente_proveedor]
@id int
as
SELECT  Saldo  from clientes  
where idclientev =@id


GO
/****** Object:  StoredProcedure [dbo].[mostrar_stock_de_detalle_de_ventas]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_stock_de_detalle_de_ventas]
@Id_producto int 
as
select detalle_venta.Stock,detalle_venta.Descripcion   from ventas inner join detalle_venta on detalle_venta.idventa=ventas.idventa  
where ventas.Estado ='EN ESPERA' and detalle_venta.Id_producto =@Id_producto and detalle_venta.Usa_inventarios ='SI'


GO
/****** Object:  StoredProcedure [dbo].[mostrar_tema_por_caja]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_tema_por_caja]
@Serial as varchar(50)
as
select Caja.Tema 
from Caja 

where caja.Serial_PC =@Serial


GO
/****** Object:  StoredProcedure [dbo].[mostrar_ticket_impreso]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_ticket_impreso]
@idventa as int,
@total_en_letras as varchar(50)


as
declare @cantidad_de_productos as int
set @cantidad_de_productos = (select SUM(detalle_venta.cantidad) from detalle_venta inner join ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa
 where detalle_venta.idventa=@idventa)
SELECT      detalle_venta . Codigo ,( detalle_venta .Descripcion ) as Producto, dbo.detalle_venta.Cantidad_mostrada as Cant, 
                         dbo.detalle_venta.preciounitario as P_Unit ,convert(numeric(18,2),dbo.detalle_venta.Total_a_pagar) as Importe, detalle_venta .Id_producto  ,DBO.detalle_venta.iddetalle_venta ,dbo.ventas.Estado 
						 , detalle_venta .Stock ,dbo.detalle_venta.cantidad ,ventas.idclientev 
						 , detalle_venta .Stock ,detalle_venta .Stock ,Usa_inventarios ,Se_vende_a ,ventas.idventa,Empresa.Nombre_Empresa as Empresa
,Empresa.Logo,Ticket.Identificador_fiscal,Ticket.Direccion,Ticket.Provincia_Departamento_Pais,Ticket.Nombre_de_Moneda,
Ticket.Agradecimiento,Ticket.pagina_Web_Facebook,Ticket.Anuncio,ventas.Numero_de_doc ,ventas.fecha_venta as fecha
,Empresa.Impuesto +'('+ convert(varchar(50),EMPRESA.Porcentaje_impuesto) +'%):' as Impuesto
,convert(numeric (18,2),(ventas.Monto_total*ventas.Porcentaje_IGV)/100 )as SubTotal,
ventas.Monto_total ,USUARIO2.Nombre_y_Apelllidos as Usuario,
ventas.Pago_con   , ventas.Vuelto ,EMPRESA.Moneda ,clientes.Nombre ,ticket.Datos_fiscales_de_autorizacion
,ventas.Tipo_de_pago,@cantidad_de_productos as Cantidad_de_productos,@total_en_letras AS total_en_letras
FROM            dbo.detalle_venta INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa inner join usuario2 on Usuario2.idUsuario=ventas.Id_usuario 
						 INNER JOIN clientes ON clientes.idclientev =ventas.idclientev 
						  cross join Empresa
						 cross join Ticket
where dbo.detalle_venta .idventa =@idventa  And ventas.Monto_total >0 order by detalle_venta.iddetalle_venta desc




GO
/****** Object:  StoredProcedure [dbo].[mostrar_Tipo_de_documentos_para_insertar_estos_mismos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_Tipo_de_documentos_para_insertar_estos_mismos]
as

SELECT       dbo.Serializacion.Serie ,dbo.Serializacion.Cantidad_de_numeros , dbo.Serializacion.numerofin ,dbo.Serializacion.Id_serializacion ,(dbo.Serializacion.Serie  +' - '+ dbo.Serializacion.Cantidad_de_numeros + dbo.Serializacion.numerofin) as serie_completa,Serializacion.Id_tipodoc AS COMPROBANTE
,Por_defecto 
FROM            dbo.Serializacion where destino='VENTAS'


GO
/****** Object:  StoredProcedure [dbo].[mostrar_todos_los_productos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROC [dbo].[mostrar_todos_los_productos]
AS 
select Producto1.*,EMPRESA .* from Producto1 cross join EMPRESA 


GO
/****** Object:  StoredProcedure [dbo].[mostrar_usuario]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_usuario]
as 
select USUARIO2 .idUsuario,USUARIO2.Nombre_y_Apelllidos as [Nombres] ,USUARIO2 .Login as Usuario,USUARIO2.Password as Contraseña
,Icono ,Nombre_de_icono ,Correo ,rol
from USUARIO2 WHERE Estado ='ACTIVO'


GO
/****** Object:  StoredProcedure [dbo].[mostrar_usuario_POR_ID]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_usuario_POR_ID]
@ID INT
as 
select *
from USUARIO2 inner join Permisos on Permisos. Id_Usuario=USUARIO2.idUsuario

WHERE USUARIO2.idUsuario=@ID 
order by USUARIO2.idUsuario desc





GO
/****** Object:  StoredProcedure [dbo].[mostrar_usuario_POR_login]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_usuario_POR_login]
@login varchar(50)
as 
select Icono 
from USUARIO2
WHERE USUARIO2.login =@login AND ESTADO='ACTIVO'



GO
/****** Object:  StoredProcedure [dbo].[mostrar_USUARIO_por_nombre_contrasenia]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[mostrar_USUARIO_por_nombre_contrasenia]
@letra VARCHAR(50),
@pas varchar(50)
AS BEGIN
SELECT        idUsuario, Login ,Password ,Nombre_y_Apelllidos 
FROM            dbo.USUARIO2						 
WHEre Login =@letra  AND Password=@pas
END



GO
/****** Object:  StoredProcedure [dbo].[mostrar_vendedores]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_vendedores]
as 
select * from USUARIO2








GO
/****** Object:  StoredProcedure [dbo].[mostrar_ventas_en_espera]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_ventas_en_espera]


AS BEGIN
SET NOCOUNT ON;
SELECT DISTINCT  
(detalle_venta.idventa )
FROM         dbo.detalle_venta
             inner join ventas  on ventas .idventa =detalle_venta.idventa 
          where  
 ventas.Estado='EN ESPERA'
 group by detalle_venta.idventa             
end


GO
/****** Object:  StoredProcedure [dbo].[mostrar_ventas_en_espera_Anuncio]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_ventas_en_espera_Anuncio]

as
SELECT      count(ventas.idventa ) 
FROM            dbo.ventas
             inner join detalle_venta on detalle_venta.idventa =ventas.idventa 
where  
 ventas.Estado='EN ESPERA'or  ventas.Estado='SIN CONFIRMAR'


GO
/****** Object:  StoredProcedure [dbo].[mostrar_ventas_en_espera_con_fecha_y_monto]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_ventas_en_espera_con_fecha_y_monto]

		AS   

SELECT    ventas. idventa,ventas.Comprobante,ventas.fecha_venta
FROM            dbo.detalle_venta INNER JOIN
                         dbo.ventas ON dbo.detalle_venta.idventa = dbo.ventas.idventa    
					
where  (ventas.Estado='EN ESPERA') 
	 GROUP BY     ventas. idventa,ventas.Comprobante,ventas.fecha_venta 






GO
/****** Object:  StoredProcedure [dbo].[mostrar_ventas_en_espera_solo_para_vendedores]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrar_ventas_en_espera_solo_para_vendedores]
@id_caja int

as
SELECT      count(ventas.idventa ) as id_ventas, count(ventas.idventa ) as id_producto
FROM            dbo.ventas inner join Caja  on caja.Id_Caja=ventas.Id_caja 
             
where  
 ventas.Estado='EN ESPERA'or  ventas.Estado='SIN CONFIRMAR' and ventas.Id_caja =@id_caja 

 union 
 SELECT      count(ventas.idventa  ) as id_ventas,count(ventas.idventa ) as id_producto
FROM            dbo.ventas inner join detalle_venta on detalle_venta.idventa =detalle_venta.idventa  
             inner join Caja  on caja.Id_Caja=ventas.Id_caja
where  
 ventas.Estado='EN ESPERA'or  ventas.Estado='SIN CONFIRMAR' and ventas.Id_caja =@id_caja


GO
/****** Object:  StoredProcedure [dbo].[mostrar_ventas_realizadas]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_ventas_realizadas]
as
SELECT       (datename(month,fecha_venta) + ' ' +DateName(year,fecha_venta))as fecha,convert(varchar(50),sum( Monto_total))  as Total

FROM            dbo.ventas 
       where ACCION= 'VENTA'           
group by datename(month,fecha_venta),DateName(year,fecha_venta)


GO
/****** Object:  StoredProcedure [dbo].[mostrar_ventas_realizadas_CANTIDADES]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_ventas_realizadas_CANTIDADES]
as
SELECT        convert(varchar(50),convert(date,fecha_venta)) as fecha,COUNT(ventas.idventa ) 
FROM            dbo.ventas 
                       
group by convert(date,fecha_venta)


GO
/****** Object:  StoredProcedure [dbo].[mostrar_ventas_realizadas_POR_FECHA]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_ventas_realizadas_POR_FECHA]
@FI AS DATE,
@FF AS DATE
as
select CONVERT(NUMERIC(18,1),sum( Monto_total  )) 
FROM            dbo.ventas   
 WHERE convert(date,fecha_venta)>= @FI    AND   convert(date,fecha_venta)<= @FF 



GO
/****** Object:  StoredProcedure [dbo].[mostrar_ventas_realizadas_POR_FECHAS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostrar_ventas_realizadas_POR_FECHAS]
@FI AS DATE,
@FF AS DATE
as
SELECT        datename(MONTH ,convert(date,fecha_venta)) +' '+ convert(varchar(50),datepart(year ,convert(date,fecha_venta)))  as fecha,convert(varchar(50),sum( Monto_total) ) 
FROM            dbo.ventas 
     WHERE convert(date,fecha_venta)>= @FI    AND   convert(date,fecha_venta)<= @FF            
group by convert(date,fecha_venta)



GO
/****** Object:  StoredProcedure [dbo].[mostras_ventaspormeses]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[mostras_ventaspormeses]

as
select month(dbo.ventas.fecha_venta )as mes , sum(dbo.ventas.Monto_total) as importe
from dbo.ventas 
where month(dbo.ventas.fecha_venta)  BETWEEN 0 AND 12 GROUP BY MONTH(dbo.ventas.fecha_venta ) 







GO
/****** Object:  StoredProcedure [dbo].[NOTIFICADOR_COBROS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[NOTIFICADOR_COBROS]

as 
SELECT       Saldo ,Nombre 
FROM          
                         dbo.clientes 
						 WHERE Saldo >0 AND Cliente ='SI'


GO
/****** Object:  StoredProcedure [dbo].[NOTIFICADOR_PAGOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[NOTIFICADOR_PAGOS]

as 
SELECT       Saldo ,Nombre 
FROM          
                         dbo.clientes 
						 WHERE Saldo >0 AND Proveedor  ='SI'


GO
/****** Object:  StoredProcedure [dbo].[Poner_nombre_a_venta_en_espera]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Poner_nombre_a_venta_en_espera]
@id_venta int,
@nombre as varchar(50)
as
update ventas   set Comprobante=@nombre, Estado = 'EN ESPERA' where idventa   =@id_venta 


GO
/****** Object:  StoredProcedure [dbo].[PRUEBA_DE_NOTIFIC]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create proc [dbo].[PRUEBA_DE_NOTIFIC]
 AS
 select COUNT (iddetalle_venta  )as idprod from detalle_venta 


GO
/****** Object:  StoredProcedure [dbo].[REPORT_CIERRE_DE_CAJA_diaria_por_TURNOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_CIERRE_DE_CAJA_diaria_por_TURNOS]
@id_caja AS INT,
@fi as DATE,
@ff as DATEtime
as

select SUM(Monto_total)  from ventas 
where Tipo_de_pago ='EFECTIVO' AND 
(fecha_venta >=@fi and fecha_venta<=@ff )AND Id_caja=@id_caja


GO
/****** Object:  StoredProcedure [dbo].[REPORT_COBROS_EN_EFECTIVO_por_turnos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_COBROS_EN_EFECTIVO_por_turnos]
@id_caja AS INT,
@fi as DATEtime,
@ff as DATETIME
as

select SUM(Pago_realizado )  from DETALLE_CONTROL_DE_COBROS     where  
(Fecha_que_pago >=@fi AND Fecha_que_pago<=@ff )AND Id_caja=@id_caja AND Tipo_de_cobro ='EFECTIVO' and DETALLE_CONTROL_DE_COBROS.Detalle ='COBRO'




GO
/****** Object:  StoredProcedure [dbo].[REPORT_GANANCIAS_DE_VENTAS_por_TURNOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_GANANCIAS_DE_VENTAS_por_TURNOS]
@id_caja AS INT,
@fi as DATEtime,
@ff as DATEtime
as

select SUM(Ganancia )  from detalle_venta  INNER JOIN VENTAS ON detalle_venta.idventa =ventas.idventa 
where
(ventas.fecha_venta  >=@fi and ventas.fecha_venta<=@ff )AND VENTAS.Id_caja=@id_caja AND ventas.Estado <> 'OTRAS CUENTAS'



GO
/****** Object:  StoredProcedure [dbo].[REPORT_GASTOS_VARIOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_GASTOS_VARIOS]
@id_caja AS INT,
@fi as DATE,
@ff as DATE
as

select SUM(Importe)  from GASTOSVARIOS INNER JOIN CONCEPTOS ON CONCEPTOS.Id_concepto =GASTOSVARIOS.Id_concepto   where  
(Fecha_del_Gasto >=@fi OR Fecha_del_Gasto<=@ff )AND Id_caja=@id_caja AND TIPO='SALIDA'




GO
/****** Object:  StoredProcedure [dbo].[REPORT_GASTOS_VARIOS_por_turnos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_GASTOS_VARIOS_por_turnos]
@id_caja AS INT,
@fi as DATEtime,
@ff as DATEtime
as

select SUM(Importe)  from GASTOSVARIOS INNER JOIN CONCEPTOS ON CONCEPTOS.Id_concepto =GASTOSVARIOS.Id_concepto   where  
(Fecha_del_Gasto >=@fi AND Fecha_del_Gasto<=@ff )AND Id_caja=@id_caja AND TIPO='SALIDA'




GO
/****** Object:  StoredProcedure [dbo].[REPORT_INGRESOS_VARIOS_por_turnos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_INGRESOS_VARIOS_por_turnos]
@id_caja AS INT,
@fi as DATEtime,
@ff as DATEtime
as

select SUM(Importe)  from GASTOSVARIOS   where  
(Fecha_del_Gasto >=@fi AND Fecha_del_Gasto<=@ff )AND Id_caja=@id_caja AND GASTOSVARIOS . TIPO='INGRESO'




GO
/****** Object:  StoredProcedure [dbo].[REPORT_PAGOS_EN_EFECTIVO_por_turnos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_PAGOS_EN_EFECTIVO_por_turnos]
@id_caja AS INT,
@fi as DATEtime,
@ff as DATETIME
as
select SUM(Pago_realizado )  from DETALLE_CONTROL_DE_COBROS     where  
(Fecha_que_pago >=@fi AND Fecha_que_pago<=@ff )AND Id_caja=@id_caja AND Tipo_de_cobro ='EFECTIVO' and Detalle ='PAGO'



GO
/****** Object:  StoredProcedure [dbo].[REPORT_VENTAS_POR_PERIODOS_EN_GENERAL_DE_KARDEX]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_VENTAS_POR_PERIODOS_EN_GENERAL_DE_KARDEX]
@fecha_inicial as date,
@fecha_final as date
as

SELECT       convert(date,KARDEX.Fecha) ,KARDEX.Total ,KARDEX.Motivo 
					,@fecha_inicial,@fecha_final
FROM            dbo.KARDEX 

						 where 
						Cast(dbo.KARDEX   .Fecha    As Date) >=@fecha_inicial 
				AND Cast(dbo.KARDEX   .Fecha   As Date) <= @fecha_final 
						 
						 AND (KARDEX.Motivo ='DESPACHO DIARIO DE VENDEDORES...'
						 or KARDEX.Motivo ='RECHAZO DIARIO')and (KARDEX.Total >0 or KARDEX.Total  <0)









GO
/****** Object:  StoredProcedure [dbo].[REPORT_VENTAS_por_TURNOS_en_EFECTIVO]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_VENTAS_por_TURNOS_en_EFECTIVO]
@id_caja AS INT,
@fi as DATEtime,
@ff as DATEtime
as

select SUM(Monto_total)  from ventas 
where Tipo_de_pago ='EFECTIVO' AND 
(fecha_venta >=@fi and fecha_venta<=@ff )AND Id_caja=@id_caja



GO
/****** Object:  StoredProcedure [dbo].[REPORT_VENTAS_por_TURNOS_Por_Credito]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_VENTAS_por_TURNOS_Por_Credito]
@id_caja AS INT,
@fi as DATEtime,
@ff as DATEtime
as

select SUM(Monto_total)  from ventas 
where Tipo_de_pago ='CREDITO' AND 
(fecha_venta >=@fi and fecha_venta<=@ff )AND Id_caja=@id_caja and ventas.Estado <> 'OTRAS CUENTAS'



GO
/****** Object:  StoredProcedure [dbo].[REPORT_VENTAS_por_TURNOS_Por_tarjeta]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_VENTAS_por_TURNOS_Por_tarjeta]
@id_caja AS INT,
@fi as DATEtime,
@ff as DATEtime
as

select SUM(Monto_total)  from ventas 
where Tipo_de_pago ='TARJETA' AND 
(fecha_venta >=@fi and fecha_venta<=@ff )AND Id_caja=@id_caja



GO
/****** Object:  StoredProcedure [dbo].[REPORT_VENTAS_POR_VENDEDOR_VENTAS_AL_CONTADO]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[REPORT_VENTAS_POR_VENDEDOR_VENTAS_AL_CONTADO]
@fecha_inicial as date,
@fecha_final as date,
@Id_usuario int
as
SELECT      sum(dbo.ventas.Monto_total)AS VENTAS_TOTAL_CONTADO 
                         					 
FROM            dbo.ventas INNER JOIN
                         
                         dbo.USUARIO2 ON dbo.ventas.Id_usuario = dbo.USUARIO2.idUsuario
					
						  where dbo.USUARIO2.idUsuario =@Id_usuario  and Cast(dbo.ventas .fecha_venta   As Date) >=@fecha_inicial AND Cast(dbo.ventas .fecha_venta   As Date) <= @fecha_final AND Tipo_de_pago  ='CONTADO'

						  group by dbo.ventas.Monto_total



GO
/****** Object:  StoredProcedure [dbo].[reporte_cierre_de_caja]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[reporte_cierre_de_caja]


@ventastotales as varchar(50)
,@ganancia as varchar(50)
,@fondo as varchar(50)
, @ventasefectivo as varchar(50)
, @pagosefectivo as varchar(50)
, @cobrosefectivo as varchar(50)
, @ingresosvarios as varchar(50)
, @gastosvarios as varchar(50)
, @esperado as varchar(50)
,@Vefectivo as varchar(50)
,@Vtarjeta as varchar(50)
,@Vcredito as varchar(50)
, @TOTALventas as varchar(50)
, @cajero  as varchar(50)
, @fechas  as varchar(max)
, @caja  as varchar(max)
as
select empresa.Moneda +' '+ @ventastotales as ventastotales ,empresa.Moneda +' '+@ganancia as ganancia,empresa.Moneda +' '+@fondo as fondo,empresa.Moneda +' '+@ventasefectivo as ventasefectivo,empresa.Moneda +' '+@pagosefectivo as pagosefectivo ,empresa.Moneda +' '+@cobrosefectivo as cobrosefectivo,empresa.Moneda +' '+@ingresosvarios as ingresosvarios,empresa.Moneda +' '+@gastosvarios as gastosvarios
,empresa.Moneda +' '+@esperado AS esperado ,empresa.Moneda +' '+@esperado AS esperado,empresa.Moneda +' '+@Vefectivo AS Vefectivo,empresa.Moneda +' '+@Vtarjeta AS Vtarjeta,empresa.Moneda +' '+@Vcredito AS Vcredito,empresa.Moneda +' '+@TOTALventas AS TOTALventas,@cajero AS cajero,@fechas AS fechas,@caja AS caja
,EMPRESA.Nombre_Empresa , EMPRESA.Logo 
from Caja
cross join EMPRESA 
 where Caja.Descripcion =@caja  


GO
/****** Object:  StoredProcedure [dbo].[REPORTE_productos_vencidos]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[REPORTE_productos_vencidos]

as

select Id_Producto1,Codigo ,Descripcion 

,Fecha_de_vencimiento as F_vencimiento ,Stock,empresa.Nombre_Empresa,empresa.Logo
,datediff(day,Fecha_de_vencimiento,CONVERT(DATE,GETDATE ()))as [Dias Vencidos] from Producto1
cross join EMPRESA 
where   Fecha_de_vencimiento <>'NO APLICA' AND Fecha_de_vencimiento <= CONVERT(DATE,GETDATE ()) 
order by (datediff(day,Fecha_de_vencimiento,CONVERT(DATE,GETDATE ()))) asc



GO
/****** Object:  StoredProcedure [dbo].[REPORTEcierredecajaGASTOSVARIOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[REPORTEcierredecajaGASTOSVARIOS]
 @fechaini DATE,
 @fechafin DATE
 as
select month(dbo.GASTOSVARIOS.Fecha_del_Gasto ) as Mes, year(dbo.GASTOSVARIOS.Fecha_del_Gasto) as anio,
  sum(dbo.GASTOSVARIOS.Importe  ) as Egresos_Gastos_varios

 from dbo.GASTOSVARIOS 
 where     Fecha_del_Gasto >= @fechaini AND   Fecha_del_Gasto <= @fechafin  GROUP BY MONTH(dbo.GASTOSVARIOS.Fecha_del_Gasto  ), YEAR(dbo.GASTOSVARIOS.Fecha_del_Gasto ) ORDER BY YEAR(dbo.GASTOSVARIOS.Fecha_del_Gasto ) asc



GO
/****** Object:  StoredProcedure [dbo].[REPORTEcierredecajaGASTOSVARIOS_diario]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[REPORTEcierredecajaGASTOSVARIOS_diario]
 @fechaini DATE
 as
select month(dbo.GASTOSVARIOS.Fecha_del_Gasto ) as Mes, year(dbo.GASTOSVARIOS.Fecha_del_Gasto) as anio,
  sum(dbo.GASTOSVARIOS.Importe  ) as Egresos_Gastos_varios, day(dbo.GASTOSVARIOS.Fecha_del_Gasto) as dia

 from dbo.GASTOSVARIOS 
 where     Fecha_del_Gasto = @fechaini   GROUP BY MONTH(dbo.GASTOSVARIOS.Fecha_del_Gasto  ), day(dbo.GASTOSVARIOS.Fecha_del_Gasto),YEAR(dbo.GASTOSVARIOS.Fecha_del_Gasto ) ORDER BY YEAR(dbo.GASTOSVARIOS.Fecha_del_Gasto ) asc




GO
/****** Object:  StoredProcedure [dbo].[REPORTEcierredecajaVENTAS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[REPORTEcierredecajaVENTAS]
 @fechaini DATE,
 @fechafin DATE
 as
 --LEFT( CONVERT( VARCHAR, d.fecha, 112 ),6)+'01' as fechaVenta
 select month(dbo.ventas.fecha_venta) as Mes, year(dbo.ventas.fecha_venta) as anio,
  sum(dbo.ventas.Monto_total) as Ingreso_de_Ventas

 from dbo.ventas
 where      fecha_venta >= @fechaini AND    fecha_venta <= @fechafin and Estado='PAGADO' GROUP BY MONTH(dbo.ventas.fecha_venta ), YEAR(dbo.ventas.fecha_venta ) ORDER BY YEAR(dbo.ventas.fecha_venta ) asc




GO
/****** Object:  StoredProcedure [dbo].[restar_saldo_a_cliente_por_eliminacion]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[restar_saldo_a_cliente_por_eliminacion]
@idventa int,
@montototal as numeric(18,1)


as

update CONTROL_DE_COBROS set Monto  =Monto - @montototal
where Id_venta =@idventa 




GO
/****** Object:  StoredProcedure [dbo].[restar_total_venta_por_eliminacion]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[restar_total_venta_por_eliminacion]
@idventa int,
@montototal as numeric(18,2)


as

update ventas set Monto_total  =Monto_total - @montototal
where idventa =@idventa 




GO
/****** Object:  StoredProcedure [dbo].[restaurar_cliente]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[restaurar_cliente]
@idcliente integer
as
update  clientes set  Estado ='ACTIVO'
where idclientev=@idcliente AND Estado='ELIMINADO' 


GO
/****** Object:  StoredProcedure [dbo].[restaurar_usuario]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[restaurar_usuario]
@idusuario as int,
@login varchar(50)

as
	 
UPDATE USUARIO2  SET Estado ='ACTIVO'
WHERE idUsuario =@idusuario and Login <>'admin' 


GO
/****** Object:  StoredProcedure [dbo].[sumar_COBROS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_COBROS]
@FI as date,
@FF as date
as
select sum(dbo.DETALLE_CONTROL_DE_COBROS  .Pago_realizado   )
from dbo.DETALLE_CONTROL_DE_COBROS 
 where DETALLE_CONTROL_DE_COBROS.Detalle='COBRO'  AND CONVERT(DATE,Fecha_que_pago)  >= @FI and CONVERT(DATE,Fecha_que_pago)  <= @FF




GO
/****** Object:  StoredProcedure [dbo].[sumar_cobros_POR_TURNO]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_cobros_POR_TURNO]
@fechainicio as datetime,
@fechafin as datetime
as
select sum(dbo.DETALLE_CONTROL_DE_COBROS.Pago_realizado)
from dbo.DETALLE_CONTROL_DE_COBROS  
 where  Fecha_que_pago  >= @fechainicio and Fecha_que_pago  <=@fechafin



GO
/****** Object:  StoredProcedure [dbo].[sumar_compras_POR_TURNO]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_compras_POR_TURNO]
@FI as date,
@FF as date
as
select sum(dbo.ventas  .Monto_total  )
from dbo.ventas 
 where (ventas.ACCION='COMPRA' OR ventas.ACCION='PEDIDO DE COMPRA' ) AND ventas.Tipo_de_pago  ='CONTADO' AND CONVERT(DATE,fecha_venta)  >= @FI and CONVERT(DATE,fecha_venta)  <= @FF




GO
/****** Object:  StoredProcedure [dbo].[sumar_gastos_POR_TURNO]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_gastos_POR_TURNO]
@FI as date,
@FF as date
as
select sum(dbo.GASTOSVARIOS    .Importe    )
from dbo.GASTOSVARIOS   
 where GASTOSVARIOS .TIPO    ='SALIDA'  AND CONVERT(DATE,Fecha_del_Gasto )  >= @FI and CONVERT(DATE,Fecha_del_Gasto)  <= @FF




GO
/****** Object:  StoredProcedure [dbo].[sumar_INGRESOS_VARIOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_INGRESOS_VARIOS]
@FI as date,
@FF as date
as
select sum(dbo.GASTOSVARIOS    .Importe    )
from dbo.GASTOSVARIOS   
 where GASTOSVARIOS .TIPO    ='INGRESO'  AND CONVERT(DATE,Fecha_del_Gasto )  >= @FI and CONVERT(DATE,Fecha_del_Gasto)  <= @FF




GO
/****** Object:  StoredProcedure [dbo].[sumar_INGRESOS_VARIOS_POR_TURNO]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_INGRESOS_VARIOS_POR_TURNO]
@fechainicio as datetime,
@fechafin as datetime
as
select sum(dbo.INGRESOSVARIOS .Importe )
from dbo.INGRESOSVARIOS
 where Estado='PAGADO' AND Fecha_del_Gasto >= @fechainicio and Fecha_del_Gasto <=@fechafin 



GO
/****** Object:  StoredProcedure [dbo].[sumar_INGRESOS-VARIOS_POR_TURNO]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_INGRESOS-VARIOS_POR_TURNO]
@fechainicio as datetime,
@fechafin as datetime
as
select sum(dbo.INGRESOSVARIOS .Importe + 0) 
from dbo.INGRESOSVARIOS
 where Estado='PAGADO' AND Fecha_del_Gasto >= @fechainicio and Fecha_del_Gasto <=@fechafin 



GO
/****** Object:  StoredProcedure [dbo].[sumar_KARDEX_RECHASOS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_KARDEX_RECHASOS]
@FI as date,
@FF as date
as
select sum(dbo.KARDEX   .Total   )
from dbo.KARDEX  
 where KARDEX .Motivo   ='RECHAZO DIARIO' AND CONVERT(DATE,Fecha)  >= @FI and CONVERT(DATE,Fecha)  <= @FF




GO
/****** Object:  StoredProcedure [dbo].[sumar_KARDEX_VENTAS]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_KARDEX_VENTAS]
@FI as date,
@FF as date
as
select sum(dbo.KARDEX   .Total   )
from dbo.KARDEX  
 where (KARDEX .Motivo   ='DESPACHO DIARIO DE VENDEDORES...'  OR   KARDEX .Motivo   ='DESPACHO DE PEDIDOS...' )AND CONVERT(DATE,Fecha)  >= @FI and CONVERT(DATE,Fecha)  <= @FF




GO
/****** Object:  StoredProcedure [dbo].[sumar_pagos_POR_TURNO]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_pagos_POR_TURNO]
@FI as date,
@FF as date
as
select sum(dbo.DETALLE_CONTROL_DE_COBROS  .Pago_realizado   )
from dbo.DETALLE_CONTROL_DE_COBROS 
 where DETALLE_CONTROL_DE_COBROS.Detalle='PAGO'  AND CONVERT(DATE,Fecha_que_pago)  >= @FI and CONVERT(DATE,Fecha_que_pago)  <= @FF




GO
/****** Object:  StoredProcedure [dbo].[SUMAR_POR_COBRAR]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SUMAR_POR_COBRAR]
@FI as date,
@FF as date
as
SELECT    SUM(   clientes.Saldo )

FROM           clientes  
						
 where clientes .Cliente='SI' 


GO
/****** Object:  StoredProcedure [dbo].[SUMAR_POR_COBRAR_OK]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SUMAR_POR_COBRAR_OK]

as
SELECT    SUM(   clientes.Saldo )

FROM           clientes  
						
 where clientes .Cliente='SI' 


GO
/****** Object:  StoredProcedure [dbo].[SUMAR_POR_PAGAR_OK]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SUMAR_POR_PAGAR_OK]

as
SELECT    SUM(   clientes.Saldo )

FROM           clientes  
						
 where clientes .Proveedor ='SI' 


GO
/****** Object:  StoredProcedure [dbo].[sumar_ventas_POR_TURNO]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sumar_ventas_POR_TURNO]
@FI as date,
@FF as date
as
select sum(dbo.ventas  .Monto_total  )
from dbo.ventas 
 where (ventas.ACCION='VENTA' OR ventas.ACCION='PEDIDO DE VENTA' )AND ventas.Tipo_de_pago  ='CONTADO' AND CONVERT(DATE,fecha_venta)  >= @FI and CONVERT(DATE,fecha_venta)  <= @FF




GO
/****** Object:  StoredProcedure [dbo].[Tema]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Tema]
@Id_caja int,
@Tema varchar(50)
as 

update Caja   set  Tema  =@Tema  where Id_Caja=@Id_caja 


GO
/****** Object:  StoredProcedure [dbo].[validar_usuario]    Script Date: 29/02/2020 17:35:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[validar_usuario]

@password varchar(50),
@login varchar(50)
as
select * from USUARIO2
where  Password   = @password and Login=@Login and Estado ='ACTIVO'




GO
