using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;


namespace SeyahatWeb.Yonetim
{
    public partial class GaleriEkleSil : System.Web.UI.Page
    {

        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbGoTripConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {


            if (FileUpload1.HasFile)
            {

         

            if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/png")
            {

                string ResimAd = FileUpload1.FileName.ToString();
                FileUpload1.SaveAs(Server.MapPath("~/image/galeri/" + ResimAd));
                lblResim.Text = ResimAd.ToString();

                    



                }

            }

            else
            {
                lblResim.Text = "Lütfen  jpeg, jpg, png uzantılı resim seçin";
            }





        }

        protected void Button1_Click(object sender, EventArgs e)
        {



        }
    }
}