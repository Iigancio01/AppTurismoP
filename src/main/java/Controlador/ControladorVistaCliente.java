/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Modelo.PagoKhipu;
import Modelo.UrlKhipu;
import com.khipu.ApiException;
import java.util.logging.Level;
import java.util.logging.Logger;



/**
 *
 * @author avata
 */
public class ControladorVistaCliente extends HttpServlet {

    String Farriendo="VistaArriendo/ArriendoCliente.jsp";
    String ArriendosS="VistaArriendo/Arriendo.jsp";
    String DepartamentoS="VistaArriendo/Departamento.jsp";
    String pagoA="VistaArriendo/PagarKhipu.jsp";
    String ServiEx="VistaServiciosCliente/ListaServiciosCliente.jsp";
    String ServiTour="VistaServiciosCliente/Tour.jsp";
    String url;
   
    
    UrlKhipu Rurl = new UrlKhipu();
    PagoKhipu pago = new PagoKhipu();
    
  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
        String acceso="";
        String action=request.getParameter("accion");
        
        if(action.equalsIgnoreCase("ArriendosSesion")){
            acceso=ArriendosS;
        }else if(action.equalsIgnoreCase("ArrendarDpto")){
         
            acceso=Farriendo;
        }else if(action.equalsIgnoreCase("DepartamentoSesion")){
            
            acceso=DepartamentoS;
        }else if(action.equalsIgnoreCase("MetodoPago")){
        

            
                //url = pagar.CrearPago().getPaymentUrl();
                
                //pago.Pagar();
                
                //System.out.println("url "+url);
            
           
             
            acceso=pagoA;
        }else if(action.equalsIgnoreCase("ServiciosExtraLista")){
            
            acceso=ServiEx;
        }else if(action.equalsIgnoreCase("ServicioTour")){
            
            acceso=ServiTour;
        }
        
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
