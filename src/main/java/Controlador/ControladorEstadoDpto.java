/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Departamentos;
import ModeloDAO.DepartamentosDAO;
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
public class ControladorEstadoDpto extends HttpServlet {

    String EstadoDptoV="VistasDpto/ListaDepDispo.jsp";
    String EstadoDptoVN="VistasDpto/DisponiDep.jsp";
    
    Departamentos dpto = new Departamentos();
    DepartamentosDAO dptoDAO = new DepartamentosDAO();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        
        
        
        
        if(action.equalsIgnoreCase("listarDepDispo")){
            acceso=EstadoDptoV;  
        }else if(action.equalsIgnoreCase("listarDepNoDispo")){
            acceso=EstadoDptoVN;    
        }
        else if(action.equalsIgnoreCase("cambiarEstadoND")){
            String IdDepartamento=request.getParameter("IdDepartamento");
            dpto.setIdDepartamento(IdDepartamento);
            dptoDAO.editDptoEstadoND(IdDepartamento);
            acceso=EstadoDptoV;
        } else if(action.equalsIgnoreCase("cambiarEstadoD")){
            String IdDepartamento=request.getParameter("IdDepartamento");
            dpto.setIdDepartamento(IdDepartamento);
            dptoDAO.editDptoEstadoD(IdDepartamento);
            acceso=EstadoDptoVN;
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
