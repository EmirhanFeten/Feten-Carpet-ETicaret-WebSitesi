using FetenCarpet;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _07._01._2023.admin
{
    public partial class uyesilguncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string uno = Request.QueryString["sil"];
            if (uno != null)
            {
                UyeCRUD uyecrud = new UyeCRUD();
                uyecrud.uyesil(Convert.ToInt16(Request.QueryString["sil"]));
            }
        }
    }
}