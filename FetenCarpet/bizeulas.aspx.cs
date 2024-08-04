using _07._01._2023;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FetenCarpet
{
    public partial class bizeulas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uye"] != null)
            {
                UyeCRUD uyem = new UyeCRUD();
                DataTable dt = uyem.kadiara(Session["uye"].ToString());
                TextBox1.Text = Session["uye"].ToString();
                TextBox2.Text = dt.Rows[0][5].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Yorum yorum = new Yorum();
            YorumCRUD yorumcrud = new YorumCRUD();
            yorum.Ad = TextBox1.Text;
            yorum.Mail = TextBox2.Text;
            yorum.Tur = DropDownList1.SelectedValue;
            yorum.Mesaj = TextBox3.Text;
            string cevap = yorumcrud.yorumekle(yorum);
            if (cevap == "ok")
            {
                Label1.Text = "Mesaj Gönderildi";
            }
            else
            {
                Label1.Text = "Mesaj Gönderilemedi";
            }
        }
    }
}