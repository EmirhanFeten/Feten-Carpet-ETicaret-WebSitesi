using FetenCarpet;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _07._01._2023.admin
{
    public partial class uyesil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string uno = Request.QueryString["del"];
            if (uno != null)
            {
                UyeCRUD uruncrud = new UyeCRUD();
                uruncrud.uyesil(Convert.ToInt16(Request.QueryString["del"]));
            }
        }
    }
}