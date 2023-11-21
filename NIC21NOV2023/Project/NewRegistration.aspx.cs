using NIC21NOV2023.Business;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Runtime.InteropServices.ComTypes;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIC21NOV2023.Project
{
    public partial class NewRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!Page.IsPostBack)
            {
                DataTable dt = BSNewregister.LoadDistrict();
                if (dt.Rows.Count > 0)
                {
                    ddlDistrict.DataSource = dt;
                    ddlDistrict.DataTextField = dt.Columns["District_NAme"].ColumnName.ToString();
                    ddlDistrict.DataValueField = dt.Columns["District_Cd"].ColumnName.ToString();
                    ddlDistrict.DataBind();
                }

            }

        }

        protected void ddlDistrict_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList ddldep = (DropDownList)sender;
            initialddltaluk(ddlDistrict.SelectedIndex);

        }
        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtname.Text == string.Empty)
                {
                    lblError.Text = "Please enter name";
                    lblError.Visible = true;
                    return;
                }
                if (txtAddress.Text == string.Empty)
                {
                    lblError.Text = "Please enter Address";
                    lblError.Visible = true;
                    return;
                }

                if (txtEmail.Text == string.Empty)
                {
                    lblError.Text = "Please enter Email";
                    lblError.Visible = true;
                    return;
                }
                if (txtMobileNo.Text == string.Empty)
                {
                    lblError.Text = "Please enter Mobile no";
                    lblError.Visible = true;
                    return;
                }
                if (ddlDistrict.SelectedIndex == 0)
                {
                    lblError.Text = "Please select District";
                    lblError.Visible = true;
                    return;
                }
                if (ddlTaluk.SelectedIndex == 0)
                {
                    lblError.Text = "Please select Taluk";
                    lblError.Visible = true;
                    return;
                }
                BSNewregister bSNewregister = new BSNewregister();
                
                if(bSNewregister.SaveNewUser(txtname.Text, Convert.ToDateTime (DtpDOB.Value), rbngender.SelectedValue,txtEmail.Text,txtMobileNo.Text,txtAddress.Text,ddlDistrict.SelectedIndex,ddlTaluk.SelectedIndex) == true)
                {
                    lblError.Text = "Record inserted successfully....";
                    lblError.Visible = true;
                    clear();
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }

        }

        private void initialddltaluk(int dist)
        {
            DataTable dt = BSNewregister.Loadtaluk(dist);
            if (dt.Rows.Count > 0)
            {
                ddlTaluk.DataSource = dt;
                ddlTaluk.DataTextField = dt.Columns["taluk"].ColumnName.ToString();
                ddlTaluk.DataValueField = dt.Columns["Taluk_Cd"].ColumnName.ToString();
                ddlTaluk.DataBind();
            }
            
        }
        private void clear()
        {
            txtAddress.Text = string.Empty;
            txtname.Text = string.Empty;
            txtMobileNo.Text = string.Empty;
            txtEmail.Text= string.Empty;
            ddlDistrict.SelectedIndex = 0;
            ddlTaluk.SelectedIndex = 0;
        }

        protected void back_Click(object sender, EventArgs e)
        {
            Response.Redirect("Startup_page.aspx");
        }
    }
}