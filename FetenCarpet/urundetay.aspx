<%@ Page Title="" Language="C#" MasterPageFile="~/Feten.Master" AutoEventWireup="true" CodeBehind="urundetay.aspx.cs" Inherits="FetenCarpet.urundetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Ürün Detay</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="index.aspx">Anasayfa</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Ürün Detay</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->
    

    <!-- Shop Detail Start -->
    <% System.Data.DataTable veriler = new System.Data.DataTable();
        FetenCarpet.UrunCRUD uruncrud = new FetenCarpet.UrunCRUD();
        int id = Convert.ToInt32(Request.QueryString[0]);
        veriler =uruncrud.tumliste2(id);
            %>
    <div class="container-fluid py-5">
        <div class="row px-xl-5">
            <div class="col-lg-5 pb-5">
                <div id="product-carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner border">
                        
                       <%-- <div class="carousel-item active">
                            <asp:Image ID="Image1" class="w-100 h-100" runat="server" />
                        </div>
                        
                        
                        
                        <asp:Panel ID="Panel2"  runat="server"><div class="carousel-item ">
                            <asp:Image ID="Image2" class="w-100 h-100" runat="server" />
                        </div></asp:Panel>
                        <asp:Panel ID="Panel3" runat="server"><div class="carousel-item ">
                            <asp:Image ID="Image3" class="w-100 h-100" runat="server" />
                        </div></asp:Panel>
                        <asp:Panel ID="Panel4" runat="server"><div class="carousel-item ">
                            <asp:Image ID="Image4" class="w-100 h-100" runat="server" />
                        </div></asp:Panel>--%>
                       
                        <asp:Panel ID="Panel2" class="carousel-item active" runat="server"><asp:Image ID="Image1" class="w-100 h-100" runat="server" /></asp:Panel>
                        <asp:Panel ID="Panel3" class="carousel-item " runat="server"><asp:Image ID="Image2" class="w-100 h-100" runat="server" /></asp:Panel>
                        <asp:Panel ID="Panel4" class="carousel-item " runat="server"><asp:Image ID="Image3" class="w-100 h-100" runat="server" /></asp:Panel>
                        <asp:Panel ID="Panel5" class="carousel-item " runat="server"><asp:Image ID="Image4" class="w-100 h-100" runat="server" /></asp:Panel>
                       
                        
                        
                    </div>
                    <a class="carousel-control-prev" href="#product-carousel" data-slide="prev">
                        <i class="fa fa-2x fa-angle-left text-dark"></i>
                    </a>
                    <a class="carousel-control-next" href="#product-carousel" data-slide="next">
                        <i class="fa fa-2x fa-angle-right text-dark"></i>
                    </a>
                </div>
            </div>

            <div class="col-lg-7 pb-5">
                <h3 class="font-weight-semi-bold">
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    
                </h3>
                <h6>
                <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </h6>
                <div class="d-flex mb-3">
                    <div class="text-primary mr-2">
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star-half-alt"></small>
                        <small class="far fa-star"></small>
                    </div>
                    <small class="pt-1">(50 Reviews)</small>
                </div>
                <h3 class="font-weight-semi-bold mb-4"><asp:Label ID="Label2" runat="server" Text=""></asp:Label></h3>
<%--                <p class="mb-4">Volup erat ipsum diam elitr rebum et dolor. Est nonumy elitr erat diam stet sit clita ea. Sanc invidunt ipsum et, labore clita lorem magna lorem ut. Erat lorem duo dolor no sea nonumy. Accus labore stet, est lorem sit diam sea et justo, amet at lorem et eirmod ipsum diam et rebum kasd rebum.</p>--%>
                <p class="mb-4"><asp:Label ID="Label3" runat="server" Text=""></asp:Label></p>
                <div class="d-flex mb-3">
                    <p class="text-dark font-weight-medium mb-0 mr-3">Ebat:</p>
                    <form>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="size-1" name="size">
                            <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                            <%--<label class="custom-control-label" for="size-1">XS</label>--%>
                            
                        </div>
                        <%--<div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="size-2" name="size">
                            <label class="custom-control-label" for="size-2">S</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="size-3" name="size">
                            <label class="custom-control-label" for="size-3">M</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="size-4" name="size">
                            <label class="custom-control-label" for="size-4">L</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="size-5" name="size">
                            <label class="custom-control-label" for="size-5">XL</label>
                        </div>--%>
                    </form>
                </div>
                <div class="d-flex mb-4">
                    <p class="text-dark font-weight-medium mb-0 mr-3">Renk:</p>
                    <form>
                        <div class="custom-control custom-radio custom-control-inline">
                            
                            <asp:Label ID="Label5" runat="server" Text=""></asp:Label>
                            <%--<label class="custom-control-label" for="color-1">Black</label>--%>
                        </div>
                        <%--<div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="color-2" name="color">
                            <label class="custom-control-label" for="color-2">White</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="color-3" name="color">
                            <label class="custom-control-label" for="color-3">Red</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="color-4" name="color">
                            <label class="custom-control-label" for="color-4">Blue</label>
                        </div>
                        <div class="custom-control custom-radio custom-control-inline">
                            <input type="radio" class="custom-control-input" id="color-5" name="color">
                            <label class="custom-control-label" for="color-5">Green</label>
                        </div>--%>
                    </form>
                </div>
                <div class="d-flex mb-4">
                    <p class="text-dark font-weight-medium mb-0 mr-3">İkincil Renk:</p>
                    <form>
                        <div class="custom-control custom-radio custom-control-inline">
                            <asp:Label ID="Label6" runat="server" Text=""></asp:Label>
                            <%--<label class="custom-control-label" for="color-1">Black</label>--%>
                        </div>
                    </form>
                </div>
                <div class="d-flex mb-4">
                    <p class="text-dark font-weight-medium mb-0 mr-3">Oda:</p>
                    <form>
                        <div class="custom-control custom-radio custom-control-inline">
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                            <%--<label class="custom-control-label" for="color-1">Black</label>--%>
                        </div>
                    </form>
                </div>
                <div class="d-flex mb-4">
                    <p class="text-dark font-weight-medium mb-0 mr-3">Şekil:</p>
                    <form>
                        <div class="custom-control custom-radio custom-control-inline">
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                            <%--<label class="custom-control-label" for="color-1">Black</label>--%>
                        </div>
                    </form>
                </div>
                <div class="d-flex align-items-center mb-4 pt-2">
                    <div class="input-group quantity mr-3" style="width: 130px;">
                        <div class="input-group-btn">
                            
                            <%--<button class="btn btn-primary btn-minus" >
                            <i class="fa fa-minus"></i>
                            </button>--%>
                        </div>
                        
                        <asp:TextBox ID="TextBox2" runat="server" class="form-control bg-secondary text-center" TextMode="Number" MaxLength="10" MinLength="1" ToolTip="Adet Seçiniz">1</asp:TextBox>
                        <div class="input-group-btn">
                            
                            <%--<button class="btn btn-primary btn-plus">
                                <i class="fa fa-plus"></i>
                            </button>--%>
                        </div>
                    </div>
                        <a href="urundetay.aspx?sep=<%=Label9.Text%>" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i><input id="Button2" style="border:0;background-color:transparent" type="button" value="Sepete Ekle" /></a>
<%--                         <asp:Button ID="Button1" runat="server" Text="Sepete Ekle" class="btn btn-primary px-3" OnClick="Button1_Click" />--%>
                    
                    <asp:Label ID="Label10" runat="server" Text=""></asp:Label>
<%--                    <button class="btn btn-primary px-3"><i class="fa fa-shopping-cart mr-1"></i> Sepete Ekle</button>--%>
                </div>
                <div class="col-md-12 form-group">
                            <asp:Panel ID="Panel1" runat="server"><div class="alert alert-primary" style="text-align:center" role="alert"> 
                                Ürün Sepete Eklendi  <br /> 
                                 <%
                                        FetenCarpet.Sepet sepet= new FetenCarpet.Sepet();
                                        FetenCarpet.SepetCRUD sepetcrud= new FetenCarpet.SepetCRUD();
                                        if (Session["uye"]==null)
                                        {%>
                                <a href="sepet.aspx?sepet=<%=sepetcrud.GetIPAddress()%>" class="btn btn-sm text-dark p-0"><input id="Button2" style="border:1;background-color:transparent;height:50px;width:100px" type="button" value="Sepete Git" /></a>                                        
                                       <% }
                                           else
                                           {%>
                                <a href="sepet.aspx?sepet=<%=Session["uye"]%>" class="btn btn-sm text-dark p-0"><input id="Button2" style="border:1;background-color:transparent;height:50px;width:100px" type="button" value="Sepete Git" /></a>                                        
                                           <%}%>
                            </div></asp:Panel>
                </div>
                <div class="d-flex pt-2">
                    <p class="text-dark font-weight-medium mb-0 mr-2">Share on:</p>
                    <div class="d-inline-flex">
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-pinterest"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row px-xl-5">
            <div class="col">
                <div class="nav nav-tabs justify-content-center border-secondary mb-4">
                    <a class="nav-item nav-link active" data-toggle="tab" href="#tab-pane-1">Description</a>
                    <a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-2">Information</a>
                    <a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-3">Reviews (0)</a>
                </div>
                <div class="tab-content">
                    <div class="tab-pane fade show active" id="tab-pane-1">
                        <h4 class="mb-3">Product Description</h4>
                        <p>Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.</p>
                        <p>Dolore magna est eirmod sanctus dolor, amet diam et eirmod et ipsum. Amet dolore tempor consetetur sed lorem dolor sit lorem tempor. Gubergren amet amet labore sadipscing clita clita diam clita. Sea amet et sed ipsum lorem elitr et, amet et labore voluptua sit rebum. Ea erat sed et diam takimata sed justo. Magna takimata justo et amet magna et.</p>
                    </div>
                    <div class="tab-pane fade" id="tab-pane-2">
                        <h4 class="mb-3">Additional Information</h4>
                        <p>Eos no lorem eirmod diam diam, eos elitr et gubergren diam sea. Consetetur vero aliquyam invidunt duo dolores et duo sit. Vero diam ea vero et dolore rebum, dolor rebum eirmod consetetur invidunt sed sed et, lorem duo et eos elitr, sadipscing kasd ipsum rebum diam. Dolore diam stet rebum sed tempor kasd eirmod. Takimata kasd ipsum accusam sadipscing, eos dolores sit no ut diam consetetur duo justo est, sit sanctus diam tempor aliquyam eirmod nonumy rebum dolor accusam, ipsum kasd eos consetetur at sit rebum, diam kasd invidunt tempor lorem, ipsum lorem elitr sanctus eirmod takimata dolor ea invidunt.</p>
                        <div class="row">
                            <div class="col-md-6">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item px-0">
                                        Sit erat duo lorem duo ea consetetur, et eirmod takimata.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Amet kasd gubergren sit sanctus et lorem eos sadipscing at.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Duo amet accusam eirmod nonumy stet et et stet eirmod.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Takimata ea clita labore amet ipsum erat justo voluptua. Nonumy.
                                    </li>
                                  </ul> 
                            </div>
                            <div class="col-md-6">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item px-0">
                                        Sit erat duo lorem duo ea consetetur, et eirmod takimata.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Amet kasd gubergren sit sanctus et lorem eos sadipscing at.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Duo amet accusam eirmod nonumy stet et et stet eirmod.
                                    </li>
                                    <li class="list-group-item px-0">
                                        Takimata ea clita labore amet ipsum erat justo voluptua. Nonumy.
                                    </li>
                                  </ul> 
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="tab-pane-3">
                        <div class="row">
                            <div class="col-md-6">
                                <h4 class="mb-4">1 review for "Colorful Stylish Shirt"</h4>
                                <div class="media mb-4">
                                    <img src="img/user.jpg" alt="Image" class="img-fluid mr-3 mt-1" style="width: 45px;">
                                    <div class="media-body">
                                        <h6>John Doe<small> - <i>01 Jan 2045</i></small></h6>
                                        <div class="text-primary mb-2">
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star"></i>
                                            <i class="fas fa-star-half-alt"></i>
                                            <i class="far fa-star"></i>
                                        </div>
                                        <p>Diam amet duo labore stet elitr ea clita ipsum, tempor labore accusam ipsum et no at. Kasd diam tempor rebum magna dolores sed sed eirmod ipsum.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <h4 class="mb-4">Leave a review</h4>
                                <small>Your email address will not be published. Required fields are marked *</small>
                                <div class="d-flex my-3">
                                    <p class="mb-0 mr-2">Your Rating * :</p>
                                    <div class="text-primary">
                                        <i class="far fa-star"></i>
                                        <i class="far fa-star"></i>
                                        <i class="far fa-star"></i>
                                        <i class="far fa-star"></i>
                                        <i class="far fa-star"></i>
                                    </div>
                                </div>
                                <form>
                                    <div class="form-group">
                                        <label for="message">Your Review *</label>
                                        <textarea id="message" cols="30" rows="5" class="form-control"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <label for="name">Your Name *</label>
                                        <input type="text" class="form-control" id="name">
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Your Email *</label>
                                        <input type="email" class="form-control" id="email">
                                    </div>
                                    <div class="form-group mb-0">
                                        <input type="submit" value="Leave Your Review" class="btn btn-primary px-3">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Shop Detail End -->


    <!-- Products Start -->
    <div class="container-fluid py-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Diğer Ürünler</span></h2>
        </div>
        <div class="row px-xl-5">
            <div class="col">
                <div class="owl-carousel related-carousel">

                    <%System.Data.DataTable dt = new System.Data.DataTable();
        FetenCarpet.UrunCRUD urunCRUD = new FetenCarpet.UrunCRUD();
        dt = urunCRUD.tumliste();
    %>
                    <% for (int i = 0; i<dt.Rows.Count; i++)
            {
                %> 
                   <div class="card product-item border-0">
                       <a href="urundetay.aspx?detay=<%=dt.Rows[i][0]%>">
                        <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                            <img class="img-fluid w-100" src="<%=dt.Rows[i][10] %>" alt="">
                        </div></a>
                        <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                            <a href="urundetay.aspx?detay=<%=dt.Rows[i][0]%>" class="btn btn-sm text-dark p-0"><h6 class="text-truncate mb-3"><%=dt.Rows[i][1] %></h6></a>
                            <h6 class="text-truncate mb-3">Seri No  <%=dt.Rows[i][0] %></h6>
                            <%if (dt.Rows[i][14].ToString()=="0")
                                    { %>
                                        <div class="d-flex justify-content-center">
                                            <h6><%=dt.Rows[i][9] %>₺</h6><%if (dt.Rows[i][14].ToString()!="0")
                                            {%><h6 class="text-muted ml-2"><del><%=dt.Rows[i][14] %>₺</del></h6><%} %>
                                        </div>
                                     <% }
                                    else
                                    {%>
                                        <div class="d-flex justify-content-center">
                                            <h6><%=dt.Rows[i][14] %>₺</h6><%if (dt.Rows[i][14].ToString()!="0")
                                            {%><h6 class="text-muted ml-2"><del><%=dt.Rows[i][9] %>₺</del></h6><%} %>
                                        </div>
                                    <%}%>
                        </div>
                        <div class="card-footer d-flex justify-content-between bg-light border">
                                    <a href="urundetay.aspx?detay=<%=dt.Rows[i][0]%>" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i><input id="Button1" style="border:0;background-color:transparent" type="button" value="Ürün Detay" /></a>
                                    <a href="urundetay.aspx?sep=<%=dt.Rows[i][0]%>" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i><input id="Button2" style="border:0;background-color:transparent" type="button" value="Sepete Ekle" /></a>
                        </div>
                    </div>
                    <%
                                                                                                     
                        }%>


                    <%--<div class="card product-item border-0">
                        <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                            <img class="img-fluid w-100" src="img/product-1.jpg" alt="">
                        </div>
                        <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                            <h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
                            <div class="d-flex justify-content-center">
                                <h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                            </div>
                        </div>
                        <div class="card-footer d-flex justify-content-between bg-light border">
                            <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                            <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                        </div>
                    </div>
                    <div class="card product-item border-0">
                        <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                            <img class="img-fluid w-100" src="img/product-2.jpg" alt="">
                        </div>
                        <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                            <h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
                            <div class="d-flex justify-content-center">
                                <h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                            </div>
                        </div>
                        <div class="card-footer d-flex justify-content-between bg-light border">
                            <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                            <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                        </div>
                    </div>
                    <div class="card product-item border-0">
                        <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                            <img class="img-fluid w-100" src="img/product-3.jpg" alt="">
                        </div>
                        <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                            <h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
                            <div class="d-flex justify-content-center">
                                <h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                            </div>
                        </div>
                        <div class="card-footer d-flex justify-content-between bg-light border">
                            <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                            <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                        </div>
                    </div>
                    <div class="card product-item border-0">
                        <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                            <img class="img-fluid w-100" src="img/product-4.jpg" alt="">
                        </div>
                        <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                            <h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
                            <div class="d-flex justify-content-center">
                                <h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                            </div>
                        </div>
                        <div class="card-footer d-flex justify-content-between bg-light border">
                            <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                            <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                        </div>
                    </div>
                    <div class="card product-item border-0">
                        <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                            <img class="img-fluid w-100" src="img/product-5.jpg" alt="">
                        </div>
                        <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                            <h6 class="text-truncate mb-3">Colorful Stylish Shirt</h6>
                            <div class="d-flex justify-content-center">
                                <h6>$123.00</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                            </div>
                        </div>
                        <div class="card-footer d-flex justify-content-between bg-light border">
                            <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i>View Detail</a>
                            <a href="" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i>Add To Cart</a>
                        </div>
                    </div>--%>
                </div>
            </div>
        </div>
    </div>
    <!-- Products End -->
</asp:Content>
