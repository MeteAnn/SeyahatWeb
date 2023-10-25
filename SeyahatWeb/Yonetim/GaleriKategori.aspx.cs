using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace SeyahatWeb.Yonetim
{
    public partial class GaleriKategori : System.Web.UI.Page
    {

        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;


        protected void Page_Load(object sender, EventArgs e)
        {




        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);

            baglanti.Open();
            
            SqlCommand komut = new SqlCommand("insert into tblGaleriKategori(Adi) values(@Adi)",baglanti);

            komut.Parameters.AddWithValue("@Adi",txtAd.Text.ToString());
            komut.ExecuteNonQuery();


            baglanti.Close();

            Response.Redirect("GaleriKategori.aspx");



        }
    }
}