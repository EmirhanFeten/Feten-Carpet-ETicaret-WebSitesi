using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FetenCarpet.admin
{
    public partial class urunEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string yol = null,yol2=null, yol3 = null, yol4 = null;        
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("/img/") + FileUpload1.FileName);
                yol = "../img/" + FileUpload1.FileName;
            }

            if (FileUpload2.HasFile)
            {
                FileUpload2.SaveAs(Server.MapPath("/img/") + FileUpload2.FileName);
                yol2 = "../img/" + FileUpload2.FileName;
            }
            else
            {
                yol2 = "0";
            }
            if (FileUpload3.HasFile)
            {
                FileUpload3.SaveAs(Server.MapPath("/img/") + FileUpload3.FileName);
                yol3 = "../img/" + FileUpload3.FileName;
            }
            else
            {

                yol3 = "0";
            }
            if (FileUpload4.HasFile)
            {
                FileUpload4.SaveAs(Server.MapPath("/img/") + FileUpload4.FileName);
                yol4 = "../img/" + FileUpload4.FileName;
            }
            else
            {

                yol4 = "0";
            }

            Urun urun= new Urun();
            urun.Urunid = Convert.ToInt32(TextBox5.Text);
            urun.Urunad = TextBox1.Text;
            urun.Urunaciklama= TextBox2.Text;
            urun.Ebat_id = Convert.ToInt32(DropDownList1.SelectedValue);
            urun.R_id = Convert.ToInt32(DropDownList2.SelectedValue);
            urun.Ikncilrenk_id = Convert.ToInt32(DropDownList3.SelectedValue);
            urun.O_id= Convert.ToInt32(DropDownList4.SelectedValue);
            urun.Sekil_id= Convert.ToInt32(DropDownList5.SelectedValue);
            urun.Stok = Convert.ToInt32(TextBox3.Text);
            urun.Fiyat= Convert.ToInt32(TextBox4.Text);  
            urun.Resim = yol;
            urun.ResimIki = yol2;
            urun.ResimUc = yol3;
            urun.ResimDort = yol4;
            if (TextBox6.Text== "")
            {
                urun.IndirimliFiyat = 0;
            }
            else
            {
                urun.IndirimliFiyat =Convert.ToInt32(TextBox6.Text);
            }
            
            
            
             
            
           
            UrunCRUD uruncrud = new UrunCRUD();
            string cevap = uruncrud.urunEkle(urun);
            if (cevap == "ok")
            {
                Panel1.Visible = true;
            }
            else
            {
                Panel2.Visible = true;
            }

        }
    }
}