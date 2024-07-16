<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Bitacora.aspx.cs" Inherits="BugsBunny.Bitacora" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Start Hero Section -->
    <div class="hero">
        <div class="container">
            <div class="row justify-content-between">
                <div class="col-lg-5">
                    <div class="intro-excerpt">
                        <h1>Bitácoras</h1>
                        <p class="mb-4">Mantén un registro detallado de las actividades, comportamientos y salud de tus conejos.</p>
                        <p><a href="Registrar.aspx" class="btn btn-secondary me-2">Registrar</a><a href="#" class="btn btn-white-outline">Explorar</a></p>
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
    <!-- End Hero Section -->

    <!-- Start Bitacora Form -->
    <div class="untree_co-section">
        <div class="container">

            <div class="block">
                <div class="row justify-content-center">
                    <h2>Registro de bitacora</h2>
                    <br />
                    <asp:Panel runat="server">
                        <div class="row">
                            <div class="col-6">
                                <div class="form-group">
                                    <asp:Label ID="lblNombre" runat="server" Text="Nombre del Conejo" CssClass="text-black"></asp:Label>
                                    <asp:TextBox ID="nombre" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-6">
                                <div class="form-group">
                                    <asp:Label ID="lblFechaNacimiento" runat="server" Text="Fecha de Nacimiento" CssClass="text-black"></asp:Label>
                                    <asp:TextBox ID="fecha_nacimiento" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblPeso" runat="server" Text="Peso Actual (kg)" CssClass="text-black"></asp:Label>
                            <asp:TextBox ID="peso" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Label ID="lblComportamiento" runat="server" Text="Comportamiento" CssClass="text-black"></asp:Label>
                            <asp:TextBox ID="comportamiento" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                        </div>
                        <div class="form-group mb-5">
                            <asp:Label ID="lblObservaciones" runat="server" Text="Observaciones Especiales" CssClass="text-black"></asp:Label>
                            <asp:TextBox ID="observaciones" runat="server" CssClass="form-control" TextMode="MultiLine" Rows="5"></asp:TextBox>
                        </div>

                        <asp:Button ID="btnRegistrar" runat="server" Text="Registrar Bitácora" CssClass="btn btn-primary-hover-outline" OnClick="btnRegistrar_Click" />
                    </asp:Panel>

                </div>
            </div>
        </div>
    </div>
    <!-- End Bitacora Form -->
</asp:Content>
