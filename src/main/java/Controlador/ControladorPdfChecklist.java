/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.PdfPCell;
import com.itextpdf.text.pdf.PdfPTable;
import com.itextpdf.text.pdf.PdfWriter;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author avata
 */
public class ControladorPdfChecklist extends HttpServlet {


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/pdf;charset=UTF-8");
        
        
           try{ 
            Document documentoCheck = new Document();
            PdfWriter.getInstance(documentoCheck, out);
            
            
            documentoCheck.open();
            
            Paragraph par1 = new Paragraph();
            Font fonttitulo = new Font(Font.FontFamily.HELVETICA,20,Font.BOLD,BaseColor.BLACK);
            par1.add(new Phrase("Turismo real", fonttitulo));
            par1.setAlignment(Element.ALIGN_CENTER);
            par1.add(new Phrase(Chunk.NEWLINE));
            par1.add(new Phrase(Chunk.NEWLINE));
            documentoCheck.add(par1);
            
            Paragraph par2 = new Paragraph();
            Font fontdescrip = new Font(Font.FontFamily.TIMES_ROMAN,16,Font.NORMAL,BaseColor.BLACK);
            par2.add(new Phrase("Formato Check In", fontdescrip));
            par2.setAlignment(Element.ALIGN_JUSTIFIED);
            par2.add(new Phrase(Chunk.NEWLINE));
            par2.add(new Phrase(Chunk.NEWLINE));
            documentoCheck.add(par2); 
            
            
//            PdfPTable tablaC = new PdfPTable(4);
//            
//            PdfPCell celdan = new PdfPCell(new Paragraph("Nombre cliente"));
//            PdfPCell celdaap = new PdfPCell(new Paragraph("Apellido paterno"));
//            PdfPCell celdaam = new PdfPCell(new Paragraph("Apellido materno"));
//            PdfPCell celdar = new PdfPCell(new Paragraph("Rut cliente"));
//            
//            tablaC.addCell(celdan);
//            tablaC.addCell(celdaap);
//            tablaC.addCell(celdaam);
//            tablaC.addCell(celdar);
//            
//            tablaC.addCell("a");
//            tablaC.addCell("a");
//            tablaC.addCell("a");
//            tablaC.addCell("a");
//            
//            documento.add(tablaC);
//            
//            PdfPTable tablaD = new PdfPTable(6);
//            
//            PdfPCell celda1 = new PdfPCell(new Paragraph("Id departamento"));
//            PdfPCell celda2 = new PdfPCell(new Paragraph("Direccion"));
//            PdfPCell celda3 = new PdfPCell(new Paragraph("Descripcion"));
//            PdfPCell celda4 = new PdfPCell(new Paragraph("Fecha de inicio"));
//            PdfPCell celda5 = new PdfPCell(new Paragraph("Fecha Fin"));
//            PdfPCell celda6 = new PdfPCell(new Paragraph("Monto"));
//            
//            tablaD.addCell(celda1);
//            tablaD.addCell(celda2);
//            tablaD.addCell(celda3);
//            tablaD.addCell(celda4);
//            tablaD.addCell(celda5);
//            tablaD.addCell(celda6);
//            
//            tablaD.addCell("a");
//            tablaD.addCell("a");
//            tablaD.addCell("a");
//            tablaD.addCell("a");
//            tablaD.addCell("a");
//            tablaD.addCell("a");
//            
//            documento.add(tablaD);
            
            Paragraph par3 = new Paragraph();
            Font fontF = new Font(Font.FontFamily.TIMES_ROMAN,16,Font.NORMAL,BaseColor.BLACK);
            par3.add(new Phrase("------------------------", fontF));
            par3.setAlignment(Element.ALIGN_RIGHT);
            par3.add(new Phrase(Chunk.NEWLINE));
            par3.add(new Phrase(Chunk.NEWLINE));
            documentoCheck.add(par3); 
            
            Paragraph par4 = new Paragraph();
            Font fontFL = new Font(Font.FontFamily.TIMES_ROMAN,16,Font.NORMAL,BaseColor.BLACK);
            par4.add(new Phrase("Firma de cliente", fontFL));
            par4.setAlignment(Element.ALIGN_RIGHT);
            par4.add(new Phrase(Chunk.NEWLINE));
            par4.add(new Phrase(Chunk.NEWLINE));
            documentoCheck.add(par4); 
            
            documentoCheck.close();
           }catch(Exception e){
               System.out.println("No se pueee"+ e.getMessage());
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
