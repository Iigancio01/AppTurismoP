<%@page import="Modelo.Mantencion"%>
<%@page import="ModeloDAO.MantencionDAO"%>
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
                        <h5>Departamentos en mantencion</h5>
                    </div>
                      <div  class="card-block">
                        <a class="btn btn-success" href="ControladorMantencion?accion=listarDepSinMantencion" target="ContenedorPrincipal">Programar mantenimiento</a>
                    </div>                 

                    <div  class="card-body">
                        <div  class="dt-responsive table-responsive">
                            <table id="dom-table" class="table table-striped table-bordered nowrap">
                                <thead>
                                    <tr>
                                        <th class="text-center">Id Mantenimiento</th>
                                        <th class="text-center">Id Departamento</th>
                                        <th class="text-center">Fecha</th>
                                        <th class="text-center">Cambiar estado</th>
                                    </tr>
                                </thead>
                                <%
                                    MantencionDAO dao=new MantencionDAO();
                                    List<Mantencion>list=dao.listarDptoMantencion();
                                    Iterator<Mantencion>iter=list.iterator();
                                    Mantencion man=null;
                                    while(iter.hasNext()){
                                    man=iter.next();
                                %>    
                                <tbody>
                                <tr>
                                    <td class="text-center"><%=man.getIdMantencion()%></td>
                                    <td class="text-center"><%=man.getIdDepartmentoM()%></td>
                                    <td class="text-center"><%=man.getFechaM()%></td>
                                    <td class="text-center">
                                        <a class="btn btn-danger" href="ControladorMantencion?accion=EliminarMantenimiento&IdMantencion=<%=man.getIdMantencion()%>" onclick="return confirm('¿Seguro que quieres cancelar el mantenimiento?')" >Cancelar mantenimiento</a>
                                    </td>
                                </tr>
                                <%}%>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th class="text-center">Id Mantencion</th>
                                        <th class="text-center">Id Departamento</th>
                                        <th class="text-center">Fecha</th>
                                        <th class="text-center">Cambiar estado</th>
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
