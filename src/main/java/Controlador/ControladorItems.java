/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Modelo.Items;
import ModeloDAO.ItemsDAO;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ControladorItems extends HttpServlet {

    String listarItems="VistasItem/ListarItem.jsp";
    String addItem="VistasItem/AddItem.jsp";
    String editItem="VistasItem/EditItem.jsp";
    
    Items it = new Items();
    ItemsDAO itDAO = new ItemsDAO();
    
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
        
        if(action.equalsIgnoreCase("listarItems")){
            acceso=listarItems;
            
        }
        else if(action.equalsIgnoreCase("addItem")){
            acceso=addItem;
        }
        else if(action.equalsIgnoreCase("AgregarItem")){
            String IdItem=request.getParameter("txtIdItem");
            String IdFamiliaItem=request.getParameter("txtIdFamiliaItem");
            String Descripcion=request.getParameter("txtDescripcion");
            String Valor=request.getParameter("txtValor");
            
            it.setIdItem(IdItem);
            it.setIdFamiliaItem(IdFamiliaItem);
            it.setDescripcion(Descripcion);
            it.setValorItem(parseInt(Valor));
           
            itDAO.addItems(it);
            acceso=listarItems;
            
        }
        else if(action.equalsIgnoreCase("editarItem")){
            request.setAttribute("IdItem", request.getParameter("IdItem"));
            acceso=editItem;
        }
        else if(action.equalsIgnoreCase("ActualizarItems")){
            
            String IdItem=request.getParameter("txtIdItem");
            String IdFamiliaItem=request.getParameter("txtIdFamiliaItem");
            String Descripcion=request.getParameter("txtDescripcion");
            String Valor=request.getParameter("txtValor");
            
            it.setIdItem(IdItem);
            it.setIdFamiliaItem(IdFamiliaItem);
            it.setDescripcion(Descripcion);
            it.setValorItem(parseInt(Valor));
            itDAO.editItems(it);
            acceso=listarItems;
            
        }
        else if(action.equalsIgnoreCase("eliminarItem")){
            String IdItem=request.getParameter("IdItem");
            it.setIdItem(IdItem);
            itDAO.deleteItems(IdItem);
            acceso=listarItems;
           
        }
        
        
        
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

   
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
