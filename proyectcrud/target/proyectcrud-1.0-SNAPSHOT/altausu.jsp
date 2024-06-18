<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Formulario de Prueba</title>
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
            .section {
                margin-bottom: 30px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="section">
                <h1>Datos del usuario</h1>
                <form action="SvUsuarios" method="POST">
                    <p><label>Dni:</label> <input type="text" name="dni"></p>
                    <p><label>Nombre:</label> <input type="text" name="nombre"></p>
                    <p><label>Apellido:</label> <input type="text" name="apellido"></p>
                    <p><label>Teléfono:</label> <input type="text" name="telefono"></p>
                    <button type="submit">Enviar</button>
                </form>
            </div>
            <div class="section">
                <h1>Ver lista de usuarios</h1>
                <p>Para ver los datos de los usuarios cargados haga click en el siguiente botón</p>
                <form action="SvUsuarios" method="GET">
                    <button type="submit">Mostrar Usuarios</button>
                </form>
            </div>
            <div class="section">
                <h1>Eliminar Usuario</h1>
                <p>Ingrese la id del usuario que quiere eliminar</p>
                <form action="SvEliminar" method="POST">
                    <p><label>Id:</label> <input type="text" name="id_usuario"></p>
                    <button type="submit">Eliminar Usuario</button>
                </form>
            </div>
            <div class="section">
                <h1>Editar Usuario</h1>
                <p>Ingrese la id del usuario que quiere editar</p>
                <form action="SvEditar" method="GET">
                    <p><label>Id:</label> <input type="text" name="id_usuarioEdit"></p>
                    <button type="submit">Editar Usuario</button>
                </form>
            </div>
        </div>
    </body>
</html>
