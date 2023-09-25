using System;
using System.Data;
using System.Data.SqlClient;

namespace ContabilidadApp
{
    class Program
    {
        static void Main(string[] args)
        {
            string connectionString = "Server=DESKTOP-OEJ1QD3\\SQLEXPRESS01;Database=ContabilidadEmpresa;Trusted_Connection=True;";

            Console.WriteLine("Ingrese la fecha de inicio (yyyy-MM-dd):");
            if (DateTime.TryParse(Console.ReadLine(), out DateTime fechaInicio))
            {
                Console.WriteLine("Ingrese la fecha de fin (yyyy-MM-dd):");
                if (DateTime.TryParse(Console.ReadLine(), out DateTime fechaFin))
                {
                    ContabilidadManager contabilidadManager = new ContabilidadManager(connectionString);


                    Console.WriteLine();
                    Console.WriteLine();
                    Console.WriteLine();
                    // Calcular y mostrar el balance general
                    DataTable balanceGeneral = contabilidadManager.CalcularBalanceGeneral(fechaInicio, fechaFin);
                    Console.WriteLine("Balance General:");
                    foreach (DataRow row in balanceGeneral.Rows)
                    {
                        Console.WriteLine($"{row["Categoria"]}: {row["Monto"]}");
                    }
                    Console.WriteLine();

                    // Calcular y mostrar el estado de resultados
                    DataTable estadoResultados = contabilidadManager.CalcularEstadoResultados(fechaInicio, fechaFin);
                    Console.WriteLine("Estado de Resultados:");
                    foreach (DataRow row in estadoResultados.Rows)
                    {
                        Console.WriteLine($"{row["Categoria"]}: {row["Valor"]}");
                    }
                    Console.WriteLine();

                    // Calcular y mostrar el índice de liquidez corriente
                    decimal indiceLiquidezCorriente = contabilidadManager.CalcularIndiceLiquidezCorriente(fechaInicio, fechaFin);
                    Console.WriteLine($"Análisis de Liquidez: {indiceLiquidezCorriente}");
                    Console.WriteLine();

                    // Calcular y mostrar el Análisis de Rentabilidad
                    decimal margenBeneficioNeto = contabilidadManager.CalcularMargenBeneficioNeto(fechaInicio, fechaFin);
                    Console.WriteLine($"Análisis de Rentabilidad: {margenBeneficioNeto}%");
                    Console.WriteLine();
                }
                else
                {
                    Console.WriteLine("Fecha de fin inválida. Asegúrese de ingresar la fecha en formato yyyy-MM-dd.");
                }
            }
            else
            {
                Console.WriteLine("Fecha de inicio inválida. Asegúrese de ingresar la fecha en formato yyyy-MM-dd.");
            }

            Console.WriteLine("Presione Enter para salir...");
            Console.ReadLine();
        }
    }
}
