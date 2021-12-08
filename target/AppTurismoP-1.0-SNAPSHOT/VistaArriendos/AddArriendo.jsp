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
               
               Departamento:<br>
                <select class="form-control" required type="text" name="txtIdDepartamento"><br>
                      <option value=''>Seleccione...</option>
                     <option value='1'> Departamento Las Cruces</option>
                     <option value='2'>Casa en zona típica frente al mar</option>
                     <option value='3'>Vista preciosa la ciudad</option>
                     <option value='4'>Departamento San Francisco</option>
                     <option value='5'>Habitación privada en casa</option>
                     <option value='6'>Hermoso Depto Amoblado</option>
                     <option value='8'>Edificio Spectral</option>
                     <option value='7'>Departamento Frente al Mar</option>
                     <option value='9'>Departamento en Coquimbo</option>
                     <option value='10'>Edificio Toheras</option>
                     <option value='11'>Departamento Vista panorámica con estacionamiento</option>

                </select><br>
                Master arriendo:<br>
                <select class="form-control" required type="text" name="txtIdMasterArriendo">
                     <option value=''>Seleccione...</option>
                     <option value='44'>20.464.301-6</option>
                     <option value='2'>19.996.193-4</option>
                     <option value='3'>14.473.212-K</option>
                     <option value='4'>74.668.675-6</option>
                     <option value='5'>11.111.111-1</option>
                     <option value='6'>19.777.596-3</option>
                </select><br>        
                Fecha Inicio:<br>
                <input class="form-control" type="datetime-local" name="txtFechaInicio"><br>
                Fecha Fin:<br>
                <input class="form-control" type="datetime-local" name="txtFechaFin"><br>
              
                <button  class="btn btn-primary" type="submit" name="accion" value="NuevoArriendo" >Agregar Arriendo</button><br>
            </form>
            </div>
        </div>
    </body>
</html>