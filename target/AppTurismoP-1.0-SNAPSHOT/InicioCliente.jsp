<html lang="es">
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
   
</head>
<body >
    <header class="">
        <div class="container-fluid ">
            <div class="row py-2">
                <!-- Logo -->
                <div class="col-5 d-flex">
                    <a href="/AppTurismoP/" class="logo me-2">
                        <strong >Turismo Real Cl</strong>
                    </a>

                </div>
                <!-- Enlaces -->
                <div class="col-12 justify-content-center  col-md-7 enlaces d-flex text-end justify-content-md-end pe-md-5">
                    <div class="menu-enlaces d-flex align-items-center">
                        <a href="ControladorVistaCliente?accion=ServiciosExtraLista" method="POST" class="px-4  d-flex align-items-center text-center" >
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
    <!-- Seccion Bienvenidos -->
    <section class="container-fluid bienvenido align-items-center">
        <div class="row g-0 ms-xl-5 py-5 bienvenido-a">
            <div class="col-12 justify-content-center d-flex justify-content-xxl-start align-items-center text-center text-white mb-4 ">
                <h2 class="titulo">Bienvenido a Turismo Real tu portal de arriendos 100% Chileno</h2>
            </div>
            <div class="row">
                <div class="col-12 col-xxl-6 d-flex flex-column  justify-content-center text-center text-white texto ">
                    <p class="mb-2">Somos una empresa familiar dedicada al arriendo de departamentos y otros servicios turisticos de interes como tours y transporte en diversas zonas del pais, como empresa familiar contamos con 10 años en el mercado y de a poco nos hemos hecho conocidos por la calidad de nuestros departamentos, ubicacion y el trato gentil hacia nuestros clientes.</p>
                    <p class="">Actualmente contamos con departamentos ubicados en las mayores zonas turisticas de todo Chile. </p>
                </div>
                <div class="col-12 d-flex justify-content-center  col-xxl-6  justify-content-xxxl-end foto mb-3 ">
                 
                    <img src="Css/img/articles-4645_imagen_portada.thumb_i_principal.jpg" class="rounded foto-bienvenido" alt=""/>
                </div>

            </div>
        </div>
    </section>
    <!-- Seccion Te Ayudamos -->
    <section class="container-fluid ayudamos">
        <div class="row  px-5 d-flex justify-content-center align-items-center ayudamos-container">
            <div class="col-12 col-xl-6 mb-5 ">
                <div class="text-center">
                    <h3 class="titulo1">¿Te Ayudamos a encontrar el mejor departamento?</h3>
                    <hr hidden>
                    <p class="texto-ofertas">Mira todas las ofertas en departamentos disponibles en turismo real</p>
                
                </div>
                <div class="text-center">
                    <a href="#" class="btn-comenzar btn  px-3 py-2 ">
                        <span>Comenzar</span>
                    </a>

                </div>
            </div>
            <div class="col-12 col-xl-6 d-flex justify-content-center   text-center  foto mb-3">
                
                <img src="Css/img/d2.jpg" class="rounded-3" alt=""/>
            </div>
            
        </div>

    </section>

    <!-- Galeria -->
    <section class="container-fluid galeria">
        <div class="row galeria">
            <div class="col-12 py-5 escoje">
                <h3 class="mt-3 titulo2 text-center">Escoje donde quieres ir</h3>
                <p class="parrafo text-center ">¿A que lugar de chile estas pensando en ir? Encuntra las mejores ofertas en departamentos en las regiones mas turisticas de chile : Viña del Mar, Coquimbo, Pucón, Puerto Varas y mas. </p>

            </div>
        </div>
    </section>

    <!-- Imagenes -->
    <section class="container">
        <div class="row contenedor-galeria px-4 mb-5">
            <div class="col-12 col-md-6 col-lg-4 imagen-contenedor mb-4" id='img1'>
                <a href="#">
                        <img src="Css/img/vina-del-mar-263227_640.jpg" class="d-block w-100" alt=""/>
                </a>
                <div class="texto-imagen">
                        
                    <h3 class="texto1">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                        </svg>
                            Viña del Mar
                    </h3>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-4 imagen-contenedor mb-4" id='img2'>
                <a href="#">
                    <img src="Css/img/coquimbo.jpg" class="d-block w-100" alt=""/>
                </a>
                <div class="texto-imagen">
                        
                    <h3 class="texto1">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                        </svg>
                            Coquimbo
                    </h3>
                </div>
            </div>

            <div class="col-12 col-md-6 col-lg-4 imagen-contenedor mb-4" id='img3'>
                <a href="#">
                    
                    <img src="Css/img/pucon.png" class="d-block w-100" alt=""/>
                </a>
                <div class="texto-imagen">
                        
                    <h3 class="texto1">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                        </svg>
                        Pucón  
                    </h3>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-4 imagen-contenedor mb-4" id='img4'>
                <a href="#">
                        
                        <img src="Css/img/vina-del-mar-263227_640.jpg" class="d-block w-100" alt=""/>
                </a>
                <div class="texto-imagen">
                        
                    <h3 class="texto1">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                        </svg>
                            Viña del Mar
                    </h3>
                </div>
            </div>
            <div class="col-12 col-md-6 col-lg-4 imagen-contenedor mb-4" id='img5'>
                <a href="#">
                    <img src="Css/img/coquimbo.jpg" class="d-block w-100" alt=""/>
                </a>
                <div class="texto-imagen">
                        
                    <h3 class="texto1">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                        </svg>
                            Coquimbo
                    </h3>
                </div>
            </div>

            <div class="col-12 col-md-6 col-lg-4 imagen-contenedor mb-4" id='img6'>
                <a href="#">
                    
                    <img src="Css/img/pucon.png" class="d-block w-100" alt=""/>
                </a>
                <div class="texto-imagen">
                        
                    <h3 class="texto1">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-geo-alt-fill" viewBox="0 0 16 16">
                            <path d="M8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10zm0-7a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"/>
                        </svg>
                        Pucón  
                    </h3>
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
                        <li><a href="#">Quiénes Somos</a></li>
                        <li><a href="#">Contáctanos</a></li>
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