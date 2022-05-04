using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class cik : System.Web.UI.Page
{
    veritabani vt = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["giris"] = "0";
        Session.Abandon();
        vt.logEkle(Convert.ToInt32(Session["perId"]), 26, "85.125.210.58");
        Response.Redirect("default.aspx?islem=cik&ad=ahmet");
    }
}