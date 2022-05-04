using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Kullanici_Ekle : System.Web.UI.Page
{
    veritabani baglanti = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }


    protected void btn_kaydet_Click(object sender, EventArgs e)
    {
        if(txt_kullaniciAdi.Text == string.Empty || txt_ad.Text == string.Empty || txt_soyad.Text == string.Empty || txt_sifre.Text == string.Empty || txt_Email.Text == string.Empty)
        {
            ltr_mesaj.Text = "Boş alanları doldurunuz!";
        }
        else
        {
            SqlConnection baglanti = new SqlConnection("Data Source=79.123.231.145,7857; initial Catalog=2016_2017_gunduz;user id = intProg; password=1234;Integrated Security =false");
            String sorgu = "INSERT INTO kullanici (kullaniciAdi,adi,soyadi,sifre,email,kullaniciTuru) VALUES (@kkullaniciAdi,@kAdi,@kSoyadi,@kSifre,@kEmail,@kkullaniciTuru)";

            SqlCommand komut = new SqlCommand(sorgu, baglanti);
            komut.Parameters.AddWithValue("@kkullaniciAdi", txt_kullaniciAdi.Text);
            komut.Parameters.AddWithValue("@kAdi", txt_ad.Text);
            komut.Parameters.AddWithValue("@kSoyadi", txt_soyad.Text);
            komut.Parameters.AddWithValue("@kSifre", txt_sifre.Text);
            komut.Parameters.AddWithValue("@kEmail", txt_Email.Text);
            komut.Parameters.AddWithValue("@kkullaniciTuru", DropDownList1.SelectedValue);
            baglanti.Open();
            komut.ExecuteNonQuery();
        }

        txt_kullaniciAdi.Text = "";
        txt_ad.Text = "";
        txt_soyad.Text = "";
        txt_sifre.Text = "";
        txt_Email.Text = "";
    }
}



