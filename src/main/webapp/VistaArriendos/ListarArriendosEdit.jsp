<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Arriendo"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.ArriendoDAO"%>
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
                        <h5>Arriendos</h5>
                    </div>
                      <div  class="card-block">
                        <a class="btn btn-success" href="ControladorArriendo?accion=ListarArriendos" target="ContenedorPrincipal">Lista de arriendos</a>
                         <a class="btn btn-success" href="ControladorArriendo?accion=AgregarArriendo" target="ContenedorPrincipal">AgregarArriendo</a>
                    </div>                 

                    <div  class="card-body">
                        <div  class="dt-responsive table-responsive">
                            <table id="dom-table" class="table table-striped table-bordered nowrap">
                                <thead>
                                    <tr>
                                        <th class="text-center">Id Arriendo</th>
                                        <th class="text-center">Id Departamento</th>
                                        <th class="text-center">Id Master Arriendo</th>
                                        <th class="text-center">Fecha Inicio</th>
                                        <th class="text-center">Fecha Fin</th>
                                        <th class="text-center">Monto</th>
                                        <th class="text-center">Accion</th>
                                    </tr>
                                </thead>
                                <%
                                    ArriendoDAO dao=new ArriendoDAO();
                                    List<Arriendo>list=dao.listarArriendo();
                                    Iterator<Arriendo>iter=list.iterator();
                                    Arriendo arri=null;
                                    while(iter.hasNext()){
                                    arri=iter.next();
                                %>    
                                <tbody>
                                <tr>
                                    <td class="text-center"><%=arri.getIdArriendo()%></td>
                                    <td class="text-center"><%=arri.getIdDepartamento()%></td>
                                    <td class="text-center"><%=arri.getIdMasterArriendo()%></td>
                                    <td class="text-center"><%=arri.getFechaInicio()%></td>
                                    <td class="text-center"><%=arri.getFechaFin()%></td>
                                    <td class="text-center"><%=arri.getMonto()%></td>
                                    <td class="text-center">
                                        <a class="btn btn-warning" href="ControladorArriendo?accion=editarArriendo&IdArriendo=<%=arri.getIdArriendo()%>" target="ContenedorPrincipal">Editar</a>
                                        <a class="btn btn-danger" href="ControladorArriendo?accion=eliminarArriendo&IdArriendo=<%=arri.getIdArriendo()%>" onclick="return confirm('¿Seguro que quieres eliminar?')" >Eliminar</a>
                                    </td>
                                </tr>
                                <%}%>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th class="text-center">Id Arriendo</th>
                                        <th class="text-center">Id Departamento</th>
                                        <th class="text-center">Id Master Arriendo</th>
                                        <th class="text-center">Fecha Inicio</th>
                                        <th class="text-center">Fecha Fin</th>
                                        <th class="text-center">Monto</th>
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