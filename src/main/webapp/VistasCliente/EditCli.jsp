<%@page import="Modelo.Cliente"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Cleinte</title>
    </head>
    <body>
         <div class="container">
             <div class="col-lg-6">
             <%
                    ClienteDAO cliDAO= new ClienteDAO();
                    String RutCliente= (String)request.getAttribute("RutCliente");
                    Cliente cli=(Cliente)cliDAO.listarIdCliente(RutCliente);
             %>
            <h1>Modificar Cliente</h1>
            <form action="ControladorCliente">
                Rut Cliente:<br>
                <input class="form-control" style="background-color: #ccc "type="text" name="txtRutCliente" value="<%= cli.getRutCliente()%>" readonly><br>
                Id Usuario:<br>
                <input class="form-control" type="text" name="txtIdUsuario" value="<%= cli.getIdUsuario()%>"><br>
                Id Comuna:<br>
                <input class="form-control" type="text" name="txtIdComuna" value="<%= cli.getIdComuna() %>"><br>
                Nombre:<br>
                <input class="form-control" type="text" name="txtNombreCli" value="<%= cli.getNombreCli()%>"><br>
                Apellido Paterno:<br>
                <input class="form-control" type="text" name="txtApellidoPC" value="<%= cli.getAppellidoPC()%>"><br>
                Apellido Materno:<br>
                <input class="form-control" type="text" name="txtApellidoMC" value="<%= cli.getApellidoMC()%>"><br>
                <button class="btn btn-primary" type="submit" name="accion" value="ActualizarCliente">Actualizar Cliente</button><br>
            </form>
             </div>
        </div>
    </body>
</html>
