using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Reflection.Emit;

namespace SeyahatWeb.Yonetim
{



    public partial class BlogDuzenleSecilen : System.Web.UI.Page
    {

        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;
        DateTime bugun = DateTime.Now;

        protected void Page_Load(object sender, EventArgs e)
        {

            Button2.Enabled = false;
            lblTarih.Text = bugun.ToString();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile) //FileUpload1.HasFile : İfadesi ile kontrol edilir. Bu ifade, kullanıcının dosya yükleyip yüklemediğini kontrol eder. HasFile özelliği, kullanıcının bir dosya seçip seçmediğini belirler. Eğer bir dosya seçilmişse, bu bloğun içine girilir.
            {

                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
                //FileUpload1.PostedFile.ContentType, yüklenen dosyanın MIME türünü(Content Type) temsil eder
                {

                    string ResimAd = FileUpload1.FileName.ToString(); //Burada dosyanın adını alırz ve bu adı 'ResimAd' adlı değişkene atarız.


                    FileUpload1.SaveAs(Server.MapPath("~/image/blog/" + ResimAd)); //bu kod satırı, FileUpload1 kontrolünden gelen dosyayı "İmage" adlı klasöre ve ResimAd dosya adı ile kaydeder. Bu şekilde yüklenen dosya, belirtilen klasörde saklanabilir veya daha sonra kullanılabilir.


                    lblResim.Text = ResimAd.ToString(); //bu kod satırı, ResimAd değişkeninin değerini lblResim kontrolünün metin içeriğine atar ve bu değeri kullanıcıya gösterir. Kullanıcının yüklediği dosyanın adı bu etiket üzerinde görüntülenmiş olur.


                }
                else
                {
                    lblResim.Text = "Lütfen  jpeg, jpg, png uzantılı resim seçin";
                }




            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);


            baglanti.Open();
            SqlCommand komut = new SqlCommand("update tblBlog set Baslik=@Baslik, Ozet=@Ozet, KategoriId=@KategoriId, Resim=@Resim, Detay=@Detay, Tarih=@Tarih where id=@id", baglanti);



            komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Ozet", txtOzet.Text.ToString());
            komut.Parameters.AddWithValue("@KategoriId", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
            komut.Parameters.AddWithValue("@Tarih", bugun);
            komut.Parameters.AddWithValue("@id", Request.QueryString["id"]);

            komut.ExecuteNonQuery();

            baglanti.Close();

            Response.Redirect("BlogDuzenleSil.aspx");
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("Select * From tblBlog where id = @id", baglanti);
            komut.Parameters.AddWithValue("@id", Request.QueryString["id"]);

            SqlDataReader oku = komut.ExecuteReader();
            DataTable tablo = new DataTable();
            tablo.Load(oku);
            txtBaslik.Text = tablo.Rows[0]["Baslik"].ToString();
            txtOzet.Text = tablo.Rows[0]["Ozet"].ToString();
            DropDownList1.SelectedValue = tablo.Rows[0]["KategoriId"].ToString();
            txtDetay.Text = tablo.Rows[0]["Detay"].ToString();
            lblResim.Text = tablo.Rows[0]["Resim"].ToString();
            lblTarih.Text = tablo.Rows[0]["Tarih"].ToString();
          


            baglanti.Close();
            Button2.Enabled = true;
        }
    }
}