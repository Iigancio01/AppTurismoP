<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Departamentos"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.DepartamentosDAO"%>
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
                        <h5>Departamentos disponibles</h5>
                    </div>
                      <div  class="card-block">
                        <a class="btn btn-success" href="ControladorEstadoDpto?accion=listarDepNoDispo" target="ContenedorPrincipal">Departamentos no disponibles</a>
                    </div>                 

                    <div  class="card-body">
                        <div  class="dt-responsive table-responsive">
                            <table id="dom-table" class="table table-striped table-bordered nowrap">
                                <thead>
                                    <tr>
                                        <th class="text-center">Id Departamento</th>
                                        <th class="text-center">Tarifa</th>
                                        <th class="text-center">Comuna</th>
                                        <th class="text-center">Direccion</th>
                                        <th class="text-center">Descripcion</th>
                                        <th class="text-center">Estado</th>
                                        <th class="text-center">Cambiar estado</th>
                                    </tr>
                                </thead>
                                <%
                                    DepartamentosDAO dao=new DepartamentosDAO();
                                    List<Departamentos>list=dao.listarDptoDispo();
                                    Iterator<Departamentos>iter=list.iterator();
                                    Departamentos dpto=null;
                                    while(iter.hasNext()){
                                    dpto=iter.next();
                                %>    
                                <tbody>
                                <tr>
                                    <td class="text-center"><%= dpto.getIdDepartamento()%></td>
                                    <td class="text-center"><%= dpto.gettarifa()%></td>
                                    <td class="text-center"><%= dpto.getnombre_com()%></td>
                                    <td class="text-center"><%= dpto.getDireccion()%></td>
                                    <td class="text-center"><%= dpto.getDescripcion()%></td>
                                    <td class="text-center"><%= dpto.getEstadoDpto()%></td>
                                    <td class="text-center">
                                        <a class="btn btn-danger" href="ControladorEstadoDpto?accion=cambiarEstadoND&IdDepartamento=<%=dpto.getIdDepartamento()%>" onclick="return confirm('¿Seguro que quieres cambiar el estado de este departamento a no disponible?')" >Cambiar Disponibilidad</a>
                                    </td>
                                </tr>
                                <%}%>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th class="text-center">Id Departamento</th>
                                        <th class="text-center">Tarifa</th>
                                        <th class="text-center">Comuna</th>
                                        <th class="text-center">Direccion</th>
                                        <th class="text-center">Descripcion</th>
                                        <th class="text-center">Estado</th>
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
