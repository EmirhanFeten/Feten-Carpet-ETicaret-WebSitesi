using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FetenCarpet
{
    public partial class sepet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //           Sepet sepet= new Sepet();
            //           SepetCRUD sepetcrud= new SepetCRUD();
            //           //string krw = Request.QueryString["sepet"];
            //           //DataTable dt = sepetcrud.sepetListe(krw);
            //           string uno = Request.QueryString["sep"];
            //           if (uno!=null)
            //           {
            //if (Session["uye"]==null)
            //           {
            //               sepet.Kadi = sepetcrud.GetIPAddress();
            //           }
            //           else
            //           {
            //               sepet.Kadi = Session["uye"].ToString();
            //           }
            //           sepet.Adet = 1;
            //           sepet.UrunId = Convert.ToInt16(uno);
            //           string cvp = sepetcrud.sepetEkle(sepet);
            //           }

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
            string unoSil = Request.QueryString["sil"];
            if (unoSil != null)
            {

                sepetcrud.sepetSil(Convert.ToInt32(Request.QueryString["sil"]), Request.QueryString["sepet"]);
            }
            string adetEksiltme = Request.QueryString["adetSil"];
            if (adetEksiltme != null)
            {
                sepetcrud.sepetAdetGuncelle(Convert.ToInt32(Request.QueryString["adetSil"]), Request.QueryString["sepet"]);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Sepet sepet = new Sepet();
            //SepetCRUD sepetcrud = new SepetCRUD();
            
            //string cvp = sepetcrud.sepetEkle(sepet);
        }
    }
}