/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

import java.sql.Date;

/**
 *
 * @author avata
 */
public class ValPdf {
        
    String fechaI ;
    String fechaF;
    String  monto;
    String iddpto;
    String direccion;
    String descripcion;
    String rutCli;
    String nombre;
    String appma; 
    String appa;

    public ValPdf() {
    }

    public ValPdf(String fechaI, String fechaF, String monto, String iddpto, String direccion, String descripcion, String rutCli, String nombre, String appma, String appa) {
        this.fechaI = fechaI;
        this.fechaF = fechaF;
        this.monto = monto;
        this.iddpto = iddpto;
        this.direccion = direccion;
        this.descripcion = descripcion;
        this.rutCli = rutCli;
        this.nombre = nombre;
        this.appma = appma;
        this.appa = appa;
    }

    public String getFechaI() {
        return fechaI;
    }

    public void setFechaI(String fechaI) {
        this.fechaI = fechaI;
    }

    public String getFechaF() {
        return fechaF;
    }

    public void setFechaF(String fechaF) {
        this.fechaF = fechaF;
    }

    public String getMonto() {
        return monto;
    }

    public void setMonto(String monto) {
        this.monto = monto;
    }

    public String getIddpto() {
        return iddpto;
    }

    public void setIddpto(String iddpto) {
        this.iddpto = iddpto;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getRutCli() {
        return rutCli;
    }

    public void setRutCli(String rutCli) {
        this.rutCli = rutCli;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getAppma() {
        return appma;
    }

    public void setAppma(String appma) {
        this.appma = appma;
    }

    public String getAppa() {
        return appa;
    }

    public void setAppa(String appa) {
        this.appa = appa;
    }
    
    
    
}
