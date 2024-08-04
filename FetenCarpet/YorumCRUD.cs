using FetenCarpet;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace FetenCarpet
{
    public class YorumCRUD
    {
        Db db=new Db();

        public string yorumekle(Yorum gyorum)
        {
            int ksay;
            string cevap = "ok";
            db.ac();
            SqlCommand yorumkomut = new SqlCommand("insert into yorum values(@a, @b, @c, @d)", db.baglanti);
            yorumkomut.Parameters.AddWithValue("@a", gyorum.Ad);
            yorumkomut.Parameters.AddWithValue("@b", gyorum.Tur);
            yorumkomut.Parameters.AddWithValue("@c", gyorum.Mail);
            yorumkomut.Parameters.AddWithValue("@d", gyorum.Mesaj);
            ksay = yorumkomut.ExecuteNonQuery();
            if (ksay == 0)
            {
                cevap = "no ok";
            }
            db.kapat();
            return cevap;
        }
        public DataTable tumliste()
        {
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand command = new SqlCommand("select * from yorum", db.baglanti); // * tüm alanlar demek
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            db.kapat();
            return dt;
        }
        public DataTable yara(int gid)
        {
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand command = new SqlCommand("select * from yorum where sno=@a", db.baglanti); // * tüm alanlar demek
            command.Parameters.AddWithValue("@a", gid);
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            db.kapat();
            return dt;
        }
        public bool yorumSil(int ygid)
        {
            int sonuc;
            bool durum = true;
            db.ac();
            SqlCommand komut = new SqlCommand("delete from yorum where sno=@psno", db.baglanti); ;
            komut.Parameters.AddWithValue("@psno", ygid);
            sonuc = komut.ExecuteNonQuery();
            if (sonuc == 0)
            {
                durum = false;
            }
            db.kapat();
            return durum;
        }
    }
} 