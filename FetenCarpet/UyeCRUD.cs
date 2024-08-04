using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.EnterpriseServices.Internal;
using System.Linq;
using System.Web;

namespace FetenCarpet
{
    
    public class UyeCRUD
    {
        Db db = new Db();
        public string uyeekle(Uye guye)
        {
            int ksay;
            string cevap = "ok";
            db.ac();
            SqlCommand uyekomut = new SqlCommand("insert into uye values(@a,@b,@c,@d,@e)", db.baglanti);
            uyekomut.Parameters.AddWithValue("@a", guye.Ad);
            uyekomut.Parameters.AddWithValue("@b", guye.Soyad);
            uyekomut.Parameters.AddWithValue("@c", guye.Kadi);
            uyekomut.Parameters.AddWithValue("@d", guye.Sifre);
            uyekomut.Parameters.AddWithValue("@e", guye.Mail);
            ksay=uyekomut.ExecuteNonQuery();
            if (ksay==0)
            {
                cevap = "not ok";
            }

            db.kapat();
            return cevap;
        }
        public DataTable tumliste()
        {
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand komut = new SqlCommand("select mail,sifre from uye", db.baglanti);
            SqlDataAdapter adp = new SqlDataAdapter(komut);
            adp.Fill(dt);
            db.kapat();
            return dt;
        }
        public DataTable tumliste2()
        {
            DataTable dt = new DataTable();
            db.ac();

            SqlCommand command = new SqlCommand("select * from uye", db.baglanti); // * tüm alanlar demek
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            db.kapat();
            return dt;
        }
        public bool uyesil(int ugid)
        {
            int sonuc;
            bool durum = true;
            db.ac();
            SqlCommand komut = new SqlCommand("delete from uye where sno=@psno", db.baglanti); ;
            komut.Parameters.AddWithValue("@psno", ugid);
            sonuc = komut.ExecuteNonQuery();
            if (sonuc == 0)
            {
                durum = false;
            }
            db.kapat();
            return durum;
        }
        public DataTable uara(int ggid)
        {
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand command = new SqlCommand("select * from uye where sno=@a", db.baglanti); // * tüm alanlar demek
            command.Parameters.AddWithValue("@a", ggid);
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            db.kapat();
            return dt;
        }
        public bool guncelle(int gsno, Uye guye)
        {
            int sonuc;
            bool durum = true;
            db.ac();
            SqlCommand komut = new SqlCommand("update uye set ad=@a,soyad=@b,kadi=@c,sifre=@d where sno=@u", db.baglanti); ;
            komut.Parameters.AddWithValue("@a", guye.Ad);
            komut.Parameters.AddWithValue("@b", guye.Soyad);
            komut.Parameters.AddWithValue("@c", guye.Kadi);
            komut.Parameters.AddWithValue("@d", guye.Sifre);
            komut.Parameters.AddWithValue("@u", gsno);
            sonuc = komut.ExecuteNonQuery();
            if (sonuc == 0)
            {
                durum = false;
            }
            db.kapat();
            return durum;
        }
        public DataTable kadiara(string gkadi)
        {
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand command = new SqlCommand("select * from uye where kadi=@a", db.baglanti); // * tüm alanlar demek
            command.Parameters.AddWithValue("@a", gkadi);
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            db.kapat();
            return dt;
        }
        public bool uyeKayit(string p1, string p2)
        {
            bool cevap = true;
            db.ac();
            SqlCommand komut = new SqlCommand("select count(kadi) from uye where kadi=@a or mail=@b", db.baglanti);
            komut.Parameters.AddWithValue("@a", p1);
            komut.Parameters.AddWithValue("@b", p2);
            int kaysay = Convert.ToInt16(komut.ExecuteScalar());
            if (kaysay == 0)
            {
                cevap = false;
            }
            db.kapat();
            return cevap;
        }
    }
}