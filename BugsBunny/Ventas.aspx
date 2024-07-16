<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="BugsBunny.Ventas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .product-thumbnail {
            border-radius: 10px;
        }
        .product-title {
            color: rgba(59,93,80,255);
        }
        .product-item {
            text-align: center;
            color: rgba(59,93,80,255);
        }
        .icon-cross img {
            display: none;
        }
    </style>
    <div class="hero">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-lg-5">
                    <div class="intro-excerpt">
                        <h1>Venta de Conejos</h1>
                    </div>
                </div>
                <div class="col-lg-7">
                </div>
            </div>
        </div>
    </div>
    <div class="untree_co-section product-section before-footer-section">
        <div class="container">
            <div class="row">
                <!-- Start Column 1 -->
                <div class="col-12 col-md-4 col-lg-3 mb-5">
                    <a class="product-item" href="#">
                        <img src="Content/images/conejosventas/01.jpg" class="img-fluid product-thumbnail">
                        <h3 class="product-title">Conejo Grande</h3>
                        <strong class="product-price">$50.00</strong>
                    </a>
                </div>
                <!-- End Column 1 -->
                <!-- Start Column 2 -->
                <div class="col-12 col-md-4 col-lg-3 mb-5">
                    <a class="product-item" href="#">
                        <img src="Content/images/conejosventas/02.jpg" class="img-fluid product-thumbnail">
                        <h3 class="product-title">Conejo Mediano</h3>
                        <strong class="product-price">$45.00</strong>
                    </a>
                </div>
                <!-- End Column 2 -->
                <!-- Start Column 3 -->
                <div class="col-12 col-md-4 col-lg-3 mb-5">
                    <a class="product-item" href="#">
                        <img src="Content/images/conejosventas/03.jpg" class="img-fluid product-thumbnail">
                        <h3 class="product-title">Conejo Pequeño</h3>
                        <strong class="product-price">$40.00</strong>
                    </a>
                </div>
                <!-- End Column 3 -->
                <!-- Start Column 4 -->
                <div class="col-12 col-md-4 col-lg-3 mb-5">
                    <a class="product-item" href="#">
                        <img src="Content/images/conejosventas/04.jpg" class="img-fluid product-thumbnail">
                        <h3 class="product-title">Conejo Bebé</h3>
                        <strong class="product-price">$35.00</strong>
                    </a>
                </div>
                <!-- End Column 4 -->
                <!-- Start Column 1 -->
                <div class="col-12 col-md-4 col-lg-3 mb-5">
                    <a class="product-item" href="#">
                        <img src="Content/images/conejosventas/05.jpg" class="img-fluid product-thumbnail">
                        <h3 class="product-title">Conejo Blanco</h3>
                        <strong class="product-price">$55.00</strong>
                    </a>
                </div>
                <!-- End Column 1 -->
                <!-- Start Column 2 -->
                <div class="col-12 col-md-4 col-lg-3 mb-5">
                    <a class="product-item" href="#">
                        <img src="Content/images/conejosventas/06.jpg" class="img-fluid product-thumbnail">
                        <h3 class="product-title">Conejo Gris</h3>
                        <strong class="product-price">$50.00</strong>
                    </a>
                </div>
                <!-- End Column 2 -->
                <!-- Start Column 3 -->
                <div class="col-12 col-md-4 col-lg-3 mb-5">
                    <a class="product-item" href="#">
                        <img src="Content/images/conejosventas/07.jpg" class="img-fluid product-thumbnail">
                        <h3 class="product-title">Conejo Marrón</h3>
                        <strong class="product-price">$48.00</strong>
                    </a>
                </div>
                <!-- End Column 3 -->
                <!-- Start Column 4 -->
                <div class="col-12 col-md-4 col-lg-3 mb-5">
                    <a class="product-item" href="#">
                        <img src="Content/images/conejosventas/01.jpg" class="img-fluid product-thumbnail">
                        <h3 class="product-title">Conejo Negro</h3>
                        <strong class="product-price">$52.00</strong>
                    </a>
                </div>
                <!-- End Column 4 -->
            </div>
        </div>
    </div>
</asp:Content>
