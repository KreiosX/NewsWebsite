using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Haber_Listele : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Server=79.123.231.145,7857;Initial Catalog=167904005;User Id=167904005;Password=Maraba08;"); // Veritabanına bağlantı komutlarımız
        SqlCommand cmd = new SqlCommand("Select * from Haber", con);  //Sql sorgusu ile Haber tablomuzdaki tüm verileri bağlantı içerisinde istedik.
        try
        {
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            Rpt1.DataSource = dr;  //Default.aspx sayfamızda oluşturduğumuz Repeater nesnemiz.
            Rpt1.DataBind();
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
}
