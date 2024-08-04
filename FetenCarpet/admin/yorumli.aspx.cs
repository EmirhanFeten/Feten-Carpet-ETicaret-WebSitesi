using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FetenCarpet.admin
{
    public partial class yorumli : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string gyorum = Request.QueryString["yorum"];
            if(gyorum!=null)
            {
                Email email = new Email();
                email.hazirMesaj("emirhanfeten@gmail.com");
            }
            

            string uno = Request.QueryString["sil"];
            if (uno != null)
            {
                YorumCRUD yorumcrud = new YorumCRUD();
                yorumcrud.yorumSil(Convert.ToInt16(Request.QueryString["sil"]));
            }
        }

       
    }
}