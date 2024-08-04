using FetenCarpet.admin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FetenCarpet
{
    public partial class giris : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uye"] != null)
            {
                Response.Redirect("index.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            UyeGirisCRUD uyegiriscrud = new UyeGirisCRUD();          
            bool cvp = uyegiriscrud.uyeara(TextBox1.Text, TextBox2.Text);
            if (cvp == true)
            {
                Session["uye"]=TextBox1.Text;
                Response.Redirect("index.aspx");
            }
        }

       
    }
}