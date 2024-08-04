using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace FetenCarpet
{
    public class Sepet
    {
        int urunId, adet;
        string kadi;

        public int UrunId { get => urunId; set => urunId = value; }
        public int Adet { get => adet; set => adet = value; }
        public string Kadi { get => kadi; set => kadi = value; }
    }
}