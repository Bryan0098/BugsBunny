<%@ Page Title="Ventas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="BugsBunny.Ventas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .card {
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            text-align: center;
            position: relative;
        }
        .card img {
            max-width: 100%;
            border-radius: 10px;
        }
        .card h2 {
            font-size: 1.5rem;
        }
        .card p {
            font-size: 1rem;
        }
        .conejo-detalles-info {
            display: none;
            margin: 20px 0;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background-color: #f9f9f9;
        }
        .reservado {
            position: absolute;
            top: 10px;
            right: 10px;
            background-color: red;
            color: white;
            padding: 5px;
            border-radius: 5px;
        }
    </style>

    <div class="container">
        <h1>Ventas</h1>
        <div class="row" id="ventas">
            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                <div class="card" data-id="1">
                    <img src="Content/images/01.jpg" alt="Conejo Grande">
                    <h2>Conejo Grande</h2>
                    <p>Precio: $50.00</p>
                    <div class="conejo-detalles-info" id="detalles-1">
                        <p><strong>Descripción:</strong> Este conejo es grande y amigable, ideal para familias con niños.</p>
                        <p><strong>Precio:</strong> $50.00</p>
                        <p><strong>Raza:</strong> Conejo Grande</p>
                        <p><strong>Edad:</strong> 1 año</p>
                        <p><strong>Peso:</strong> 5 kg</p>
                        <p><strong>Color:</strong> Blanco</p>
                        <button class="btn btn-success" onclick="reservarConejo(1)">Reservar Conejo</button>
                    </div>
                    <a href="javascript:void(0)" class="btn btn-primary" onclick="toggleDetalles(1)">Ver Detalles</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                <div class="card" data-id="2">
                    <img src="Content/images/02.jpg" alt="Conejo Mediano">
                    <h2>Conejo Mediano</h2>
                    <p>Precio: $40.00</p>
                    <div class="conejo-detalles-info" id="detalles-2">
                        <p><strong>Descripción:</strong> Este conejo es de tamaño mediano y tiene un pelaje suave y esponjoso.</p>
                        <p><strong>Precio:</strong> $40.00</p>
                        <p><strong>Raza:</strong> Conejo Mediano</p>
                        <p><strong>Edad:</strong> 8 meses</p>
                        <p><strong>Peso:</strong> 3 kg</p>
                        <p><strong>Color:</strong> Marrón</p>
                        <button class="btn btn-success" onclick="reservarConejo(2)">Reservar Conejo</button>
                    </div>
                    <a href="javascript:void(0)" class="btn btn-primary" onclick="toggleDetalles(2)">Ver Detalles</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                <div class="card" data-id="3">
                    <img src="Content/images/03.jpg" alt="Conejo Pequeño">
                    <h2>Conejo Pequeño</h2>
                    <p>Precio: $30.00</p>
                    <div class="conejo-detalles-info" id="detalles-3">
                        <p><strong>Descripción:</strong> Este conejo es pequeño y juguetón, perfecto para apartamentos.</p>
                        <p><strong>Precio:</strong> $30.00</p>
                        <p><strong>Raza:</strong> Conejo Pequeño</p>
                        <p><strong>Edad:</strong> 6 meses</p>
                        <p><strong>Peso:</strong> 1.5 kg</p>
                        <p><strong>Color:</strong> Negro</p>
                        <button class="btn btn-success" onclick="reservarConejo(3)">Reservar Conejo</button>
                    </div>
                    <a href="javascript:void(0)" class="btn btn-primary" onclick="toggleDetalles(3)">Ver Detalles</a>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 col-12">
                <div class="card" data-id="4">
                    <img src="Content/images/04.jpg" alt="Conejo Enano">
                    <h2>Conejo Enano</h2>
                    <p>Precio: $35.00</p>
                    <div class="conejo-detalles-info" id="detalles-4">
                        <p><strong>Descripción:</strong> Este conejo enano es perfecto para hogares con poco espacio.</p>
                        <p><strong>Precio:</strong> $35.00</p>
                        <p><strong>Raza:</strong> Conejo Enano</p>
                        <p><strong>Edad:</strong> 4 meses</p>
                        <p><strong>Peso:</strong> 1 kg</p>
                        <p><strong>Color:</strong> Gris</p>
                        <button class="btn btn-success" onclick="reservarConejo(4)">Reservar Conejo</button>
                    </div>
                    <a href="javascript:void(0)" class="btn btn-primary" onclick="toggleDetalles(4)">Ver Detalles</a>
                </div>
            </div>
            <!-- Añade más conejos aquí -->
        </div>
    </div>

    <div class="container">
        <h1>Carrito</h1>
        <div class="row" id="carrito">
            <!-- Conejos reservados se mostrarán aquí -->
        </div>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            cargarReservas();
        });

        function toggleDetalles(id) {
            var detalles = document.getElementById('detalles-' + id);
            if (detalles.style.display === 'none' || detalles.style.display === '') {
                detalles.style.display = 'block';
            } else {
                detalles.style.display = 'none';
            }
        }

        function reservarConejo(id) {
            var card = document.querySelector('.card[data-id="' + id + '"]');
            var conejo = {
                id: id,
                nombre: card.querySelector('h2').innerText,
                precio: card.querySelector('p').innerText,
                imgSrc: card.querySelector('img').src
            };

            var reservas = JSON.parse(localStorage.getItem('reservas')) || [];
            if (!reservas.find(c => c.id === id)) {
                reservas.push(conejo);
                localStorage.setItem('reservas', JSON.stringify(reservas));
                mostrarReservado(id);
                actualizarCarrito();
            } else {
                alert("Este conejo ya está reservado.");
            }
        }

        function mostrarReservado(id) {
            var card = document.querySelector('.card[data-id="' + id + '"]');
            var reservado = document.createElement('div');
            reservado.className = 'reservado';
            reservado.innerText = 'Reservado';
            card.appendChild(reservado);

            var botonReservar = card.querySelector('button');
            botonReservar.disabled = true;
            botonReservar.innerText = 'Reservado';
        }

        function cargarReservas() {
            var reservas = JSON.parse(localStorage.getItem('reservas')) || [];
            reservas.forEach(function (conejo) {
                mostrarReservado(conejo.id);
            });
            actualizarCarrito();
        }

        function actualizarCarrito() {
            var carrito = document.getElementById('carrito');
            carrito.innerHTML = '';

            var reservas = JSON.parse(localStorage.getItem('reservas')) || [];
            reservas.forEach(function (conejo, index) {
                var card = document.createElement('div');
                card.className = 'col-lg-3 col-md-4 col-sm-6 col-12';
                card.innerHTML = `
                    <div class="card">
                        <img src="${conejo.imgSrc}" alt="${conejo.nombre}">
                        <h2>${conejo.nombre}</h2>
                        <p>${conejo.precio}</p>
                        <button class="btn btn-danger" onclick="eliminarDelCarrito(${index})">Eliminar</button>
                    </div>
                `;
                carrito.appendChild(card);
            });
        }

        function eliminarDelCarrito(index) {
            var reservas = JSON.parse(localStorage.getItem('reservas')) || [];
            reservas.splice(index, 1);
            localStorage.setItem('reservas', JSON.stringify(reservas));
            actualizarCarrito();
            // Recargar la página para actualizar el estado de los botones y etiquetas "Reservado"
            location.reload();
        }
    </script>
</asp:Content>
