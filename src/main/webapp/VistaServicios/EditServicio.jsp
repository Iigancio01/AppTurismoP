<%@page import="ModeloDAO.ServiciosDAO"%>
<%@page import="Modelo.Servicios"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Servicio</title>
    </head>
    <body>
         <div class="container">
             <div class="col-lg-6">
             <%
                    ServiciosDAO seDAO= new ServiciosDAO();
                    String IdSubFamiliaServicio= (String)request.getAttribute("IdSubFamiliaServicio");
                    Servicios se=(Servicios)seDAO.listarIdServicios(IdSubFamiliaServicio);
             %>
            <h1>Modificar Servicio</h1>
            <form action="ControladorServicios">
                Id subfamilia servicio:<br>
                <input class="form-control" style="background-color: #ccc " type="text" name="txtIdSubFamiliaServicio" value="<%=se.getIdSubFamiliaServicio()%>" readonly><br>
                Id Familia servicio:<br>
                <input class="form-control" type="text" name="txtIdFamiliaServicio" value="<%=se.getIdFamiliaServicio()%>"><br>
                Id Nombre sub familia:<br>
                <input class="form-control" type="text" name="txtNombreSubFamilia" value="<%=se.getNombreSubFamilia()%>"><br>
                <button class="btn btn-primary" type="submit" name="accion" value="actualizarServicio">Actualizar Cliente</button><br>
            </form>
             </div>
        </div>
    </body>
</html>
