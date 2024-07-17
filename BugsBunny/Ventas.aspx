<%@ Page Title="Ventas" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ventas.aspx.cs" Inherits="BugsBunny.Ventas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .card {
            border: 1px solid #ddd;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            text-align: center;
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
        .conejo-detalles {
            display: none;
            margin: 20px 0;
            padding: 20px;
            border: 1px solid #ddd;
            border-radius: 10px;
            background-color: #f9f9f9;
        }
        .conejo-detalles img {
            max-width: 100%;
            border-radius: 10px;
        }
        .conejo-detalles h2 {
            font-size: 2rem;
        }
        .conejo-detalles p {
            font-size: 1.2rem;
        }
    </style>
    <div class="container">
        <h1>Ventas</h1>
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <img src="Content/images/conejosventas/01.jpg" alt="Conejo Grande">
                    <h2>Conejo Grande</h2>
                    <p>Precio: $50.00</p>
                    <button class="btn btn-primary" onclick="verDetalles({
                        id: 1,
                        nombre: 'Conejo Grande',
                        imagen: 'Content/images/conejosventas/01.jpg',
                        descripcion: 'Este conejo es grande y amigable, ideal para familias con niños.',
                        precio: 50.00,
                        raza: 'Conejo Grande',
                        edad: '1 año',
                        peso: '5 kg',
                        color: 'Blanco'
                    })">Ver Detalles</button>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="Content/images/conejosventas/02.jpg" alt="Conejo Mediano">
                    <h2>Conejo Mediano</h2>
                    <p>Precio: $40.00</p>
                    <button class="btn btn-primary" onclick="verDetalles({
                        id: 2,
                        nombre: 'Conejo Mediano',
                        imagen: 'Content/images/conejosventas/02.jpg',
                        descripcion: 'Este conejo es de tamaño mediano y tiene un pelaje suave y esponjoso.',
                        precio: 40.00,
                        raza: 'Conejo Mediano',
                        edad: '8 meses',
                        peso: '3 kg',
                        color: 'Marrón'
                    })">Ver Detalles</button>
                </div>
            </div>
            <!-- Agregar más tarjetas según sea necesario -->
        </div>
        <div class="conejo-detalles" id="conejo-detalles">
            <h2>Detalles del Conejo</h2>
            <div id="detalles-contenido"></div>
        </div>
    </div>
    <script>
        function verDetalles(conejo) {
            const detallesDiv = document.getElementById('conejo-detalles');
            const detallesContenido = document.getElementById('detalles-contenido');
            detallesContenido.innerHTML = `
                <img src="${conejo.imagen}" alt="${conejo.nombre}">
                <h2>${conejo.nombre}</h2>
                <p><strong>Descripción:</strong> ${conejo.descripcion}</p>
                <p><strong>Precio:</strong> $${conejo.precio.toFixed(2)}</p>
                <p><strong>Raza:</strong> ${conejo.raza}</p>
                <p><strong>Edad:</strong> ${conejo.edad}</p>
                <p><strong>Peso:</strong> ${conejo.peso}</p>
                <p><strong>Color:</strong> ${conejo.color}</p>
                <button class="btn btn-success" onclick="reservarConejo(${conejo.id})">Reservar Conejo</button>
                <button class="btn btn-info" onclick="añadirAlCarrito(${conejo.id})">Añadir al Carrito</button>
            `;
            detallesDiv.style.display = 'block';
            window.scrollTo(0, detallesDiv.offsetTop);
        }

        function reservarConejo(id) {
            // Lógica para reservar el conejo
            alert('Conejo reservado con éxito.');
        }

        function añadirAlCarrito(id) {
            // Lógica para añadir el conejo al carrito
            alert('Conejo añadido al carrito con éxito.');
        }
    </script>
</asp:Content>
