<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="Ayarlar.aspx.cs" Inherits="SeyahatWeb.Yonetim.Ayarlar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><h4 class="page-title">Site Ayarları İşlem Sayfası</h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">    
    <div class="col-12 grid-margin stretch-card">
    
              <div class="card">
                <div class="card-body">
                
                  <form class="forms-sample" runat="server">
                    <div class="form-group">
                      <label for="exampleInputName1">E-Mail</label>             
                        <asp:TextBox ID="txtMail" runat="server" CssClass="form-control" placeholder="E-Mail"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Tlf</label>
                     
                        <asp:TextBox ID="txtTlf" runat="server" CssClass="form-control" height="60px" placeholder="Telefon"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Adres</label>
                      
                        <asp:TextBox ID="txtAdres" runat="server" CssClass="form-control" TextMode="MultiLine" height="60px" placeholder="Adres"></asp:TextBox>

                    </div>
                     <div class="form-group">
                      <label for="exampleInputEmail3">Twitter</label>
                     
                        <asp:TextBox ID="txtTwitter" runat="server" CssClass="form-control" height="60px" placeholder="Twitter"></asp:TextBox>
                    </div>
                       <div class="form-group">
                      <label for="exampleInputEmail3">YouTube</label>
                     
                        <asp:TextBox ID="txtYoutube" runat="server" CssClass="form-control" height="60px" placeholder="Youtube"></asp:TextBox>
                    </div>
                       <div class="form-group">
                      <label for="exampleInputEmail3">Instagram</label>
                     
                        <asp:TextBox ID="txtİnstagram" runat="server" CssClass="form-control" height="60px" placeholder="Instagram"></asp:TextBox>
                    </div>
                       <div class="form-group">
                      <label for="exampleInputEmail3">Facebook</label>
                     
                        <asp:TextBox ID="txtFacebook" runat="server" CssClass="form-control" height="60px" placeholder="Facebook"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label>Logo</label>
                        <asp:FileUpload ID="FileUpload1" runat="server" cssClass="form-control file-upload-info"/>
                    </div>
                  


                    <div class="form-group">
                      <label for="exampleTextarea1">Site Açıklama</label>

                       <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" height="100px" CssClass="form-control" placeholder="Site Açıklama"></asp:TextBox>
                        <asp:Label ID="lblTarih" Text="" runat="server"></asp:Label>
                    </div>
                      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
                      <asp:Button ID="Button1" runat="server" Text="Yükle" CssClass="btn btn-gradient-primary mr-2" OnClick="Button1_Click" />
                       <asp:Button ID="Button2" runat="server" Text="Güncelle" CssClass="btn btn-gradient-primary mr-2" OnClick="Button2_Click" />


                  </form>
                </div>
              </div>
            </div>
</asp:Content>
