<%@ Page Title="" Language="C#" MasterPageFile="~/Feten.Master" AutoEventWireup="true" CodeBehind="uyegiris.aspx.cs" Inherits="FetenCarpet.uyegiris" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-4">
            </div>

            <div class="col-lg-4">
                <div class="mb-4">
                    <h4 class="font-weight-semi-bold mb-4">Giriş Yap</h4>
                    <div class="row">
                        <div class="col-md-12 form-group">                            
                            <asp:TextBox class="form-control"  placeholder="Mail Adresi" ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Boş Bırakılamaz" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Geçerli Mail Adresi Giriniz" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-12 form-group">
                            <asp:TextBox class="form-control"  placeholder="Şifre" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Boş Bırakılamaz" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-12 form-group">
                            <asp:Button class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3" ID="Button1" runat="server" Text="Giriş Yap" OnClick="Button1_Click" />
                        </div>
                        <div class="col-md-12 form-group">
                            <asp:Button class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3" ID="Button2" runat="server" Text="Kayıt Ol" OnClick="Button2_Click"  />
                        </div>
                        <div class="col-md-12 form-group">
                            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                        </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Checkout End -->
</div>

</asp:Content>
