﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NIC21NOV2023.Project
{
    public partial class DefaultLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lbl.Text ="Name : "+Request.QueryString["name"];
            lblName.Text = "Register No : "+ Request.QueryString["register"];
        }
    }
}