SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CalcularEstadoResultados]
    @FechaInicio DATE,
    @FechaFin DATE
AS
BEGIN
    -- Crear una tabla temporal para almacenar los resultados
    CREATE TABLE #EstadoResultados (
        Categoria NVARCHAR(50),
        Valor DECIMAL(10, 2)
    )

    -- Declarar variables para los totales de ingresos y gastos
    DECLARE @IngresosTotales DECIMAL(10, 2)
    DECLARE @GastosTotales DECIMAL(10, 2)
    
    -- Calcular los ingresos totales
    SELECT @IngresosTotales = SUM(Monto)
    FROM RegistrosContables
    WHERE Fecha BETWEEN @FechaInicio AND @FechaFin
        AND Tipo = 'Ingreso'
        
    -- Calcular los gastos totales
    SELECT @GastosTotales = SUM(Monto)
    FROM RegistrosContables
    WHERE Fecha BETWEEN @FechaInicio AND @FechaFin
        AND Tipo = 'Gasto'
    
    -- Calcular el beneficio neto (ingresos - gastos)
    DECLARE @BeneficioNeto DECIMAL(10, 2)
    SET @BeneficioNeto = @IngresosTotales - @GastosTotales

    -- Insertar los resultados en la tabla temporal
    INSERT INTO #EstadoResultados (Categoria, Valor)
    VALUES
        ('Ingresos Totales', @IngresosTotales),
        ('Gastos Totales', @GastosTotales),
        ('Beneficio Neto', @BeneficioNeto)

    -- Seleccionar los resultados de la tabla temporal
    SELECT Categoria, Valor
    FROM #EstadoResultados

    -- Eliminar la tabla temporal
    DROP TABLE #EstadoResultados
END
GO