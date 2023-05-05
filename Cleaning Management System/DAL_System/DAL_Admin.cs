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
    public class DAL_Admin
    {
        public DataTable AuthenticateAdmin(DB_Handle dB_Handle, REF_Admin rEF_Admin)
        {
            string sqlQuery;
            DataTable dataTable = new DataTable();
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDataAdapter;

            try
            {
                sqlQuery = "SP_ADMIN_LOGIN";
                sqlCommand = new SqlCommand();

                sqlCommand.Parameters.AddWithValue("@adminUsername", rEF_Admin.USERNAME);
                sqlCommand.Parameters.AddWithValue("@adminPassword", rEF_Admin.PASSWORD);

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
