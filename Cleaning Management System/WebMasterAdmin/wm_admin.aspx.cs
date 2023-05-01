using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebMasterAdmin
{
    public partial class wm_admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if (string.IsNullOrEmpty(username) || string.IsNullOrEmpty(password))
            {
                Response.Write("<script>alert('Fields are empty');</script>");
            }
            else
            {
                Admin admin = new Admin();
                admin.username = username;
                admin.password = password;

                ManageAdmin manageAdmin = new ManageAdmin();

                int res = manageAdmin.AuthenticateAdmin(admin);

                if (res == 0)
                {
                    Response.Redirect("wm_adminHome.aspx");
                }
                else if (res == 1)
                {
                    Response.Write("<script>alert('user does not exists');</script>");
                }
                else
                {
                    Response.Write("<script>alert('Error');</script>");
                }
            }




        }
    }
}