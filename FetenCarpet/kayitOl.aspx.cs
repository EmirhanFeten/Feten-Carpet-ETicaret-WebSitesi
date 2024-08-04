using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FetenCarpet
{
    public partial class kayitOl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

            Uye uyekayit = new Uye();
            UyeCRUD uyekayitcrud = new UyeCRUD();
            uyekayit.Ad = TextBox1.Text;
            uyekayit.Soyad = TextBox2.Text;
            uyekayit.Kadi = TextBox3.Text;
            uyekayit.Sifre = TextBox4.Text;
            uyekayit.Mail = TextBox6.Text;
            
            bool cevap = uyekayitcrud.uyeKayit(TextBox3.Text, TextBox6.Text);
            if (cevap != true)
            {
                string cvp = uyekayitcrud.uyeekle(uyekayit);
                if (cvp == "ok")
                {
                    Panel1.Visible = true;
                    
                }
                else
                {
                    Panel2.Visible = true;
                }
            }

            else
            {
                Panel3.Visible = true;
            }


            
            
        }

       
    }
}