
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
                        <a href="ControladorVistaCliente?accion=ArriendosSesion" class="px-4  d-flex align-items-center text-center">
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
        <!-- encabezado -->
        <section class="">
                <div class="d-flex justify-content-center my-4">
                    <div class="col-5 d-flex ">
                        <div class="d-flex flex-column ">
                            <div class="">
                                <h1 class="titulo1">Departamento en Coquimbo 3 habitaciones</h1>
                            </div>
                            <div class="">
                                <a href="#" id="link1">Coquimbo, Region de Coquimbo, Chile</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 d-flex flex-column ms-3">
                        <div class="d-flex justify-content-end align-items-center">
                            <span class="titulo1">$45.000
                                <span class="texto-precio">Por noche</span>      
                            </span>
                        </div>
                        <div class="d-flex justify-content-end align-items-center ">
                            <a href="ControladorVistaCliente?accion=ArrendarDpto" class="btn-precio btn  px-3 py-2 ">
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
                                    <img src="Css/img/room1.jpg" class="d-block w-100" alt="alt"/>
                                </a>
                            </div>    
                        </div>
                        
                        <div class="col-3 d-flex flex-column">
                            <!-- Imagen 2 -->
                            <div class="m-1 ">
                                <a href="#">
                                    <img src="Css/img/room2.jpg" class="d-block w-100" alt="alt"/>
                                </a>
                            </div>
                            <!-- Imagen 3 -->
                            <div class="m-1 ">
                                <a href="#">
                                    <img src="Css/img/room3.jpg" class="d-block w-100" alt="alt"/>
                                </a>
                            </div> 
                        </div>
                        
                        <div class="col-3 d-flex flex-column">
                            <!-- Imagen 4 -->
                            <div class="m-1 ">
                                <a href="#">
                                    <img src="Css/img/room4.jpg" class="d-block w-100" alt="alt"/>
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
                                <p class="texto-icono mb-0">3 habitaciones</p>
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
                        <div class=' col-8 d-flex justify-content-start '>
                            <div class=' d-flex icono-departamento me-3 align-items-center '>
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
                                    <span>Cocina</span>
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
                                    <span>TV</span>
                                </div>
                            </div>
                            <div class="col-4 d-flex">
                                <div class="me-2 mb-3">
                                    <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="M17 1v4.03l4.026-2.324 1 1.732L17 7.339v6.928l6-3.464V5h2v4.648l3.49-2.014 1 1.732L26 11.381l4.026 2.325-1 1.732L24 12.535l-6 3.464 6 3.465 5.026-2.902 1 1.732L26 20.618l3.49 2.016-1 1.732L25 22.351V27h-2v-5.804l-6-3.465v6.929l5.026 2.902-1 1.732L17 26.97V31h-2v-4.031l-4.026 2.325-1-1.732L15 24.66v-6.929l-6 3.464V27H7v-4.65l-3.49 2.016-1-1.732 3.489-2.016-4.025-2.324 1-1.732 5.025 2.901 6-3.464-6-3.464-5.025 2.903-1-1.732L6 11.38 2.51 9.366l1-1.732L7 9.648V5h2v5.803l6 3.464V7.339L9.974 4.438l1-1.732L15 5.03V1z"></path></svg>
                                </div>
                                <div>
                                    <span>Aire acondicionado</span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-12 d-flex">
                            <div class="col-4 d-flex">
                                <div class="me-2 mb-3">
                                    <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="M30 1a1 1 0 0 1 .993.883L31 2v28a1 1 0 0 1-.883.993L30 31H2a1 1 0 0 1-.993-.883L1 30V2a1 1 0 0 1 .883-.993L2 1zM3 3v26h12V3zm7 9v6.585l1.793-1.792 1.414 1.414-3.5 3.5a1 1 0 0 1-1.32.083l-.094-.083-3.5-3.5 1.414-1.414L8 18.585V12zm12.387-1.497a1 1 0 0 1 1.226 0l.094.083 3.5 3.5-1.414 1.414L24 13.707V20h-2v-6.293L20.207 15.5l-1.414-1.414 3.5-3.5zM17 29h12V3H17z"></path></svg>
                                </div>
                                <div>
                                    <span>Ascensor</span>
                                </div>
                            </div>
                            <div class="col-4 d-flex">
                                <div class="me-2 mb-3">
                                    <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="M29 3a2 2 0 0 1 1.995 1.85L31 5v22a2 2 0 0 1-1.85 1.995L29 29H3a2 2 0 0 1-1.995-1.85L1 27V5a2 2 0 0 1 1.85-1.995L3 3zm0 2H3v22h26zm-6 2v18H5V7zm-2 2H7v14l3 .001a4.975 4.975 0 0 1-.992-2.721L9 20v-3h10v3a4.978 4.978 0 0 1-1 3.001L21 23zm-4 10h-6v1a3 3 0 0 0 2.65 2.98l.174.015L14 23a3 3 0 0 0 2.995-2.824L17 20zm9-8a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm0-4a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"></path></svg>
                                </div>
                                <div>
                                    <span>Microondas</span>
                                </div>
                            </div>
                        </div>
                        
                        <div class="col-12 d-flex caracteristicas ">
                            <div class="col-4 d-flex">
                                <div class="me-2 mb-3">
                                    <svg class="bk-icon -iconset-parking_sign hp__important_facility_icon" height="24" width="24" viewBox="0 0 128 128" role="presentation" aria-hidden="true" focusable="false"><path d="M70.8 44H58v16h12.8a8 8 0 0 0 0-16z"></path><path d="M108 8H20A12 12 0 0 0 8 20v88a12 12 0 0 0 12 12h88a12 12 0 0 0 12-12V20a12 12 0 0 0-12-12zM70 76H58v24H42V28h28a24 24 0 0 1 0 48z"></path></svg>
                                </div>
                                <div>
                                    <span>Estacionamiento</span>
                                </div>
                            </div>
                            <div class="col-4 d-flex  ">
                                <div class="me-2 mb-5">
                                    <svg viewBox="0 0 32 32" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" role="presentation" focusable="false" style="display: block; height: 24px; width: 24px; fill: currentcolor;"><path d="M16 32c6.627 0 12-5.373 12-12 0-6.218-3.671-12.51-10.924-18.889L16 .18l-1.076.932C7.671 7.491 4 13.782 4 20c0 6.577 5.397 12 12 12zm0-2c-5.496 0-10-4.525-10-10 0-5.327 3.115-10.882 9.424-16.65l.407-.37.169-.149.576.518c6.043 5.526 9.156 10.855 9.407 15.977l.013.34L26 20c0 5.523-4.477 10-10 10zm-3.452-5.092a8.954 8.954 0 0 1 2.127-4.932l.232-.26.445-.462a6.973 6.973 0 0 0 1.827-4.416l.007-.306-.006-.307-.007-.11a6.03 6.03 0 0 0-2.009-.057 4.979 4.979 0 0 1-1.443 4.008 10.951 10.951 0 0 0-2.87 5.016 6.034 6.034 0 0 0 1.697 1.826zM16 26l.253-.005.25-.016-.003-.137c0-1.32.512-2.582 1.464-3.533a10.981 10.981 0 0 0 3.017-5.656 6.026 6.026 0 0 0-1.803-1.743 8.971 8.971 0 0 1-2.172 5.493l-.228.255-.444.462a6.96 6.96 0 0 0-1.827 4.415l-.006.276c.48.123.982.189 1.499.189z"></path></svg>
                                </div>
                                <div>
                                    <span>Agua caliente</span>
                                </div>
                            </div>
                        </div>
                      
                    </div>
                </div>
            </div>
               
        </section>
            
            

            
            
            
            
        
                       
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <footer class="container-fluid">
            <div class="row footer-contenido d-flex justify-content-center align-items-start py-5">
                <!-- Redes Sociales -->
                <div class="col-12 col-lg-5 text-white justify-content-lg-end">
                    <div class="text-center">
                        <h2 class="">Turismo real</h2>
                        <p>El sitio web de arriendo de departamentos 100% Chileno.</p>
                    </div>
                    <div class="redes-sociales text-center">
                        <a href="#" class="icono twitter d-inline-flex align-items-center justify-content-center">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-twitter" viewBox="0 0 16 16">
                                <path d="M5.026 15c6.038 0 9.341-5.003 9.341-9.334 0-.14 0-.282-.006-.422A6.685 6.685 0 0 0 16 3.542a6.658 6.658 0 0 1-1.889.518 3.301 3.301 0 0 0 1.447-1.817 6.533 6.533 0 0 1-2.087.793A3.286 3.286 0 0 0 7.875 6.03a9.325 9.325 0 0 1-6.767-3.429 3.289 3.289 0 0 0 1.018 4.382A3.323 3.323 0 0 1 .64 6.575v.045a3.288 3.288 0 0 0 2.632 3.218 3.203 3.203 0 0 1-.865.115 3.23 3.23 0 0 1-.614-.057 3.283 3.283 0 0 0 3.067 2.277A6.588 6.588 0 0 1 .78 13.58a6.32 6.32 0 0 1-.78-.045A9.344 9.344 0 0 0 5.026 15z"/>
                            </svg>
                        </a>
                        <a href="#" class="icono instagram d-inline-flex align-items-center justify-content-center">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-instagram" viewBox="0 0 16 16">
                                <path d="M8 0C5.829 0 5.556.01 4.703.048 3.85.088 3.269.222 2.76.42a3.917 3.917 0 0 0-1.417.923A3.927 3.927 0 0 0 .42 2.76C.222 3.268.087 3.85.048 4.7.01 5.555 0 5.827 0 8.001c0 2.172.01 2.444.048 3.297.04.852.174 1.433.372 1.942.205.526.478.972.923 1.417.444.445.89.719 1.416.923.51.198 1.09.333 1.942.372C5.555 15.99 5.827 16 8 16s2.444-.01 3.298-.048c.851-.04 1.434-.174 1.943-.372a3.916 3.916 0 0 0 1.416-.923c.445-.445.718-.891.923-1.417.197-.509.332-1.09.372-1.942C15.99 10.445 16 10.173 16 8s-.01-2.445-.048-3.299c-.04-.851-.175-1.433-.372-1.941a3.926 3.926 0 0 0-.923-1.417A3.911 3.911 0 0 0 13.24.42c-.51-.198-1.092-.333-1.943-.372C10.443.01 10.172 0 7.998 0h.003zm-.717 1.442h.718c2.136 0 2.389.007 3.232.046.78.035 1.204.166 1.486.275.373.145.64.319.92.599.28.28.453.546.598.92.11.281.24.705.275 1.485.039.843.047 1.096.047 3.231s-.008 2.389-.047 3.232c-.035.78-.166 1.203-.275 1.485a2.47 2.47 0 0 1-.599.919c-.28.28-.546.453-.92.598-.28.11-.704.24-1.485.276-.843.038-1.096.047-3.232.047s-2.39-.009-3.233-.047c-.78-.036-1.203-.166-1.485-.276a2.478 2.478 0 0 1-.92-.598 2.48 2.48 0 0 1-.6-.92c-.109-.281-.24-.705-.275-1.485-.038-.843-.046-1.096-.046-3.233 0-2.136.008-2.388.046-3.231.036-.78.166-1.204.276-1.486.145-.373.319-.64.599-.92.28-.28.546-.453.92-.598.282-.11.705-.24 1.485-.276.738-.034 1.024-.044 2.515-.045v.002zm4.988 1.328a.96.96 0 1 0 0 1.92.96.96 0 0 0 0-1.92zm-4.27 1.122a4.109 4.109 0 1 0 0 8.217 4.109 4.109 0 0 0 0-8.217zm0 1.441a2.667 2.667 0 1 1 0 5.334 2.667 2.667 0 0 1 0-5.334z"/>
                            </svg>
                        </a>
                        <a href="#" class="icono facebook d-inline-flex align-items-center justify-content-center">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-facebook" viewBox="0 0 16 16">
                                <path d="M16 8.049c0-4.446-3.582-8.05-8-8.05C3.58 0-.002 3.603-.002 8.05c0 4.017 2.926 7.347 6.75 7.951v-5.625h-2.03V8.05H6.75V6.275c0-2.017 1.195-3.131 3.022-3.131.876 0 1.791.157 1.791.157v1.98h-1.009c-.993 0-1.303.621-1.303 1.258v1.51h2.218l-.354 2.326H9.25V16c3.824-.604 6.75-3.934 6.75-7.951z"/>
                            </svg>
                        </a>
                    </div>
                </div>
               
                
                <!-- Servicios --> 
                <div class="col-6 col-lg-3 d-flex justify-content-center justify-content-lg-start  text-white ">
                    <div>
                        <h4 class="titulo-footer ">Servicios</h4>
                        <ul class="lista-footer">
                            <li><a href="#">Transporte</a></li>
                            <li><a href="#">Packs Turisticos</a></li>
                            <li><a href="#">Departamentos</a></li>
                            <li><a href="#">Zonas</a></li>
                        </ul>    
    
                    </div>
                </div>
                <!-- Nosotros -->
                <div class="col-6 col-lg-3 d-flex justify-content-center justify-content-lg-start text-white">
                    <div>
                        <h4 class="titulo-footer">Nosotros</h4>
                        <ul class="lista-footer">
                            <li><a href="#">Inicio</a></li>
                            <li><a href="#">Quienes Somos</a></li>
                            <li><a href="#">Contactanos</a></li>
                            <li><a href="#">Condiciones de Uso</a></li>
                       </ul>
    
                    </div>
                </div>
               
    
            </div>
        </footer>
        
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" 
        integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="Css/js/app.js" type="text/javascript"></script>
        
    </body>
</html>
