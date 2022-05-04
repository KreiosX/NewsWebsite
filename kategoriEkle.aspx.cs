using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class kategoriEkle : System.Web.UI.Page
{
    veritabani baglanti = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_KategoriEkle_Click(object sender, EventArgs e)
    {
        if (txt_KategoriAdi.Text == string.Empty || txt_KategoriLink.Text == string.Empty)
        {
            ltr_mesaj.Text = "Boş alanları doldurunuz!";
        }
        else
        {
            SqlConnection baglanti = new SqlConnection("Data Source=79.123.231.145,7857; initial Catalog=2016_2017_gunduz;user id = intProg; password=1234;Integrated Security =false");
            String sorgu = "INSERT INTO kategoriler (kategoriAdi,kategoriLink) VALUES (@kkategoriAdi,@kkategoriLink)";

            SqlCommand komut = new SqlCommand(sorgu, baglanti);
            komut.Parameters.AddWithValue("@kkategoriAdi", txt_KategoriAdi.Text);
            komut.Parameters.AddWithValue("@kkategoriLink", txt_KategoriLink.Text);
            baglanti.Open();
            komut.ExecuteNonQuery();
        }

        txt_KategoriLink.Text = "";
        txt_KategoriAdi.Text = "";
 
    }
}