<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar departamento</title>
        <link href="Css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
            <h1>Agregar departamento</h1>
            <form action="ControladorDpto">
                Id Departamento:<br>
                <input class="form-control" type="text" name="txtIdDep"><br>
                Tarifa:<br>
                <input class="form-control" type="text" name="txtTarifa"><br>
                Comuna:<br>
                <input class="form-control" type="text" name="txtcomuna"><br>
                Direccion:<br>
                <input class="form-control" type="text" name="txtDireccion"><br>
                Descripcion:<br>
                <input class="form-control" type="text" name="txtDescripcion"><br>
                <button  class="btn btn-primary" type="submit" name="accion" value="AgregarDep" >Agregar Dpto</button><br>
            </form>
            </div>
        </div>
    </body>
</html>
