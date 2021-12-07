/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Servicios;
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
public class ControladorServicios extends HttpServlet {

    String ListarServicios="VistaServicios/ListarServicios.jsp";
    String AgregarServicio="VistaServicios/AddServicio.jsp";
    String EditarServicio="VistaServicios/EditServicio.jsp";
    
    Servicios se = new Servicios();
    
    ServiciosDAO seDAO = new ServiciosDAO();
    
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
        
        if(action.equalsIgnoreCase("ListarServicios")){
            
            acceso=ListarServicios;
            
        }else if(action.equalsIgnoreCase("agregarServicioV")){
            
            acceso=AgregarServicio;
            
        }else if(action.equalsIgnoreCase("eliminarServicio")){
            
            String IdSubFamiliaServicio=request.getParameter("IdSubFamiliaServicio");
            se.setIdSubFamiliaServicio(IdSubFamiliaServicio);
            seDAO.deleteServicio(IdSubFamiliaServicio);
            acceso=ListarServicios;
            
        }else if(action.equalsIgnoreCase("agregarServicio")){
            
            String IdSubFamiliaServicio=request.getParameter("txtIdSubFamiliaServicio");
            String IdFamiliaServicio=request.getParameter("txtIdFamiliaServicio");
            String NombreSubFamilia=request.getParameter("txtNombreSubFamilia");

            se.setIdSubFamiliaServicio(IdSubFamiliaServicio);
            se.setIdFamiliaServicio(IdFamiliaServicio);
            se.setNombreSubFamilia(NombreSubFamilia);

            seDAO.addServicios(se);
            
            acceso=ListarServicios;
            
        }else if(action.equalsIgnoreCase("editServicio")){
            request.setAttribute("IdSubFamiliaServicio", request.getParameter("IdSubFamiliaServicio"));
            acceso=EditarServicio;        
        }else if(action.equalsIgnoreCase("actualizarServicio")){
            
            String IdSubFamiliaServicio=request.getParameter("txtIdSubFamiliaServicio");
            String IdFamiliaServicio=request.getParameter("txtIdFamiliaServicio");
            String NombreSubFamilia=request.getParameter("txtNombreSubFamilia");

            se.setIdSubFamiliaServicio(IdSubFamiliaServicio);
            se.setIdFamiliaServicio(IdFamiliaServicio);
            se.setNombreSubFamilia(NombreSubFamilia);
            
            seDAO.editServicio(se);
            acceso=ListarServicios;
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
