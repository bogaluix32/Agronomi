USE [DB_Agronomi]
GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_Aporca]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Insertar_Aporca]
    @costoTotalAnimal int,
    @costoPorAporcamiento int,
    @costoPorFertilizacion int,
	@resultadoAporca float,
    @idTerreno varchar(10),
    @idUsuario int,
    @message varchar(500) output,
    @result int output
AS
BEGIN TRY
    SET @result = 0;

    IF NOT EXISTS (SELECT 1 FROM tbl_Aporca WHERE idTerreno = @idTerreno AND idUsuario = @idUsuario)
    BEGIN
        IF EXISTS (SELECT 1 FROM tbl_SeleccionTerreno WHERE idUsuario = @idUsuario AND idTerreno = @idTerreno)
        BEGIN
            INSERT INTO tbl_Aporca (costoTotalAnimal, costoPorAporcamiento, costoPorFertilizacion, resultadoAporca, idTerreno, idUsuario)
			VALUES (@costoTotalAnimal, @costoPorAporcamiento, @costoPorFertilizacion, @resultadoAporca, @idTerreno, @idUsuario)

            SET @result = 1;
        END
        ELSE
        BEGIN
            SET @message = 'El terreno especificado no existe en Selección del Terreno.';
        END
    END
    ELSE
    BEGIN
        SET @message = 'El terreno especificado ya ha sido registrado en Aporca.';
    END
END TRY
BEGIN CATCH
    SET @message = ERROR_MESSAGE();
END CATCH
GO
