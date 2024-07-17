<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Carrito.aspx.cs" Inherits="BugsBunny.Carrito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .hero {
            padding: 50px 0;
            background: #f7f7f7;
            text-align: center;
        }
        .hero h1 {
            font-size: 2.5rem;
        }
        .untree_co-section {
            padding: 50px 0;
        }
        .site-blocks-table {
            margin-bottom: 30px;
        }
        .site-blocks-table table {
            width: 100%;
            text-align: left;
        }
        .site-blocks-table table th,
        .site-blocks-table table td {
            padding: 10px;
            border-bottom: 1px solid #e0e0e0;
        }
        .site-blocks-table table th {
            text-transform: uppercase;
            font-weight: 700;
        }
        .product-thumbnail img {
            max-width: 100px;
            border-radius: 10px;
        }
        .product-name h2 {
            font-size: 1.2rem;
        }
        .quantity-container .btn {
            font-size: 1.2rem;
        }
    </style>
    <!-- Start Hero Section -->
    <div class="hero">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-5">
                    <div class="intro-excerpt">
                        <h1>Carrito</h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End Hero Section -->

    <div class="untree_co-section before-footer-section">
        <div class="container">
            <div class="row mb-5">
                <form class="col-md-12" method="post">
                    <div class="site-blocks-table">
                        <table class="table">
                            <thead>
                                <tr>
                                    <th class="product-thumbnail">Imagen</th>
                                    <th class="product-name">Producto</th>
                                    <th class="product-price">Precio</th>
                                    <th class="product-quantity">Cantidad</th>
                                    <th class="product-total">Total</th>
                                    <th class="product-remove">Eliminar</th>
                                    <th class="product-reserve">Reservados</th>
                                </tr>
                            </thead>
                            <tbody id="carritoItems">
                                <!-- Items del carrito se agregarán aquí dinámicamente -->
                            </tbody>
                        </table>
                    </div>
                </form>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="row mb-5">
                        <div class="col-md-6 mb-3 mb-md-0">
                            <button class="btn btn-black btn-sm btn-block" onclick="actualizarCarrito()">Actualizar Carrito</button>
                        </div>
                        <div class="col-md-6">
                            <button class="btn btn-outline-black btn-sm btn-block">Seguir Comprando</button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <label class="text-black h4" for="coupon">Cupón</label>
                            <p>Ingrese su código de cupón si tiene uno.</p>
                        </div>
                        <div class="col-md-8 mb-3 mb-md-0">
                            <input type="text" class="form-control py-3" id="coupon" placeholder="Código de Cupón">
                        </div>
                        <div class="col-md-4">
                            <button class="btn btn-black">Aplicar Cupón</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-6 pl-5">
                    <div class="row justify-content-end">
                        <div class="col-md-7">
                            <div class="row">
                                <div class="col-md-12 text-right border-bottom mb-5">
                                    <h3 class="text-black h4 text-uppercase">Totales del Carrito</h3>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <span class="text-black">Subtotal</span>
                                </div>
                                <div class="col-md-6 text-right">
                                    <strong class="text-black" id="subtotal">$0.00</strong>
                                </div>
                            </div>
                            <div class="row mb-5">
                                <div class="col-md-6">
                                    <span class="text-black">Total</span>
                                </div>
                                <div class="col-md-6 text-right">
                                    <strong class="text-black" id="total">$0.00</strong>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <button class="btn btn-black btn-lg py-3 btn-block" onclick="procesarCompra()">Proceder a Pagar</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        // Datos de ejemplo
        const carrito = [
            { id: 1, imagen: 'Content/images/conejosventas/01.jpg', nombre: 'Conejo Grande', precio: 50.00, cantidad: 1, reservado: false },
            { id: 2, imagen: 'Content/images/conejosventas/02.jpg', nombre: 'Conejo Mediano', precio: 40.00, cantidad: 2, reservado: true }
        ];

        function cargarCarrito() {
            const carritoItems = document.getElementById('carritoItems');
            carritoItems.innerHTML = '';
            carrito.forEach(item => {
                carritoItems.innerHTML += `
                    <tr>
                        <td class="product-thumbnail"><img src="${item.imagen}" alt="Imagen" class="img-fluid"></td>
                        <td class="product-name"><h2 class="h5 text-black">${item.nombre}</h2></td>
                        <td>$${item.precio.toFixed(2)}</td>
                        <td>
                            <div class="input-group mb-3 d-flex align-items-center quantity-container" style="max-width: 120px;">
                                <div class="input-group-prepend">
                                    <button class="btn btn-outline-black decrease" type="button" onclick="cambiarCantidad(${item.id}, -1)">&minus;</button>
                                </div>
                                <input type="text" class="form-control text-center quantity-amount" value="${item.cantidad}" readonly>
                                <div class="input-group-append">
                                    <button class="btn btn-outline-black increase" type="button" onclick="cambiarCantidad(${item.id}, 1)">&plus;</button>
                                </div>
                            </div>
                        </td>
                        <td>$${(item.precio * item.cantidad).toFixed(2)}</td>
                        <td><a href="#" class="btn btn-black btn-sm" onclick="eliminarItem(${item.id})">X</a></td>
                        <td>${item.reservado ? 'Reservado' : ''}</td>
                    </tr>
                `;
            });
            actualizarTotales();
        }

        function cambiarCantidad(id, cambio) {
            const item = carrito.find(p => p.id === id);
            if (item) {
                item.cantidad = Math.max(1, item.cantidad + cambio);
                cargarCarrito();
            }
        }

        function eliminarItem(id) {
            const index = carrito.findIndex(p => p.id === id);
            if (index > -1) {
                carrito.splice(index, 1);
                cargarCarrito();
            }
        }

        function actualizarTotales() {
            let subtotal = 0;
            carrito.forEach(item => {
                subtotal += item.precio * item.cantidad;
            });
            document.getElementById('subtotal').textContent = `$${subtotal.toFixed(2)}`;
            document.getElementById('total').textContent = `$${subtotal.toFixed(2)}`;
        }

        function actualizarCarrito() {
            alert('Carrito actualizado.');
        }

        function procesarCompra() {
            alert('Compra procesada.');
        }

        document.addEventListener('DOMContentLoaded', () => {
            cargarCarrito();
        });
    </script>
</asp:Content>
