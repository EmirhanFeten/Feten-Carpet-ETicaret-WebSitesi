<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="yorumcevap.aspx.cs" Inherits="FetenCarpet.admin.yorumcevap" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Contact Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">DETAYLI CEVAP MAİLİ</span></h2>
        </div>
        
        <div class="row px-xl-5">
            <div class="col-lg-3 mb-5">
            </div> 
            <div class="col-lg-6 mb-5">
                <div class="contact-form">
                    <div id="success"></div>
                        <div class="control-group">
                            <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Alıcı Adı"></asp:TextBox><br />
                        </div>
                        <div class="control-group">
                            <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Alıcı Mail Adresi"></asp:TextBox><br />
                        </div>                      
                        <div class="control-group">
                            <asp:TextBox ID="TextBox3" class="form-control" runat="server" placeholder="İçerik (0-200 Harf)" TextMode="MultiLine" MaxLength="200"></asp:TextBox><br />
                        </div>
                        <div>
                            <asp:Button ID="Button1" class="btn btn-primary py-2 px-4" runat="server" Text="Gönder" OnClick="Button1_Click"  />
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>
                    
                </div>
            </div>   
            <div class="col-lg-3 mb-5">
            </div>
        </div>
        
    </div>
    <!-- Contact End -->
</asp:Content>
