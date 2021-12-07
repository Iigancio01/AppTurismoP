/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Mantencion;
import ModeloDAO.MantencionDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class ControladorMantencion extends HttpServlet {
    
    String listarDepMantencion="VistasDpto/ListaDepMantencion.jsp";
    String listarDepSinMantencion="VistasDpto/DepSinMantencion.jsp";
    String agregarMantenimiento="VistasDpto/AddMantencion.jsp";
            
    Mantencion man = new Mantencion();
    
    MantencionDAO manDAO = new MantencionDAO();
  
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
        
        if(action.equalsIgnoreCase("listarDepMantencion")){
            acceso=listarDepMantencion;
            
        }else if(action.equalsIgnoreCase("listarDepSinMantencion")){
            acceso=listarDepSinMantencion;
        
        }else if(action.equalsIgnoreCase("AgregarMantenimiento")){
            request.setAttribute("IdDepartamento", request.getParameter("IdDepartamento"));
            acceso=agregarMantenimiento;
            
        }else if(action.equalsIgnoreCase("NuevoMantenimiento")){
            
            String IdMantencion=request.getParameter("txtIdMantenimiento");
            String IdDepartamento=request.getParameter("txtIdDep");
            String FechaM=request.getParameter("txtfechainicio");

            man.setIdMantencion(IdMantencion);
            man.setIdDepartmentoM(IdDepartamento);
            man.setFechaM(FechaM.replace('T',' '));

            manDAO.addDpto(man);
            
            acceso=listarDepMantencion;
            
        }else if(action.equalsIgnoreCase("EliminarMantenimiento")){
            
            String IdMantencion=request.getParameter("IdMantencion");
            man.setIdMantencion(IdMantencion);
            manDAO.deleteMantenimientoDpto(IdMantencion);
            
            acceso=listarDepMantencion;
            
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
