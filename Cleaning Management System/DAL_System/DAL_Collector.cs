using REF_System;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_System
{
    public class DAL_Collector
    {
        public DataTable AuthenticateCollector(DB_Handle dB_Handle, REF_Collector rEF_Collector)
        {
            string sqlQuery;
            DataTable dataTable = new DataTable();
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDataAdapter;

            try
            {
                sqlQuery = "SP_AUTHENTICATE_COLLECTOR";
                sqlCommand = new SqlCommand();

                sqlCommand.Parameters.AddWithValue("@collectorUsername", rEF_Collector.USERNAME);
                sqlCommand.Parameters.AddWithValue("@collectorPassword", rEF_Collector.PASSWORD);

                sqlCommand.CommandText = sqlQuery;
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Connection = dB_Handle.GetConnection();
                sqlCommand.Transaction = dB_Handle.GetTransaction();
                sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                sqlDataAdapter.Fill(dataTable);

                return dataTable;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable AddCollector(DB_Handle dB_Handle, REF_Collector rEF_Collector)
        {
            string sqlQuery;
            DataTable dataTable = new DataTable();
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDataAdapter;

            try
            {
                sqlQuery = "SP_ADD_GARBAGECOLLECTOR";
                sqlCommand = new SqlCommand();

                sqlCommand.Parameters.AddWithValue("@collectorName", rEF_Collector.NAME);
                sqlCommand.Parameters.AddWithValue("@collectorUsername", rEF_Collector.USERNAME);
                sqlCommand.Parameters.AddWithValue("@collectorPassword", rEF_Collector.PASSWORD);
                sqlCommand.Parameters.AddWithValue("@collectorContact_number", rEF_Collector.CONTACTNUMBER);

                sqlCommand.CommandText = sqlQuery;
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Connection = dB_Handle.GetConnection();
                sqlCommand.Transaction = dB_Handle.GetTransaction();
                sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                sqlDataAdapter.Fill(dataTable);

                return dataTable;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }
    }
}
