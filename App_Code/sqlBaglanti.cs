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
        SqlConnection baglanti = new SqlConnection("----");
        baglanti.Open();
        SqlConnection.ClearPool(baglanti);
        SqlConnection.ClearAllPools();
        return (baglanti);
    }
}
