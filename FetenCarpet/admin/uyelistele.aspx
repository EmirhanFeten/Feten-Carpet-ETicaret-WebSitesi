<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="uyelistele.aspx.cs" Inherits="_07._01._2023.admin.uyelistele" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
            <% System.Data.DataTable veriler = new System.Data.DataTable();
            FetenCarpet.UyeCRUD uyecrud = new FetenCarpet.UyeCRUD();
            veriler = uyecrud.tumliste2();     
            %>
        <div>
              <table class="table table-light table-borderless table-hover text-center mb-0">
                    <thead class="thead-dark">
                <tr>
                    <td>Sıra No</td>
                    <td>Ad</td>
                    <td>Soyad</td>
                    <td>Kulllanıc adı</td>
                    <td>Şifre</td>
                    <td>Mail</td>
                </tr>
                <% for (int i = 0; i<veriler.Rows.Count; i++)
            {
                %> <tr>
                    <td><%=veriler.Rows[i][0] %> </td>
                    <td><%=veriler.Rows[i][1]%> </td>
                    <td><%=veriler.Rows[i][2] %></td>
                    <td><%=veriler.Rows[i][3] %></td>
                    <td><%= veriler.Rows[i][4] %></td>
                    <td><%= veriler.Rows[i][5] %></td>
                   </tr> <%
                                                                                                    
            }%>
            </table>
            </div>
       
</asp:Content>
