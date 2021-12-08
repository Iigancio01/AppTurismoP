/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Arriendo;
import ModeloDAO.ArriendoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import static java.lang.Integer.parseInt;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author avata
 */
public class ControladorArriendo extends HttpServlet {

    String VerArriendos="VistaArriendos/ListarArriendos.jsp";
    String VerArriendosEdit="VistaArriendos/ListarArriendosEdit.jsp";
    String AgregarArriendo="VistaArriendos/AddArriendo.jsp";
    String EditarArriendo="VistaArriendos/EditArriendo.jsp";
    String pagoA="VistaArriendo/PagarKhipu.jsp";
    
    Arriendo arri = new Arriendo();
    ArriendoDAO arriDAO = new ArriendoDAO();
    
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
        
        if(action.equalsIgnoreCase("ListarArriendos")){
            acceso=VerArriendos;
        }else if(action.equalsIgnoreCase("ListarArriendosEdit")){
           acceso=VerArriendosEdit; 
        }else if(action.equalsIgnoreCase("AgregarArriendo")){
            acceso=AgregarArriendo;
        }else if(action.equalsIgnoreCase("NuevoArriendo")){
            
            String IdArriendo=request.getParameter("txtIdArriendo");
            String IdDepartamento=request.getParameter("txtIdDepartamento");
            String IdMasterArriendo=request.getParameter("txtIdMasterArriendo");
            String FechaInicio=request.getParameter("txtFechaInicio");
            String FechaFin=request.getParameter("txtFechaFin");
            

            arri.setIdArriendo(IdArriendo);
            arri.setIdDepartamento(IdDepartamento);
            arri.setIdMasterArriendo(IdMasterArriendo);
            arri.setFechaInicio(FechaInicio.replace('T', ' '));
            arri.setFechaFin(FechaFin.replace('T',' '));
            
          

            arriDAO.addArriendo(arri);
            
            acceso=VerArriendosEdit;
        }else if(action.equalsIgnoreCase("editarArriendo")){
            request.setAttribute("IdArriendo", request.getParameter("IdArriendo"));
             acceso=EditarArriendo;      
        }else if(action.equalsIgnoreCase("ActualizarArriendo")){
            String IdArriendo=request.getParameter("txtIdArriendo");
            String IdDepartamento=request.getParameter("txtIdDepartamento");
            String IdMasterArriendo=request.getParameter("txtIdMasterArriendo");
            String FechaInicio=request.getParameter("txtFechaInicio");
            String FechaFin=request.getParameter("txtFechaFin");
            int Monto=parseInt(request.getParameter("txtMonto"));

            arri.setIdArriendo(IdArriendo);
            arri.setIdDepartamento(IdDepartamento);
            arri.setIdMasterArriendo(IdMasterArriendo);
            arri.setFechaInicio(FechaInicio.replace('T', ' '));
            arri.setFechaFin(FechaFin.replace('T',' '));
            arri.setMonto(Monto);
            
            arriDAO.editArriendo(arri);
            
            acceso=VerArriendosEdit;
        }else if(action.equalsIgnoreCase("eliminarArriendo")){
            String IdArriendo=request.getParameter("IdArriendo");
            arri.setIdArriendo(IdArriendo);
            arriDAO.deleteArriendo(IdArriendo);
            
            acceso=VerArriendosEdit;
            
        }else if(action.equalsIgnoreCase("NuevoArriendocli")){
            
            String IdArriendo=request.getParameter("txtIdArriendo");
            String IdDepartamento=request.getParameter("txtIdDepartamento");
            String rut=request.getParameter("txtrut");
            String FechaInicio=request.getParameter("txtFechaInicio");
            String FechaFin=request.getParameter("txtFechaFin");
            
            arri.setrut(rut);
            arri.setIdArriendo(IdArriendo);
            arri.setIdDepartamento(IdDepartamento);
            arri.setFechaInicio(FechaInicio.replace('T', ' '));
            arri.setFechaFin(FechaFin.replace('T',' '));
            
          

            arriDAO.addArriendoCli(arri);
            
            acceso=pagoA;
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
