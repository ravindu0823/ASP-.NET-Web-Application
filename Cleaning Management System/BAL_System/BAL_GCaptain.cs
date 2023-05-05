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
    public class BAL_GCaptain
    {
        public DataTable InsertGreenCaptain(DB_Handle dB_Handle, REF_GCaptain rEF_GCaptain)
        {
            DAL_GCaptain dAL_Person = new DAL_GCaptain();
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
                dataTable = dAL_Person.InsertGreenCaptain(dB_Handle, rEF_GCaptain);
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
