using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for veritabani
/// </summary>
public class veritabani
{
    #region değişkenler
    public SqlConnection sqlBaglanti = new SqlConnection();
    public SqlCommand sqlKomut = new SqlCommand();
    public SqlDataReader sqlOku;
    #endregion
    public bool baglan()
    {
        bool durum = false;
        try
        {
            if (sqlBaglanti.State == ConnectionState.Closed)
            {
                sqlBaglanti.ConnectionString = ConfigurationManager.ConnectionStrings["veritabaniYolu"].ToString();
                sqlBaglanti.Open();
                durum = true;
            }
        }
        catch (Exception e)
        {
            durum = false;
        }
        return durum;
    }
    public void baglantiKes()
    {
        if (sqlBaglanti.State == ConnectionState.Open)
            sqlBaglanti.Close();
    }

    public int girisKontrol(int id, string sifre)
    {

        baglan();

        sqlKomut.Parameters.Clear();

        sqlKomut.CommandType = CommandType.StoredProcedure;
        sqlKomut.Connection = sqlBaglanti;
        sqlKomut.CommandText = "girisKontrol";
        

        SqlParameter perId = sqlKomut.Parameters.Add("@gelenId", SqlDbType.Int);
        perId.Direction = ParameterDirection.Input;
        perId.Value = id;

        SqlParameter perSfr = sqlKomut.Parameters.Add("@gelenSifre", SqlDbType.VarChar, 8);
        perSfr.Direction = ParameterDirection.Input;
        perSfr.Value = sifre;

        SqlParameter drm = sqlKomut.Parameters.Add("@durum", SqlDbType.Int);
        drm.Direction = ParameterDirection.Output;

        sqlKomut.ExecuteNonQuery();
        baglantiKes();

        return Convert.ToInt32(drm.Value);
    }
    public void logEkle(int pId, int iTur, string iAdres)
    {
        baglan();
        
        sqlKomut.CommandType = CommandType.Text;
        sqlKomut.Connection = sqlBaglanti;
        sqlKomut.CommandText = "INSERT INTO log (personelId,islemTur,ipAdresi) values (" + pId + "," + iTur + ",'" + iAdres.ToString() + "')";

        sqlKomut.ExecuteReader();
        baglantiKes();

    }
    public string logOku(int pId)
    {
        string okunan = "";
        baglan();

        sqlKomut.CommandType = CommandType.Text;
        sqlKomut.Connection = sqlBaglanti;
        sqlKomut.CommandText = "select	(select ad +' ' +soyad from tbl_personel where id=personelId)," +
                               "(select ad from tbl_sabitler where id = islemTur)," +
                                                       " tarih," +
                                                       " ipAdresi" +
                               " from log where personelId =" + pId;
        sqlOku = sqlKomut.ExecuteReader();

        while (sqlOku.Read())
        {
            okunan += sqlOku.GetValue(0).ToString() + "-" + sqlOku.GetValue(1).ToString() + "-" + sqlOku.GetValue(2).ToString() + "-" + sqlOku.GetValue(3).ToString() + "<br/>";
        }
        baglantiKes();
        return okunan;
    }
    public List<string> personelBilgiGetir(int pId)
    {
        List<string> okunanVeriler = new List<string>();
        baglan();

        sqlKomut.CommandType = CommandType.Text;
        sqlKomut.Connection = sqlBaglanti;
        sqlKomut.CommandText = "select * from tbl_personel where id = " + pId;
        sqlOku = sqlKomut.ExecuteReader();

        while (sqlOku.Read())
        {

            for (int i = 0; i < sqlOku.FieldCount; i++)
                okunanVeriler.Add(sqlOku.GetValue(i).ToString());
        }

        baglantiKes();
        return okunanVeriler;


    }
    public veritabani()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}