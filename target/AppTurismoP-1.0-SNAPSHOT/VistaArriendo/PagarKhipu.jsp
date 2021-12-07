
<%@page import="Modelo.PagoKhipu"%>
<%@page import="Modelo.UrlKhipu"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            UrlKhipu Rurl = new UrlKhipu();
            PagoKhipu pago = new PagoKhipu();
            String NombreT="Departamento en Coquimbo 3 habitaciones";
            Double monto=45000.0;
            
        %>
        
        
        <div>
            <input class="form-control" type="text" name="txtUrl" value="<%= pago.toString() %>"><br> 
            
            <a href="<%= pago.Pagar(NombreT, monto).getPaymentUrl() %>" name="PagoKhipu" >AccederPago</a>
        </div>
    </body>
</html>
