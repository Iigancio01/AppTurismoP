<%@page import="Modelo.Servicios"%>
<%@page import="ModeloDAO.ServiciosDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Favicon icon -->
        <link rel="icon" href="assets/images/favicon.ico" type="image/x-icon">

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
                        <h5>Servicios</h5>
                    </div>
                      <div  class="card-block">
                        <a class="btn btn-success" href="ControladorServicios?accion=agregarServicioV" target="ContenedorPrincipal">Agregar nuevo servicio</a>
                    </div>                 

                    <div  class="card-body">
                        <div  class="dt-responsive table-responsive">
                            <table id="dom-table" class="table table-striped table-bordered nowrap">
                                <thead>
                                    <tr>
                                        <th class="text-center">Id Subfamilia servicio</th>
                                        <th class="text-center">Id Familia servicio</th>
                                        <th class="text-center">Nombre Subfamilia</th>
                                        <th class="text-center">Accion</th>
                                    </tr>
                                </thead>
                                <%
                                    ServiciosDAO dao=new ServiciosDAO();
                                    List<Servicios>list=dao.listarServicios();
                                    Iterator<Servicios>iter=list.iterator();
                                    Servicios se=null;
                                    while(iter.hasNext()){
                                    se=iter.next();
                                %>    
                                <tbody>
                                <tr>
                                    <td class="text-center"><%=se.getIdSubFamiliaServicio()%></td>
                                    <td class="text-center"><%=se.getIdFamiliaServicio()%></td>
                                    <td class="text-center"><%=se.getNombreSubFamilia()%></td>
                                    <td class="text-center">
                                        <a class="btn btn-warning" href="ControladorServicios?accion=editServicio&IdSubFamiliaServicio=<%=se.getIdSubFamiliaServicio()%>" target="ContenedorPrincipal">Editar</a>
                                        <a class="btn btn-danger" href="ControladorServicios?accion=eliminarServicio&IdSubFamiliaServicio=<%=se.getIdSubFamiliaServicio()%>" onclick="return confirm('¿Seguro que quieres eliminar?')" >Eliminar</a>
                                    </td>
                                </tr>
                                <%}%>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th class="text-center">Id Subfamilia servicio</th>
                                        <th class="text-center">Id Familia servicio</th>
                                        <th class="text-center">Nombre Subfamilia</th>
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
