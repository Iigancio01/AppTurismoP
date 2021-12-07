<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar item</title>
        <link href="Css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="col-lg-6">
            <h1>Agregar Item</h1>
            <form action="ControladorItems">
                Id Item<br>
                <input class="form-control" type="text" name="txtIdItem"><br>
                Id familia item<br>
                <input class="form-control" type="combobox" name="txtIdFamiliaItem"><br>
                Descripcion<br>
                <input class="form-control" type="text" name="txtDescripcion"><br>
                Valor<br>
                <input class="form-control" type="text" name="txtValor"><br>
                
                <button  class="btn btn-primary" type="submit" name="accion" value="AgregarItem" con>Agregar Item</button><br>
            </form>
            </div>
        </div>
    </body>
</html>
