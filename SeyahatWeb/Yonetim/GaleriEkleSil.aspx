<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriEkleSil.aspx.cs" Inherits="SeyahatWeb.Yonetim.GaleriEkleSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4 class="page-title">Resim Galerisi İşlemleri Sayfası</h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server"><div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">



                
                  <form class="forms-sample" runat="server">
                   
                      <h3>Galeri Resim Yükleme Alanı</h3>

                      <div class="form-group">
                      <label for="exampleInputName1">Başlık</label>

                          <asp:TextBox ID="txtBaslik" CssClass="form-control" placeholder="Başlık" runat="server"></asp:TextBox>

                          </div>
                      
                      <div class="form-group">
                      <label for="exampleInputName1">Resim Adı</label>

                          <asp:TextBox ID="txtResimAd" CssClass="form-control" placeholder="Resim Adı" runat="server"></asp:TextBox>

                          </div>

                      <div class="form-group">
                      <label for="exampleInputName1">Kategori Adı</label>

                          <asp:DropDownList ID="DropDownList1"  CssClass="form-control" runat="server" DataSourceID="SqlDataSource1" DataTextField="Adi" DataValueField="id"></asp:DropDownList>
                          </div>
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTripConnectionString %>" SelectCommand="SELECT * FROM [tblGaleriKategori]"></asp:SqlDataSource>
                    <div class="form-group">
                      <label>Galeri Resim</label>
                      <input type="file" name="img[]" class="file-upload-default">
                        <asp:FileUpload ID="FileUpload1" runat="server" cssClass="form-control file-upload-info"/>
                         <asp:Button ID="Button2" runat="server" Text="Resim Yükle" CssClass="btn btn-gradient-primary mr-2" OnClick="Button2_Click" />


                    </div>
                      <div class="form-group">
                           <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                      </div>

                      <div class="form-group">

                    <asp:Button ID="Button1" CssClass="btn btn-gradient-primary mr-2" runat="server" Text="Kaydet" Width="163px" OnClick="Button1_Click" />
                     </div>
                      

                  </form>
                </div>
              </div>
            </div>
</asp:Content>
