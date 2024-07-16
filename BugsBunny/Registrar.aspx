<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Registrar.aspx.cs" Inherits="BugsBunny.Registrar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">    
    <style>
        .register-section {
            background-color: rgba(59,93,80,255);
            color: #fff;
            padding: 50px 0;
        }
        .register-form {
            background-color: #fff;
            color: #000;
            border-radius: 10px;
            padding: 30px;
            max-width: 600px;
            margin: 0 auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .register-form h2 {
            margin-bottom: 30px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .form-group input[type="submit"] {
            background-color: rgba(59,93,80,255);
            color: #fff;
            border: none;
            cursor: pointer;
        }
        .form-group input[type="submit"]:hover {
            background-color: #3a5d50;
        }
    </style>
    <div class="register-section">
        <div class="container">
            <div class="register-form">
                <h2>Registro de Usuario</h2>
                <form action="Registro.aspx" method="post">
                    <div class="form-group">
                        <label for="nombre">Nombre Completo:</label>
                        <input type="text" id="nombre" name="nombre" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Correo Electrónico:</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="telefono">Teléfono:</label>
                        <input type="tel" id="telefono" name="telefono" required>
                    </div>
                    <div class="form-group">
                        <label for="direccion">Dirección:</label>
                        <input type="text" id="direccion" name="direccion" required>
                    </div>
                    <div class="form-group">
                        <label for="ciudad">Ciudad:</label>
                        <input type="text" id="ciudad" name="ciudad" required>
                    </div>
                    <div class="form-group">
                        <label for="pais">Cantón:</label>
                        <select id="canton" name="canton" required>
                            <option value="">Seleccione un Cantón</option>
                            <option value="Zumbahua">Zumbahua</option>
                            <option value="Pujili">Pujilí</option>
                            <option value="Salcedo">Salcedo</option>
                            <!-- Agrega más opciones según sea necesario -->
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="password">Contraseña:</label>
                        <input type="password" id="password" name="password" required>
                    </div>
                    <div class="form-group">
                        <label for="confirm_password">Confirmar Contraseña:</label>
                        <input type="password" id="confirm_password" name="confirm_password" required>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Registrar">
                    </div>
                </form>
            </div>
        </div>
    </div>
</asp:Content>
