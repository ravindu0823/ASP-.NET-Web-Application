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
    public class DAL_GTFMember
    {
        public DataTable GTFMemberRegister(DB_Handle dB_Handle, REF_GTFMember rEF_GTFMember)
        {
            string sqlQuery;
            DataTable dataTable = new DataTable();
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDataAdapter;

            try
            {
                sqlQuery = "SP_INSERT_GTFMEMBER";
                sqlCommand = new SqlCommand();

                sqlCommand.Parameters.AddWithValue("@memberfull_name", rEF_GTFMember.FULLNAME);
                sqlCommand.Parameters.AddWithValue("@memberEmail", rEF_GTFMember.EMAIL);
                sqlCommand.Parameters.AddWithValue("@memberContactNumber", rEF_GTFMember.CONTACTNUMBER);
                sqlCommand.Parameters.AddWithValue("@memberPassword", rEF_GTFMember.PASSWORD);

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

        public DataTable AuthenticateMember(DB_Handle dB_Handle, REF_GTFMember rEF_GTFMember)
        {
            string sqlQuery;
            DataTable dataTable = new DataTable();
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDataAdapter;

            try
            {
                sqlQuery = "SP_AUTHENTICATE_MEMBER";
                sqlCommand = new SqlCommand();

                sqlCommand.Parameters.AddWithValue("@memberEmail", rEF_GTFMember.EMAIL);
                sqlCommand.Parameters.AddWithValue("@memberPassword", rEF_GTFMember.PASSWORD);

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
