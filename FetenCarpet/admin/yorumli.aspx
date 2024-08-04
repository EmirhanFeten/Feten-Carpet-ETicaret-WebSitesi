<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumli.aspx.cs" Inherits="FetenCarpet.admin.yorumli" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%System.Data.DataTable veriler = new System.Data.DataTable();
        FetenCarpet.YorumCRUD yorumCRUD = new FetenCarpet.YorumCRUD();
        veriler = yorumCRUD.tumliste();
    %>
     <div>
              <table class="table table-light table-borderless table-hover text-center mb-0">
                    <thead class="thead-dark">
                <tr>
                    <td>Yorum No</td>
                    <td>Ad</td>
                    <td>Tür</td>
                    <td>Mail Adresi</td>
                    <td>Mesaj</td>
                    <td>Cevapla</td>
                    <td>Sil</td>
                </tr>
                <% for (int i = 0; i<veriler.Rows.Count; i++)
            {
                %> <tr>
                    <td><%=veriler.Rows[i][0] %> </td>
                    <td><%=veriler.Rows[i][1]%> </td>
                    <td><%=veriler.Rows[i][2] %></td>
                    <td><%=veriler.Rows[i][3] %></td>
                    <td><%= veriler.Rows[i][4] %></td>
                    <td class="align-middle">
                          <a href="yorumcevap.aspx?yorum=<%=veriler.Rows[i][0]%>"> <input id="Button1" class="btn btn-sa btn-warning" type="button" value="Ayrıntılı Cevap" /></a>
                          <a href="yorumli.aspx?yorum=<%=veriler.Rows[i][0]%>"> <input id="Button2" class="btn btn-sa btn-warning" type="button" value="Hazır Cevap" /></a>
                    </td>
                    <td class="align-middle">
                          <a href="yorumli.aspx?sil=<%=veriler.Rows[i][0]%>"> <input id="Button3" class="btn btn-sa btn-danger" type="button" value="Sil" /></a>
                    </td>
                   </tr>
                      
                        <%
                                                                                                     
            }%>
            </table>         
            </div>
    
</asp:Content>
