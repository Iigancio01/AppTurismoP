<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Cliente</title>
        <link href="Css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css"/>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/css/bootstrap-select.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.1/js/bootstrap-select.js"></script>


    </head>
    <body>
        
        <div class="container">
            <div class="col-lg-6">
            <h1>Agregar Cliente</h1>
            <form action="ControladorCliente"> Rut Cliente:<br>
                <input class="form-control" type="text" name="txtRutCliente"><br>
                Id Usuario:<br>
                <input class="form-control" type="text" name="txtIdUsuario"><br> 
                Id Comuna:<br>
                <input class="form-control" type="text" name="txtIdComuna"><br>
                 Nombre:<br>
                <input class="form-control" type="text" name="txtNombreCli"><br>
                   Apellido Paterno:<br>
                <input class="form-control" type="text" name="txtApellidoPC"><br>
                Apellido Materno:<br>
                <input class="form-control" type="text" name="txtApellidoMC"><br>
                Correo:<br>
                <input class="form-control" type="text" name="txtCorreo"><br>
                Contraseña:<br>
                <input class="form-control" type="text" name="txtContrasena"><br>
                Tipo Usuario:<br>
               <!-- <select data-live-search="true" data-live-search-style="startsWith" class="selectpicker" name="txtTipoUsuario">-->
               <select  class="form-control" name="txtTipoUsuario">
                        <option value=''>Seleccione...</option>
                        <option value='1'>Administrador</option>
                        <option value='2'>Cliente</option>
                   
                                     
                  </select><br>
                <button  class="btn btn-primary" type="submit" name="accion" value="AgregarCliente" >Agregar Cliente</button><br>
            </form>
            </div>
        </div>
    </body>
</html>