USE [proyecto_final_progra_iv]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 11/30/2024 12:54:57 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/30/2024 12:54:57 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/30/2024 12:54:57 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/30/2024 12:54:57 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/30/2024 12:54:57 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/30/2024 12:54:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[Nombre] [nvarchar](max) NOT NULL,
	[Rol] [nvarchar](max) NOT NULL,
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
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 11/30/2024 12:54:57 AM ******/
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
/****** Object:  Table [dbo].[clientes]    Script Date: 11/30/2024 12:54:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clientes](
	[cliente_id] [int] IDENTITY(1,1) NOT NULL,
	[nit] [varchar](20) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[direccion] [text] NULL,
	[telefono] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[cliente_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_ventas]    Script Date: 11/30/2024 12:54:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_ventas](
	[detalle_venta_id] [int] IDENTITY(1,1) NOT NULL,
	[venta_id] [int] NOT NULL,
	[producto_id] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio_unitario] [decimal](10, 2) NOT NULL,
	[subtotal] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[detalle_venta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleados]    Script Date: 11/30/2024 12:54:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleados](
	[empleado_id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[dpi] [varchar](20) NOT NULL,
	[cargo] [varchar](50) NOT NULL,
	[usuario_id] [nvarchar](450) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[empleado_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[productos]    Script Date: 11/30/2024 12:54:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[productos](
	[producto_id] [int] IDENTITY(1,1) NOT NULL,
	[codigo] [varchar](50) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[descripcion] [text] NULL,
	[precio] [decimal](10, 2) NOT NULL,
	[stock] [int] NOT NULL,
	[foto_url] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[producto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ventas]    Script Date: 11/30/2024 12:54:57 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ventas](
	[venta_id] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[cliente_id] [int] NULL,
	[empleado_id] [int] NOT NULL,
	[total] [decimal](10, 2) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[venta_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'91a7d9b8-dc89-40e4-b927-292b8a8e499a', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'b0709fde-aea1-4bd6-b67e-9792068c443c', N'User', N'USER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'57323f93-eee4-4c8b-a569-3e598052541d', N'91a7d9b8-dc89-40e4-b927-292b8a8e499a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6e2655a5-24c2-4cb8-821c-c219406fb9cb', N'91a7d9b8-dc89-40e4-b927-292b8a8e499a')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a91273c0-aea3-49ac-8570-20036dbd2da3', N'b0709fde-aea1-4bd6-b67e-9792068c443c')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd9b86531-2b0a-4a48-bcdf-5a3bd09a4f7c', N'91a7d9b8-dc89-40e4-b927-292b8a8e499a')
GO
INSERT [dbo].[AspNetUsers] ([Id], [Nombre], [Rol], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'57323f93-eee4-4c8b-a569-3e598052541d', N'David', N'Admin', N'Deiva.avila', N'DEIVA.AVILA', N'DEiva@gmail.com', N'DEIVA@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEDFTiTaWeaBAAaEQghK/Zva4BvJsq1Yf+n38uTSi2OJ787xhOnZeU6JXQtgric5gBA==', N'TELN64HCMZM7Y7B6MB2TR23MOYSTRNT5', N'59a11316-d1b6-4a75-876a-1a34da084c47', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Nombre], [Rol], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'6e2655a5-24c2-4cb8-821c-c219406fb9cb', N'Powicho Avila', N'Admin', N'powicho.avila', N'POWICHO.AVILA', N'powi@gmail.com', N'POWI@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEFpe93GvLuAHcQbYz0ejoHlswR1peJhPXDraEmivWIG8cH8LLTByjCw9T0t/KJNhEw==', N'Q33762WL3MT3AJ6IXKSWHFZZTTBH6ZZQ', N'01266abb-52dc-4982-bf95-9e2b209ef563', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [Nombre], [Rol], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'd9b86531-2b0a-4a48-bcdf-5a3bd09a4f7c', N'Rodrigo', N'Admin', N'Rodrigo.bonilla', N'RODRIGO.BONILLA', N'Rodrigo@gmail.com', N'RODRIGO@GMAIL.COM', 0, N'AQAAAAIAAYagAAAAEN2e2HcI7guBfF8TbzpXriXF4CXGVRHFNDQieQtZx04ooUU+jfbCQtaRQmcoGSX1Tw==', N'IVPXKGGB5NNBHHOLR2E4H5BO4ZTMFJE5', N'6e285eb8-ce67-4833-823a-290a3a18d26b', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[clientes] ON 

INSERT [dbo].[clientes] ([cliente_id], [nit], [nombre], [apellido], [direccion], [telefono]) VALUES (1, N'1234567', N'Eduardo ', N'Belisle', N'4 avenida 0-40 zona 0 Puerto San Jose', N'48642420')
INSERT [dbo].[clientes] ([cliente_id], [nit], [nombre], [apellido], [direccion], [telefono]) VALUES (2, N'000', N'cf', N'consumidor final ', N'Consumidor Final', N'000')
INSERT [dbo].[clientes] ([cliente_id], [nit], [nombre], [apellido], [direccion], [telefono]) VALUES (6, N'1100113322', N'Jose', N'Sandoval', N'4 avenida 0-40 zona 1', N'22001883')
SET IDENTITY_INSERT [dbo].[clientes] OFF
GO
SET IDENTITY_INSERT [dbo].[detalle_ventas] ON 

INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (1, 1, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (2, 4, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (3, 4, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (4, 5, 1, 2, CAST(1000.00 AS Decimal(10, 2)), CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (5, 5, 2, 2, CAST(1000.00 AS Decimal(10, 2)), CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (6, 6, 1, 5, CAST(1000.00 AS Decimal(10, 2)), CAST(5000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (7, 7, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (8, 7, 2, 9, CAST(1000.00 AS Decimal(10, 2)), CAST(9000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (9, 8, 1, 2, CAST(1000.00 AS Decimal(10, 2)), CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (10, 8, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (11, 9, 1, 2, CAST(1000.00 AS Decimal(10, 2)), CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (12, 9, 2, 2, CAST(1000.00 AS Decimal(10, 2)), CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (13, 10, 1, 4, CAST(1000.00 AS Decimal(10, 2)), CAST(4000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (14, 11, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (15, 12, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (16, 12, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (17, 13, 2, 4, CAST(1000.00 AS Decimal(10, 2)), CAST(4000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (18, 14, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (19, 14, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (20, 15, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (21, 15, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (22, 16, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (23, 16, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (24, 17, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (25, 17, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (26, 18, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (27, 18, 2, 2, CAST(1000.00 AS Decimal(10, 2)), CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (28, 19, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (29, 19, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (30, 20, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (31, 20, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (32, 21, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (33, 21, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (34, 22, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (35, 23, 2, 2, CAST(1000.00 AS Decimal(10, 2)), CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (36, 23, 1, 4, CAST(1000.00 AS Decimal(10, 2)), CAST(4000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (37, 24, 1, 2, CAST(1000.00 AS Decimal(10, 2)), CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (38, 24, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (39, 25, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (40, 25, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (41, 26, 3, 1, CAST(250.00 AS Decimal(10, 2)), CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (42, 26, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (43, 27, 3, 1, CAST(250.00 AS Decimal(10, 2)), CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (44, 27, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (45, 27, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (46, 28, 3, 2, CAST(250.00 AS Decimal(10, 2)), CAST(500.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (47, 28, 2, 2, CAST(1000.00 AS Decimal(10, 2)), CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (48, 28, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (49, 29, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (50, 29, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (51, 29, 3, 1, CAST(250.00 AS Decimal(10, 2)), CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (52, 30, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (54, 38, 1, 6, CAST(1000.00 AS Decimal(10, 2)), CAST(6000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (55, 38, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (56, 38, 3, 1, CAST(250.00 AS Decimal(10, 2)), CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (59, 44, 1, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (60, 44, 2, 1, CAST(1000.00 AS Decimal(10, 2)), CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (61, 44, 3, 1, CAST(250.00 AS Decimal(10, 2)), CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (62, 44, 7, 1, CAST(100.11 AS Decimal(10, 2)), CAST(100.11 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (63, 45, 2, 4, CAST(1000.00 AS Decimal(10, 2)), CAST(4000.00 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (64, 45, 7, 4, CAST(100.11 AS Decimal(10, 2)), CAST(400.44 AS Decimal(10, 2)))
INSERT [dbo].[detalle_ventas] ([detalle_venta_id], [venta_id], [producto_id], [cantidad], [precio_unitario], [subtotal]) VALUES (65, 46, 3, 1, CAST(250.00 AS Decimal(10, 2)), CAST(250.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[detalle_ventas] OFF
GO
SET IDENTITY_INSERT [dbo].[empleados] ON 

INSERT [dbo].[empleados] ([empleado_id], [nombre], [apellido], [dpi], [cargo], [usuario_id]) VALUES (1, N'Luisa', N'Avila', N'190601', N'Adim', N'6e2655a5-24c2-4cb8-821c-c219406fb9cb')
INSERT [dbo].[empleados] ([empleado_id], [nombre], [apellido], [dpi], [cargo], [usuario_id]) VALUES (3, N'David', N'Avila', N'12312', N'Adim', N'6e2655a5-24c2-4cb8-821c-c219406fb9cb')
INSERT [dbo].[empleados] ([empleado_id], [nombre], [apellido], [dpi], [cargo], [usuario_id]) VALUES (1003, N'Rodrigo', N'Bonilla', N'1114334', N'Adim', N'd9b86531-2b0a-4a48-bcdf-5a3bd09a4f7c')
SET IDENTITY_INSERT [dbo].[empleados] OFF
GO
SET IDENTITY_INSERT [dbo].[productos] ON 

INSERT [dbo].[productos] ([producto_id], [codigo], [nombre], [descripcion], [precio], [stock], [foto_url]) VALUES (1, N'150', N'Mouse G502', N'Mouse Inalambrico', CAST(1000.00 AS Decimal(10, 2)), 53, N'https://res.cloudinary.com/dl2vcwict/image/upload/v1732907304/b8q50lekowu33yteuasa.jpg')
INSERT [dbo].[productos] ([producto_id], [codigo], [nombre], [descripcion], [precio], [stock], [foto_url]) VALUES (2, N'200', N'Raton502', N'Mouse cableado', CAST(1000.00 AS Decimal(10, 2)), 955, N'https://res.cloudinary.com/dl2vcwict/image/upload/v1732769193/blji7un7bx0zoyeppahi.png')
INSERT [dbo].[productos] ([producto_id], [codigo], [nombre], [descripcion], [precio], [stock], [foto_url]) VALUES (3, N'12', N'Bocina ', N'Parlante portatil ', CAST(250.00 AS Decimal(10, 2)), 192, N'https://res.cloudinary.com/dl2vcwict/image/upload/v1732851576/s249stqxvmc1rndloulf.webp')
INSERT [dbo].[productos] ([producto_id], [codigo], [nombre], [descripcion], [precio], [stock], [foto_url]) VALUES (7, N'13879', N'Producto testo', N'Este es un test de producto ', CAST(100.11 AS Decimal(10, 2)), 95, N'https://res.cloudinary.com/dl2vcwict/image/upload/v1732915225/iuraa6skrgkpvlyo2f89.jpg')
SET IDENTITY_INSERT [dbo].[productos] OFF
GO
SET IDENTITY_INSERT [dbo].[ventas] ON 

INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (1, CAST(N'2024-11-27T22:10:25.697' AS DateTime), 1, 1, CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (3, CAST(N'2024-11-27T00:00:00.000' AS DateTime), 1, 1, CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (4, CAST(N'2024-11-27T23:25:36.353' AS DateTime), 1, 1, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (5, CAST(N'2024-11-27T23:26:04.877' AS DateTime), 1, 1, CAST(4000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (6, CAST(N'2024-11-27T23:28:05.923' AS DateTime), 1, 1, CAST(5000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (7, CAST(N'2024-11-27T23:34:23.350' AS DateTime), 1, 1, CAST(10000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (8, CAST(N'2024-11-27T23:35:50.360' AS DateTime), 1, 1, CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (9, CAST(N'2024-11-27T23:38:26.707' AS DateTime), 1, 1, CAST(4000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (10, CAST(N'2024-11-27T23:39:11.140' AS DateTime), 1, 1, CAST(4000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (11, CAST(N'2024-11-27T23:40:46.897' AS DateTime), 1, 1, CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (12, CAST(N'2024-11-27T23:44:51.620' AS DateTime), 1, 1, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (13, CAST(N'2024-11-27T23:47:21.110' AS DateTime), 1, 1, CAST(4000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (14, CAST(N'2024-11-27T23:50:20.537' AS DateTime), 1, 1, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (15, CAST(N'2024-11-27T23:51:19.900' AS DateTime), 1, 1, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (16, CAST(N'2024-11-27T23:55:36.127' AS DateTime), 1, 1, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (17, CAST(N'2024-11-27T23:56:13.163' AS DateTime), 1, 1, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (18, CAST(N'2024-11-27T23:59:34.127' AS DateTime), 1, 1, CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (19, CAST(N'2024-11-28T00:00:21.690' AS DateTime), 1, 1, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (20, CAST(N'2024-11-28T00:05:53.700' AS DateTime), 1, 1, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (21, CAST(N'2024-11-28T00:06:39.237' AS DateTime), 1, 1, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (22, CAST(N'2024-11-28T00:07:43.223' AS DateTime), 1, 1, CAST(1000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (23, CAST(N'2024-11-28T00:32:12.453' AS DateTime), 1, 1, CAST(6000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (24, CAST(N'2024-11-28T00:58:17.420' AS DateTime), 1, 1, CAST(3000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (25, CAST(N'2024-11-28T01:13:30.550' AS DateTime), 2, 1, CAST(2000.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (26, CAST(N'2024-11-28T21:41:28.783' AS DateTime), 2, 1, CAST(1250.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (27, CAST(N'2024-11-29T00:28:27.613' AS DateTime), 2, 1, CAST(2250.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (28, CAST(N'2024-11-29T00:36:06.213' AS DateTime), 2, 1, CAST(3500.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (29, CAST(N'2024-11-29T01:03:05.667' AS DateTime), 1, 1, CAST(2250.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (30, CAST(N'2024-11-29T01:48:49.923' AS DateTime), 2, 1, CAST(8777.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (38, CAST(N'2024-11-29T14:24:49.007' AS DateTime), 2, 3, CAST(15027.00 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (44, CAST(N'2024-11-29T15:23:47.230' AS DateTime), 6, 1, CAST(2350.11 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (45, CAST(N'2024-11-29T15:24:42.180' AS DateTime), 2, 3, CAST(4400.44 AS Decimal(10, 2)))
INSERT [dbo].[ventas] ([venta_id], [fecha], [cliente_id], [empleado_id], [total]) VALUES (46, CAST(N'2024-11-29T15:26:03.780' AS DateTime), 1, 1003, CAST(250.00 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[ventas] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__clientes__DF97D0E48E1FB5F8]    Script Date: 11/30/2024 12:54:58 AM ******/
ALTER TABLE [dbo].[clientes] ADD UNIQUE NONCLUSTERED 
(
	[nit] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__empleado__D8761965AA9769F4]    Script Date: 11/30/2024 12:54:58 AM ******/
ALTER TABLE [dbo].[empleados] ADD UNIQUE NONCLUSTERED 
(
	[dpi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__producto__40F9A206DBDB34F4]    Script Date: 11/30/2024 12:54:58 AM ******/
ALTER TABLE [dbo].[productos] ADD UNIQUE NONCLUSTERED 
(
	[codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[productos] ADD  DEFAULT ((0)) FOR [stock]
GO
ALTER TABLE [dbo].[ventas] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[detalle_ventas]  WITH CHECK ADD FOREIGN KEY([producto_id])
REFERENCES [dbo].[productos] ([producto_id])
GO
ALTER TABLE [dbo].[detalle_ventas]  WITH CHECK ADD FOREIGN KEY([venta_id])
REFERENCES [dbo].[ventas] ([venta_id])
GO
ALTER TABLE [dbo].[empleados]  WITH CHECK ADD  CONSTRAINT [FK_empleados_usuarios] FOREIGN KEY([usuario_id])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[empleados] CHECK CONSTRAINT [FK_empleados_usuarios]
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD FOREIGN KEY([cliente_id])
REFERENCES [dbo].[clientes] ([cliente_id])
GO
ALTER TABLE [dbo].[ventas]  WITH CHECK ADD FOREIGN KEY([empleado_id])
REFERENCES [dbo].[empleados] ([empleado_id])
GO
