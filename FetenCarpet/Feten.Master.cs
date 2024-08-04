using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FetenCarpet
{
    public partial class Feten : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Sepet sepet = new Sepet();
            //SepetCRUD sepetcrud = new SepetCRUD();
            //if (Session["uye"]==null)
            //{
            //    Session["ipUye"] = sepetcrud.GetIPAddress();
            //}
            //else
            //{
            //    Session["ipUye"] = null;
            //}
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Session.RemoveAll();
            Response.Redirect("index.aspx");
        }
    }
}