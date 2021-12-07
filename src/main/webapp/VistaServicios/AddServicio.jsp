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
               
                Familia servicio:<br>
                <select class="form-control" type="text" required name="txtIdFamiliaServicio">
                     <option value=''>Seleccione...</option>
                     <option value='1'>Tour</option>
                     <option value='2'>Paquete Turistico</option>
                     <option value='3'>Transporte</option>
                 
                </select><br>
                Nombre Servicio:<br>
                <input class="form-control" type="text" name="txtNombreSubFamilia"><br>
                <button  class="btn btn-primary" type="submit" name="accion" value="AgregarServicio" >Agregar Servicio</button><br>
            </form>
            </div>
        </div>
    </body>
</html>