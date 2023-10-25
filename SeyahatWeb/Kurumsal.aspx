<%@ Page Title="" Language="C#" MasterPageFile="~/AltSayfa.Master" AutoEventWireup="true" CodeBehind="Kurumsal.aspx.cs" Inherits="SeyahatWeb.Kurumsal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"><h2>Kurumsal</h2>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
         <div class="card">
                <div class="card-body">
                
                  <form class="forms-sample" runat="server">
                    <div class="form-group">
                      <label for="exampleInputName1">Başlık</label>             
                        <asp:TextBox ID="txtBaslik" runat="server" CssClass="form-control" placeholder="Başlık"></asp:TextBox>
                    </div>
                   

                    <div class="form-group">
                      <label for="exampleTextarea1">Özet</label>

                       <asp:TextBox ID="txtOzet" runat="server" TextMode="MultiLine" height="100px" CssClass="form-control" placeholder="Özet"></asp:TextBox>
                        <asp:Label ID="lblTarih" Text="" runat="server"></asp:Label>
                    </div>
                        <div class="form-group">
                      <label for="exampleTextarea1">Detay</label>

                       <asp:TextBox ID="txtDetay" runat="server" TextMode="MultiLine" height="100px" CssClass="form-control" placeholder="Detay"></asp:TextBox>
                        <asp:Label ID="Label2" Text="" runat="server"></asp:Label>


                      <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label><br />
                      <asp:Button ID="Button1" runat="server" Text="Yükle" CssClass="btn btn-gradient-primary mr-2" OnClick="Button1_Click" />
                       <asp:Button ID="Button2" runat="server" Text="Güncelle" CssClass="btn btn-gradient-primary mr-2" OnClick="Button2_Click" />


                  </form>
                </div>
              </div>
            


</asp:Content>
