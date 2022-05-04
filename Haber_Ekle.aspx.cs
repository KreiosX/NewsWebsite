using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Drawing;
using System.Configuration;

public partial class Haber_Ekle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void btn_ekle_Click(object sender, EventArgs e)
    {
        if (txt_haber_kategori.Text == string.Empty || txt_haber_baslik.Text == string.Empty || txt_haber_icerik.Text == string.Empty)
            {
                ltr_mesaj.Text = "Boş alanları doldurunuz!";
            }

        {

            fu_hresim.SaveAs(Server.MapPath("/images/" + fu_hresim.FileName));



            SqlConnection con = new SqlConnection("Data Source=79.123.231.145,7857; initial Catalog=2016_2017_gunduz;user id = intProg; password=1234;Integrated Security =false");

            SqlCommand cmd = new SqlCommand("Insert Into haber Values(@haber_kategori,@haber_baslik,@haber_icerik,@haber_foto,@haber_tarih)", con);

            cmd.Parameters.AddWithValue("@haber_kategori", txt_haber_kategori.Text);

            cmd.Parameters.AddWithValue("@haber_baslik", txt_haber_baslik.Text);

            cmd.Parameters.AddWithValue("@haber_icerik", txt_haber_icerik.Text);

            cmd.Parameters.AddWithValue("@haber_foto", "/images/" + fu_hresim.FileName);

            cmd.Parameters.AddWithValue("@haber_tarih", DateTime.Now);

            con.Open();

            if (cmd.ExecuteNonQuery() > 0)

                Label1.Text = "Dosya başarıyla yüklendi";

            con.Close();


            txt_haber_baslik.Text = "";
            txt_haber_icerik.Text = "";

        }
    }

    protected void btn1_Click(object sender, EventArgs e)
    {
      
    }
}
