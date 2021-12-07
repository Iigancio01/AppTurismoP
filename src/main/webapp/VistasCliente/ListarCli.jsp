<%@page import="Modelo.Cliente"%>
<%@page import="ModeloDAO.ClienteDAO"%>
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Departamentos"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.DepartamentosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="description" content="" />
    <meta name="keywords" content="">
    <meta name="author" content="Phoenixcoded" />
    
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
                        <h5>Clientes</h5>
                    </div>
                      <div  class="card-block">
                        <a class="btn btn-success" href="ControladorCliente?accion=addCliente" target="ContenedorPrincipal">Agregar nuevo</a>
                    </div>                 

                    <div  class="card-body">
                        <div  class="dt-responsive table-responsive">
                            <table id="dom-table" class="table table-striped table-bordered nowrap">
                                <thead>
                                    <tr>
                                        <th class="text-center">Rut Cliente</th>
                                        <th class="text-center">Id Usuario</th>
                                        <th class="text-center">Id Comuna</th>
                                        <th class="text-center">Nombre</th>
                                        <th class="text-center">Apellido Paterno</th>
                                        <th class="text-center">Apellido Materno</th>
                                        <th class="text-center">Accion</th>
                                    </tr>
                                </thead>
                                <%
                                    ClienteDAO dao=new ClienteDAO();
                                    List<Cliente>list=dao.listarCliente();
                                    Iterator<Cliente>iter=list.iterator();
                                    Cliente cli=null;
                                    while(iter.hasNext()){
                                     cli=iter.next();
                                %>    
                                <tbody>
                                <tr>
                                    <td class="text-center"><%= cli.getRutCliente()%></td>
                                    <td class="text-center"><%= cli.getIdUsuario()%></td>
                                    <td class="text-center"><%= cli.getIdComuna()%></td>
                                    <td class="text-center"><%= cli.getNombreCli()%></td>
                                    <td class="text-center"><%= cli.getAppellidoPC()%></td>
                                    <td class="text-center"><%= cli.getApellidoMC()%></td>
                                    <td class="text-center">
                                        <a class="btn btn-warning" href="ControladorCliente?accion=editarCliente&RutCliente=<%=cli.getRutCliente()%>" target="ContenedorPrincipal">Editar</a>
                                        <a class="btn btn-danger" href="ControladorCliente?accion=eliminarCliente&RutCliente=<%=cli.getRutCliente()%>" onclick="return confirm('¿Seguro que quieres eliminar?')" >Eliminar</a>
                                    </td>
                                </tr>
                                <%}%>
                                </tbody>
                                <tfoot>
                                    <tr>
                                        <th class="text-center">Rut Cliente</th>
                                        <th class="text-center">Id Usuario</th>
                                        <th class="text-center">Id Comuna</th>
                                        <th class="text-center">Nombre</th>
                                        <th class="text-center">Apellido Paterno</th>
                                        <th class="text-center">Apellido Materno</th>
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
