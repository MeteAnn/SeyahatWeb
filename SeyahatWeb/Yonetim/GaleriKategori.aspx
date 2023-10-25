<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="GaleriKategori.aspx.cs" Inherits="SeyahatWeb.Yonetim.GaleriKategori" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4 class="page-title">Resim Galerisi Kategori İşlemleri Sayfası</h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server"><div class="col-12 grid-margin stretch-card">
              <div class="card">
                <div class="card-body">
                
                  <form class="forms-sample" runat="server">
                    <div class="form-group">
                      <label for="exampleInputName1">Kategori Adı</label>             
                        <asp:TextBox ID="txtAd" runat="server" CssClass="form-control" placeholder="Tur Adı"></asp:TextBox>
                    </div>
                   
                      <asp:Button ID="Button1" runat="server" Text="Kategori Ekle" CssClass="btn btn-gradient-primary mr-2" OnClick="Button1_Click" />


                  </form>
                </div>
              </div>
            </div>
    </asp:Content>