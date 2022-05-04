using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class sistemSablonu : System.Web.UI.MasterPage
{
    veritabani vt = new veritabani();
    public List<string> personelBilgileri = new List<string>();
    protected void Page_Load(object sender, EventArgs e)
    {
        
        //string[] url = (HttpContext.Current.Request.Url.AbsolutePath.TrimStart('/')).Split('.');
        //bool deger = vt.sayfaYetkiKontrol(Convert.ToInt32(Session["perId"]), Convert.ToInt32(url[0]));
        //if (!deger) Response.Redirect("400.aspx");
        



        //personelBilgileri = vt.personelBilgiGetir(Convert.ToInt32(Session["perId"]));
    }
}
