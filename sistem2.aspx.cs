using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sistem : System.Web.UI.Page
{
    veritabani vt = new veritabani();
    public List<string> personelBilgileri = new List<string>();
    protected void Page_Load(object sender, EventArgs e)
    {
        /*
       bool varmi = false;
       int sessionElemanSayisi = Session.Count;
       string anahtar = string.Empty;
       for (int i = 0; i < sessionElemanSayisi; i++)
       {
           anahtar = Session.Keys[i];
           if (anahtar == "giris")
           {
               varmi = true;
               break;
           }
       }

       if ((varmi==false) ||  ((varmi == false)) ||(Session["giris"].ToString() == "0")) Response.Redirect("default.aspx");
       */


        if ((Session["giris"] == null) || (Session["giris"].ToString() == "0"))
        {
            Response.Redirect("Default.aspx");
        }



        personelBilgileri = vt.personelBilgiGetir(Convert.ToInt32(Session["perId"]));
        //ltr_icerik.Text = vt.logOku(Convert.ToInt32(Session["perId"]));
    }
}