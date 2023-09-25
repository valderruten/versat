CREATE PROCEDURE [dbo].[CalcularBalanceGeneral]
    @FechaInicio DATE,
    @FechaFin DATE
AS
BEGIN
    -- Crear una tabla temporal para almacenar los resultados
    CREATE TABLE #BalanceGeneral (
        Categoria NVARCHAR(50),
        Cuenta NVARCHAR(50),
        Monto DECIMAL(10, 2)
    )

    -- Declarar variables para los totales de activos y pasivos
    DECLARE @TotalActivosCorrientes DECIMAL(10, 2)
    DECLARE @TotalActivosFijos DECIMAL(10, 2)
    DECLARE @TotalPasivosCorrientes DECIMAL(10, 2)
    DECLARE @TotalPasivosLargoPlazo DECIMAL(10, 2)

    -- Calcular el total de activos corrientes
    SELECT @TotalActivosCorrientes = SUM(Monto)
    FROM RegistrosContables
    WHERE Fecha BETWEEN @FechaInicio AND @FechaFin
        AND Clase = 'Activo'
        AND Grupo = 'Activo Corriente'
        AND Tipo = 'Ingreso'

    -- Insertar el resultado en la tabla temporal
    INSERT INTO #BalanceGeneral (Categoria, Cuenta, Monto)
    VALUES ('Activos Corrientes', 'Efectivo', @TotalActivosCorrientes)

    -- Calcular el total de activos fijos
    SELECT @TotalActivosFijos = SUM(Monto)
    FROM RegistrosContables
    WHERE Fecha BETWEEN @FechaInicio AND @FechaFin
        AND Clase = 'Activo'
        AND Grupo = 'Activo Fijo'
        AND Tipo = 'Ingreso'

    -- Insertar el resultado en la tabla temporal
    INSERT INTO #BalanceGeneral (Categoria, Cuenta, Monto)
    VALUES ('Activos Fijos', 'Propiedades', @TotalActivosFijos)

    -- Calcular el total de pasivos corrientes
    SELECT @TotalPasivosCorrientes = SUM(Monto)
    FROM RegistrosContables
    WHERE Fecha BETWEEN @FechaInicio AND @FechaFin
        AND Clase = 'Pasivo'
        AND Grupo = 'Pasivo Corriente'
        AND Tipo = 'Gasto'

    -- Insertar el resultado en la tabla temporal
    INSERT INTO #BalanceGeneral (Categoria, Cuenta, Monto)
    VALUES ('Pasivos Corrientes', 'Cuentas por pagar', @TotalPasivosCorrientes)

 
    -- Calcular el total de pasivos a largo plazo
    SELECT @TotalPasivosLargoPlazo = SUM(Monto)
    FROM RegistrosContables
    WHERE Fecha BETWEEN @FechaInicio AND @FechaFin
        AND Clase = 'Pasivo'
        AND Grupo = 'Pasivo a Largo Plazo'
        AND Tipo = 'Gasto'

    -- Insertar el resultado en la tabla temporal
    INSERT INTO #BalanceGeneral (Categoria, Cuenta, Monto)
    VALUES ('Pasivos a Largo Plazo', 'Pago de préstamo a largo plazo', @TotalPasivosLargoPlazo)

    
    -- Calcular el patrimonio neto como la diferencia entre activos y pasivos
    DECLARE @PatrimonioNeto DECIMAL(10, 2)
    SET @PatrimonioNeto = (@TotalActivosCorrientes + @TotalActivosFijos) - (@TotalPasivosCorrientes + @TotalPasivosLargoPlazo)

    -- Insertar el resultado en la tabla temporal
    INSERT INTO #BalanceGeneral (Categoria, Cuenta, Monto)
    VALUES ('Patrimonio Neto', 'Beneficio Neto acumulado (ganancias - pérdidas)', @PatrimonioNeto)

    -- Imprimir el Balance General en formato de tabla
    SELECT Categoria, Cuenta, Monto
    FROM #BalanceGeneral

    -- Eliminar la tabla temporal
    DROP TABLE #BalanceGeneral
END
