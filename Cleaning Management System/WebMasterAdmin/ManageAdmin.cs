using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebMasterAdmin
{
    public class ManageAdmin
    {
        public int AuthenticateAdmin(Admin admin)
        {
            DataTable dataTable = new DataTable();
            DB_Handle dB_Handle = new DB_Handle();

            try
            {
                dB_Handle.OpenConnection();
                dB_Handle.BeginTransaction();

                string sqlQuery;
                SqlCommand sqlCommand;
                SqlDataAdapter sqlDataAdapter;

                sqlQuery = "SP_ADMIN_LOGIN";
                sqlCommand = new SqlCommand();

                sqlCommand.Parameters.AddWithValue("@adminUsername", admin.username);
                sqlCommand.Parameters.AddWithValue("@adminPassword", admin.password);

                sqlCommand.CommandText = sqlQuery;
                sqlCommand.CommandType = CommandType.StoredProcedure;
                sqlCommand.Connection = dB_Handle.GetConnection();
                sqlCommand.Transaction = dB_Handle.GetTransaction();
                sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                sqlDataAdapter.Fill(dataTable);

                if (dataTable.Rows.Count > 0)
                {
                    dB_Handle.CommitTransaction();
                    dB_Handle.CloseConnection();
                    return 0;
                }
                else
                {
                    dB_Handle.CommitTransaction();
                    dB_Handle.CloseConnection();
                    return 1;
                }

            }
            catch (Exception ex)
            {
                try
                {
                    dB_Handle.RollbackTransaction();
                    dB_Handle.CloseConnection();
                    return 2;
                }
                catch (Exception)
                {

                    throw ex;
                }
            }

        }
    }
}