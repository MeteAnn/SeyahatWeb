using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;

namespace SeyahatWeb.Yonetim
{
    public partial class Ayarlar : System.Web.UI.Page
    {
        string id;
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            Button2.Enabled = false;    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           

            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From tblAyarlar", baglanti);
            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtMail.Text = tablo.Rows[0]["Mail"].ToString();
            txtTlf.Text = tablo.Rows[0]["Tlf"].ToString();
            txtAdres.Text = tablo.Rows[0]["Adres"].ToString();
            txtTwitter.Text = tablo.Rows[0]["Twitter"].ToString();
            txtYoutube.Text = tablo.Rows[0]["Youtube"].ToString();
            txtİnstagram.Text = tablo.Rows[0]["Instagram"].ToString();
            txtFacebook.Text = tablo.Rows[0]["Facebook"].ToString();
            txtDetay.Text = tablo.Rows[0]["SiteOzet"].ToString();
            Label1.Text = tablo.Rows[0]["id"].ToString();


            baglanti.Close();
            Button2.Enabled = true;
        



        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            SqlConnection baglanti = new SqlConnection(conf_baglanti);


            baglanti.Open();
            SqlCommand komut = new SqlCommand("update tblAyarlar set Mail=@Mail, Tlf=@Tlf, Adres=@Adres, Twitter=@Twitter, Youtube=@Youtube, Instagram=@Instagram, Facebook=@Facebook, SiteOzet=@SiteOzet where id=@id  ", baglanti);



            komut.Parameters.AddWithValue("@Mail", txtMail.Text.ToString());
            komut.Parameters.AddWithValue("@Tlf", txtTlf.Text.ToString());
            komut.Parameters.AddWithValue("@Adres", txtAdres.Text.ToString());
            komut.Parameters.AddWithValue("@Twitter", txtTwitter.Text.ToString());
            komut.Parameters.AddWithValue("@Youtube", txtYoutube.Text.ToString());
            komut.Parameters.AddWithValue("@Instagram", txtİnstagram.Text.ToString());
            komut.Parameters.AddWithValue("@Facebook", txtFacebook.Text.ToString());
            komut.Parameters.AddWithValue("@SiteOzet", txtDetay.Text.ToString());
            komut.Parameters.AddWithValue("@id", Label1.Text.ToString());



            komut.ExecuteNonQuery();

            baglanti.Close();
            Response.Redirect("Ayarlar.aspx");





        }
    }
}