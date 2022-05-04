using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    veritabani vt = new veritabani();       
    bool ban = true;
    DateTime banSuresi = new DateTime(2018, 3, 4, 11, 35, 00);
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if((Request.QueryString["islem"]!=null) && (Request.QueryString["islem"].ToString()=="cik"))
                {
            ltr_mesaj.Text = "<div class=\"alert alert-success alert - dismissible\">" +
                            "<button type = \"button\" class=\"close\" data-dismiss=\"alert\" aria-hidden=\"true\">&times;</button>" +
                            "<h4><i class=\"icon fa fa-check\"></i> Dikkat!</h4>" +
                            "Sayın " + Request.QueryString["ad"].ToString() + " Çıkış işleminiz gerçekleştirildi." +
                            "</div>";
        }
    }

    protected void btn_tamam_Click(object sender, EventArgs e)
    {
        int durum= vt.girisKontrol(Convert.ToInt32(txt_eposta.Text), txt_sifre.Text.ToString());
        if (durum==1)
        {
            if (Session["guvenlikKod"].ToString() != txt_kod.Text.ToString())
            {
                txt_kod.Text = "";
                ltr_mesaj.Text = "<div class=\"alert alert-danger alert - dismissible\">" +
                            "<button type = \"button\" class=\"close\" data-dismiss=\"alert\" aria-hidden=\"true\">&times;</button>" +
                            "<h4><i class=\"icon fa fa-ban\"></i> Hata!</h4>" +
                            "Güvenlik Kodu Uyuşmuyor." +
                            "</div>";
            }
            else
            {
                if (!ban)
                {
                    Session["giris"] = "1";
                    Session["perId"] = txt_eposta.Text;
                    vt.logEkle(Convert.ToInt32(txt_eposta.Text), 25, "85.125.210.58");
                    Response.Redirect("sistem2.aspx");
                    
                }
                else if ((ban) && (banSuresi<DateTime.Now) )
                {
                    Session["giris"] = "1";
                    Session["perId"] = txt_eposta.Text;
                    vt.logEkle(Convert.ToInt32(txt_eposta.Text), 25, "85.125.210.58");
                    Response.Redirect("Admin_Giris.aspx");
                }
                else
                {
                    txt_kod.Text = "";
                    ltr_mesaj.Text = "<div class=\"alert alert-danger alert - dismissible\">" +
                                "<button type = \"button\" class=\"close\" data-dismiss=\"alert\" aria-hidden=\"true\">&times;</button>" +
                                "<h4><i class=\"icon fa fa-ban\"></i> Hata!</h4>" +
                                "Hesabınız sistem yöneticisi tarafından "+ banSuresi.ToString() +" e kadar kilitlenmişitir." +
                                "</div>";
                }
                
            }
                
        }        
        else 
        {
           txt_kod.Text = "";
           ltr_mesaj.Text= "<div class=\"alert alert-danger alert - dismissible\">"+
                            "<button type = \"button\" class=\"close\" data-dismiss=\"alert\" aria-hidden=\"true\">&times;</button>"+
                            "<h4><i class=\"icon fa fa-ban\"></i> Hata!</h4>"+
                            "E posta yada şifreniz hatalı"+
                            "</div>";
           vt.logEkle(Convert.ToInt32(txt_eposta.Text), 27, "85.125.210.58");

        }
        
    }
}