﻿using REF_System;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL_System
{
    public class DAL_Article
    {
        public DataTable LoadAllArticles(DB_Handle oDB_Handle)
        {
            string sqlQuery;
            DataTable oDataTable = new DataTable();
            SqlCommand oSqlCommand;
            SqlDataAdapter oSqlDataAdapter;
            try
            {
                sqlQuery = "SP_GET_ARTICLES";
                oSqlCommand = new SqlCommand();
                oSqlCommand.CommandText = sqlQuery;
                oSqlCommand.CommandType = CommandType.StoredProcedure;
                oSqlCommand.Connection = oDB_Handle.GetConnection();
                oSqlCommand.Transaction = oDB_Handle.GetTransaction();
                oSqlDataAdapter = new SqlDataAdapter(oSqlCommand);
                oSqlDataAdapter.Fill(oDataTable);

                return oDataTable;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        public DataTable AddArticle(DB_Handle dB_Handle, REF_Article rEF_Article)
        {
            string sqlQuery;
            DataTable dataTable = new DataTable();
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDataAdapter;

            try
            {
                sqlQuery = "SP_INSERT_ARTICLE";
                sqlCommand = new SqlCommand();

                sqlCommand.Parameters.AddWithValue("@articleHeading", rEF_Article.HEADING);
                sqlCommand.Parameters.AddWithValue("@articleDescription", rEF_Article.DESCRIPTION);
                sqlCommand.Parameters.AddWithValue("@articleImage_path", rEF_Article.IMAGEPATH);

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
