<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar arriendo</title>
        <link href="Css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
            <h1>Agregar Arriendo</h1>
            <form action="ControladorArriendo">
                Id Arriendo:<br>
                <input class="form-control" type="text" name="txtIdArriendo"><br>
                Id Departamento:<br>
                <input class="form-control" type="text" name="txtIdDepartamento"><br>
                Id master arriendo:<br>
                <input class="form-control" type="text" name="txtIdMasterArriendo"><br>
                 FechaInicio:<br>
                <input class="form-control" type="datetime-local" name="txtFechaInicio"><br>
                Fecha Fin:<br>
                <input class="form-control" type="datetime-local" name="txtFechaFin"><br>
                Monto:<br>
                <input class="form-control" type="text" name="txtMonto"><br>
                <button  class="btn btn-primary" type="submit" name="accion" value="NuevoArriendo" >Agregar Arriendo</button><br>
            </form>
            </div>
        </div>
    </body>
</html>