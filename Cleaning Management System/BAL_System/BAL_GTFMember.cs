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
    public class BAL_GTFMember
    {
        public DataTable AuthenticateMember(DB_Handle dB_Handle, REF_GTFMember rEF_GTFMember)
        {
            DAL_GTFMember dAL_GTFMember = new DAL_GTFMember();
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

                dataTable = dAL_GTFMember.AuthenticateMember(dB_Handle, rEF_GTFMember);

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

        public DataTable GTFMemberRegister(DB_Handle dB_Handle, REF_GTFMember rEF_GTFMember)
        {
            DAL_GTFMember dAL_GTFMember = new DAL_GTFMember();
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
                dataTable = dAL_GTFMember.GTFMemberRegister(dB_Handle, rEF_GTFMember);
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
