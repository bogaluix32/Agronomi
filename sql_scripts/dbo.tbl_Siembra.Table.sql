USE [DB_Agronomi]
GO
/****** Object:  Table [dbo].[tbl_Siembra]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Siembra](
	[costoPorSucroAnimal] [float] NOT NULL,
	[costoPorRegadoPapa] [float] NOT NULL,
	[costoPorFertilizacion] [float] NOT NULL,
	[costoSemilla] [float] NOT NULL,
	[resultadoSiembra] [float] NULL,
	[idTerreno] [varchar](10) NULL,
	[idUsuario] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_Siembra] ([costoPorSucroAnimal], [costoPorRegadoPapa], [costoPorFertilizacion], [resultadoSiembra], [idTerreno], [idUsuario]) VALUES (40000, 60000, 120000, 1, N'T-001', 2)
INSERT [dbo].[tbl_Siembra] ([costoPorSucroAnimal], [costoPorRegadoPapa], [costoPorFertilizacion], [resultadoSiembra], [idTerreno], [idUsuario]) VALUES (2, 2, 2, 2, N'T-002', 2)
INSERT [dbo].[tbl_Siembra] ([costoPorSucroAnimal], [costoPorRegadoPapa], [costoPorFertilizacion], [resultadoSiembra], [idTerreno], [idUsuario]) VALUES (2, 2, 2, 2, N'T-001', 1002)
INSERT [dbo].[tbl_Siembra] ([costoPorSucroAnimal], [costoPorRegadoPapa], [costoPorFertilizacion], [resultadoSiembra], [idTerreno], [idUsuario]) VALUES (5000, 6000, 8000, 24000, N'T-005', 2)
INSERT [dbo].[tbl_Siembra] ([costoPorSucroAnimal], [costoPorRegadoPapa], [costoPorFertilizacion], [resultadoSiembra], [idTerreno], [idUsuario]) VALUES (1200, 1200, 5, 3605, N'T-006', 2)
INSERT [dbo].[tbl_Siembra] ([costoPorSucroAnimal], [costoPorRegadoPapa], [costoPorFertilizacion], [resultadoSiembra], [idTerreno], [idUsuario]) VALUES (2500, 2500, 6, 7506, N'T-007', 2)
GO
ALTER TABLE [dbo].[tbl_Siembra]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
