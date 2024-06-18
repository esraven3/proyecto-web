<%@page import="logica.Usuario"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Usuarios</title>
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
                max-width: 600px;
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
            .usuario {
                border-bottom: 1px solid #ddd;
                padding-bottom: 10px;
                margin-bottom: 10px;
            }
            .usuario:last-child {
                border-bottom: none;
                margin-bottom: 0;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Lista de Usuarios registrados</h1>
            <%
                List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
                int cont = 1;
                for (Usuario usu : listaUsuarios) {
            %>
            <div class="usuario">
                <p><b>Usuario N° <%= cont %></b></p>
                <p>Id: <%= usu.getId() %></p>
                <p>Dni: <%= usu.getDni() %></p>
                <p>Nombre: <%= usu.getNombre() %></p>
                <p>Apellido: <%= usu.getApellido() %></p>
                <p>Teléfono: <%= usu.getTelefono() %></p>
            </div>
            <%
                    cont = cont + 1;
                }
            %>
        </div>
    </body>
</html>
