using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FetenCarpet
{
    public partial class urundetay : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false; 
            //Panel2.Visible = false;
            //Panel3.Visible = false;
            //Panel4.Visible = false;
            int id = Convert.ToInt32(Request.QueryString[0]);
            UrunCRUD uruncrud = new UrunCRUD();
            DataTable dt = uruncrud.tumliste2(id);
            Label9.Text =dt.Rows[0][0].ToString();
            Label1.Text = dt.Rows[0][1].ToString();
            Label2.Text= dt.Rows[0][9].ToString()+" ₺";
            Label3.Text = dt.Rows[0][2].ToString();
            Label4.Text = dt.Rows[0][3].ToString();
            Label5.Text = dt.Rows[0][4].ToString();
            Label6.Text = dt.Rows[0][5].ToString();
            Label7.Text= dt.Rows[0][6].ToString();
            Label8.Text= dt.Rows[0][7].ToString();
            Image1.ImageUrl = dt.Rows[0][10].ToString();
            Image2.ImageUrl = dt.Rows[0][11].ToString();
            Image3.ImageUrl = dt.Rows[0][12].ToString();
            Image4.ImageUrl = dt.Rows[0][13].ToString();
            if (Image2.ImageUrl=="0")
            {
                Panel3.Visible = false;
            }
            if (Image3.ImageUrl == "0")
            {
                Panel4.Visible = false;
            }
            if (Image4.ImageUrl == "0")
            {
                Panel5.Visible = false;
            }
            //if (dt.Rows[0][11] == null)
            //{
            //    Image2.ImageUrl = dt.Rows[0][10].ToString();
            //}
            //else
            //{
            //    Image2.ImageUrl = dt.Rows[0][11].ToString();
            //}
            //if (dt.Rows[0][12] == null)
            //{
            //    Image3.ImageUrl = dt.Rows[0][10].ToString();
            //}
            //else
            //{
            //    Image3.ImageUrl = dt.Rows[0][12].ToString();
            //}
            //if (dt.Rows[0][13] == null)
            //{
            //    Image4.ImageUrl = dt.Rows[0][10].ToString();
            //}
            //else
            //{
            //    Image4.ImageUrl = dt.Rows[0][13].ToString();
            //}




            Sepet sepet = new Sepet();
            SepetCRUD sepetcrud = new SepetCRUD();
            //string krw = Request.QueryString["sepet"];
            //DataTable dt = sepetcrud.sepetListe(krw);
            string uno = Request.QueryString["sep"];
            if (uno != null)
            {
                if (Session["uye"] == null)
                {
                    sepet.Kadi = sepetcrud.GetIPAddress();
                }
                else
                {
                    sepet.Kadi = Session["uye"].ToString();
                }
                sepet.Adet = 1;
                sepet.UrunId = Convert.ToInt16(uno);
                string cvp = sepetcrud.sepetEkle(sepet);
                if (cvp=="ok")
                {
                    Panel1.Visible = true;
                }
            }
        }

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    Sepet sepet = new Sepet();
        //    SepetCRUD sepetCRUD = new SepetCRUD();
        //    sepet.UrunId =Convert.ToInt16(Label9.Text);
        //    sepet.Adet = Convert.ToInt16(TextBox2.Text);
        //    string cvp = sepetCRUD.sepetEkle(sepet);
        //    if (cvp=="ok")
        //    {
        //        Label10.Text = "Sepete Eklendi";
        //    }
        //}

    }
}