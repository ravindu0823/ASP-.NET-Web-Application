using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using REF_System;

namespace DAL_System
{
    public class DAL_GCaptain
    {
        public DataTable AuthenticateGreenCaptain(DB_Handle dB_Handle, REF_GCaptain rEF_GCaptain)
        {
            string sqlQuery;
            DataTable dataTable = new DataTable();
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDataAdapter;

            try
            {
                sqlQuery = "SP_AUTHENTICATE_GREENCAPTAIN";
                sqlCommand = new SqlCommand();

                sqlCommand.Parameters.AddWithValue("@capUsername", rEF_GCaptain.USERNAME);
                sqlCommand.Parameters.AddWithValue("@capPassword", rEF_GCaptain.PASSWORD);

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

        public DataTable InsertGreenCaptain(DB_Handle dB_Handle, REF_GCaptain rEF_GCaptain)
        {
            string sqlQuery;
            DataTable dataTable = new DataTable();
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDataAdapter;

            try
            {
                sqlQuery = "SP_INSERT_GCAPTAIN";
                sqlCommand = new SqlCommand();

                sqlCommand.Parameters.AddWithValue("@gname", rEF_GCaptain.NAME);
                sqlCommand.Parameters.AddWithValue("@gusername", rEF_GCaptain.USERNAME);
                sqlCommand.Parameters.AddWithValue("@gpassword", rEF_GCaptain.PASSWORD);
                sqlCommand.Parameters.AddWithValue("@gcontact_number", rEF_GCaptain.CONTACT_NUMBER);
                sqlCommand.Parameters.AddWithValue("@gnic", rEF_GCaptain.NIC);

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
