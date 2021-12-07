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
                    <a href="/AppTurismo3.0/" class="logo me-2">
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
                       <a href="/AppTurismo3.0/ControladorCerrarSesion"class="btn-perfil">
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
                        Id Arriendo:<br>
                        <input class="form-control" type="text" name="txtIdArriendo"><br>
                        Id Departamento:<br>
                        <input class="form-control" type="text" name="txtIdDepartamento"><br>
                        Id master arriendo:<br>
                        <input class="form-control" type="text" name="txtIdMasterArriendo"><br>
                         FechaInicio:<br>
                        <input class="form-control" type="datetime-local" name="txtFechaInicio"><br>
                        Fecha Fin:<br>
                        <input class="form-control" type="datetime-local" name="txtFechaFin"><br>
                        Monto:<br>
                        <input class="form-control" type="text" name="txtMonto"><br>
                        <button  class="btn btn-primary" type="submit" name="accion" value="NuevoArriendo" >Agregar Arriendo</button><br>
                           
                    </form>
                    <form action="ControladorVistaCliente">
                        <button type="submit" name="accion" value="MetodoPago" target="ContenedorPago">Pagar</button>
                        <a href="ControladorVistaCliente?accion=MetodoPago"  target="ContenedorPago" >Hola</a>
                    </form> 
                    
                    <main class="main col">
                        <iframe name="ContenedorPago" style="height:100%; width:100%;"></iframe>
                    </main>
                        
                    
                    </div>
                </div>      
         </section>          
                    
                   
    </body>
</html>
