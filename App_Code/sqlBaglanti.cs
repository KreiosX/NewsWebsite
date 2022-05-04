using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

/// <summary>
/// Summary description for sqlBaglanti
/// </summary>
public class sqlBaglanti
{
    public SqlConnection baglan()
    {
        SqlConnection baglanti = new SqlConnection("Data Source=79.123.231.145,7857; Network Library=DBMSSOCN;Initial Catalog=2016_2017_gunduz;User Id=intProg;Password=1234;");
        baglanti.Open();
        SqlConnection.ClearPool(baglanti);
        SqlConnection.ClearAllPools();
        return (baglanti);
    }
}