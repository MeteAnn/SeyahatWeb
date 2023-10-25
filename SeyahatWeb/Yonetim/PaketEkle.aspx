<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="PaketEkle.aspx.cs" Inherits="SeyahatWeb.Yonetim.PaketEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><h4 class="page-title">Yeni Tur Paket Sayfası</h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">  <div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                
                  <form class="forms-sample" runat="server">
                    <div class="form-group">
                      <label for="exampleInputName1">Tur Adı</label>             
                        <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Tur Adı"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputEmail3">Tur Fiyat</label>
                     
                        <asp:TextBox ID="txtFiyat" runat="server" CssClass="form-control" placeholder="Tur Fiyat"></asp:TextBox>
                    </div>
                    <div class="form-group">
                      <label for="exampleInputPassword4">Tur Süresi</label>
                      
                        <asp:TextBox ID="txtSure" runat="server" CssClass="form-control" placeholder="Tur Süresi"></asp:TextBox>

                    </div>
                    <div class="form-group">
                      <label for="exampleSelectGender">Tur Konumu</label>
                        <asp:TextBox ID="txtKonum" runat="server" CssClass="form-control" placeholder="Tur Konumu"></asp:TextBox>


                      </div>
                    <div class="form-group">
                      <label>Tur Resim</label>
                      <input type="file" name="img[]" class="file-upload-default">
                        <asp:FileUpload ID="FileUpload1" runat="server" cssClass="form-control file-upload-info"/>

                    </div>
                      <asp:Button ID="Button2" runat="server" CssClass="btn btn-gradient-primary mr-2" Text="Resim Yükle" OnClick="Button2_Click" />
                      <asp:Label ID="lblResim" runat="server" Text=""></asp:Label>
                      <br />
                      <br />


                    <div class="form-group">
                      <label for="exampleTextarea1">Tur Detay</label>
                       <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" height="100px" CssClass="form-control" placeholder="Tur Detay"></asp:TextBox>
                    </div>
                      <asp:Button ID="Button1" runat="server" Text="Kaydet" CssClass="btn btn-gradient-primary mr-2" OnClick="Button1_Click" />


                  </form>
                </div>
              </div>
            </div>
</asp:Content>
