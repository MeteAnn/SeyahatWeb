

<%@ Page Title="" Language="C#" MasterPageFile="~/Yonetim/Admin.Master" AutoEventWireup="true" CodeBehind="BlogDuzenleSil.aspx.cs" Inherits="SeyahatWeb.Yonetim.BlogDuzenleSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h4 class="page-title">Blog Düzenle/Sil Sayfası</h4>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbGoTripConnectionString %>" OnSelecting="SqlDataSource1_Selecting" SelectCommand="SELECT * FROM [tblBlog]" DeleteCommand="DELETE FROM [tblBlog] WHERE [id] = @id" InsertCommand="INSERT INTO [tblBlog] ([Baslik], [Ozet], [KategoriId], [Resim], [Detay], [Tarih]) VALUES (@Baslik, @Ozet, @KategoriId, @Resim, @Detay, @Tarih)" UpdateCommand="UPDATE [tblBlog] SET [Baslik] = @Baslik, [Ozet] = @Ozet, [KategoriId] = @KategoriId, [Resim] = @Resim, [Detay] = @Detay, [Tarih] = @Tarih WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Baslik" Type="String" />
            <asp:Parameter Name="Ozet" Type="String" />
            <asp:Parameter Name="KategoriId" Type="Int32" />
            <asp:Parameter Name="Resim" Type="String" />
            <asp:Parameter Name="Detay" Type="String" />
            <asp:Parameter Name="Tarih" Type="DateTime" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Baslik" Type="String" />
            <asp:Parameter Name="Ozet" Type="String" />
            <asp:Parameter Name="KategoriId" Type="Int32" />
            <asp:Parameter Name="Resim" Type="String" />
            <asp:Parameter Name="Detay" Type="String" />
            <asp:Parameter Name="Tarih" Type="DateTime" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <form runat="server">
        <asp:GridView ID="GridView1" CssClass="table table-borderless" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="id">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>



                        <asp:HyperLink ID="HyperLink1" NavigateUrl='<%#Eval("id","BlogDuzenleSecilen.aspx?id={0}") %>' runat="server">Düzenle</asp:HyperLink>

                    </ItemTemplate>


                </asp:TemplateField>

                <asp:CommandField ShowDeleteButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="Baslik" HeaderText="Baslik" SortExpression="Baslik" />
                <asp:BoundField DataField="Ozet" HeaderText="Ozet" SortExpression="Ozet" />
                <asp:BoundField DataField="KategoriId" HeaderText="KategoriId" SortExpression="KategoriId" />
                <asp:BoundField DataField="Resim" HeaderText="Resim" SortExpression="Resim" />
                <asp:BoundField DataField="Detay" HeaderText="Detay" SortExpression="Detay" />
                <asp:BoundField DataField="Tarih" HeaderText="Tarih" SortExpression="Tarih" />
            </Columns>
        </asp:GridView>
    </form>
    


</asp:Content>
