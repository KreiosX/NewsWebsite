using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Imaging;

public partial class guvenlikResmiaspx : System.Web.UI.Page
{
    Random rnd = new Random();
    protected void Page_Load(object sender, EventArgs e)
    {
        Bitmap      resim   = new Bitmap(110,34);
        Graphics    grafik = Graphics.FromImage(resim);

        grafik.FillRectangle(new SolidBrush(Color.FromArgb(238, 238, 238)),0,0,110,34);

        Font yaziTipi = new Font("Arial",12,FontStyle.Bold);
        SolidBrush firca = new SolidBrush(Color.Black);
        Pen kalem = new Pen(Color.Aqua);

        string harfler = "ABCDEFGHIJKLMNOPRSTUXWYZ1234567890";
        string karakter = "";
        string sessionKod = ""; 
        for (int i = 0; i < 6; i++)
        {
            karakter = harfler.Substring(rnd.Next(0,33),1).ToString();
            grafik.DrawString(karakter,yaziTipi,firca,i*18,8);
            sessionKod += karakter;

        }
        grafik.DrawLine(kalem,0,0,110,34);
        grafik.DrawLine(kalem,0,34, 110, 0);
        resim.Save(Response.OutputStream, ImageFormat.Jpeg);
        Session["guvenlikKod"] = sessionKod;


    }
}