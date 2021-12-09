
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cancelacion de pago</title>
        <link href="Css/bootstrap/StylePayment.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
            <article class="card">
                <div class="">
                            <div class="">
                                <h2>¡El pago ha sido cancelado!</h2>
                                
                                <img src="Css/img/Equis_roja.png" width="306" height="306"/>
                                <h4>Presione aqui para terminar el proceso</h4>
                               <form action="ControladorConfirmarPago">
                                    
                                    <button type="submit" name="accion" value="PagoCancelado2" >Terminar</button>
                                
                                </form>
                            </div>
                </div>
            </article>
    </body>
</html>
