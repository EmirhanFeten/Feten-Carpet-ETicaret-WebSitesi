<%@ Page Title="" Language="C#" MasterPageFile="~/Feten.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="FetenCarpet.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                <div class="col-lg-12">

                <div id="header-carousel" class="carousel slide" data-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active" style="height: 410px;">
                            <img class="img-fluid" src="img/banner-carpet.jpg" alt="Image" >
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <%--<div class="p-3" style="max-width: 700px;">
                                    <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                    <h3 class="display-4 text-white font-weight-semi-bold mb-4">Fashionable Dress</h3>
                                    <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                                </div>--%>
                            </div>
                        </div>
                        <div class="carousel-item" style="height: 410px;">
                            <img class="img-fluid" src="img/CARPET-BANNER-IMAGE.jpg" alt="Image">
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center">
                                <%--<div class="p-3" style="max-width: 700px;">
                                    <h4 class="text-light text-uppercase font-weight-medium mb-3">10% Off Your First Order</h4>
                                    <h3 class="display-4 text-white font-weight-semi-bold mb-4">Reasonable Price</h3>
                                    <a href="" class="btn btn-light py-2 px-3">Shop Now</a>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#header-carousel" data-slide="prev">
                        <div class="btn btn-dark" style="width: 45px; height: 45px;">
                            <span class="carousel-control-prev-icon mb-n2"></span>
                        </div>
                    </a>
                    <a class="carousel-control-next" href="#header-carousel" data-slide="next">
                        <div class="btn btn-dark" style="width: 45px; height: 45px;">
                            <span class="carousel-control-next-icon mb-n2"></span>
                        </div>
                    </a>
                </div>
            </div>
    <!-- Featured Start -->
    <div class="container-fluid pt-5">
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">Kaliteli Ürünler</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                    <h5 class="font-weight-semi-bold m-0">Ücretsiz Kargo</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">14 Güne Kadar İade</h5>
                </div>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="d-flex align-items-center border mb-4" style="padding: 30px;">
                    <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                    <h5 class="font-weight-semi-bold m-0">7/24 Destek</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Featured End -->
    <%System.Data.DataTable veriler = new System.Data.DataTable();
        FetenCarpet.UrunCRUD urunCRUD = new FetenCarpet.UrunCRUD();
        veriler = urunCRUD.tumliste();
    %><div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">ÜRÜNLER</span></h2>
        </div>
        <div class="row px-xl-5 pb-3">
            
                <% for (int i = 0; i<4; i++)
            {
                %> 
                      <div class="col-lg-3 col-md-6 col-sm-12 pb-1">
                <div class="card product-item border-0 mb-4">
                    <a href="urundetay.aspx?detay=<%=veriler.Rows[i][0]%>"><div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                        <img class="img-fluid w-100" src="<%=veriler.Rows[i][10] %>" alt="">
                    </div></a>
                    <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                        <a href="urundetay.aspx?detay=<%=veriler.Rows[i][0]%>" class="btn btn-sm text-dark p-0"><h4 class="text-truncate mb-3"><%=veriler.Rows[i][1] %></h4></a>
                        <h6 class="text-truncate mb-3">Seri No  <%=veriler.Rows[i][0] %></h6>
                        <div class="d-flex justify-content-center">
                            <h6><%=veriler.Rows[i][9] %>₺</h6><h6 class="text-muted ml-2"><del>$123.00</del></h6>
                        </div>
                    </div>
                    <div class="card-footer d-flex justify-content-between bg-light border">
                        <a href="urundetay.aspx?detay=<%=veriler.Rows[i][0]%>" class="btn btn-sm text-dark p-0"><i class="fas fa-eye text-primary mr-1"></i><input id="Button1" style="border:0;background-color:transparent" type="button" value="Ürün Detay" /></a>
                        

                            
                        <a href="index.aspx?sep=<%=veriler.Rows[i][0]%>" class="btn btn-sm text-dark p-0"><i class="fas fa-shopping-cart text-primary mr-1"></i><input id="Button2" style="border:0;background-color:transparent" type="button" value="Sepete Ekle" /></a>
                   
<%--                        <asp:Button ID="Button2" class="btn btn-sm text-dark p-0" runat="server" CommandArgument='<%#Eval("veriler.Rows[i][0]")%>' CommandName="ThisBtnClick" Text="Sepete Ekle" OnClick="Button2_Click" />--%>
                    </div>

                </div>
            </div>
                        <%
                                                                                                     
            }%>
            
        </div>
    </div>

     <!-- Categories Start -->
    <div class="container-fluid pt-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Kategoriler</span></h2>
        </div>
        <div class="row px-xl-5 pb-3">
            <div class="col-lg-4 col-md-6 pb-1" >
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;height:500px">
                    <%--<p class="text-right">15 Products</p>--%>
                    <a href="urunler.aspx?kat=Salon" class="cat-img position-relative overflow-hidden mb-3">
                        <img class="img-fluid" src="img/DR-6018.jpg" width="600" alt="">
                    </a>
                    <h5 class="font-weight-semi-bold m-0">Salon</h5>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 pb-1">
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;height:500px">
                    <%--<p class="text-right">15 Products</p>--%>
                    <a href="urunler.aspx?kat=Yemek Odası" class="cat-img position-relative overflow-hidden mb-3">
                        <img class="img-fluid" src="img/AS-912.jpg" width="600" alt="">
                    </a>
                    <h5 class="font-weight-semi-bold m-0">Yemek Odası</h5>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 pb-1">
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;height:500px">
                    <%--<p class="text-right">15 Products</p>--%>
                    <a href="urunler.aspx?kat=Misafir Odası" class="cat-img position-relative overflow-hidden mb-3">
                        <img class="img-fluid" src="img/DR-6014S2.jpg" width="600" alt="">
                    </a>
                    <h5 class="font-weight-semi-bold m-0">Misafir Odası</h5>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 pb-1">
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;height:500px">
                    <%--<p class="text-right">15 Products</p>--%>
                    <a href="urunler.aspx?kat=Çocuk Odası" class="cat-img position-relative overflow-hidden mb-3">
                        <img class="img-fluid" src="img/DR-6019.jpg" width="600" alt="">
                    </a>
                    <h5 class="font-weight-semi-bold m-0">Çocuk Odası</h5>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 pb-1">
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;height:500px">
                    <%--<p class="text-right">15 Products</p>--%>
                    <a href="urunler.aspx?kat=Yatak Odası" class="cat-img position-relative overflow-hidden mb-3">
                        <img class="img-fluid" src="img/DR-6017s4.jpg" width="600" alt="">
                    </a>
                    <h5 class="font-weight-semi-bold m-0">Yatak Odası</h5>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 pb-1">
                <div class="cat-item d-flex flex-column border mb-4" style="padding: 30px;height:500px">
                    <%--<p class="text-right">15 Products</p>--%>
                    <a href="urunler.aspx?kat=Hol" class="cat-img position-relative overflow-hidden mb-3">
                        <img class="img-fluid" src="img/DR-6015.jpg" width="600" alt="" style="background-position:top">
                    </a>
                    <h5 class="font-weight-semi-bold m-0">Hol</h5>
                </div>
            </div>
        </div>
    </div>
    <!-- Categories End -->
         <!-- Products Start -->
    <div class="container-fluid py-5">
        <div class="text-center mb-4">
            <h2 class="section-title px-5"><span class="px-2">Sıklıkla Tercih Edilenler</span></h2>
        </div>
        <div class="row px-xl-5">
            <div class="col">
                <div class="owl-carousel related-carousel">

                    <%System.Data.DataTable dt = new System.Data.DataTable();
       
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
