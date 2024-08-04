<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="uyesilguncelle.aspx.cs" Inherits="_07._01._2023.admin.uyesilguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table table-light table-borderless table-hover text-center mb-0">
                    <thead class="thead-dark">
                        <tr>
                            <th>Sıra No</th>
                            <th>Ad</th>
                            <th>Soyad</th>
                            <th>Kulllanıc adı</th>
                            <th>Şifre</th>
                            <th>Mail</th>     
                            <th>Sil</th>
                            <th>Güncelleme</th>     
                        </tr>
                    </thead>
                    <tbody class="align-middle">
                        <%FetenCarpet.UyeCRUD uyecrud = new FetenCarpet.UyeCRUD();
                            System.Data.DataTable dt = uyecrud.tumliste2();
                            for (int i = 0; i < dt.Rows.Count; i++)
                            { %>
                        <tr>
                            
                            <td class="align-middle"><%=dt.Rows[i][0] %></td>
                            <td class="align-middle"><%=dt.Rows[i][1] %></td>
                            <td class="align-middle"><%=dt.Rows[i][2] %></td>
                            <td class="align-middle"><%=dt.Rows[i][3] %></td>
                            <td class="align-middle"><%=dt.Rows[i][4] %></td>
                            <td class="align-middle"><%=dt.Rows[i][5] %></td>
                           
                            

                            <td class="align-middle">
                                
                                
                                
                               <a href="uyesilguncelle.aspx?sil=<%=dt.Rows[i][0] %>"> <input id="Button1" class="btn btn-sa btn-danger" type="button" value="X" /></a></td>
                               
                            <td class="align-middle">
                                
                                
                                
                               <a href="uyeguncelleme.aspx?gun=<%=dt.Rows[i][0]%>"> <input id="Button2" class="btn btn-sa btn-warning" type="button" value="Güncelle" /></a>

                            </td>
                               
                        </tr>
                           <% }%> 
                    </tbody>
                </table>
</asp:Content>
