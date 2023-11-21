using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIC21NOV2023.Project
{
    public partial class CourseRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
            protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Startup_page.aspx");
        }
    }
}