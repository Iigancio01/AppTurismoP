<%@page import="com.khipu.api.model.PaymentsCreateResponse"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="com.khipu.api.client.PaymentsApi"%>
<%@page import="com.khipu.ApiClient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Turismo Real</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700&display=swap" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
        <link href="Css/styles/styles.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/gsap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/ScrollTrigger.min.js"></script>  
        <script src="https://js.stripe.com/v3/"></script>
            
    </head>
    <body>
        <header class="">
        <div class="container-fluid ">
            <div class="row py-2">
                <!-- Logo -->
                <div class="col-5 d-flex">
                    <a href="/AppTurismoP/InicioCliente.jsp" class="logo me-2">
                        <strong >Turismo Real Cl</strong>
                    </a>

                </div>
                <!-- Enlaces -->
                <div class="col-12 justify-content-center  col-md-7 enlaces d-flex text-end justify-content-md-end pe-md-5">
                    <div class="menu-enlaces d-flex align-items-center">
                        <a href="ControladorVistaCliente?accion=ServiciosExtraLista" class="px-4  d-flex align-items-center text-center" >
                            <span>Turismo</span>
                        </a>
                    </div> 

                    <div class="menu-enlaces d-flex align-items-center">
                    <a href="ControladorVistaCliente?accion=ArriendosSesion" method="POST" class="px-4  d-flex align-items-center text-center">
                        <span>Arriendos</span>
                    </a>
                    </div>
                    <div class="menu d-flex align-items-center">
                        <h5>Bienvenido/a: <%= request.getSession().getAttribute("cliente")%></h5>
                    </div>
                   <div class="d-flex flex-row align-items-center">
                       <a href="/AppTurismoP/ControladorCerrarSesion"class="btn-perfil">
                           <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                               <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                           </svg>
                           <span>Cerrar sesion</span>
                            </a>
                        </div>
                     </div>
                 </div>
             </div>
         </header>
                    ´
         <section>
                    
                 
                  <div class="container">
                    <div class="col-lg-6">
                    <h1>Datos del arriendo</h1>
                    <form action="ControladorArriendo">
                       
                     
                        <input  type="hidden" name="txtIdDepartamento" value=9>
                        RUT:<br>
                        <input class="form-control" type="text" name="txtrut"><br>
                         FechaInicio:<br>
                        <input class="form-control" type="datetime-local" name="txtFechaInicio"><br>
                        Fecha Fin:<br>
                        <input class="form-control" type="datetime-local" name="txtFechaFin"><br>
                       
                        <button  class="btn btn-primary" type="submit" name="accion" value="NuevoArriendocli">Pagar</button><br>
                           
                    </form>
                    
                                       
                    </div>
                </div>      
         </section>          
                    
                   
    </body>
</html>
