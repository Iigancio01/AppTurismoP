<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Servicio</title>
        <link href="Css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
            <h1>Agregar Servicio</h1>
            <form action="ControladorServicios">
                Id subfamilia servicio:<br>
                <input class="form-control" type="text" name="txtIdSubFamiliaServicio"><br>
                Id Familia servicio:<br>
                <input class="form-control" type="text" name="txtIdFamiliaServicio"><br>
                Id Nombre sub familia:<br>
                <input class="form-control" type="text" name="txtNombreSubFamilia"><br>
                <button  class="btn btn-primary" type="submit" name="accion" value="AgregarServicio" >Agregar Servicio</button><br>
            </form>
            </div>
        </div>
    </body>
</html>