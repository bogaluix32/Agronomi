USE [DB_Agronomi]
GO
/****** Object:  StoredProcedure [dbo].[ConsultarCostoCosecha]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ConsultarCostoCosecha]
    @idTerreno VARCHAR(50),
    @idUsuario INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @costoCosecha DECIMAL(18, 2);

    -- Consultar el costo de la cosecha
    SELECT @costoCosecha = ROUND(costoPorCosecha, 0) -- Redondear a un número entero
    FROM tbl_Cosecha
    WHERE idTerreno = @idTerreno
    AND idUsuario = @idUsuario;

    -- Retornar el costo de la cosecha
    SELECT @costoCosecha AS costoCosecha;
END
GO
