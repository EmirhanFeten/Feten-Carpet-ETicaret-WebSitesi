<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="uyeguncelleme.aspx.cs" Inherits="_07._01._2023.admin.uyeguncelleme" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mb-3">
            ad:<asp:TextBox ID="TextBox1"  class="form-control" runat="server"></asp:TextBox>
            <br />
            soyad:<asp:TextBox ID="TextBox2"  class="form-control" runat="server"></asp:TextBox>
            <br />
            kadi:<asp:TextBox ID="TextBox3"  class="form-control" runat="server"></asp:TextBox>
            <br />
            şifre:<asp:TextBox ID="TextBox4"  class="form-control" runat="server"></asp:TextBox>
            <br />
            
        <asp:Button ID="Button1" runat="server"  style="height: 29px" Text="kaydet" OnClick="Button1_Click" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>
</asp:Content>
