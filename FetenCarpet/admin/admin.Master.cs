using FetenCarpet.admin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _07._01._2023.admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {   
            if (Session["admin"] == null)
            {
                Response.Redirect("giris.aspx");

            }
        }
    }
}