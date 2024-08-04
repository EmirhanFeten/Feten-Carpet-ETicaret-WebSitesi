using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FetenCarpet.admin
{
    public partial class yorumcevap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) { 
            int id = Convert.ToInt16(Request.QueryString[0]);
            YorumCRUD yorumcrud = new YorumCRUD();
            DataTable dt = yorumcrud.yara(id);
            TextBox1.Text = dt.Rows[0][1].ToString();
            TextBox2.Text = dt.Rows[0][3].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string gyorum = Request.QueryString["yorum"];
            Email email = new Email();
            email.gonder(TextBox2.Text, TextBox3.Text,TextBox1.Text);
            Label1.Text = "Mail Gönderildi";
        }
    }
}