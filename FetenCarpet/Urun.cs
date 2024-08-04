using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FetenCarpet
{
    public class Urun
    {
        string urunad, urunaciklama, resim,resimIki,resimUc,resimDort;
        int urunid, stok, fiyat, ebat_id, r_id, ikncilrenk_id, o_id, sekil_id,indirimliFiyat;

        public string Urunad { get => urunad; set => urunad = value; }
        public string Urunaciklama { get => urunaciklama; set => urunaciklama = value; }

        public string Resim { get => resim; set => resim = value; }
        
        public int Stok { get => stok; set => stok = value; }
        public int Fiyat { get => fiyat; set => fiyat = value; }
        public int Ebat_id { get => ebat_id; set => ebat_id = value; }
        public int R_id { get => r_id; set => r_id = value; }
        public int Ikncilrenk_id { get => ikncilrenk_id; set => ikncilrenk_id = value; }
        public int O_id { get => o_id; set => o_id = value; }
        public int Sekil_id { get => sekil_id; set => sekil_id = value; }
        public int Urunid { get => urunid; set => urunid = value; }
        public string ResimIki { get => resimIki; set => resimIki = value; }
        public string ResimUc { get => resimUc; set => resimUc = value; }
        public string ResimDort { get => resimDort; set => resimDort = value; }
        public int IndirimliFiyat { get => indirimliFiyat; set => indirimliFiyat = value; }
    }
}