<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="urunli.aspx.cs" Inherits="FetenCarpet.admin.urunli" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%System.Data.DataTable veriler = new System.Data.DataTable();
        FetenCarpet.UrunCRUD urunCRUD = new FetenCarpet.UrunCRUD();
        veriler = urunCRUD.tumliste();
    %>
     <div>
              <table class="table table-light table-borderless table-hover text-center mb-0">
                    <thead class="thead-dark">
                <tr>
                    <th>Ürün No</th>
                    <th>Ad</th>
                    <th>Ürün Açıklama</th>
                    <th>Ebat</th>
                    <th>Renk</th>
                    <th>İkincil Renk</th>
                    <th>Oda</th>
                    <th>Şekil</th>
                    <th>Stok</th>
                    <th>Fiyat</th>
                    <th>Resim</th>
                    <th>Güncelle</th>
                    <th>Sil</th>
                </tr>
                        </thead>
                <% for (int i = 0; i<veriler.Rows.Count; i++)
            {
                %> <tr>
                    <td><%=veriler.Rows[i][0] %> </td>
                    <td><%=veriler.Rows[i][1]%> </td>
                    <td><%=veriler.Rows[i][2] %></td>
                    <td><%=veriler.Rows[i][3] %></td>
                    <td><%= veriler.Rows[i][4] %></td>
                    <td><%=veriler.Rows[i][5] %> </td>
                    <td><%=veriler.Rows[i][6]%> </td>
                    <td><%=veriler.Rows[i][7] %></td>
                    <td><%=veriler.Rows[i][8] %></td>
                    <td><%= veriler.Rows[i][9] %></td>
                    <td><img src="<%=veriler.Rows[i][10] %>" alt="" style="width: 50px;"></td>
                    <td class="align-middle">
                          <a href="urunguncelle.aspx?guncel=<%=veriler.Rows[i][0]%>"> <input id="Button1" class="btn btn-sa btn-warning" type="button" value="Güncelle" /></a>            
                    </td>
                    <td class="align-middle">
                          <a href="urunli.aspx?sil=<%=veriler.Rows[i][0]%>"> <input id="Button3" class="btn btn-sa btn-danger" type="button" value="Sil" /></a>
                    </td>
                   </tr>
                      
                        <%
                                                                                                     
            }%>
            </table>         
            </div>
</asp:Content>
