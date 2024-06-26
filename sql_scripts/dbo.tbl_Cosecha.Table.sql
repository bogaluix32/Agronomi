USE [DB_Agronomi]
GO
/****** Object:  Table [dbo].[tbl_Cosecha]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_Cosecha](
	[costoPorCosecha] [int] NULL,
	[costoPorLavado] [float] NOT NULL,
	[costoPorSaco] [float] NOT NULL,
	[costoPorTransporteCarga] [float] NOT NULL,
	[idTerreno] [varchar](10) NULL,
	[idUsuario] [int] NULL,
	[costoDelQuintal] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[tbl_Cosecha] ([costoPorCosecha], [costoPorLavado], [costoPorSaco], [costoPorTransporteCarga], [idTerreno], [idUsuario], [costoDelQuintal]) VALUES (12000, 12000, 12000, 12000, N'T-001', 2, 1)
INSERT [dbo].[tbl_Cosecha] ([costoPorCosecha], [costoPorLavado], [costoPorSaco], [costoPorTransporteCarga], [idTerreno], [idUsuario], [costoDelQuintal]) VALUES (2, 2, 2, 2, N'T-002', 2, 1)
INSERT [dbo].[tbl_Cosecha] ([costoPorCosecha], [costoPorLavado], [costoPorSaco], [costoPorTransporteCarga], [idTerreno], [idUsuario], [costoDelQuintal]) VALUES (2000, 3500, 2000, 5500, N'T-003', 2, 6000)
INSERT [dbo].[tbl_Cosecha] ([costoPorCosecha], [costoPorLavado], [costoPorSaco], [costoPorTransporteCarga], [idTerreno], [idUsuario], [costoDelQuintal]) VALUES (52, 50000, 65000, 70000, N'T-005', 2, 3500)
INSERT [dbo].[tbl_Cosecha] ([costoPorCosecha], [costoPorLavado], [costoPorSaco], [costoPorTransporteCarga], [idTerreno], [idUsuario], [costoDelQuintal]) VALUES (NULL, 1200, 1200, 1200, N'T-006', 2, 1200)
GO
ALTER TABLE [dbo].[tbl_Cosecha]  WITH CHECK ADD FOREIGN KEY([idUsuario])
REFERENCES [dbo].[tbl_Usuario] ([idUsuario])
GO
