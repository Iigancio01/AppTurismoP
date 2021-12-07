/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import Config.Conexion;
import Modelo.ValPdf;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import static java.lang.Integer.parseInt;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import oracle.jdbc.OracleCallableStatement;
import oracle.jdbc.OracleTypes;
 

/**
 *
 * @author avata
 */
public class ControladorPdfCheckin extends HttpServlet {

    
    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex= new Conexion();
    
    ValPdf datos = new ValPdf();

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/pdf;charset=UTF-8");
        OutputStream out = response.getOutputStream();
        
        String IdArriendo=request.getParameter("IdArriendo");
        
        try{
                try{
            
                con=conex.getConnection();
               CallableStatement sp_listar_pdf = con.prepareCall("{call sp_listar_pdf(?,?)}");
                    sp_listar_pdf.setString(1,IdArriendo);
                    sp_listar_pdf.registerOutParameter(2, OracleTypes.CURSOR);
                    sp_listar_pdf.execute();
                    ResultSet rs = ((OracleCallableStatement)sp_listar_pdf).getCursor(2);
                while(rs.next()){
                     datos.setFechaI(rs.getString("FECHA_INICIO"));
                     datos.setFechaF(rs.getString("fecha_fin"));
                     datos.setMonto(rs.getString("monto"));
                     datos.setIddpto(rs.getString("departamento_iddepartamento"));
                     datos.setDireccion(rs.getString("direccion"));
                     datos.setDescripcion(rs.getString("descripcion"));
                     datos.setRutCli(rs.getString("rutcliente"));
                     datos.setNombre(rs.getString("nombre"));
                     datos.setAppma(rs.getString("apellidom"));
                     datos.setAppa(rs.getString("apellidop"));
                     
                     
                }
                }catch(Exception e){
                    System.out.println("No se pudo hacer la consulta "+ e.getMessage() ); 
                }
            
            
            Document documento = new Document();
            PdfWriter.getInstance(documento, out);
            
            
            documento.open();
            
            Paragraph par1 = new Paragraph();
            Font fonttitulo = new Font(Font.FontFamily.HELVETICA,20,Font.BOLD,BaseColor.BLACK);
            par1.add(new Phrase("Turismo real", fonttitulo));
            par1.setAlignment(Element.ALIGN_CENTER);
            par1.add(new Phrase(Chunk.NEWLINE));
            par1.add(new Phrase(Chunk.NEWLINE));
            documento.add(par1);
            
            Paragraph par2 = new Paragraph();
            Font fontdescrip = new Font(Font.FontFamily.TIMES_ROMAN,16,Font.NORMAL,BaseColor.BLACK);
            par2.add(new Phrase("Formato Check In", fontdescrip));
            par2.setAlignment(Element.ALIGN_JUSTIFIED);
            par2.add(new Phrase(Chunk.NEWLINE));
            par2.add(new Phrase(Chunk.NEWLINE));
            documento.add(par2); 
            
            
            PdfPTable tablaC = new PdfPTable(4);
            
            PdfPCell celdan = new PdfPCell(new Paragraph("Nombre cliente"));
            PdfPCell celdaap = new PdfPCell(new Paragraph("Apellido paterno"));
            PdfPCell celdaam = new PdfPCell(new Paragraph("Apellido materno"));
            PdfPCell celdar = new PdfPCell(new Paragraph("Rut cliente"));
            
            tablaC.addCell(celdan);
            tablaC.addCell(celdaap);
            tablaC.addCell(celdaam);
            tablaC.addCell(celdar);
            
            tablaC.addCell(datos.getNombre());
            tablaC.addCell(datos.getAppa());
            tablaC.addCell(datos.getAppma());
            tablaC.addCell(datos.getRutCli());
            
            documento.add(tablaC);
            
            PdfPTable tablaD = new PdfPTable(6);
            
            PdfPCell celda1 = new PdfPCell(new Paragraph("Id departamento"));
            PdfPCell celda2 = new PdfPCell(new Paragraph("Direccion"));
            PdfPCell celda3 = new PdfPCell(new Paragraph("Descripcion"));
            PdfPCell celda4 = new PdfPCell(new Paragraph("Fecha de inicio"));
            PdfPCell celda5 = new PdfPCell(new Paragraph("Fecha Fin"));
            PdfPCell celda6 = new PdfPCell(new Paragraph("Monto"));
            
            tablaD.addCell(celda1);
            tablaD.addCell(celda2);
            tablaD.addCell(celda3);
            tablaD.addCell(celda4);
            tablaD.addCell(celda5);
            tablaD.addCell(celda6);
            
            tablaD.addCell(datos.getIddpto());
            tablaD.addCell(datos.getDireccion());
            tablaD.addCell(datos.getDireccion());
            tablaD.addCell(datos.getFechaI());
            tablaD.addCell(datos.getFechaF());
            tablaD.addCell(datos.getMonto());
            
            documento.add(tablaD);
            
            Paragraph par3 = new Paragraph();
            Font fontF = new Font(Font.FontFamily.TIMES_ROMAN,16,Font.NORMAL,BaseColor.BLACK);
            par3.add(new Phrase("------------------------", fontF));
            par3.setAlignment(Element.ALIGN_RIGHT);
            par3.add(new Phrase(Chunk.NEWLINE));
            par3.add(new Phrase(Chunk.NEWLINE));
            documento.add(par3); 
            
            Paragraph par4 = new Paragraph();
            Font fontFL = new Font(Font.FontFamily.TIMES_ROMAN,16,Font.NORMAL,BaseColor.BLACK);
            par4.add(new Phrase("Firma de cliente", fontFL));
            par4.setAlignment(Element.ALIGN_RIGHT);
            par4.add(new Phrase(Chunk.NEWLINE));
            par4.add(new Phrase(Chunk.NEWLINE));
            documento.add(par4); 
            
            documento.close();
            
            
        }catch(Exception e){
            System.out.println("No se pudo crear el pdf "+ e.getMessage());
        }
        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
