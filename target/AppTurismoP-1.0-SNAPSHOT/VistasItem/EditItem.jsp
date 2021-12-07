<%@page import="Modelo.Items"%>
<%@page import="ModeloDAO.ItemsDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="Css/bootstrap/bootstrap.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Item</title>
    </head>
    <body>
         <div class="container">
             <div class="col-lg-6">
             <%
                    ItemsDAO itDAO= new ItemsDAO();
                    String IdItem= (String)request.getAttribute("IdItem");
                    Items it=(Items)itDAO.listarIdItems(IdItem);
             %>
            <h1>Modificar Item</h1>
            <form action="ControladorItems">
                Id Item:<br>
                <input class="form-control" style="background-color: #ccc "type="text" name="txtIdItem" value="<%= it.getIdItem() %>" readonly><br>
                Id Familia Item:<br>
                <select class="form-control" type="text" name="txtIdFamiliaItem" value="<%= it.getIdFamiliaItem() %>">
                   <option value='<%= it.getIdFamiliaItem() %>'><%= it.getnombrefam() %></option>
                        <option value='1'>Tecnologia</option>
                        <option value='2'>Electro</option>
                        <option value='3'>Muebles y organización</option>
                        <option value='4'>Dormitorio</option>
                        <option value='5'>Cocina y baño</option>
                        <option value='6'>Decoración e iluminación</option>
                        <option value='7'>Jardín y terraza</option>
                        
                
                </select><br>
                Descripcion:<br>
                <input class="form-control" type="text" name="txtDescripcion" value="<%= it.getDescripcion() %>"><br>
                Valor:<br>
                <input class="form-control" type="text" name="txtValor" value="<%= it.getValorItem()%>"><br>
               
                <button class="btn btn-primary" type="submit" name="accion" value="ActualizarItems">Actualizar Item</button><br>
            </form>
             </div>
        </div>
    </body>
</html>
