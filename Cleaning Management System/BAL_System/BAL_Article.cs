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
    public class BAL_Article
    {
        public DataTable LoadAllArticles(DB_Handle oDB_Handle)
        {
            DAL_Article dAL_Article = new DAL_Article();
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
                oDataTable = dAL_Article.LoadAllArticles(oDB_Handle);
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

        public DataTable AddArticle(DB_Handle dB_Handle, REF_Article rEF_Article)
        {
            DAL_Article dAL_Article = new DAL_Article();
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
                dataTable = dAL_Article.AddArticle(dB_Handle, rEF_Article);
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
