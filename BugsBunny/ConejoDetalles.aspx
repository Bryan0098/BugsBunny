<%@ Page Title="Detalles del Conejo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ConejoDetalles.aspx.cs" Inherits="BugsBunny.ConejoDetalles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .details-section {
            padding: 50px 0;
        }
        .details-section img {
            border-radius: 10px;
            max-width: 100%;
        }
        .details-section h2 {
            font-size: 2rem;
            margin-bottom: 1rem;
        }
        .details-section p {
            font-size: 1.2rem;
            margin-bottom: 1rem;
        }
        .details-section .product-price {
            font-size: 1.5rem;
            color: #333;
            margin-bottom: 1.5rem;
        }
        .details-section .btn {
            margin-right: 1rem;
        }
        .details-section .product-features {
            margin-top: 2rem;
        }
        .details-section .product-features h3 {
            font-size: 1.5rem;
            margin-bottom: 1rem;
        }
        .details-section .product-features ul {
            list-style-type: disc;
            padding-left: 1.5rem;
        }
        .details-section .product-features ul li {
            font-size: 1.2rem;
            margin-bottom: 0.5rem;
        }
    </style>
    <div class="details-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6">
                    <img id="conejoImagen" class="img-fluid" alt="Conejo" />
                </div>
                <div class="col-lg-6">
                    <h2 id="conejoNombre"></h2>
                    <p id="conejoDescripcion"></p>
                    <strong class="product-price" id="conejoPrecio"></strong>
                    <div>
                        <button class="btn btn-primary" onclick="reservarConejo()">Reservar</button>
                        <button class="btn btn-success" onclick="agregarAlCarrito()">Añadir al Carrito</button>
                    </div>
                    <div class="product-features">
                        <h3>Características:</h3>
                        <ul>
                            <li id="conejoRaza"></li>
                            <li id="conejoEdad"></li>
                            <li id="conejoPeso"></li>
                            <li id="conejoColor"></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const conejo = JSON.parse(localStorage.getItem('conejoSeleccionado'));
            if (conejo) {
                document.getElementById('conejoImagen').src = conejo.imagen;
                document.getElementById('conejoNombre').textContent = conejo.nombre;
                document.getElementById('conejoDescripcion').textContent = conejo.descripcion;
                document.getElementById('conejoPrecio').textContent = `$${conejo.precio.toFixed(2)}`;
                document.getElementById('conejoRaza').textContent = `Raza: ${conejo.raza}`;
                document.getElementById('conejoEdad').textContent = `Edad: ${conejo.edad}`;
                document.getElementById('conejoPeso').textContent = `Peso: ${conejo.peso}`;
                document.getElementById('conejoColor').textContent = `Color: ${conejo.color}`;
            } else {
                alert('No se encontró la información del conejo.');
            }
        });

        function reservarConejo() {
            const conejo = JSON.parse(localStorage.getItem('conejoSeleccionado'));
            // Lógica para reservar el conejo
            fetch(`/api/reservar?id=${conejo.id}`, { method: 'POST' })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        alert('Conejo reservado exitosamente.');
                    } else {
                        alert('Este conejo ya está reservado.');
                    }
                });
        }

        function agregarAlCarrito() {
            const conejo = JSON.parse(localStorage.getItem('conejoSeleccionado'));
            // Lógica para agregar al carrito
            fetch(`/api/agregarAlCarrito?id=${conejo.id}`, { method: 'POST' })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        alert('Conejo añadido al carrito.');
                    } else {
                        alert('No se pudo añadir al carrito.');
                    }                    
                });
        }
    </script>
</asp:Content>
