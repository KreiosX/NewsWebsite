using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class KoseYazisiEkle : System.Web.UI.Page
{
    veritabani baglanti = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_koseYazisi_Click(object sender, EventArgs e)
    {
        if (txt_koseYazisi.Text == string.Empty)
        {
            ltr_mesaj.Text = "Boş alanları doldurunuz!";
        }
        else
        {
            SqlConnection baglanti = new SqlConnection("Data Source=79.123.231.145,7857; initial Catalog=2016_2017_gunduz;user id = intProg; password=1234;Integrated Security =false");
            String sorgu = "INSERT INTO koseYazisi (koseYazisi,eklenmeTarihi) VALUES (@kkoseYazisi,@keklenmeTarihi)";

            SqlCommand komut = new SqlCommand(sorgu, baglanti);
            komut.Parameters.AddWithValue("@kkoseYazisi", txt_koseYazisi.Text);
            komut.Parameters.AddWithValue("@keklenmeTarihi", DateTime.Now);
            baglanti.Open();
            komut.ExecuteNonQuery();
        }
    }
}