using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Spor : System.Web.UI.Page
{
    sqlBaglanti baglan = new sqlBaglanti();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            SqlCommand cmdhg = new SqlCommand("Select * from haber where haber_kategori= 'Spor' ", baglan.baglan());
            SqlDataReader drkhg = cmdhg.ExecuteReader();

            rp_Haberler.DataSource = drkhg;
            rp_Haberler.DataBind();

            SqlCommand cmdKGetir = new SqlCommand("Select * from koseYazisi", baglan.baglan());
            SqlDataReader drKGetir = cmdKGetir.ExecuteReader();

            rp_KoseYazilari.DataSource = drKGetir;
            rp_KoseYazilari.DataBind();
        }
    }
}