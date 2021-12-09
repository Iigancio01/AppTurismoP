<%@page import="Modelo.Servicios"%>
<%@page import="ModeloDAO.ServiciosDAO"%>
<%@page import="ModeloDAO.ArriendoDAO"%>
<%@page import="java.sql.Connection"%>
<%@page import="Config.Conexion"%>
<%@page import="oracle.jdbc.OracleCallableStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="oracle.jdbc.OracleTypes"%>
<%@page import="java.sql.CallableStatement"%>
<%@page import="Modelo.Arriendo"%>
<%@page import="Modelo.PagoKiphuT"%>
<%@page import="Modelo.UrlKhipu"%>
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
    <link href="Css/bootstrap/StylePayment.css" rel="stylesheet" type="text/css"/>
    
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
                       
        <section class="">
                      
               
            <article class="card">
             <div class="container">
                    <div class="card-title">
                            <h2>Pagar</h2>
                    </div>
                    <div class="card-body">
                            <div class="payment-type">
                                    <h4>Selecciona el metodo de pago</h4>
                                    <div class="types flex justify-space-between">
                                            <div class="type">
                                                    <div class="logo">
                                                            <i class="far fa-credit-card"></i>
                                                    </div>
                                                    <div class="text">
                                                            <p>Pagar con debito</p>
                                                    </div>
                                            </div>
                                            <div class="type selected">
                                                    <div class="logo">
                                                            <i class="logo"></i>
                                                            <img src="https://s3.amazonaws.com/static.khipu.com/buttons/2015/50x25-purple.png">
                                                    </div>
                                                    <div class="text">
                                                            <p>Pagar con Khipu</p>
                                                    </div>
                                            </div>
                                            <div class="type">
                                                    <div class="logo">
                                                            <i class="fab fa-amazon"></i>
                                                    </div>
                                                    <div class="text">
                                                            <p>Otro metodo de pago</p>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
                            <div class="align-items-center">
                               
                                    
                            </div>
                    </div>
                    <div class="card-actions flex justify-space-between">
                            <div class="flex-start">
                                    <button class="button button-secondary">Volver</button>
                            </div>
                            <%
                                
                                UrlKhipu Rurl = new UrlKhipu();
                                PagoKiphuT pago = new PagoKiphuT();
                               
               
                ServiciosDAO servDAO = new ServiciosDAO();
                Servicios mon=(Servicios)servDAO.monto();
            
                                String NombreT="Tour borde costero";
                                
                               int monto =mon.getMonto();
                                System.out.println("pago1:"+monto);
                    
                            %>
                            <div class="flex-end">
                                        
                                <a href="<%= pago.Pagar(NombreT, monto).getPaymentUrl() %>" name="PagoKhipuT">
                                <img border="0"  src="https://s3.amazonaws.com/static.khipu.com/buttons/2015/150x50-transfer.png" width="150" height="50">
</a>
                                 
                            </div>
                    </div>
            </div>
    </article>
     
                </div>
        </section>
    </body>