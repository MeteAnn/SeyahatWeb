using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Data.Common;

namespace SeyahatWeb.Yonetim
{
    public partial class BlogEkle : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;


        DateTime bugun = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTarih.Text = bugun.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);


            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblBlog(Baslik,Ozet,KategoriId,Resim,Detay,Tarih) values (@Baslik,@Ozet,@KategoriId,@Resim,@Detay,@Tarih)",baglanti);

            

            komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Ozet", txtOzet.Text.ToString());
            komut.Parameters.AddWithValue("@KategoriId", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
            komut.Parameters.AddWithValue("@Tarih", bugun);
        
            komut.ExecuteNonQuery();

            baglanti.Close();

            Response.Redirect("BlogEkle.aspx");
            

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
}   }