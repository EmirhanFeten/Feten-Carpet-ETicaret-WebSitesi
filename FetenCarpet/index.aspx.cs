using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FetenCarpet
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
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
            }
        }

        //protected void Button2_Click(object sender, EventArgs e)
        //{
        //    if (Session["uye"] == null)
        //    {
        //        Response.Redirect("giris.aspx");
        //    }
        //    else
        //    {

        //    }
        //}
    }
}