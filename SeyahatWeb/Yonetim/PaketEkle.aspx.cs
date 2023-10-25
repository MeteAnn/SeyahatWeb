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
    public partial class PaketEkle : System.Web.UI.Page
    {

        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            
            if(FileUpload1.HasFile) //FileUpload1.HasFile : İfadesi ile kontrol edilir. Bu ifade, kullanıcının dosya yükleyip yüklemediğini kontrol eder. HasFile özelliği, kullanıcının bir dosya seçip seçmediğini belirler. Eğer bir dosya seçilmişse, bu bloğun içine girilir.
            {

                if (FileUpload1.PostedFile.ContentType=="image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType =="image/png")
                    //FileUpload1.PostedFile.ContentType, yüklenen dosyanın MIME türünü(Content Type) temsil eder
                {

                    string ResimAd = FileUpload1.FileName.ToString(); //Burada dosyanın adını alırz ve bu adı 'ResimAd' adlı değişkene atarız.


                    FileUpload1.SaveAs(Server.MapPath("~/image" + ResimAd)); //bu kod satırı, FileUpload1 kontrolünden gelen dosyayı "İmage" adlı klasöre ve ResimAd dosya adı ile kaydeder. Bu şekilde yüklenen dosya, belirtilen klasörde saklanabilir veya daha sonra kullanılabilir.


                    lblResim.Text = ResimAd.ToString(); //bu kod satırı, ResimAd değişkeninin değerini lblResim kontrolünün metin içeriğine atar ve bu değeri kullanıcıya gösterir. Kullanıcının yüklediği dosyanın adı bu etiket üzerinde görüntülenmiş olur.


                }
                else
                {
                    lblResim.Text = "Lütfen  jpeg, jpg, png uzantılı resim seçin";
                }



            }
            else
            {
                lblResim.Text = "Lütfen bir Resim seçin";
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti); //Bu kod ile belirtilen bağlantı dizesi ile bir SqlConnection nesnesi oluşturup bu nesneyi Sql Server veritabanı ile iletişim kurmak için kullanıyoruz.

            baglanti.Open();

            SqlCommand komut = new SqlCommand("insert into tblTurPaket(Adi,Fiyat,Sure,Lokasyon,Resim,Detay) values (@Adi,@Fiyat,@Sure,@Lokasyon,@Resim,@Detay)", baglanti); //Bu kod SQL Server veritabanına veri eklemek için SQL Command nesnesi oluşturur.






            //Bu kodlar kullanıcının tur paketi bilgilerini girip veritabanına eklenmesini ve ardından ilgili sayfaya yönlendirilmesini sağlar. SQL Sorgusunda kullanılan parametreler, kullanıcıdan alınan verileri güvenli bir şekilde veritabanına aktarmak için kullanılır.
            komut.Parameters.AddWithValue("@Adi",txtAd.Text.ToString());
            komut.Parameters.AddWithValue("@Fiyat",Convert.ToInt32(txtFiyat.Text.ToString()));
            komut.Parameters.AddWithValue("@Sure", Convert.ToInt32(txtSure.Text.ToString()));
            komut.Parameters.AddWithValue("@Lokasyon", txtKonum.Text.ToString());
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut.Parameters.AddWithValue("@Detay", txtDetay.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();



            Response.Redirect("PaketEkle.aspx"); //Kullanıcı verileri ekledikten sonra belirli sayfaya yönlendirmek için kullanılır.







        }
    }
}