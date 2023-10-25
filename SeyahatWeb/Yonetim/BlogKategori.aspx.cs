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
    public partial class BlogKategori : System.Web.UI.Page
    {

        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);

            SqlCommand komut = new SqlCommand("insert into tblBlogKategori(Adi) values (@Adi)", baglanti);

            baglanti.Open();

            komut.Parameters.AddWithValue("@Adi", txtAd.Text.ToString());
            
            komut.ExecuteNonQuery();
            baglanti.Close();



            Response.Redirect("BlogKategori.aspx");



        }
    }
}