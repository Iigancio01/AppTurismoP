<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Items"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ItemsDAO"%>
<!DOCTYPE html>
<html>
    <head>
   <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="keywords" content="">
    
    <!-- data tables css -->
    <link href="Css/datatable/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css"/>
    <!-- vendor css -->
    <link href="Css/datatable/style.css" rel="stylesheet" type="text/css"/>
  
    </head>
    <body>
        <br>
        <div style="height:100%; width:100%" class="col-sm-12" >
                <div  class="card">
                    <div  class="card-header">
                        <h5>Items</h5>
                    </div>
                      <div  class="card-block">
                        <a class="btn btn-success" href="ControladorItems?accion=addItem" target="ContenedorPrincipal">Agregar nuevo</a>
                        <a class="btn btn-success" href="ControladorPdfChecklist" target="ContenedorPrincipal">Generar checklist de estado</a>
                    </div>                 

                    <div  class="card-body">
                        <div  class="dt-responsive table-responsive">
                            <table id="dom-table" class="table table-striped table-bordered table-sm">
                                <thead>
                                    <tr>
                                        <th class="text-center">Id Item</th>
                                        <th class="text-center">Id Familia Item</th>
                                        <th class="text-center">Descripcion</th>
                                        <th class="text-center">Valor</th>
                                        <th class="text-center">Accion</th>
                                        
                                    </tr>
                                </thead>
                                <%
                                    ItemsDAO dao=new ItemsDAO();
                                    List<Items>list=dao.listarItems();
                                    Iterator<Items>iter=list.iterator();
                                    Items it=null;
                                    while(iter.hasNext()){
                                      it=iter.next();
                                %>
                               
                                <tbody>
                                    <tr>
                                        <td class="text-center"><%= it.getIdItem()%></td>
                                        <td class="text-center"><%= it.getIdFamiliaItem() %></td>
                                        <td class="text-center"><%= it.getDescripcion()%></td>
                                        <td class="text-center"><%= it.getValorItem()%></td>
                                        <td class="text-center">
                                            <a class="btn btn-warning" href="ControladorItems?accion=editarItem&IdItem=<%=it.getIdItem()%>" target="ContenedorPrincipal">Editar</a>
                                            <a class="btn btn-danger" href="ControladorItems?accion=eliminarItem&IdItem=<%=it.getIdItem()%>" onclick="return confirm('¿Seguro que quieres eliminar?')" >Eliminar</a>
                                        </td>
                                    </tr>
                                <%}%>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th class="text-center">Id Item</th>
                                        <th class="text-center">Id Familia Item</th>
                                        <th class="text-center">Descripcion</th>
                                        <th class="text-center">Valor</th>
                                        <th class="text-center">Accion</th>
                                    </tr>
                                </tfoot>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        
    
    <!-- Required Js -->
    
    <script src="Css/datatable/js/vendor-all.min.js" type="text/javascript"></script>
    <script src="Css/datatable/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="Css/datatable/js/ripple.js" type="text/javascript"></script>
    <script src="Css/datatable/js/pcoded.min.js" type="text/javascript"></script>
   
  
    <!-- datatable Js -->
    
    <script src="Css/datatable/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="Css/datatable/js/dataTables.bootstrap4.min.js" type="text/javascript"></script>
    <script src="Css/datatable/js/data-source-custom.js" type="text/javascript"></script>
    </body>
</html>
