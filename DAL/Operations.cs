using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data;

namespace DAL
{
    public class Operations
    {
        public int CheckAvailability()
        {
            int SeatCapacity = 45;
            int AvailSeat = 0;
            try
            {
                SqlConnection Conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnect"].ConnectionString);
                SqlCommand cmd = new SqlCommand();
                SqlDataReader reader;

                cmd.CommandText = "SELECT SUM(TicketsCount) AS Count FROM Reservations";
                cmd.CommandType = CommandType.Text;
                cmd.Connection = Conn;
                Conn.Open();

                reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    AvailSeat = SeatCapacity - Convert.ToInt32(reader["Count"]);
                }
                Conn.Close();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return AvailSeat;
        }

        private void CreateSQLConnection()
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DBConnect"].ConnectionString);
            conn.Open();
        }
    }
}
