using FetenCarpet;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _07._01._2023.admin
{
    public partial class uyeguncelleme : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt16(Request.QueryString[0]);
                UyeCRUD uyecrud = new UyeCRUD();
                DataTable dt = uyecrud.uara(id);
                TextBox1.Text = dt.Rows[0][1].ToString();
                TextBox2.Text = dt.Rows[0][2].ToString();
                TextBox3.Text = dt.Rows[0][3].ToString();
                TextBox4.Text = dt.Rows[0][4].ToString();
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            Uye uyeler = new Uye();
            UyeCRUD uyecrud = new UyeCRUD();
            uyeler.Ad = TextBox1.Text;
            uyeler.Soyad = TextBox2.Text;
            uyeler.Kadi = TextBox3.Text;
            uyeler.Sifre = TextBox4.Text;
            bool cevap = uyecrud.guncelle(Convert.ToInt16(Request.QueryString[0]), uyeler);
            if (Convert.ToBoolean(cevap) == true)
            {
                Label1.Text = "Güncelleme işlemi başarılı";
            }
        }
    }
}