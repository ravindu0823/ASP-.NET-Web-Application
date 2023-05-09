using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace webmasterGTFmember
{
    public partial class wmGTFUpdateReport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (imageUpload.HasFile)
            {
                // Get the filename and extension of the uploaded file
                string fileName = Path.GetFileName(imageUpload.FileName);
                string fileExtension = Path.GetExtension(fileName);

                // Generate a unique filename
                string uniqueFileName = Guid.NewGuid().ToString() + fileExtension;

                // Save the file to the server
                string imagePath = Server.MapPath("~/assets/user_images/" + uniqueFileName);
                imageUpload.SaveAs(imagePath);

                pathName.Value = uniqueFileName;
                // temp.Text = uniqueFileName;

                // ScriptManager.RegisterClientScriptBlock(this, GetType(), "mykey", "test();", true);
                Response.Write("<script>alert('Photo Uploaded Successfully');</script>");
            }
        }
    }
}