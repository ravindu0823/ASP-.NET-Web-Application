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
    public class DAL_Place
    {
        public DataTable LoadAllApprovedPlaces(DB_Handle oDB_Handle)
        {
            string sqlQuery;
            DataTable oDataTable = new DataTable();
            SqlCommand oSqlCommand;
            SqlDataAdapter oSqlDataAdapter;
            try
            {
                sqlQuery = "SP_GET_APPROVED_PLACES";
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

        public DataTable LoadAllPlaces(DB_Handle oDB_Handle)
        {
            string sqlQuery;
            DataTable oDataTable = new DataTable();
            SqlCommand oSqlCommand;
            SqlDataAdapter oSqlDataAdapter;
            try
            {
                sqlQuery = "SP_GET_ALLPLACES";
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

        public DataTable ApprovePlace(DB_Handle dB_Handle, REF_Place rEF_Place)
        {
            string sqlQuery;
            DataTable dataTable = new DataTable();
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDataAdapter;

            try
            {
                sqlQuery = "SP_APPROVE_PLACE";
                sqlCommand = new SqlCommand();

                sqlCommand.Parameters.AddWithValue("@placeId", rEF_Place.ID);

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

        public DataTable DonePlace(DB_Handle dB_Handle, REF_Place rEF_Place)
        {
            string sqlQuery;
            DataTable dataTable = new DataTable();
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDataAdapter;

            try
            {
                sqlQuery = "SP_DONE_PLACE";
                sqlCommand = new SqlCommand();

                sqlCommand.Parameters.AddWithValue("@placeId", rEF_Place.ID);

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

        public DataTable DeletePlace(DB_Handle dB_Handle, REF_Place rEF_Place)
        {
            string sqlQuery;
            DataTable dataTable = new DataTable();
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDataAdapter;

            try
            {
                sqlQuery = "SP_DELETE_PLACE";
                sqlCommand = new SqlCommand();

                sqlCommand.Parameters.AddWithValue("@placeId", rEF_Place.ID);

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

        public DataTable RejectPlace(DB_Handle dB_Handle, REF_Place rEF_Place)
        {
            string sqlQuery;
            DataTable dataTable = new DataTable();
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDataAdapter;

            try
            {
                sqlQuery = "SP_REJECT_PLACE";
                sqlCommand = new SqlCommand();

                sqlCommand.Parameters.AddWithValue("@placeId", rEF_Place.ID);

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

        public DataTable FlagPlace(DB_Handle dB_Handle, REF_Place rEF_Place)
        {
            string sqlQuery;
            DataTable dataTable = new DataTable();
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDataAdapter;

            try
            {
                sqlQuery = "SP_FLAG_PLACE";
                sqlCommand = new SqlCommand();

                sqlCommand.Parameters.AddWithValue("@placeId", rEF_Place.ID);

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

        public DataTable AddPlace(DB_Handle dB_Handle, REF_Place rEF_Place)
        {
            string sqlQuery;
            DataTable dataTable = new DataTable();
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDataAdapter;

            try
            {
                sqlQuery = "SP_INSERT_PLACE";
                sqlCommand = new SqlCommand();

                sqlCommand.Parameters.AddWithValue("@placeName", rEF_Place.PLACENAME);
                sqlCommand.Parameters.AddWithValue("@placeSituation", rEF_Place.SITUATION);
                sqlCommand.Parameters.AddWithValue("@imagePath", rEF_Place.IMAGEPATH);
                sqlCommand.Parameters.AddWithValue("@locationLatitude", rEF_Place.LATITUDE);
                sqlCommand.Parameters.AddWithValue("@locationLongitude", rEF_Place.LONGITUDE);
                sqlCommand.Parameters.AddWithValue("@addedBy", rEF_Place.ADDEDBY);

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

        public DataTable UpdatePlace(DB_Handle dB_Handle, REF_Place rEF_Place)
        {
            string sqlQuery;
            DataTable dataTable = new DataTable();
            SqlCommand sqlCommand;
            SqlDataAdapter sqlDataAdapter;

            try
            {
                sqlQuery = "SP_UPDATE_PLACE";
                sqlCommand = new SqlCommand();

                sqlCommand.Parameters.AddWithValue("@placeId", rEF_Place.ID);
                sqlCommand.Parameters.AddWithValue("@placeName", rEF_Place.PLACENAME);
                sqlCommand.Parameters.AddWithValue("@placeSituation", rEF_Place.SITUATION);
                sqlCommand.Parameters.AddWithValue("@imagePath", rEF_Place.IMAGEPATH);
                sqlCommand.Parameters.AddWithValue("@locationLatitude", rEF_Place.LATITUDE);
                sqlCommand.Parameters.AddWithValue("@locationLongitude", rEF_Place.LONGITUDE);
                sqlCommand.Parameters.AddWithValue("@addedBy", rEF_Place.ADDEDBY);

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

        public DataTable LoadAllPlacesById(DB_Handle oDB_Handle, REF_Place rEF_Place)
        {
            string sqlQuery;
            DataTable oDataTable = new DataTable();
            SqlCommand oSqlCommand;
            SqlDataAdapter oSqlDataAdapter;

            try
            {
                sqlQuery = "SP_SELECT_PLACES";
                oSqlCommand = new SqlCommand();

                oSqlCommand.Parameters.AddWithValue("@memberId", rEF_Place.ADDEDBY);
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

        public DataTable LoadPlaceById(DB_Handle oDB_Handle, REF_Place rEF_Place)
        {
            string sqlQuery;
            DataTable oDataTable = new DataTable();
            SqlCommand oSqlCommand;
            SqlDataAdapter oSqlDataAdapter;

            try
            {
                sqlQuery = "SP_SELECT_PLACE_BY_ID";
                oSqlCommand = new SqlCommand();

                oSqlCommand.Parameters.AddWithValue("@placeId", rEF_Place.ID);

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
    }
}
