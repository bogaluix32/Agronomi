USE [DB_Agronomi]
GO
/****** Object:  Table [dbo].[tbl_SeleccionTerreno]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_SeleccionTerreno](
	[idTerreno] [varchar](10) NOT NULL,
	[tamanioTerreno] [float] NOT NULL,
	[areaCultivo] [float] NOT NULL,
	[analisisTerreno] [varchar](100) NULL,
	[costoOportunidad] [int] NULL,
	[analisisPatologico] [varchar](50) NULL,
	[ubicacionTerrno] [varchar](100) NOT NULL,
	[idUsuario] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_SeleccionTerreno] ([idTerreno], [tamanioTerreno], [areaCultivo], [analisisTerreno], [costoOportunidad], [analisisPatologico], [ubicacionTerrno], [idUsuario]) VALUES (N'T-001', 4.5, 4, N'Falto de fosforo', 2500, N'Relativo', N'Cartago, Tierra Blanca', 2)
INSERT [dbo].[tbl_SeleccionTerreno] ([idTerreno], [tamanioTerreno], [areaCultivo], [analisisTerreno], [costoOportunidad], [analisisPatologico], [ubicacionTerrno], [idUsuario]) VALUES (N'T-002', 5.5, 3, N'Falto de fosforo', 2800, N'Relativo', N'Cartago, Turrialba, Santa Cruz', 2)
INSERT [dbo].[tbl_SeleccionTerreno] ([idTerreno], [tamanioTerreno], [areaCultivo], [analisisTerreno], [costoOportunidad], [analisisPatologico], [ubicacionTerrno], [idUsuario]) VALUES (N'T-003', 2, 2, N'prueba', 2, N'prueba', N'San José, Montes de Oca, San Pedro', 2)
INSERT [dbo].[tbl_SeleccionTerreno] ([idTerreno], [tamanioTerreno], [areaCultivo], [analisisTerreno], [costoOportunidad], [analisisPatologico], [ubicacionTerrno], [idUsuario]) VALUES (N'T-001', 3, 3, N'Falto de fosforo', 3, N'Relativo', N'Cartago, Oreamuno, Cot', 1002)
INSERT [dbo].[tbl_SeleccionTerreno] ([idTerreno], [tamanioTerreno], [areaCultivo], [analisisTerreno], [costoOportunidad], [analisisPatologico], [ubicacionTerrno], [idUsuario]) VALUES (N'T-002', 4, 4, N'prueba', 4, N'prueba', N'Cartago, Turrialba, Tayutic', 1002)
INSERT [dbo].[tbl_SeleccionTerreno] ([idTerreno], [tamanioTerreno], [areaCultivo], [analisisTerreno], [costoOportunidad], [analisisPatologico], [ubicacionTerrno], [idUsuario]) VALUES (N'T-003', 9, 9, N'prueba', 9, N'prueba', N'San José, Moravia, San Vicente', 1002)
INSERT [dbo].[tbl_SeleccionTerreno] ([idTerreno], [tamanioTerreno], [areaCultivo], [analisisTerreno], [costoOportunidad], [analisisPatologico], [ubicacionTerrno], [idUsuario]) VALUES (N'T-004', 3, 3, N'pruebaCosto', 5000, N'pruebaCosto', N'Alajuela, Los Chiles, Caño Negro', 2)
INSERT [dbo].[tbl_SeleccionTerreno] ([idTerreno], [tamanioTerreno], [areaCultivo], [analisisTerreno], [costoOportunidad], [analisisPatologico], [ubicacionTerrno], [idUsuario]) VALUES (N'T-005', 50, 25, N'probando', 52000, N'probando', N'Cartago, Cartago, Llano Grande', 2)
INSERT [dbo].[tbl_SeleccionTerreno] ([idTerreno], [tamanioTerreno], [areaCultivo], [analisisTerreno], [costoOportunidad], [analisisPatologico], [ubicacionTerrno], [idUsuario]) VALUES (N'T-006', 10, 8, N'pruebaNestor', 15000, N'pruebaNestor', N'San José, Montes de Oca, San Rafael', 2)
INSERT [dbo].[tbl_SeleccionTerreno] ([idTerreno], [tamanioTerreno], [areaCultivo], [analisisTerreno], [costoOportunidad], [analisisPatologico], [ubicacionTerrno], [idUsuario]) VALUES (N'T-007', 5, 3, N'suelos', 70000, N'relativo', N'Cartago, Oreamuno, San Rafael', 2)
INSERT [dbo].[tbl_SeleccionTerreno] ([idTerreno], [tamanioTerreno], [areaCultivo], [analisisTerreno], [costoOportunidad], [analisisPatologico], [ubicacionTerrno], [idUsuario]) VALUES (N'T-008', 6, 3, N'x', 5, N'x', N'San José, Turrubares, San Pedro', 2)
GO
ALTER TABLE [dbo].[tbl_SeleccionTerreno]  WITH CHECK ADD  CONSTRAINT [FK_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
ALTER TABLE [dbo].[tbl_SeleccionTerreno] CHECK CONSTRAINT [FK_Usuario]
GO
