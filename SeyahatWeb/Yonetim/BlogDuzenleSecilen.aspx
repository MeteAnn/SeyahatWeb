<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogDuzenleSecilen.aspx.cs" Inherits="SeyahatWeb.Yonetim.BlogDuzenleSecilen" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4 class="page-title">Blog Ekleme Sayfası</h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

     <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                
                  <form class="forms-sample" runat="server">
                      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTripConnectionString %>" SelectCommand="SELECT * FROM [tblBlogKategori]"></asp:SqlDataSource>
                    <div class="form-group">
                      <label for="exampleInputName1">Başlık</label>             
                        <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Başlık"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Özet</label>
                     
                        <asp:TextBox ID="txtOzet" runat="server" CssClass="form-control" TextMode="MultiLine" height="100px" placeholder="Blog Özet"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Kategori</label>
                      
                        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control" DataSourceID="SqlDataSource1" DataTextField="Adi" DataValueField="id"></asp:DropDownList>

                    </div>
           
                    <div class="form-group">
                      <label>Blog Resim</label>
                      <input type="file" name="img[]" class="file-upload-default">
                        <asp:FileUpload ID="FileUpload1" runat="server" cssClass="form-control file-upload-info"/>
                          
                          <asp:Button ID="Button2" CssClass="btn btn-gradient-primary mr-2" runat="server" Text="Resim Yükle" OnClick="Button2_Click" />
                              <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>


                      
                    </div>
                    
                  


                    <div class="form-group">
                      <label for="exampleTextarea1">Blog Detay</label>

                       <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" height="100px" CssClass="form-control" placeholder="Blog Detay"></asp:TextBox>
                        <asp:Label ID="lblTarih" Text="" runat="server"></asp:Label>
                    </div>
                      <asp:Button ID="Button1" runat="server" Text="Yükle" CssClass="btn btn-gradient-primary mr-2"  style="height: 31px" OnClick="Button1_Click1" />

                      <asp:Button ID="Button3" runat="server" Text="Güncelle" CssClass="btn btn-gradient-primary mr-2" OnClick="Button1_Click" />


                  </form>
                </div>
              </div>
            </div>


</asp:Content>
