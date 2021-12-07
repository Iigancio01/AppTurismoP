<%@page import="Modelo.Departamentos"%>
<%@page import="ModeloDAO.DepartamentosDAO"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Departamento</title>
    </head>
    <body>
         <div class="container">
             <div class="col-lg-6">
             <%
                    DepartamentosDAO dptoDAO= new DepartamentosDAO();
                    String id= (String)request.getAttribute("IdDepartamento");
                    Departamentos dpto=(Departamentos)dptoDAO.listarIdDpto(id);
             %>
            <h1>Modificar Departamento</h1>
            <form action="ControladorDpto">
                Id Departamento:<br>
                <input class="form-control" style="background-color: #ccc " type="text" name="txtIdDep" value="<%=dpto.getIdDepartamento()%>" readonly><br>
                Tarifa:<br>
                <input class="form-control" type="text" name="txtTarifa" value="<%= dpto.getIdTarifa() %>"><br>
                Comuna:<br>
                <input class="form-control" type="text" name="txtcomuna" value="<%= dpto.getIdComuna() %>"><br>
                Direccion:<br>
                <input class="form-control" type="text" name="txtDireccion" value="<%= dpto.getDireccion() %>"><br>
                Descripcion:<br>
                <input class="form-control" type="text" name="txtDescripcion" value="<%= dpto.getDescripcion() %>"><br>
                <button class="btn btn-primary" type="submit" name="accion" value="ActualizarDep">Actualizar Dpto</button><br>
            </form>
             </div>
        </div>
    </body>
</html>
