using FetenCarpet;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting;
using System.Web;

namespace FetenCarpet
{
    public class UrunCRUD
    {
        Db db = new Db();
        public string urunEkle(Urun gurun)
        {
            int ksay;
            string cvp = "ok";
            db.ac();
            SqlCommand komut = new SqlCommand("insert into urunler values(@l,@a,@b,@c,@d,@e,@f,@g,@h,@j,@k,@m,@n,@o,@p)", db.baglanti);
            komut.Parameters.AddWithValue("@l", gurun.Urunid);
            komut.Parameters.AddWithValue("@a", gurun.Urunad);
            komut.Parameters.AddWithValue("@b", gurun.Urunaciklama);
            komut.Parameters.AddWithValue("@c", gurun.Ebat_id);
            komut.Parameters.AddWithValue("@d", gurun.R_id);
            komut.Parameters.AddWithValue("@e", gurun.Ikncilrenk_id);
            komut.Parameters.AddWithValue("@f", gurun.O_id);
            komut.Parameters.AddWithValue("@g", gurun.Sekil_id);
            komut.Parameters.AddWithValue("@h", gurun.Stok);
            komut.Parameters.AddWithValue("@j", gurun.Fiyat);
            komut.Parameters.AddWithValue("@k", gurun.Resim);
            komut.Parameters.AddWithValue("@m", gurun.ResimIki);
            komut.Parameters.AddWithValue("@n", gurun.ResimUc);
            komut.Parameters.AddWithValue("@o", gurun.ResimDort);
            komut.Parameters.AddWithValue("@p", gurun.IndirimliFiyat);
            ksay = komut.ExecuteNonQuery();
            if (ksay == 0)
            {
                cvp = "not ok";
            }
            db.kapat();
            return cvp;

        }
        
        public DataTable tumliste()
        {
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand command = new SqlCommand("select urunid,urunad,urunaciklama,ebatad,rad,ikincilrad,oad,sekilad,stok,fiyat,resim,resimIki,resimUc,resimDort,indirimliFiyat \r\nfrom urunler,ebat,oda,renk,sekil,ikincilrenk where urunler.ebat_id=ebat.ebatno and \r\nurunler.o_id=oda.ono and urunler.r_id=renk.rno and urunler.sekil_id=sekil.sekilno and \r\nurunler.ikncilrenk_id=ikincilrenk.ikincilrno ", db.baglanti); // * tüm alanlar demek
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            db.kapat();
            return dt;
        }
        public DataTable tumliste2(int guid)
        {
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand command = new SqlCommand("select urunid,urunad,urunaciklama,ebatad,rad,ikincilrad,oad,sekilad,stok,fiyat,resim,resimIki,resimUc,resimDort,indirimliFiyat \r\nfrom urunler,ebat,oda,renk,sekil,ikincilrenk where urunler.ebat_id=ebat.ebatno and \r\nurunler.o_id=oda.ono and urunler.r_id=renk.rno and urunler.sekil_id=sekil.sekilno and \r\nurunler.ikncilrenk_id=ikincilrenk.ikincilrno and  urunid=@a ", db.baglanti); // * tüm alanlar demek
            command.Parameters.AddWithValue("@a", guid);
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            db.kapat();
            return dt;
        }
        public DataTable listeKategori(string gkadi)
        {
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand command = new SqlCommand("select * from urunler,oda where urunler.o_id=oda.ono and oad=@a", db.baglanti); // * tüm alanlar demek
            command.Parameters.AddWithValue("@a", gkadi);
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            db.kapat();
            return dt;
        }
        public bool sil(int gid)
        {
            int sonuc;
            bool durum = true;
            db.ac();
            SqlCommand komut = new SqlCommand("delete from urunler where urunid=@purunid", db.baglanti); ;
            komut.Parameters.AddWithValue("@purunid", gid);
            sonuc = komut.ExecuteNonQuery();
            if (sonuc == 0)
            {
                durum = false;
            }
            db.kapat();
            return durum;
        }
        public DataTable uara(int guid)
        {
            DataTable dt = new DataTable();
            db.ac();
            SqlCommand command = new SqlCommand("select * from urunler where urunid=@a", db.baglanti);
            command.Parameters.AddWithValue("@a",guid);
            SqlDataAdapter adp = new SqlDataAdapter(command);
            adp.Fill(dt);
            db.kapat();
            return dt;
        }
        public bool guncelle(int gid,Urun yurun)
        {
            int sonuc;
            bool cvp = true;
            db.ac();
            SqlCommand command = new SqlCommand("update urunler set urunad=@b,urunaciklama=@c,ebat_id=@d,r_id=@e,ikncilrenk_id=@f,o_id=@g,sekil_id=@h,stok=@j,fiyat=@k,resim=@l,resimIki=@m,resimUc=@n,resimDort=@o,indirimliFiyat=@p where urunid=@a", db.baglanti);
            command.Parameters.AddWithValue("@b", yurun.Urunad);
            command.Parameters.AddWithValue("@c", yurun.Urunaciklama);
            command.Parameters.AddWithValue("@d", yurun.Ebat_id);
            command.Parameters.AddWithValue("@e", yurun.R_id);
            command.Parameters.AddWithValue("@f", yurun.Ikncilrenk_id);
            command.Parameters.AddWithValue("@g", yurun.O_id);
            command.Parameters.AddWithValue("@h", yurun.Sekil_id);
            command.Parameters.AddWithValue("@j", yurun.Stok);
            command.Parameters.AddWithValue("@k", yurun.Fiyat);
            command.Parameters.AddWithValue("@l", yurun.Resim);
            command.Parameters.AddWithValue("@m", yurun.ResimIki);
            command.Parameters.AddWithValue("@n", yurun.ResimUc);
            command.Parameters.AddWithValue("@o", yurun.ResimDort);
            command.Parameters.AddWithValue("@p", yurun.IndirimliFiyat);
            command.Parameters.AddWithValue("@a", gid);
            sonuc = command.ExecuteNonQuery();
            if (sonuc==0)
            {
                cvp = false;
            }
            db.kapat();
            return cvp;
        }



    }
}