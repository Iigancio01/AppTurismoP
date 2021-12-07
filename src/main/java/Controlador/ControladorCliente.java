/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Cliente;

import ModeloDAO.ClienteDAO;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author avata
 */
public class ControladorCliente extends HttpServlet {

    String listarCliente="VistasCliente/ListarCli.jsp";
    String addCliente="VistasCliente/AddCli.jsp";
    String editCliente="VistasCliente/EditCli.jsp";
    
    Cliente cli = new Cliente();
    ClienteDAO cliDAO = new ClienteDAO();
    
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
        
        if(action.equalsIgnoreCase("listarCliente")){
            acceso=listarCliente;
            
        }
        else if(action.equalsIgnoreCase("addCliente")){
            acceso=addCliente;
        }
        else if(action.equalsIgnoreCase("AgregarCliente")){
            
            String RutCliente=request.getParameter("txtRutCliente");
            String IdUsuario=request.getParameter("txtIdUsuario");
            String IdComuna=request.getParameter("txtIdComuna");
            String NombreCli=request.getParameter("txtNombreCli");
            String ApellidoPC=request.getParameter("txtApellidoPC");
            String ApellidoMC=request.getParameter("txtApellidoMC");
            String Correo=request.getParameter("txtCorreo");
            String Contrasena=request.getParameter("txtContrasena");
            String TipoUsuario=request.getParameter("txtTipoUsuario");

            cli.setRutCliente(RutCliente);
            cli.setIdUsuario(IdUsuario);
            cli.setIdComuna(IdComuna);
            cli.setNombreCli(NombreCli);
            cli.setAppellidoPC(ApellidoPC);
            cli.setApellidoMC(ApellidoMC);
            cli.setCorreo(Correo);
            cli.setContrasena(Contrasena);
            cli.setTipoUsuario(TipoUsuario);
            cliDAO.addCliente(cli);
            acceso=listarCliente;
            
        }
        else if(action.equalsIgnoreCase("editarCliente")){
            request.setAttribute("RutCliente", request.getParameter("RutCliente"));
            acceso=editCliente;
        }
        else if(action.equalsIgnoreCase("ActualizarCliente")){
            
            String RutCliente=request.getParameter("txtRutCliente");
            String IdUsuario=request.getParameter("txtIdUsuario");
            String IdComuna=request.getParameter("txtIdComuna");
            String NombreCli=request.getParameter("txtNombreCli");
            String ApellidoPC=request.getParameter("txtApellidoPC");
            String ApellidoMC=request.getParameter("txtApellidoMC");
            int estado=parseInt(request.getParameter("txtEstado"));
            
            cli.setRutCliente(RutCliente);
            cli.setIdUsuario(IdUsuario);
            cli.setIdComuna(IdComuna);
            cli.setNombreCli(NombreCli);
            cli.setAppellidoPC(ApellidoPC);
            cli.setApellidoMC(ApellidoMC);
            cli.setestado(estado);
           
            cliDAO.editCliente(cli);
            acceso=listarCliente;
            
        }
        else if(action.equalsIgnoreCase("eliminarCliente")){
            String RutCliente=request.getParameter("RutCliente");
            cli.setRutCliente(RutCliente);
            cliDAO.deleteCliente(RutCliente);
            acceso=listarCliente;
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
