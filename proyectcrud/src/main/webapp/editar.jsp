<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f9;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }
            .container {
                background-color: #fff;
                padding: 20px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
                max-width: 400px;
                width: 100%;
            }
            h1 {
                font-size: 24px;
                color: #333;
                margin-bottom: 20px;
                text-align: center;
            }
            p {
                margin: 10px 0;
                color: #555;
            }
            label {
                display: block;
                margin-bottom: 5px;
                font-weight: bold;
            }
            input[type="text"] {
                width: calc(100% - 22px);
                padding: 10px;
                margin-bottom: 15px;
                border: 1px solid #ddd;
                border-radius: 4px;
            }
            button {
                display: block;
                width: 100%;
                padding: 10px;
                background-color: #007bff;
                border: none;
                color: #fff;
                font-size: 16px;
                cursor: pointer;
                border-radius: 4px;
                transition: background-color 0.3s;
            }
            button:hover {
                background-color: #0056b3;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Datos del usuario</h1>
            <%
                Usuario usu = (Usuario) request.getSession().getAttribute("usuEditar");
            %>
            <form action="SvEditar" method="POST">
                <p><label>Dni:</label> <input type="text" name="dni" value="<%= usu.getDni() %>"></p>
                <p><label>Nombre:</label> <input type="text" name="nombre" value="<%= usu.getNombre() %>"></p>
                <p><label>Apellido:</label> <input type="text" name="apellido" value="<%= usu.getApellido() %>"></p>
                <p><label>Teléfono:</label> <input type="text" name="telefono" value="<%= usu.getTelefono() %>"></p>
                <button type="submit">Guardar</button>
            </form>
        </div>
    </body>
</html>
c