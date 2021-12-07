<%@page import="Modelo.Arriendo"%>
<%@page import="ModeloDAO.ArriendoDAO"%>
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
             <%
                    ArriendoDAO arriDAO= new ArriendoDAO();
                    String IdArriendo= (String)request.getAttribute("IdArriendo");
                    Arriendo arri=(Arriendo)arriDAO.listarIdArriendo(IdArriendo);
             %>
            <h1>Agregar Arriendo</h1>
            <form action="ControladorArriendo">
                Id Arriendo:<br>
                <input class="form-control" style="background-color: #ccc " type="text" name="txtIdArriendo" value="<%=arri.getIdArriendo()%>" readonly><br>
                Id Departamento:<br>
                <input class="form-control" type="text" name="txtIdDepartamento" value="<%=arri.getIdDepartamento()%>"><br>
                Id master arriendo:<br>
                <input class="form-control" type="text" name="txtIdMasterArriendo" value="<%=arri.getIdMasterArriendo()%>"><br>
                 FechaInicio:<br>
                 <input class="form-control" type="datetime-local" name="txtFechaInicio" value="<%=arri.getFechaInicio()%>" ><br>
                Fecha Fin:<br>
                <input class="form-control" type="datetime-local" name="txtFechaFin" value="<%=arri.getFechaFin()%>"><br>
                Monto:<br>
                <input class="form-control" type="text" name="txtMonto" value="<%=arri.getMonto()%>"><br>
                <button  class="btn btn-primary" type="submit" name="accion" value="ActualizarArriendo" >Actualizar Arriendo</button><br>
            </form>
            </div>
        </div>
    </body>
</html>