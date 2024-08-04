using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FetenCarpet.admin
{
    public partial class giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            
            AdminGirisCRUD ycrud = new AdminGirisCRUD();
            bool cvp = ycrud.yoneticiara(TextBox1.Text,TextBox2.Text);
            if (cvp == true)
            {
                Session["admin"] = "ok";
                Response.Redirect("index.aspx");

            }
            
        }
    }
}