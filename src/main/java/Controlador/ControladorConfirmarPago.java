/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import ModeloDAO.ArriendoDAO;
import ModeloDAO.ServiciosDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author avata
 */
public class ControladorConfirmarPago extends HttpServlet {
    ArriendoDAO arriDAO= new ArriendoDAO();
    ServiciosDAO servDAO= new ServiciosDAO();
    
    String inicio= "InicioCliente.jsp";
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
        
        if(action.equalsIgnoreCase("PagoExitoso")){
            
            arriDAO.validarArriendo();
            acceso =inicio;
            
            
        }if(action.equalsIgnoreCase("PagoExitoso2")){
            
            servDAO.validarTour();
            acceso =inicio;
            
            
        }if(action.equalsIgnoreCase("PagoCancelado")){
            
            arriDAO.eliminaArriendo();
            
            acceso =inicio;
        }if(action.equalsIgnoreCase("PagoCancelado2")){
            
            servDAO.eliminaTour();
            
            acceso =inicio;
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
