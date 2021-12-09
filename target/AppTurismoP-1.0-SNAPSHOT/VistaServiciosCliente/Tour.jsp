<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    
    <script src="Css/js/sweetalert.min.js" type="text/javascript"></script>
    
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
                        <a href="ControladorVistaCliente?accion=ArriendosSesion" class="px-4  d-flex align-items-center text-center">
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
        <!-- encabezado -->
        <section class="">
                <div class="d-flex justify-content-center my-4">
                    <div class="col-5 d-flex ">
                        <div class="d-flex flex-column ">
                            <div class="">
                                <h1 class="titulo1">Tour borde costero</h1>
                            </div>
                            <div class="">
                                <a href="#" id="link1">Viña del mar y valparaiso</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 d-flex flex-column ms-3">
                        <div class="d-flex justify-content-end align-items-center">
                            <span class="titulo1">$24.000
                                <span class="texto-precio">xPersona</span>      
                            </span>
                        </div>
                        <div class="d-flex justify-content-end align-items-center ">
                            <a href="ControladorVistaCliente?accion=ServiTour2" class="btn-precio btn  px-3 py-2 ">
                                <span>Alquilar</span>
                            </a>
                        </div>
                    </div>
                    
                </div>
            </div>
        </section>
        <!-- Galeria -->
        <section>
            <div class="container mb-5" >
                <div class="row">
                    <div class="col-12 d-flex justify-content-center">
                        <div class="col-6  ">
                            <!-- Imagen 1 -->
                            <div class="m-1">
                                <a href="#">
                                    <img src="Css/img/vinna_del_mar_servicio.jpg" class="d-block w-100" alt="alt"/>
                                </a>
                            </div>    
                        </div>
                        
                        <div class="col-3 d-flex flex-column">
                            <!-- Imagen 2 -->
                            <div class="m-1 ">
                                <a href="#">
                                    <img src="Css/img/vina-del-mar-263227_640.jpg" class="d-block w-100" alt="alt"/>
                                    
                                </a>
                            </div>
                            <!-- Imagen 3 -->
                            <div class="m-1 ">
                                <a href="#">
                                    <img src="Css/img/viña-del-mar_tour_2.jpg" class="d-block w-100" alt="alt"/>
                                    
                                </a>
                            </div> 
                        </div>
                        
                        <div class="col-3 d-flex flex-column">
                            <!-- Imagen 4 -->
                            <div class="m-1 ">
                                <a href="#">
                                    <img src="Css/img/bus_tour.jpg" class="d-block w-100" alt="alt"/>
                                    
                                </a>
                            </div>
                            <!-- Imagen 5 -->
                            <div class="m-1 ">
                                <a href="#">
                                    <img src="Css/img/room5.jpg" class="d-block w-100" alt="alt"/>
                                </a>
                            </div>
                        </div>
                        
                        
                        
                    </div>
                </div>
             
            </div>
        </section>
        
        
        <!-- Caracteristicas -->
        <section>

            
      
            <div class=" mb-3">
                <!-- seccion 1 -->
                
                <div class='container mb-4'>
                    <div class-='row '>
                        <div class=' col-12 d-flex justify-content-start '>
                            <div class=' d-flex icono-departamento me-3 align-items-center '>
                             <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-house-door" viewBox="0 0 16 16">
                                <path d="M8.354 1.146a.5.5 0 0 0-.708 0l-6 6A.5.5 0 0 0 1.5 7.5v7a.5.5 0 0 0 .5.5h4.5a.5.5 0 0 0 .5-.5v-4h2v4a.5.5 0 0 0 .5.5H14a.5.5 0 0 0 .5-.5v-7a.5.5 0 0 0-.146-.354L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.354 1.146zM2.5 14V7.707l5.5-5.5 5.5 5.5V14H10v-4a.5.5 0 0 0-.5-.5h-3a.5.5 0 0 0-.5.5v4H2.5z"/>
                             </svg>

                            </div>
                            <div class=" d-flex flex-column ">
                                <p class="texto-icono mb-0"></p>
                                <div class="d-flex">
                                    <span class="texto-span">perfectamente equipadas y en perfecto estado</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- seccion 2 -->
                <div class='container mb-4'>
                    <div class-='row '>
                        <div class=' col-12 d-flex justify-content-start align-items-center '>
                            <div class=' d-flex icono-departamento me-3 '>
                             <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt" viewBox="0 0 16 16">
                                <path d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z"/>
                                <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                             </svg>

                            </div>
                            <div class=" d-flex flex-column   ">
                                <p class="texto-icono mb-0">Ubicación fantástica</p>
                                <div class="d-flex">
                                    <span class="texto-span">Centros comerciales y playas cercanas</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- seccion 3 -->
                <div class='container caracteristicas pb-4 mb-4'>
                    <div class-='row '>
                        <div class=' col-8 d-flflexex justify-content-start '>
                            <div class=' d- icono-departamento me-3 align-items-center '>
                             <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-router" viewBox="0 0 16 16">
                                <path fill-rule="evenodd" d="M5.525 3.025a3.5 3.5 0 0 1 4.95 0 .5.5 0 1 0 .707-.707 4.5 4.5 0 0 0-6.364 0 .5.5 0 0 0 .707.707ZM6.94 4.44a1.5 1.5 0 0 1 2.122 0 .5.5 0 0 0 .707-.707 2.5 2.5 0 0 0-3.536 0 .5.5 0 0 0 .707.707ZM2.974 2.342a.5.5 0 1 0-.948.316L3.806 8H1.5A1.5 1.5 0 0 0 0 9.5v2A1.5 1.5 0 0 0 1.5 13H2a.5.5 0 0 0 .5.5h2A.5.5 0 0 0 5 13h6a.5.5 0 0 0 .5.5h2a.5.5 0 0 0 .5-.5h.5a1.5 1.5 0 0 0 1.5-1.5v-2A1.5 1.5 0 0 0 14.5 8h-2.306l1.78-5.342a.5.5 0 1 0-.948-.316L11.14 8H4.86L2.974 2.342ZM6.5 9h8a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-.5.5h-13a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 1 .5-.5h5Zm-4 2a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1Zm4.5-.5a.5.5 0 1 0 1 0 .5.5 0 0 0-1 0Zm2.5.5a.5.5 0 1 1 0-1 .5.5 0 0 1 0 1Zm1.5-.5a.5.5 0 1 0 1 0 .5.5 0 0 0-1 0Zm2 0a.5.5 0 1 0 1 0 .5.5 0 0 0-1 0Zm-4.5-5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0Z"/>
                             </svg>

                            </div>
                            <div class=" d-flex flex-column ">
                                <p class="texto-icono mb-0 ">Wifi</p>
                                <div class="d-flex">
                                    <span class="texto-span ">Los huespedes suelen buscar este popular servicio</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </section>   
        
        <!-- Caracteristicas 2 -->
        <section>
            <div class="container">
                <div class="row">
                    <div class="col mb-3">
                        <h4>Lo que este lugar ofrece</h3>
                    </div>
                </div>
                <div class="row mb-3">
                    <div class="">
                        <div class="col-12 d-flex">
                            <div class="col-4 d-flex">
                                <div class="me-2 mb-3">
                                    <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="M26 1a5 5 0 0 1 5 5c0 6.389-1.592 13.187-4 14.693V31h-2V20.694c-2.364-1.478-3.942-8.062-3.998-14.349L21 6l.005-.217A5 5 0 0 1 26 1zm-9 0v18.118c2.317.557 4 3.01 4 5.882 0 3.27-2.183 6-5 6s-5-2.73-5-6c0-2.872 1.683-5.326 4-5.882V1zM2 1h1c4.47 0 6.934 6.365 6.999 18.505L10 21H3.999L4 31H2zm14 20c-1.602 0-3 1.748-3 4s1.398 4 3 4 3-1.748 3-4-1.398-4-3-4zM4 3.239V19h3.995l-.017-.964-.027-.949C7.673 9.157 6.235 4.623 4.224 3.364l-.12-.07zm19.005 2.585L23 6l.002.31c.045 4.321 1.031 9.133 1.999 11.39V3.17a3.002 3.002 0 0 0-1.996 2.654zm3.996-2.653v14.526C27.99 15.387 29 10.4 29 6a3.001 3.001 0 0 0-2-2.829z"></path></svg>
                                </div>
                                <div>
                                    <span>Traslado desde punto de encuentro</span>
                                </div>
                            </div>

                            <div class="col-4 d-flex">
                                <div class="me-2 mb-3">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-wifi" viewBox="0 0 16 16">
          <path d="M15.384 6.115a.485.485 0 0 0-.047-.736A12.444 12.444 0 0 0 8 3C5.259 3 2.723 3.882.663 5.379a.485.485 0 0 0-.048.736.518.518 0 0 0 .668.05A11.448 11.448 0 0 1 8 4c2.507 0 4.827.802 6.716 2.164.205.148.49.13.668-.049z"/>
          <path d="M13.229 8.271a.482.482 0 0 0-.063-.745A9.455 9.455 0 0 0 8 6c-1.905 0-3.68.56-5.166 1.526a.48.48 0 0 0-.063.745.525.525 0 0 0 .652.065A8.46 8.46 0 0 1 8 7a8.46 8.46 0 0 1 4.576 1.336c.206.132.48.108.653-.065zm-2.183 2.183c.226-.226.185-.605-.1-.75A6.473 6.473 0 0 0 8 9c-1.06 0-2.062.254-2.946.704-.285.145-.326.524-.1.75l.015.015c.16.16.407.19.611.09A5.478 5.478 0 0 1 8 10c.868 0 1.69.201 2.42.56.203.1.45.07.61-.091l.016-.015zM9.06 12.44c.196-.196.198-.52-.04-.66A1.99 1.99 0 0 0 8 11.5a1.99 1.99 0 0 0-1.02.28c-.238.14-.236.464-.04.66l.706.706a.5.5 0 0 0 .707 0l.707-.707z"/>
        </svg>
                                </div>
                                <div>
                                    <span>Wifi</span>
                                </div>
                            </div>
                            
                        </div>
                        
                        <div class="col-12 d-flex">
                            <div class="col-4 d-flex">
                                <div class="me-2 mb-3">
                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-tv" viewBox="0 0 16 16">
          <path d="M2.5 13.5A.5.5 0 0 1 3 13h10a.5.5 0 0 1 0 1H3a.5.5 0 0 1-.5-.5zM13.991 3l.024.001a1.46 1.46 0 0 1 .538.143.757.757 0 0 1 .302.254c.067.1.145.277.145.602v5.991l-.001.024a1.464 1.464 0 0 1-.143.538.758.758 0 0 1-.254.302c-.1.067-.277.145-.602.145H2.009l-.024-.001a1.464 1.464 0 0 1-.538-.143.758.758 0 0 1-.302-.254C1.078 10.502 1 10.325 1 10V4.009l.001-.024a1.46 1.46 0 0 1 .143-.538.758.758 0 0 1 .254-.302C1.498 3.078 1.675 3 2 3h11.991zM14 2H2C0 2 0 4 0 4v6c0 2 2 2 2 2h12c2 0 2-2 2-2V4c0-2-2-2-2-2z"/>
        </svg>
                                </div>
                                <div>
                                    <span>Guía</span>
                                </div>
                            </div>
                            <div class="col-4 d-flex">
                                <div class="me-2 mb-3">
                                    <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="M17 1v4.03l4.026-2.324 1 1.732L17 7.339v6.928l6-3.464V5h2v4.648l3.49-2.014 1 1.732L26 11.381l4.026 2.325-1 1.732L24 12.535l-6 3.464 6 3.465 5.026-2.902 1 1.732L26 20.618l3.49 2.016-1 1.732L25 22.351V27h-2v-5.804l-6-3.465v6.929l5.026 2.902-1 1.732L17 26.97V31h-2v-4.031l-4.026 2.325-1-1.732L15 24.66v-6.929l-6 3.464V27H7v-4.65l-3.49 2.016-1-1.732 3.489-2.016-4.025-2.324 1-1.732 5.025 2.901 6-3.464-6-3.464-5.025 2.903-1-1.732L6 11.38 2.51 9.366l1-1.732L7 9.648V5h2v5.803l6 3.464V7.339L9.974 4.438l1-1.732L15 5.03V1z"></path></svg>
                                </div>
                                <div>
                                    <span>Bebidas</span>
                                </div>
                            </div>
                        </div>
                        
                        
                        
                   
                      
                    </div>
                </div>
            </div>
               
        </section>