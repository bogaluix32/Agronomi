USE [DB_Agronomi]
GO
/****** Object:  Table [dbo].[tbl_EstimuladorCrecimiento]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_EstimuladorCrecimiento](
	[costoProducto] [int] NULL,
	[cantidadProducto] [int] NULL,
	[cantidadAplicada] [int] NULL,
	[costoPorAplicacion] [int] NULL,
	[idTerreno] [varchar](10) NULL,
	[producto] [varchar](100) NOT NULL,
	[idUsuario] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_EstimuladorCrecimiento] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (25000, 1000, 60, 15000, N'T-001', N'Promalina', 2)
INSERT [dbo].[tbl_EstimuladorCrecimiento] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (2, 2, 2, 2, N'T-002', N'prueba', 2)
INSERT [dbo].[tbl_EstimuladorCrecimiento] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (6000, 4, 2, 3000, N'T-003', N'probando', 2)
INSERT [dbo].[tbl_EstimuladorCrecimiento] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (8000, 6, 3, 3200, N'T-005', N'probando', 2)
INSERT [dbo].[tbl_EstimuladorCrecimiento] ([costoProducto], [cantidadProducto], [cantidadAplicada], [costoPorAplicacion], [idTerreno], [producto], [idUsuario]) VALUES (2500, 10, 5, 1250, N'T-007', N'prueba', 2)
GO
ALTER TABLE [dbo].[tbl_EstimuladorCrecimiento]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
