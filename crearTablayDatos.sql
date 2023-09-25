USE [ContabilidadEmpresa]
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RegistrosContables](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Fecha] [date] NULL,
	[Clase] [nvarchar](20) NULL,
	[Grupo] [nvarchar](20) NULL,
	[Tipo] [nvarchar](20) NULL,
	[Concepto] [nvarchar](255) NULL,
	[Monto] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RegistrosContables] ON 
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (1, CAST(N'2023-01-05' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ventas de productos', CAST(50000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (2, CAST(N'2023-02-15' AS Date), N'Pasivo', N'Pasivo Corriente', N'Gasto', N'Gastos de nómina', CAST(20000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (3, CAST(N'2023-04-10' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ventas de servicios', CAST(30000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (4, CAST(N'2023-06-20' AS Date), N'Pasivo', N'Pasivo Corriente', N'Gasto', N'Alquiler de oficina', CAST(10000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (5, CAST(N'2023-09-15' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Intereses sobre inversiones', CAST(5000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (6, CAST(N'2023-12-31' AS Date), N'Pasivo', N'Pasivo Corriente', N'Gasto', N'Impuestos sobre la renta', CAST(15000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (7, CAST(N'2023-03-08' AS Date), N'Activo', N'Activo Fijo', N'Gasto', N'Mantenimiento de equipos', CAST(8000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (8, CAST(N'2023-05-20' AS Date), N'Pasivo', N'Pasivo a Largo Plazo', N'Gasto', N'Pago de préstamo a largo plazo', CAST(12000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (9, CAST(N'2023-07-12' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ingresos por comisiones', CAST(7500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (10, CAST(N'2023-08-30' AS Date), N'Pasivo', N'Pasivo Corriente', N'Gasto', N'Gastos de suministros de oficina', CAST(3000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (11, CAST(N'2023-10-25' AS Date), N'Activo', N'Activo Fijo', N'Ingreso', N'Venta de propiedad', CAST(25000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (12, CAST(N'2023-11-15' AS Date), N'Pasivo', N'Pasivo a Largo Plazo', N'Gasto', N'Pago de deuda a largo plazo', CAST(18000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (13, CAST(N'2023-02-28' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ingresos por alquileres', CAST(7000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (14, CAST(N'2023-04-15' AS Date), N'Pasivo', N'Pasivo Corriente', N'Gasto', N'Gastos de publicidad', CAST(6000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (15, CAST(N'2023-06-10' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Intereses bancarios', CAST(3500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (16, CAST(N'2023-08-18' AS Date), N'Pasivo', N'Pasivo Corriente', N'Gasto', N'Gastos legales', CAST(4500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (17, CAST(N'2023-11-20' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ingresos por ventas en línea', CAST(12000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (18, CAST(N'2023-01-15' AS Date), N'Pasivo', N'Pasivo a Largo Plazo', N'Gasto', N'Pago de préstamo a largo plazo', CAST(10000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (19, CAST(N'2023-03-20' AS Date), N'Activo', N'Activo Fijo', N'Gasto', N'Mantenimiento de propiedades', CAST(9000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (20, CAST(N'2023-05-05' AS Date), N'Pasivo', N'Pasivo Corriente', N'Ingreso', N'Reembolso de proveedores', CAST(6000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (21, CAST(N'2023-07-25' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ingresos por intereses de inversiones', CAST(4000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (22, CAST(N'2023-10-10' AS Date), N'Pasivo', N'Pasivo a Largo Plazo', N'Gasto', N'Pago de deuda a largo plazo', CAST(15000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (23, CAST(N'2023-01-10' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ventas de productos', CAST(48000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (24, CAST(N'2023-03-25' AS Date), N'Pasivo', N'Pasivo Corriente', N'Gasto', N'Gastos de consultoría', CAST(5500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (25, CAST(N'2023-06-15' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ingresos por servicios de consultoría', CAST(9000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (26, CAST(N'2023-09-20' AS Date), N'Pasivo', N'Pasivo Corriente', N'Gasto', N'Gastos de suministros de oficina', CAST(3500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (27, CAST(N'2023-12-20' AS Date), N'Activo', N'Activo Fijo', N'Ingreso', N'Venta de vehículo', CAST(18000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (28, CAST(N'2023-02-10' AS Date), N'Pasivo', N'Pasivo a Largo Plazo', N'Gasto', N'Pago de préstamo a largo plazo', CAST(11000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (29, CAST(N'2023-04-30' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ingresos por alquileres', CAST(7200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (30, CAST(N'2023-07-05' AS Date), N'Pasivo', N'Pasivo Corriente', N'Gasto', N'Gastos de publicidad', CAST(5800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (31, CAST(N'2023-09-30' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Intereses bancarios', CAST(3800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (32, CAST(N'2023-11-10' AS Date), N'Pasivo', N'Pasivo Corriente', N'Gasto', N'Gastos legales', CAST(4200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (33, CAST(N'2023-02-15' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ingresos por ventas en línea', CAST(11800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (34, CAST(N'2023-04-20' AS Date), N'Pasivo', N'Pasivo a Largo Plazo', N'Gasto', N'Pago de préstamo a largo plazo', CAST(9500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (35, CAST(N'2023-06-05' AS Date), N'Activo', N'Activo Fijo', N'Gasto', N'Mantenimiento de propiedades', CAST(8800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (36, CAST(N'2023-08-10' AS Date), N'Pasivo', N'Pasivo Corriente', N'Ingreso', N'Reembolso de proveedores', CAST(6200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (37, CAST(N'2023-10-15' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ingresos por intereses de inversiones', CAST(4200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (38, CAST(N'2023-01-20' AS Date), N'Pasivo', N'Pasivo a Largo Plazo', N'Gasto', N'Pago de deuda a largo plazo', CAST(13500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (39, CAST(N'2023-03-15' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ventas de productos', CAST(51000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (40, CAST(N'2023-05-30' AS Date), N'Pasivo', N'Pasivo Corriente', N'Gasto', N'Gastos de consultoría', CAST(6000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (41, CAST(N'2023-08-05' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ingresos por servicios de consultoría', CAST(8500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (42, CAST(N'2023-11-25' AS Date), N'Pasivo', N'Pasivo Corriente', N'Gasto', N'Gastos de suministros de oficina', CAST(3200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (43, CAST(N'2023-01-25' AS Date), N'Activo', N'Activo Fijo', N'Ingreso', N'Venta de equipo de producción', CAST(22000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (44, CAST(N'2023-03-10' AS Date), N'Pasivo', N'Pasivo a Largo Plazo', N'Gasto', N'Pago de préstamo a largo plazo', CAST(10500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (45, CAST(N'2023-06-30' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ingresos por alquileres', CAST(7500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (46, CAST(N'2023-09-10' AS Date), N'Pasivo', N'Pasivo Corriente', N'Gasto', N'Gastos de publicidad', CAST(5000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (47, CAST(N'2023-12-10' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Intereses bancarios', CAST(4300.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (48, CAST(N'2023-02-20' AS Date), N'Pasivo', N'Pasivo Corriente', N'Gasto', N'Gastos legales', CAST(4700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (49, CAST(N'2023-05-15' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ingresos por ventas en línea', CAST(12400.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (50, CAST(N'2023-07-30' AS Date), N'Pasivo', N'Pasivo a Largo Plazo', N'Gasto', N'Pago de préstamo a largo plazo', CAST(13000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (51, CAST(N'2023-10-20' AS Date), N'Activo', N'Activo Fijo', N'Gasto', N'Mantenimiento de vehículos', CAST(6500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (52, CAST(N'2023-01-30' AS Date), N'Pasivo', N'Pasivo Corriente', N'Ingreso', N'Reembolso de proveedores', CAST(5500.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (53, CAST(N'2023-04-10' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ingresos por intereses de inversiones', CAST(4800.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (54, CAST(N'2023-06-20' AS Date), N'Pasivo', N'Pasivo a Largo Plazo', N'Gasto', N'Pago de deuda a largo plazo', CAST(12000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (55, CAST(N'2023-09-15' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ventas de productos', CAST(53000.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (56, CAST(N'2023-12-15' AS Date), N'Pasivo', N'Pasivo Corriente', N'Gasto', N'Gastos de consultoría', CAST(5200.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (57, CAST(N'2023-02-05' AS Date), N'Activo', N'Activo Corriente', N'Ingreso', N'Ingresos por servicios de consultoría', CAST(8700.00 AS Decimal(10, 2)))
GO
INSERT [dbo].[RegistrosContables] ([ID], [Fecha], [Clase], [Grupo], [Tipo], [Concepto], [Monto]) VALUES (58, CAST(N'2023-04-30' AS Date), N'Pasivo', N'Pasivo Corriente', N'Gasto', N'Gastos de suministros de oficina', CAST(3800.00 AS Decimal(10, 2)))
GO
SET IDENTITY_INSERT [dbo].[RegistrosContables] OFF
GO