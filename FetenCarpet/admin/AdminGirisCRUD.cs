using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace FetenCarpet.admin
{
    public class AdminGirisCRUD
    {
        Db db = new Db();
        public bool yoneticiara(string p1,string p2)
        {
            bool cevap = true;
            db.ac();
            SqlCommand komut = new SqlCommand("select count(kadi) from yoneticitbl where kadi=@a and sifre=@b", db.baglanti);
            komut.Parameters.AddWithValue("@a",p1);
            komut.Parameters.AddWithValue("@b",p2);
            int kaysay=Convert.ToInt16(komut.ExecuteScalar());
            if (kaysay==0)
            {
                cevap = false;
            }
            db.kapat();
            return cevap;
        }
        //public DataTable tumliste()
        //{
        //    DataTable dt = new DataTable();
        //    db.ac();
        //    SqlCommand komut = new SqlCommand("select kadi,sfr from yoneticitbl", db.baglanti);
        //    SqlDataAdapter adp = new SqlDataAdapter(komut);
        //    adp.Fill(dt);
        //    db.kapat();
        //    return dt;
        //}
    }
}