using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace NIC21NOV2023.Project
{
    public partial class Startup_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_Click(object sender, EventArgs e)
        {
            string name = txtUsername.Text;
            string register = txtregister.Text;
            Response.Redirect(string.Format("DefaultLogin.aspx?name={0}&register={1}", name, register));
           
        }

        protected void NewReg_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewRegistration.aspx");
        }
    }
}