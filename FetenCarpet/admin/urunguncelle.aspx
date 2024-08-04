<%@ Page Title="" Language="C#" MasterPageFile="~/admin/admin.Master" AutoEventWireup="true" CodeBehind="urunguncelle.aspx.cs" Inherits="FetenCarpet.admin.urunguncelle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">ÜRÜN EKLEME</span></h2>
        </div>
        
        <div class="row px-xl-5">
            <div class="col-lg-3 mb-5">
            </div> 
            <div class="col-lg-6 mb-5">
                <div class="contact-form">
                    <div id="success"></div>
                        <div class="control-group">
                            <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Ürün Adı"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="TextBox1"></asp:RequiredFieldValidator><br />
                        </div>                                            
                        <div class="control-group">
                            <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Açıklama (0-500 Harf)" TextMode="MultiLine" MaxLength="200"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="TextBox2"></asp:RequiredFieldValidator><br />
                        </div>
                        <div class="control-group"> 
                            <asp:DropDownList ID="DropDownList1" class="form-control" runat="server" TabIndex="1">
                                <asp:ListItem Enabled="False" Value="0">Ebat Seçiniz</asp:ListItem>
                                <asp:ListItem Value="1">80x150(2&#39;6&quot;x4&#39;9&quot;)</asp:ListItem>
                                <asp:ListItem Value="2">80x300(2&#39;6&quot;x9&#39;8&quot;)</asp:ListItem>
                                <asp:ListItem Value="3">120x180(3&#39;9&quot;x5&#39;9&quot;)</asp:ListItem>
                                <asp:ListItem Value="4">160x230(5&#39;2&quot;x7&#39;5&quot;)</asp:ListItem>
                                <asp:ListItem Value="5">180x280(5&#39;9&quot;x9&#39;2&quot;)</asp:ListItem>
                                <asp:ListItem Value="6">Round 90cm(2&#39;9&quot;)</asp:ListItem>
                                <asp:ListItem Value="7">Round 120cm(3&#39;9&quot;)</asp:ListItem>
                                <asp:ListItem Value="8">Round 160cm(5&#39;2&quot;)</asp:ListItem>
                                <asp:ListItem Value="9">Round 180cm(5&#39;9&quot;)</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="DropDownList1"></asp:RequiredFieldValidator><br />
                        </div>
                        <div class="control-group">
                            <asp:DropDownList ID="DropDownList2" class="form-control" runat="server">
                                <asp:ListItem Enabled="False" Value="0">Renk</asp:ListItem>
                                <asp:ListItem Value="1">Beyaz</asp:ListItem>
                                <asp:ListItem Value="2">Siyah</asp:ListItem>
                                <asp:ListItem Value="3">Kahverengi</asp:ListItem>
                                <asp:ListItem Value="4">Mavi</asp:ListItem>
                                <asp:ListItem Value="5">Kırmızı</asp:ListItem>
                                <asp:ListItem Value="6">Sarı</asp:ListItem>
                                <asp:ListItem Value="7">Yeşil</asp:ListItem>
                                <asp:ListItem Value="8">Mor</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="DropDownList2"></asp:RequiredFieldValidator><br />
                        </div>
                        <div class="control-group">
                            <asp:DropDownList ID="DropDownList3" class="form-control" runat="server">
                                <asp:ListItem Enabled="False" Value="0">İkinci Renk</asp:ListItem>
                                <asp:ListItem Value="1">Beyaz</asp:ListItem>
                                <asp:ListItem Value="2">Siyah</asp:ListItem>
                                <asp:ListItem Value="3">Kahverengi</asp:ListItem>
                                <asp:ListItem Value="4">Mavi</asp:ListItem>
                                <asp:ListItem Value="5">Kırmızı</asp:ListItem>
                                <asp:ListItem Value="6">Sarı</asp:ListItem>
                                <asp:ListItem Value="7">Yeşil</asp:ListItem>
                                <asp:ListItem Value="8">Mor</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="DropDownList3"></asp:RequiredFieldValidator><br />
                        </div>
                        <div class="control-group">
                            <asp:DropDownList ID="DropDownList4" class="form-control" runat="server">
                                <asp:ListItem Enabled="False" Value="0">Oda </asp:ListItem>
                                <asp:ListItem Value="1">Mutfak</asp:ListItem>
                                <asp:ListItem Value="2">Salon</asp:ListItem>
                                <asp:ListItem Value="3">Yatak Odası</asp:ListItem>
                                <asp:ListItem Value="4">Banyo</asp:ListItem>
                                <asp:ListItem Value="5">Çocuk Odası</asp:ListItem>
                                <asp:ListItem Value="6">Hol</asp:ListItem>
                                <asp:ListItem Value="7">Misafir Odası</asp:ListItem>
                                <asp:ListItem Value="8">Yemek Odası</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="DropDownList4"></asp:RequiredFieldValidator><br />
                        </div>
                        <div class="control-group">
                            <asp:DropDownList ID="DropDownList5" class="form-control" runat="server">
                                <asp:ListItem Enabled="False" Value="0">Şekil</asp:ListItem>
                                <asp:ListItem Value="1">Daire</asp:ListItem>
                                <asp:ListItem Value="2">Kare</asp:ListItem>
                                <asp:ListItem Value="3">Dikdörtgen</asp:ListItem>
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="DropDownList5"></asp:RequiredFieldValidator><br />
                        </div>
                        <div class="control-group">
                            <asp:TextBox ID="TextBox3" class="form-control" runat="server" placeholder="Stok"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="TextBox3"></asp:RequiredFieldValidator><br />
                        </div> 
                        <div class="control-group">
                            <asp:TextBox ID="TextBox4" class="form-control" runat="server" placeholder="Fiyat"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="TextBox4"></asp:RequiredFieldValidator><br />
                        </div> 
                        <div class="control-group">
                            <asp:TextBox ID="TextBox5" class="form-control" runat="server" placeholder="İndirimli Fiyat"></asp:TextBox><br />
                        </div>
                        <div class="control-group">
                            <asp:FileUpload ID="FileUpload1" class="form-control" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Boş Geçilemez" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator><br />
                        </div> 
                    <div class="control-group">
                            <asp:FileUpload ID="FileUpload2" class="form-control" runat="server"></asp:FileUpload><br />
                        </div>
                        <div class="control-group">
                            <asp:FileUpload ID="FileUpload3" class="form-control" runat="server"></asp:FileUpload><br />
                        </div> 
                        <div class="control-group">
                            <asp:FileUpload ID="FileUpload4" class="form-control" runat="server"></asp:FileUpload><br />
                        </div> 
                        <div>
                            <asp:Button ID="Button1" class="btn btn-primary py-2 px-4" runat="server" Text="Kaydet" OnClick="Button1_Click"  /><br />
                            <%--<asp:Label ID="Label1" runat="server" Text=""></asp:Label>--%>
                        </div><br />
                        <div class="col-md-12 form-group">
                            <asp:Panel ID="Panel1" runat="server"><div class="alert alert-primary" role="alert"> 
                                Güncelleme Başarılı
                            </div></asp:Panel>
                            <asp:Panel ID="Panel2" runat="server"><div class="alert alert-primary" role="alert"> 
                                Güncelleme Başarısız
                            </div></asp:Panel>
                        </div>
                </div>
            </div>   
            <div class="col-lg-3 mb-5">
            </div>
        </div>
        
    </div>
</asp:Content>
