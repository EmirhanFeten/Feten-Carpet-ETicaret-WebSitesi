<%@ Page Title="" Language="C#" MasterPageFile="~/Feten.Master" AutoEventWireup="true" CodeBehind="bizeulas.aspx.cs" Inherits="FetenCarpet.bizeulas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">İLETİŞİM</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="index.aspx">Anasayfa</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">İletişim</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Contact Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Sorularınız İçin Bize Ulaşın</span></h2>
        </div>
        <div class="row px-xl-5">
            <div class="col-lg-7 mb-5">
                <div class="contact-form">
                    <div id="success"></div>
                        <div class="control-group">
                            <asp:TextBox ID="TextBox1" class="form-control" runat="server" placeholder="Kullanıcı Adınız"></asp:TextBox><br />
                            <%--<input type="text" class="form-control" id="name" placeholder="Your Name"
                                required="required" data-validation-required-message="Please enter your name" />
                            <p class="help-block text-danger"></p>--%>
                        </div>
                        <div class="control-group">
                            <asp:TextBox ID="TextBox2" class="form-control" runat="server" placeholder="Mail Adresiniz"></asp:TextBox><br />
                            <%--<input type="email" class="form-control" id="email" placeholder="Your Email"
                                required="required" data-validation-required-message="Please enter your email" />
                            <p class="help-block text-danger"></p>--%>
                        </div>
                        <div class="control-group">
                                <asp:DropDownList ID="DropDownList1" class="form-control" runat="server">
                                    <asp:ListItem Value="0">Şikayet</asp:ListItem>
                                    <asp:ListItem Value="1">Öneri</asp:ListItem>
                                    <asp:ListItem Value="2">Teşekkür</asp:ListItem>
                                </asp:DropDownList><br />
                            <%--<input type="text" class="form-control" id="subject" placeholder="Subject"
                                required="required" data-validation-required-message="Please enter a subject" />
                            <p class="help-block text-danger"></p>--%>
                        </div>
                        <div class="control-group">
                            <asp:TextBox ID="TextBox3" class="form-control" runat="server" placeholder="İçerik" TextMode="MultiLine"></asp:TextBox><br />
                            <%--<textarea class="form-control" rows="6" id="message" placeholder="Message"
                                required="required"
                                data-validation-required-message="Please enter your message"></textarea>
                            <p class="help-block text-danger"></p>--%>
                        </div>
                        <div>
                            <asp:Button ID="Button1" class="btn btn-primary py-2 px-4" runat="server" Text="Gönder" OnClick="Button1_Click" />
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            <%--<button class="btn btn-primary py-2 px-4" type="submit" id="sendMessageButton">Send
                                Message</button>--%>
                        </div>
                </div>
            </div>
            <div class="col-lg-5 mb-5">
                <h5 class="font-weight-semi-bold mb-3">Bize Ulaşın</h5>
                    <p>Taslak E-Ticaret Web Sitesidir. Fiyatlar ve Ürün Bilgileri Gerçeği Yansıtmamaktadır!!!</p>
                <div class="d-flex flex-column mb-3">
                    <h5 class="font-weight-semi-bold mb-3">Mağaza</h5>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>Bursa</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>emirhanfeten@gmail.com</p>
                    <p class="mb-2"><i class="fa fa-phone-alt text-primary mr-3"></i>+phone</p>

                </div>
                <%--<div class="d-flex flex-column">
                    <h5 class="font-weight-semi-bold mb-3">Store 2</h5>
                    <p class="mb-2"><i class="fa fa-map-marker-alt text-primary mr-3"></i>123 Street, New York, USA</p>
                    <p class="mb-2"><i class="fa fa-envelope text-primary mr-3"></i>info@example.com</p>
                    <p class="mb-0"><i class="fa fa-phone-alt text-primary mr-3"></i>+012 345 67890</p>
                </div>--%>
            </div>
        </div>
    </div>
    <!-- Contact End -->
</asp:Content>
