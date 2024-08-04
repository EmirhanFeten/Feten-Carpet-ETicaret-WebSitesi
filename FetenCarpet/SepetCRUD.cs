using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace FetenCarpet
{
    public class SepetCRUD
    {
        Db db= new Db();
        public string sepetEkle(Sepet gurun)
        {
            int ksay;
            string cvp = "ok";
            bool durum = varmi(gurun);
            db.ac();
            SqlCommand komut = new SqlCommand();
            if (durum == true)
            {
                komut = new SqlCommand("update sepet set adet=adet+1 where urunId=@a and kadi=@b", db.baglanti);
                komut.Parameters.AddWithValue("@a", gurun.UrunId);
                komut.Parameters.AddWithValue("@b", gurun.Kadi);
            }
            else
            {
                komut = new SqlCommand("insert into sepet values(@l,@a,@b)", db.baglanti);
                komut.Parameters.AddWithValue("@l", gurun.UrunId);
                komut.Parameters.AddWithValue("@a", gurun.Adet);
                komut.Parameters.AddWithValue("@b", gurun.Kadi);

            }

            ksay = komut.ExecuteNonQuery();
            if (ksay == 0)
            {
                cvp = "not ok";
            }
            db.kapat();
            return cvp;

        }
        public bool varmi(Sepet urunum)
        {
            bool cvp = false;
            db.ac();
            SqlCommand komut = new SqlCommand("Select count(*) from sepet where urunId=@a and kadi=@b", db.baglanti);
            komut.Parameters.AddWithValue("@a", urunum.UrunId);
            komut.Parameters.AddWithValue("@b", urunum.Kadi);
            int ksay = Convert.ToInt32(komut.ExecuteScalar());
            if (ksay != 0)
            {
                cvp = true;
            }
            db.kapat();
            return cvp;
        }
        public DataTable sepetListe(string gkadi)
        {
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand command = new SqlCommand("select resim,urunad,fiyat,adet,(adet*fiyat) as ToplamFiyat,urunId from urunler,sepet where sepet.urunId=urunler.urunid and kadi=@a ", db.baglanti); // * tüm alanlar demek
            command.Parameters.AddWithValue("@a", gkadi);
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            db.kapat();
            return dt;
        }
        public bool sepetSil(int gid,string gkadi)
        {
            int sonuc;
            bool durum = true;
            db.ac();
            SqlCommand komut = new SqlCommand("delete from sepet where urunId=@purunid and kadi=@purunKadi", db.baglanti); ;
            komut.Parameters.AddWithValue("@purunid", gid);
            komut.Parameters.AddWithValue("@purunKadi", gkadi);
            sonuc = komut.ExecuteNonQuery();
            if (sonuc == 0)
            {
                durum = false;
            }
            db.kapat();
            return durum;
        }
        public bool sepetAdetGuncelle(int gid, string gkadi)
        {
            int sonuc;
            bool cvp = true;
            db.ac();
           SqlCommand command = new SqlCommand("update sepet set adet=adet-1 where urunId=@a and kadi=@b", db.baglanti);
            command.Parameters.AddWithValue("@a", gid);
            command.Parameters.AddWithValue("@b", gkadi);
            sonuc = command.ExecuteNonQuery();
            if (sonuc == 0)
            {
                cvp = false;
            }
            db.kapat();
            return cvp;
        }
        public DataTable sepetAdet(string gkadi)
        {
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand command = new SqlCommand("Select count(adet) from sepet where kadi=@gkadi", db.baglanti);
            command.Parameters.AddWithValue("@gkadi", gkadi);
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            db.kapat();
            return dt;
        }

        public string GetIPAddress()
        {
            System.Web.HttpContext context = System.Web.HttpContext.Current;
            string ipAddress = context.Request.ServerVariables["HTTP_X_FORWARDED_FOR"];

            if (!string.IsNullOrEmpty(ipAddress))
            {
                string[] addresses = ipAddress.Split(',');
                if (addresses.Length != 0)
                {
                    return addresses[0];
                }
            }

            return context.Request.ServerVariables["REMOTE_ADDR"];
        }
    }
}