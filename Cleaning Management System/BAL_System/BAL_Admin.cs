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
    public class BAL_Admin
    {
        public DataTable AuthenticateAdmin(DB_Handle dB_Handle, REF_Admin rEF_Admin)
        {
            DAL_Admin dAL_Employee = new DAL_Admin();
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

                dataTable = dAL_Employee.AuthenticateAdmin(dB_Handle, rEF_Admin);

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
