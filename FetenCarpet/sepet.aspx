<%@ Page Title="" Language="C#" MasterPageFile="~/Feten.Master" AutoEventWireup="true" CodeBehind="sepet.aspx.cs" Inherits="FetenCarpet.sepet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Sepet</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="index.aspx">Anasayfa</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Sepet</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Cart Start -->
   <% System.Data.DataTable veriler = new System.Data.DataTable();
            FetenCarpet.SepetCRUD sepetcrud = new FetenCarpet.SepetCRUD();
            string krw = Request.QueryString["sepet"];

            veriler =sepetcrud.sepetListe(krw);     
            %>
    <div class="container-fluid pt-5">
        <div class="row px-xl-5">
            <div class="col-lg-8 table-responsive mb-5">
                <table class="table table-bordered text-center mb-0">
                    <thead class="bg-secondary text-dark">
                        <tr>
                            <th>Ürün No</th>
                            <th>Ürün</th>
                            <th>Fiyat</th>
                            <th>Adet</th>
                            <th>Toplam Fiyat</th>
                            <th>Sil</th>
                        </tr>
                    </thead>
                    <tbody class="align-middle">
                       <% for (int i = 0; i<veriler.Rows.Count; i++)
            {
                %> 
                        <tr>
                            <td class="align-middle"><%=veriler.Rows[i][5]%></td>
                            <td class="align-middle"><img src="<%=veriler.Rows[i][0] %>" alt="" style="width: 50px;"> <%=veriler.Rows[i][1] %></td>
                            <td class="align-middle"><%=veriler.Rows[i][2] %>₺</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <% if (Convert.ToInt16(veriler.Rows[i][3])>1)
                                           {
                                           if (Session["uye"]==null)
                                           {%>                                        
                                            <a href="sepet.aspx?adetSil=<%=veriler.Rows[i][5]%>&sepet=<%=sepetcrud.GetIPAddress()%>" class="btn btn-sm btn-primary btn-minus"><i class="fa fa-minus" style="width:0px;height:0px"></i><input id="Button2" style="border:0;background-color:transparent;height:0px;" type="button" value="" /></a>
                                        <% }
                                            else
                                            {%> 
                                             <a href="sepet.aspx?adetSil=<%=veriler.Rows[i][5]%>&sepet=<%=Session["uye"]%>" class="btn btn-sm btn-primary btn-minus"><i class="fa fa-minus" style="width:0px;height:0px"></i><input id="Button2" style="border:0;background-color:transparent;height:0px;" type="button" value="" /></a>
                                        <%}
                                            }
                                            else
                                            {if (Session["uye"] == null)
                                                {%>
                                                        <a href="sepet.aspx?sil=<%=veriler.Rows[i][5]%>&sepet=<%=sepetcrud.GetIPAddress()%>" class="btn btn-sm btn-primary"><i class="fa fa-minus" style="width:0px;height:0px"></i><input id="Button4" style="border:0;background-color:transparent;height:0px;" type="button" value="" /></a>
                                                    <%}
                                                        else
                                                        {%>  
                                                        <a href="sepet.aspx?sil=<%=veriler.Rows[i][5]%>&sepet=<%=Session["uye"]%>" class="btn btn-sm btn-primary"><i class="fa fa-minus" style="width:0px;height:0px"></i><input id="Button4" style="border:0;background-color:transparent;height:0px;" type="button" value="" /></a>
                                            <%}
                                                }%>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center" value="<%=veriler.Rows[i][3] %>">
                                    <div class="input-group-btn">

                                       <% 
                                           if (Session["uye"]==null)
                                           {%>
                                              <a href="sepet.aspx?sep=<%=veriler.Rows[i][5]%>&sepet=<%=sepetcrud.GetIPAddress()%>" class="btn btn-sm btn-primary btn-plus"><i class="fa fa-plus" style="width:0px;height:0px"></i><input id="Button2" style="border:0;background-color:transparent;height:0px;" type="button" value="" /></a>
                                            <% }
                                            else
                                            {%>     
                                            <a href="sepet.aspx?sep=<%=veriler.Rows[i][5]%>&sepet=<%=Session["uye"]%>" class="btn btn-sm btn-primary btn-plus"><i class="fa fa-plus" style="width:0px;height:0px"></i><input id="Button2" style="border:0;background-color:transparent;height:0px;" type="button" value="" /></a>
                                            <%}
                                          %>
                                           

<%--                                        </button>--%>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle"><%=veriler.Rows[i][4] %>₺</td>
                            <td class="align-middle"><%--<button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button>--%>
                                <% if (Session["uye"]==null)
                                        {%>
                            <a href="sepet.aspx?sil=<%=veriler.Rows[i][5]%>&sepet=<%=sepetcrud.GetIPAddress()%>" class="btn btn-sm btn-primary"><i class="fa fa-times" style="width:0px;height:0px"></i><input id="Button4" style="border:0;background-color:transparent;height:0px;" type="button" value="" /></a>
                            <% }
                                   else
                                        {%>  
                                         <a href="sepet.aspx?sil=<%=veriler.Rows[i][5]%>&sepet=<%=Session["uye"]%>" class="btn btn-sm btn-primary"><i class="fa fa-times" style="width:0px;height:0px"></i><input id="Button4" style="border:0;background-color:transparent;height:0px;" type="button" value="" /></a>
                                <%}%>
                            </td>

                        </tr>
                        <%
                                                                                                     
            }%>
                        <%--<tr>
                            <td class="align-middle"><img src="img/product-2.jpg" alt="" style="width: 50px;"> Colorful Stylish Shirt</td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus" >
                                        <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button></td>
                        </tr>
                        <tr>
                            <td class="align-middle"><img src="img/product-3.jpg" alt="" style="width: 50px;"> Colorful Stylish Shirt</td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus" >
                                        <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button></td>
                        </tr>
                        <tr>
                            <td class="align-middle"><img src="img/product-4.jpg" alt="" style="width: 50px;"> Colorful Stylish Shirt</td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus" >
                                        <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button></td>
                        </tr>
                        <tr>
                            <td class="align-middle"><img src="img/product-5.jpg" alt="" style="width: 50px;"> Colorful Stylish Shirt</td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle">
                                <div class="input-group quantity mx-auto" style="width: 100px;">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-minus" >
                                        <i class="fa fa-minus"></i>
                                        </button>
                                    </div>
                                    <input type="text" class="form-control form-control-sm bg-secondary text-center" value="1">
                                    <div class="input-group-btn">
                                        <button class="btn btn-sm btn-primary btn-plus">
                                            <i class="fa fa-plus"></i>
                                        </button>
                                    </div>
                                </div>
                            </td>
                            <td class="align-middle">$150</td>
                            <td class="align-middle"><button class="btn btn-sm btn-primary"><i class="fa fa-times"></i></button></td>
                        </tr>--%>
                    </tbody>
                </table>
            </div>
            <div class="col-lg-4">
                <%--<form class="mb-5" action="">
                    <div class="input-group">
                        <input type="text" class="form-control p-4" placeholder="Coupon Code">
                        <div class="input-group-append">
                            <button class="btn btn-primary">Apply Coupon</button>
                        </div>
                    </div>
                </form>--%>
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Sepet Tutar Özeti</h4>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">Ürün Tutar</h6>
                            <h6 class="font-weight-medium">$150</h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Kargo</h6>
                            <h6 class="font-weight-medium">0</h6>
                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">Toplam Tutar</h5>
                            <h5 class="font-weight-bold">$160</h5>
                        </div>
                        <button class="btn btn-block btn-primary my-3 py-3">Ödeme</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Cart End -->
</asp:Content>
