using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FetenCarpet.admin
{
    public partial class urunguncelle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = Convert.ToInt32(Request.QueryString[0]);
                UrunCRUD uruncrud= new UrunCRUD();
                DataTable dt = uruncrud.uara(id);
                TextBox1.Text = dt.Rows[0][1].ToString();
                TextBox2.Text = dt.Rows[0][2].ToString();
                DropDownList1.Text = dt.Rows[0][3].ToString();
                DropDownList2.Text= dt.Rows[0][4].ToString();
                DropDownList3.Text= dt.Rows[0][5].ToString();
                DropDownList4.Text= dt.Rows[0][6].ToString();
                DropDownList5.Text= dt.Rows[0][7].ToString();
                TextBox3.Text= dt.Rows[0][8].ToString();
                TextBox4.Text = dt.Rows[0][9].ToString();
                
            }
            Panel1.Visible = false;
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string yol = null, yol2 = null, yol3 = null, yol4 = null;
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
            Urun urunum= new Urun();
            UrunCRUD uruncrud=new UrunCRUD();
            urunum.Urunad = TextBox1.Text;
            urunum.Urunaciklama= TextBox2.Text;
            urunum.Ebat_id = Convert.ToInt32(DropDownList1.SelectedValue);
            urunum.R_id= Convert.ToInt32(DropDownList2.SelectedValue);
            urunum.Ikncilrenk_id=Convert.ToInt32(DropDownList3.SelectedValue);
            urunum.O_id= Convert.ToInt32(DropDownList4.SelectedValue);
            urunum.Sekil_id= Convert.ToInt32(DropDownList5.SelectedValue);
            urunum.Stok = Convert.ToInt32(TextBox3.Text);
            urunum.Fiyat = Convert.ToInt32(TextBox4.Text);
            urunum.Resim = yol;
            urunum.ResimIki = yol2;
            urunum.ResimUc = yol3;
            urunum.ResimDort = yol4;
            if (TextBox5.Text == "")
            {
                urunum.IndirimliFiyat = 0;
            }
            else
            {
                urunum.IndirimliFiyat = Convert.ToInt32(TextBox5.Text);
            }
            bool cevap = uruncrud.guncelle(Convert.ToInt16(Request.QueryString[0]), urunum);

            if (Convert.ToBoolean(cevap)==true)
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