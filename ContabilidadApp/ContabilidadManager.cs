using System;
using System.Data;
using System.Data.SqlClient;

public class ContabilidadManager
{
    private string connectionString;

    public ContabilidadManager(string connectionString)
    {
        this.connectionString = connectionString;
    }

    public decimal CalcularMargenBeneficioNeto(DateTime fechaInicio, DateTime fechaFin)
    {
        decimal margenBeneficioNeto = 0;

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            using (SqlCommand cmd = new SqlCommand("CalcularMargenBeneficioNeto", connection))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FechaInicio", fechaInicio);
                cmd.Parameters.AddWithValue("@FechaFin", fechaFin);

                object result = cmd.ExecuteScalar();
                if (result != null && result != DBNull.Value)
                {
                    margenBeneficioNeto = Convert.ToDecimal(result);
                }
            }
        }

        return margenBeneficioNeto;
    }

    public DataTable CalcularBalanceGeneral(DateTime fechaInicio, DateTime fechaFin)
    {
        DataTable balanceGeneral = new DataTable();

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            using (SqlCommand cmd = new SqlCommand("CalcularBalanceGeneral", connection))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FechaInicio", fechaInicio);
                cmd.Parameters.AddWithValue("@FechaFin", fechaFin);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(balanceGeneral);
            }
        }

        return balanceGeneral;
    }

    public DataTable CalcularEstadoResultados(DateTime fechaInicio, DateTime fechaFin)
    {
        DataTable estadoResultados = new DataTable();

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            using (SqlCommand cmd = new SqlCommand("CalcularEstadoResultados", connection))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FechaInicio", fechaInicio);
                cmd.Parameters.AddWithValue("@FechaFin", fechaFin);

                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                adapter.Fill(estadoResultados);
            }
        }

        return estadoResultados;
    }

    public decimal CalcularIndiceLiquidezCorriente(DateTime fechaInicio, DateTime fechaFin)
    {
        decimal indiceLiquidezCorriente = 0;

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            connection.Open();

            using (SqlCommand cmd = new SqlCommand("CalcularIndiceLiquidezCorriente", connection))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@FechaInicio", fechaInicio);
                cmd.Parameters.AddWithValue("@FechaFin", fechaFin);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        
                        indiceLiquidezCorriente = reader.GetDecimal(0);
                    }
                }
            }
        }

        // Formatear el resultado como decimal con dos decimales
        indiceLiquidezCorriente = Math.Round(indiceLiquidezCorriente, 2);

        return indiceLiquidezCorriente;
    }

}






