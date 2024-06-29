USE [DB_Agronomi]
GO
/****** Object:  StoredProcedure [dbo].[SP_Insertar_Nematicidas]    Script Date: 26/6/2024 23:32:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Insertar_Nematicidas]
    @costoProducto int,
    @cantidadProducto int,
    @cantidadAplicada int,
    @costoPorAplicacion int,
    @idTerreno varchar(10),
    @producto varchar(100),
    @idUsuario int,
    @message varchar(500) output,
    @result int output
AS
BEGIN TRY
    SET @result = 0;

    IF NOT EXISTS (SELECT 1 FROM tbl_Nematicidas WHERE idTerreno = @idTerreno AND idUsuario = @idUsuario)
    BEGIN
        IF EXISTS (SELECT 1 FROM tbl_SeleccionTerreno WHERE idUsuario = @idUsuario AND idTerreno = @idTerreno)
        BEGIN
            INSERT INTO tbl_Nematicidas (costoProducto, cantidadProducto, cantidadAplicada, costoPorAplicacion, idTerreno, producto, idUsuario)
			VALUES (@costoProducto, @cantidadProducto, @cantidadAplicada, @costoPorAplicacion, @idTerreno, @producto, @idUsuario)

            SET @result = 1;
        END
        ELSE
        BEGIN
            SET @message = 'El terreno especificado no existe en Selección del Terreno.';
        END
    END
    ELSE
    BEGIN
        SET @message = 'El terreno especificado ya ha sido registrado en Nematicidas.';
    END
END TRY
BEGIN CATCH
    SET @message = ERROR_MESSAGE();
END CATCH
GO
