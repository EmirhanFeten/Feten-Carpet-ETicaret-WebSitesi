<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FetenCarpet.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="sno" DataSourceID="SqlDataSource1" EmptyDataText="Görüntülenecek hiç veri kaydı yok.">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="sno" ReadOnly="True" SortExpression="sno" />
                    <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
                    <asp:BoundField DataField="soyad" HeaderText="soyad" SortExpression="soyad" />
                    <asp:BoundField DataField="kadi" HeaderText="kadi" SortExpression="kadi" />
                    <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
                    <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                </Columns>
            </asp:GridView>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="sno" DataSourceID="SqlDataSource2" EmptyDataText="Görüntülenecek hiç veri kaydı yok.">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="sno" ReadOnly="True" SortExpression="sno" />
                    <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
                    <asp:BoundField DataField="soyad" HeaderText="soyad" SortExpression="soyad" />
                    <asp:BoundField DataField="kadi" HeaderText="kadi" SortExpression="kadi" />
                    <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
                    <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:fetencarpetConnectionString1 %>" DeleteCommand="DELETE FROM [uye] WHERE [sno] = @sno" InsertCommand="INSERT INTO [uye] ([ad], [soyad], [kadi], [sifre], [mail]) VALUES (@ad, @soyad, @kadi, @sifre, @mail)" ProviderName="<%$ ConnectionStrings:fetencarpetConnectionString1.ProviderName %>" SelectCommand="SELECT [sno], [ad], [soyad], [kadi], [sifre], [mail] FROM [uye]" UpdateCommand="UPDATE [uye] SET [ad] = @ad, [soyad] = @soyad, [kadi] = @kadi, [sifre] = @sifre, [mail] = @mail WHERE [sno] = @sno">
                <DeleteParameters>
                    <asp:Parameter Name="sno" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ad" Type="String" />
                    <asp:Parameter Name="soyad" Type="String" />
                    <asp:Parameter Name="kadi" Type="String" />
                    <asp:Parameter Name="sifre" Type="String" />
                    <asp:Parameter Name="mail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ad" Type="String" />
                    <asp:Parameter Name="soyad" Type="String" />
                    <asp:Parameter Name="kadi" Type="String" />
                    <asp:Parameter Name="sifre" Type="String" />
                    <asp:Parameter Name="mail" Type="String" />
                    <asp:Parameter Name="sno" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" DataKeyNames="sno" DataSourceID="SqlDataSource3" EmptyDataText="Görüntülenecek hiç veri kaydı yok.">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="sno" ReadOnly="True" SortExpression="sno" />
                    <asp:BoundField DataField="ad" HeaderText="ad" SortExpression="ad" />
                    <asp:BoundField DataField="soyad" HeaderText="soyad" SortExpression="soyad" />
                    <asp:BoundField DataField="kadi" HeaderText="kadi" SortExpression="kadi" />
                    <asp:BoundField DataField="sifre" HeaderText="sifre" SortExpression="sifre" />
                    <asp:BoundField DataField="mail" HeaderText="mail" SortExpression="mail" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:fetencarpetConnectionString1 %>" DeleteCommand="DELETE FROM [uye] WHERE [sno] = @sno" InsertCommand="INSERT INTO [uye] ([ad], [soyad], [kadi], [sifre], [mail]) VALUES (@ad, @soyad, @kadi, @sifre, @mail)" ProviderName="<%$ ConnectionStrings:fetencarpetConnectionString1.ProviderName %>" SelectCommand="SELECT [sno], [ad], [soyad], [kadi], [sifre], [mail] FROM [uye]" UpdateCommand="UPDATE [uye] SET [ad] = @ad, [soyad] = @soyad, [kadi] = @kadi, [sifre] = @sifre, [mail] = @mail WHERE [sno] = @sno">
                <DeleteParameters>
                    <asp:Parameter Name="sno" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ad" Type="String" />
                    <asp:Parameter Name="soyad" Type="String" />
                    <asp:Parameter Name="kadi" Type="String" />
                    <asp:Parameter Name="sifre" Type="String" />
                    <asp:Parameter Name="mail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ad" Type="String" />
                    <asp:Parameter Name="soyad" Type="String" />
                    <asp:Parameter Name="kadi" Type="String" />
                    <asp:Parameter Name="sifre" Type="String" />
                    <asp:Parameter Name="mail" Type="String" />
                    <asp:Parameter Name="sno" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:fetencarpetConnectionString1 %>" DeleteCommand="DELETE FROM [uye] WHERE [sno] = @sno" InsertCommand="INSERT INTO [uye] ([ad], [soyad], [kadi], [sifre], [mail]) VALUES (@ad, @soyad, @kadi, @sifre, @mail)" ProviderName="<%$ ConnectionStrings:fetencarpetConnectionString1.ProviderName %>" SelectCommand="SELECT [sno], [ad], [soyad], [kadi], [sifre], [mail] FROM [uye]" UpdateCommand="UPDATE [uye] SET [ad] = @ad, [soyad] = @soyad, [kadi] = @kadi, [sifre] = @sifre, [mail] = @mail WHERE [sno] = @sno">
                <DeleteParameters>
                    <asp:Parameter Name="sno" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ad" Type="String" />
                    <asp:Parameter Name="soyad" Type="String" />
                    <asp:Parameter Name="kadi" Type="String" />
                    <asp:Parameter Name="sifre" Type="String" />
                    <asp:Parameter Name="mail" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ad" Type="String" />
                    <asp:Parameter Name="soyad" Type="String" />
                    <asp:Parameter Name="kadi" Type="String" />
                    <asp:Parameter Name="sifre" Type="String" />
                    <asp:Parameter Name="mail" Type="String" />
                    <asp:Parameter Name="sno" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
