using DAL_System;
using REF_System;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BAL_System
{
    public class BAL_Place
    {
        public DataTable LoadAllPlaces(DB_Handle oDB_Handle)
        {
            DAL_Place dAL_Place = new DAL_Place();
            DataTable oDataTable = new DataTable();
            DataTable _dt = null;

            try
            {
                bool newDBHandle = false;

                if (oDB_Handle == null)
                {
                    oDB_Handle = new DB_Handle();
                    oDB_Handle.OpenConnection();
                    oDB_Handle.BeginTransaction();
                    newDBHandle = true;
                }
                oDataTable = dAL_Place.LoadAllPlaces(oDB_Handle);
                if (newDBHandle)
                {
                    oDB_Handle.CommitTransaction();
                    oDB_Handle.CloseConnection();
                }
            }
            catch (Exception ex)
            {
                try
                {
                    oDB_Handle.RollbackTransaction();
                    oDB_Handle.CloseConnection();
                }
                catch (Exception)
                {
                    return _dt;
                }
            }
            return oDataTable;
        }

        public DataTable LoadAllPlacesById(DB_Handle dB_Handle, REF_Place rEF_Place)
        {
            DAL_Place dAL_Place = new DAL_Place();
            DataTable dataTable = new DataTable();
            DataTable _dt = null;

            try
            {
                bool newDBHandle = false;

                if (dB_Handle == null)
                {
                    dB_Handle = new DB_Handle();
                    dB_Handle.OpenConnection();
                    dB_Handle.BeginTransaction();
                    newDBHandle = true;
                }
                dataTable = dAL_Place.LoadAllPlacesById(dB_Handle, rEF_Place);
                if (newDBHandle)
                {
                    dB_Handle.CommitTransaction();
                    dB_Handle.CloseConnection();
                }
            }
            catch (Exception ex)
            {
                try
                {
                    dB_Handle.RollbackTransaction();
                    dB_Handle.CloseConnection();
                }
                catch (Exception)
                {
                    return _dt;
                }
            }
            return dataTable;
        }


        public DataTable ApprovePlace(DB_Handle dB_Handle, REF_Place rEF_Place)
        {
            DAL_Place dAL_Place = new DAL_Place();
            DataTable dataTable = new DataTable();
            DataTable _dt = null;

            try
            {
                bool newDBHandle = false;
                if (dB_Handle == null)
                {
                    dB_Handle = new DB_Handle();
                    dB_Handle.OpenConnection();
                    dB_Handle.BeginTransaction();
                    newDBHandle = true;
                }
                dataTable = dAL_Place.ApprovePlace(dB_Handle, rEF_Place);
                if (newDBHandle)
                {
                    dB_Handle.CommitTransaction();
                    dB_Handle.CloseConnection();
                }
            }
            catch (Exception ex)
            {
                try
                {
                    dB_Handle.RollbackTransaction();
                    dB_Handle.CloseConnection();
                }
                catch (Exception)
                {
                    return _dt;
                }
            }

            return dataTable;
        }

        public DataTable RejectPlace(DB_Handle dB_Handle, REF_Place rEF_Place)
        {
            DAL_Place dAL_Place = new DAL_Place();
            DataTable dataTable = new DataTable();
            DataTable _dt = null;

            try
            {
                bool newDBHandle = false;
                if (dB_Handle == null)
                {
                    dB_Handle = new DB_Handle();
                    dB_Handle.OpenConnection();
                    dB_Handle.BeginTransaction();
                    newDBHandle = true;
                }
                dataTable = dAL_Place.RejectPlace(dB_Handle, rEF_Place);
                if (newDBHandle)
                {
                    dB_Handle.CommitTransaction();
                    dB_Handle.CloseConnection();
                }
            }
            catch (Exception ex)
            {
                try
                {
                    dB_Handle.RollbackTransaction();
                    dB_Handle.CloseConnection();
                }
                catch (Exception)
                {
                    return _dt;
                }
            }

            return dataTable;
        }

        public DataTable FlagPlace(DB_Handle dB_Handle, REF_Place rEF_Place)
        {
            DAL_Place dAL_Place = new DAL_Place();
            DataTable dataTable = new DataTable();
            DataTable _dt = null;

            try
            {
                bool newDBHandle = false;
                if (dB_Handle == null)
                {
                    dB_Handle = new DB_Handle();
                    dB_Handle.OpenConnection();
                    dB_Handle.BeginTransaction();
                    newDBHandle = true;
                }
                dataTable = dAL_Place.FlagPlace(dB_Handle, rEF_Place);
                if (newDBHandle)
                {
                    dB_Handle.CommitTransaction();
                    dB_Handle.CloseConnection();
                }
            }
            catch (Exception ex)
            {
                try
                {
                    dB_Handle.RollbackTransaction();
                    dB_Handle.CloseConnection();
                }
                catch (Exception)
                {
                    return _dt;
                }
            }

            return dataTable;
        }

        public DataTable AddPlace(DB_Handle dB_Handle, REF_Place rEF_Place)
        {
            DAL_Place dAL_Place = new DAL_Place();
            DataTable dataTable = new DataTable();
            DataTable _dt = null;

            try
            {
                bool newDBHandle = false;
                if (dB_Handle == null)
                {
                    dB_Handle = new DB_Handle();
                    dB_Handle.OpenConnection();
                    dB_Handle.BeginTransaction();
                    newDBHandle = true;
                }
                dataTable = dAL_Place.AddPlace(dB_Handle, rEF_Place);
                if (newDBHandle)
                {
                    dB_Handle.CommitTransaction();
                    dB_Handle.CloseConnection();
                }
            }
            catch (Exception ex)
            {
                try
                {
                    dB_Handle.RollbackTransaction();
                    dB_Handle.CloseConnection();
                }
                catch (Exception)
                {
                    return _dt;
                }
            }

            return dataTable;
        }


    }
}
