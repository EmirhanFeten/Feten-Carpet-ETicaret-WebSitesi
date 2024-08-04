using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FetenCarpet
{
    public class Yorum
    {
        string ad, tur, mail, mesaj;

        public string Ad { get => ad; set => ad = value; }
        public string Tur { get => tur; set => tur = value; }
        public string Mail { get => mail; set => mail = value; }
        public string Mesaj { get => mesaj; set => mesaj = value; }
    }
}