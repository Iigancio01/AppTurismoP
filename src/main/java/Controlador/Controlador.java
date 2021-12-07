/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Departamentos;
import Modelo.Usuario;
import ModeloDAO.DepartamentosDAO;
import ModeloDAO.UsuarioDAO;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author avata
 */
public class Controlador extends HttpServlet {


    String VerInicioAdm="InicioAdmin.jsp";
    
    
    Departamentos dpto = new Departamentos();
    DepartamentosDAO dptoDAO = new DepartamentosDAO();
    
    UsuarioDAO dao=new UsuarioDAO();
    Usuario usu= new Usuario();
    int r;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String accion=request.getParameter("accionLogin");
        //Controlador login
        if(accion.equals("IngresarLogin")){
            String em=request.getParameter("txtemail");
            String pas=request.getParameter("txtpassword");
            usu.setCorreousuario(em);
            usu.setContraseña(pas);
            ;
            r=dao.validar(usu);
            HttpSession sesion = request.getSession();
            if(r==1){
                sesion.setAttribute("admin", usu.getNombreusuario());
                request.getRequestDispatcher("InicioAdmin.jsp").forward(request, response);
            }else if(r==2){
                sesion.setAttribute("cliente", usu.getNombreusuario());
                request.getRequestDispatcher("InicioCliente.jsp").forward(request, response);
            }else if(r==0){
                request.getRequestDispatcher("Login.jsp").forward(request, response);
            }
               
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        
//        String acceso="";
//        String action=request.getParameter("accion");
//        
//        if(action.equals("VerInicioAdm")){
//            acceso=VerInicioAdm;
//            
//        }
//        
//        RequestDispatcher vista=request.getRequestDispatcher(acceso);
//        vista.forward(request, response);
      
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
