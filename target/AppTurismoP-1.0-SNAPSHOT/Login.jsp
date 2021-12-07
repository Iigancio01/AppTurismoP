<html lang="en">
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
    <script src="https://kit.fontawesome.com/ffec4ec2ed.js" crossorigin="anonymous"></script>

</head>
<body>
    

    <header>
        <div class="container-fluid align-items-center">
            <div class="row py-2">
                <!-- Logo -->
                <div class="col-6 d-flex">
                    <a href="/AppTurismo3.0/" class="logo">
                        <strong >Turismo Real Cl</strong>
                    </a>

                </div>
                <!-- Enlaces -->
                <div class="col-12 justify-content-center  col-md-6 enlaces d-flex text-end justify-content-md-end">
                    <div class="menu-enlaces d-flex align-items-center">
                        <a href="ControladorVistaCliente?accion=ServiciosExtraLista" class="text-black px-4  d-flex align-items-center text-center" >
                            <span>Turismo</span>
                        </a>
                    </div>
                    <div class="menu-enlaces d-flex align-items-center">
                    <a href="/AppTurismo3.0/VistaArriendoNoS.jsp" class="text-black px-4  d-flex align-items-center text-center">
                        <span>Arriendos</span>
                    </a>
                    </div>
                    <div class="d-flex align-items-center">
                        <a href=""class="perfil text-white  px-4 py-2 ps-2">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person-fill" viewBox="0 0 16 16">
                                <path d="M3 14s-1 0-1-1 1-4 6-4 6 3 6 4-1 1-1 1H3zm5-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
                            </svg>
                            <span>Entrar</span>
                        </a>

                    </div>
                </div>
            </div>
        </div>
    </header>
              
    <!-- login -->
    <section>
         
        <div class="container">
                <!-- Navs 
                
                <ul class="nav nav-tabs d-flex justify-content-center mt-5">
                    <li class="nav-item nav-login">
                        <a class="nav-link active" data-bs-toggle="tab" href="#login">
                        Entrar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" data-bs-toggle="tab" href="#register">
                        Registrarse</a>
                    </li>
                </ul>
                -->
                <!-- Contenido -->

                
               
                <div class="tab-content">
                    <!-- login -->
                    <div class="tab-pane active" id="login">
                        
                        <div class="row d-flex justify-content-center">
                            <div class="col-12 col-md-8 d-flex flex-column align-items-end min-vh-100">
                                <div class="align-self-center w-100 py-5 p-4">
                                <h1 class="font-weight-bold mb-4">Iniciar sesión</h1>
                                <form action="Controlador" method="POST">
                                    <div class="mb-4" id = "email">
                                      <label for="exampleInputEmail1" class="form-label font-weight-bold">Email</label>
                                      <input name="txtemail" type="email" class="form-control bg-dark-x border-0" id="exampleInputEmail1" placeholder="Ingresa tu email" aria-describedby="emailHelp">
                                      <div class="invalid-feedback">
                                          
                                      </div>
                                    </div>
                                    <div class="mb-4" id="password">
                                      <label for="exampleInputPassword1" class="form-label font-weight-bold">Contraseña</label>
                                      <input name="txtpassword" type="password" class="form-control bg-dark-x border-0 mb-2" placeholder="Ingresa tu contraseña" id="exampleInputPassword1">
                                      <div class="invalid-feedback">

                                      </div>
                                      <a href="" id="emailHelp" class="form-text text-muted text-decoration-none">¿Has olvidado tu contraseña?</a>
                                    </div>
                                    <div class="form-group">
                                        <!--<input class="btn btn-danger bntn-block" type="submit" name="accion" value="Ingresar">-->
                                        <button name="accionLogin" type="submit" class="btn btn-entrar w-100" value="IngresarLogin">Entrar</button>
                                    </div>
                                            
                                </form>
                
                                <p class="font-weight-bold text-center text-muted">O inicia sesión con</p>
                                <div class="d-flex justify-content-around">
                                    <button type="button" class="btn btn-outline-primary flex-grow-1 mr-2"><i class="fab fa-google lead mr-2"></i> Google</button>
                                    <button type="button" class="btn btn-outline-primary flex-grow-1 ml-2"><i class="fab fa-facebook-f lead mr-2"></i> Facebook</button>
                                </div>
                                </div>
                            </div>
                            
                        </div>
                    </div>


                    <!-- Register -->
                    
                    <!--
                    <div class="tab-pane"  id="register">
                        
                        <div class="tab-pane active" name="register-form" id="login">
                            <div class="row d-flex justify-content-center">
                                <div class="col-8 d-flex flex-column align-items-end min-vh-100">
                                    <div class="align-self-center w-100 py-5 p-4">
                                    <h1 class="font-weight-bold mb-4">Registrate</h1>
                                    <form action="<?php echo base_url();?>Registro/Create" class="mb-5" method="POST">
                                        <div class="mb-4">
                                            <label for="name" class="form-label font-weight-bold">Nombre</label>
                                            <input type="text" class="form-control bg-dark-x border-0" name="username" id="name" placeholder="Ingresa tu nombre" aria-describedby="name">
                                        </div>
                                        <div class="mb-4">
                                          <label for="Email1" class="form-label font-weight-bold">Email</label>
                                          <input type="email" class="form-control bg-dark-x border-0" name="email" id="Email1" placeholder="Ingresa tu email" aria-describedby="emailHelp">
                                        </div>
                                        <div class="mb-4">
                                          <label for="Password1" class="form-label font-weight-bold">Contraseña</label>
                                          <input type="password" class="form-control bg-dark-x border-0 mb-2" placeholder="Ingresa tu contraseña" name="password" id="Password1">
                                          <a href="" id="emailHelp" class="form-text text-muted text-decoration-none">¿Has olvidado tu contraseña?</a>
                                        </div>
                                        <button type="submit" class="btn btn-entrar w-100">Registrarse</button>
                                    </form>
                    
                                    <p class="font-weight-bold text-center text-muted">O inicia sesión con</p>
                                    <div class="d-flex justify-content-around">
                                        <button type="button" class="btn btn-outline-primary flex-grow-1 mr-2"><i class="fab fa-google lead mr-2"></i> Google</button>
                                        <button type="button" class="btn btn-outline-primary flex-grow-1 ml-2"><i class="fab fa-facebook-f lead mr-2"></i> Facebook</button>
                                    </div>
                                    </div>
                                </div>
                                
                            </div>   
                    </div>
                            
                   


                </div>
            </div>
            
            -->
            <!--
            <div class="row d-flex justify-content-center">
                <div class="col-8 d-flex flex-column align-items-end min-vh-100">
                    <div class="align-self-center w-100 py-5 p-4">
                    <h1 class="font-weight-bold mb-4">Iniciar sesión</h1>
                    <form class="mb-5">
                        <div class="mb-4">
                          <label for="exampleInputEmail1" class="form-label font-weight-bold">Email</label>
                          <input type="email" class="form-control bg-dark-x border-0" id="exampleInputEmail1" placeholder="Ingresa tu email" aria-describedby="emailHelp">
                        </div>
                        <div class="mb-4">
                          <label for="exampleInputPassword1" class="form-label font-weight-bold">Contraseña</label>
                          <input type="password" class="form-control bg-dark-x border-0 mb-2" placeholder="Ingresa tu contraseña" id="exampleInputPassword1">
                          <a href="" id="emailHelp" class="form-text text-muted text-decoration-none">¿Has olvidado tu contraseña?</a>
                        </div>
                        <button type="submit" class="btn btn-entrar w-100">Entrar</button>
                    </form>
    
                    <p class="font-weight-bold text-center text-muted">O inicia sesión con</p>
                    <div class="d-flex justify-content-around">
                        <button type="button" class="btn btn-outline-primary flex-grow-1 mr-2"><i class="fab fa-google lead mr-2"></i> Google</button>
                        <button type="button" class="btn btn-outline-primary flex-grow-1 ml-2"><i class="fab fa-facebook-f lead mr-2"></i> Facebook</button>
                    </div>
                    </div>
                    <div class="text-center px-lg-5 pt-lg-3 pb-lg-4 p-4 mt-auto w-100">
                        <p class="d-inline-block mb-0">¿Todavia no tienes una cuenta?</p> <a href="" class="text-light font-weight-bold text-decoration-none">Crea una ahora</a>
                    </div>
                </div>
                
            </div>
            -->

            
            
        </div>
    </section>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="Css/js/app.js" type="text/javascript"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</body>
</html>