
<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Departamentos"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.DepartamentosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Css/datatable/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
          <%                        DepartamentosDAO dptoDAO= new DepartamentosDAO();
                                    Departamentos mesa=(Departamentos)dptoDAO.montoMes();
                                    Departamentos mes=(Departamentos)dptoDAO.montoMesAct();
                                    Departamentos por=(Departamentos)dptoDAO.Porcen();
                                    %>

<div class="card">

    <div class="card-body">
        <h6 class="text-c-green mb-0" > Ventas totales del mes </h6>
        <h6 class="mb-0"><i class="feather icon-arrow-down text-c-red"></i> <%= mesa.getMontoPas() %> <span class="float-right">
                <i class="feather icon-arrow-up text-c-green"></i><%= mes.getMontoMes() %></span></h6>
        <div class="progress mt-1" style="height:6px;">
            <div class="progress-bar bg-success rounded" role="progressbar" style="width: <%= por.getPorcen()%>%;"
                 aria-valuenow="90" aria-valuemin="10" aria-valuemax="100"></div>
        </div>
        <span class="mt-1 d-block mb-3"> Llevamos el <%= (por.getPorcen()) %>% del mes anterior<span class="float-right">Meta!!</span></span>
        
    </div>
</div>
          
        
        <script src="Css/datatable/js/vendor-all.min.js" type="text/javascript"></script>
        <script src="Css/datatable/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="Css/datatable/js/ripple.js" type="text/javascript"></script>
        <script src="Css/datatable/js/pcoded.min.js" type="text/javascript"></script>
        
        <script src="Css/datatable/js/apexcharts.min.js" type="text/javascript"></script>
        
        <script src="Css/datatable/js/dashboard-sale.js" type="text/javascript"></script>
        
    </body>
</html>
