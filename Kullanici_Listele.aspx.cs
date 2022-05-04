using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Kullanici_Listele : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Server=79.123.231.145,7857;Initial Catalog=167904005;User Id=167904005;Password=Maraba08;"); // Veritabanına bağlantı komutlarımız
        SqlCommand cmd = new SqlCommand("Select * from kullanici", con);  //Sql sorgusu ile Haber tablomuzdaki tüm verileri bağlantı içerisinde istedik.
        try
        {
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            Rpt2.DataSource = dr;  //Default.aspx sayfamızda oluşturduğumuz Repeater nesnemiz.
            Rpt2.DataBind();
            dr.Close();  //DataReader işlemimizi kapatalım.
        }
        catch
        {
            Response.Write("İşlem Sırasında Bir Hata Oluştu.");
        }
        finally
        {
            con.Close(); // Tüm işlemler sonunda veritabanı bağlantımızı kapatıyoruz şekilde.
        }
    }

    protected void Rpt2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        

        if (e.CommandName.ToString() == "sil")
        {
              int id = int.Parse(e.CommandArgument.ToString());
        }
        else if (e.CommandName.ToString() == "duzenle")
        {
         
        }





        //SqlConnection baglanti = new SqlConnection("Data Source=79.123.231.145,7857; initial Catalog=167904005;user id = 167904005; password=Maraba08;Integrated Security =false");
        //string sorgu = "DELETE from kullanici (id,kullaniciAdi,adi,soyadi,email,sifre,kullanici_tur) VALUES (@id,@kullaniciAdi,@adi,@soyadi,@email,@sifre,@kullanici_tur)";

        //SqlCommand komut = new SqlCommand(sorgu, baglanti);

        //komut.Parameters.AddWithValue("@id", Rpt2.ItemTemplate);
        //komut.Parameters.AddWithValue("@kullaniciAdi", Rpt2);
        //komut.Parameters.AddWithValue("@adi", Rpt2);
        //komut.Parameters.AddWithValue("@soyadi", Rpt2);
        //komut.Parameters.AddWithValue("@email", Rpt2);
        //komut.Parameters.AddWithValue("@sifre", Rpt2);
        //komut.Parameters.AddWithValue("@kullanici_tur", Rpt2);

        //baglanti.Open();

        //komut.ExecuteNonQuery();
        //baglanti.Close();
        //DeleteCommand="DELETE FROM [Haber] WHERE [id] = @id"

    }
}