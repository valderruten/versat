SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CalcularIndiceLiquidezCorriente]
     @FechaInicio DATE,
    @FechaFin DATE 
AS
BEGIN
    -- Declarar variables para los totales de activos corrientes y pasivos corrientes
    DECLARE @TotalActivosCorrientes DECIMAL(10, 2)
    DECLARE @TotalPasivosCorrientes DECIMAL(10, 2)

    -- Calcular el total de activos corrientes (Ingresos)
    SELECT @TotalActivosCorrientes = SUM(Monto)
    FROM RegistrosContables
    WHERE Fecha BETWEEN @FechaInicio AND @FechaFin
        AND Clase = 'Activo'
        AND Grupo = 'Activo Corriente'
        AND Tipo = 'Ingreso'

    -- Calcular el total de pasivos corrientes (Gastos)
    SELECT @TotalPasivosCorrientes = SUM(Monto)
    FROM RegistrosContables
    WHERE Fecha BETWEEN @FechaInicio AND @FechaFin
        AND Clase = 'Pasivo'
        AND Grupo = 'Pasivo Corriente'
        AND Tipo = 'Gasto'

    -- Calcular el índice de liquidez corriente
    DECLARE @IndiceLiquidezCorriente DECIMAL(10, 2)
    
    IF @TotalPasivosCorrientes <> 0
        SET @IndiceLiquidezCorriente = @TotalActivosCorrientes / @TotalPasivosCorrientes
    ELSE
        SET @IndiceLiquidezCorriente = 0

    -- Devolver el índice de liquidez corriente como resultado
    SELECT @IndiceLiquidezCorriente AS IndiceLiquidezCorriente
END
GO
