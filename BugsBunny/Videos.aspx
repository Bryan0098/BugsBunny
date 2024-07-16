<%@ Page Title="Videos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Videos.aspx.cs" Inherits="BugsBunny.Videos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!-- Inicio de la Sección Hero -->
    <div class="hero">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-lg-5">
                    <div class="intro-excerpt">
                        <h1>Videos</h1>
                        <p class="mb-4">Explora videos exclusivos de nuestra tienda aquí.</p>
                        <p>
                            <a href="Ventas.aspx" class="btn btn-secondary me-2">Comprar Ahora</a>
                            <a href="Default.aspx" class="btn btn-white-outline">Inicio</a>
                        </p>
                    </div>
                </div>
                <div class="col-lg-7">
                    <div class="hero-img-wrap">
                        <img src="Content/images/conejo_port.png" class="img-fluid">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Fin de la Sección Hero -->

    <!-- Inicio de la Sección de Contacto -->
    <div class="untree_co-section">
        <div class="container">
            <div class="block">
                <div class="row justify-content-center">
                    <div class="col-lg-10">
                        <h2 class="text-center">Curiosidades de los conejos que debes saber</h2>
                        <p class="mb-4 text-center">Aquí tienes un video más reciente de los conejos</p>
                        <!-- Video de YouTube incrustado más grande -->
                        <div class="embed-responsive embed-responsive-16by9">
                            <iframe class="embed-responsive-item" src="https://www.youtube.com/embed/qmdDd0GSVn0" allowfullscreen style="width: 100%; height: 500px;"></iframe>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Fin de la Sección de Contacto -->

</asp:Content>
