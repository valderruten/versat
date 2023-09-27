SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CalcularMargenBeneficioNeto]
@FechaInicio DATE,
    @FechaFin DATE
AS
BEGIN
    DECLARE @IngresosTotales DECIMAL(10, 2)
    DECLARE @GastosTotales DECIMAL(10, 2)
    DECLARE @BeneficioNeto DECIMAL(10, 2)
    DECLARE @MargenBeneficioNeto DECIMAL(5, 2)

    -- Calcular los ingresos totales dentro del rango de fechas
    SET @IngresosTotales = (
        SELECT SUM(Monto)
        FROM RegistrosContables
        WHERE tipo = 'Ingreso'
            AND Fecha BETWEEN @FechaInicio AND @FechaFin
    )

    -- Calcular los gastos totales dentro del rango de fechas
    SET @GastosTotales = (
        SELECT SUM(Monto)
        FROM RegistrosContables
        WHERE tipo= 'Gasto'
            AND Fecha BETWEEN @FechaInicio AND @FechaFin
    )

    -- Calcular el beneficio neto restando gastos de ingresos
    SET @BeneficioNeto = @IngresosTotales - @GastosTotales

    -- Calcular el margen de beneficio neto como porcentaje
    SET @MargenBeneficioNeto = (@BeneficioNeto / @IngresosTotales) * 100

    -- Devolver el margen de beneficio neto
    SELECT @MargenBeneficioNeto AS MargenBeneficioNeto
END;
GO