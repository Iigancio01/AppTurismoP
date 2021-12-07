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
public class Arriendo {
    String IdArriendo;
    String IdDepartamento;
    String IdMasterArriendo;
    String FechaInicio;
    String FechaFin;
    int Monto;
    String rut;

    public Arriendo() {
    }

    public Arriendo(String IdArriendo, String IdDepartamento, String IdMasterArriendo, String FechaInicio, String FechaFin, int Monto, String rut) {
        this.IdArriendo = IdArriendo;
        this.IdDepartamento = IdDepartamento;
        this.IdMasterArriendo = IdMasterArriendo;
        this.FechaInicio = FechaInicio;
        this.FechaFin = FechaFin;
        this.Monto = Monto;       
        this.rut = rut;
    }

    public String getIdArriendo() {
        return IdArriendo;
    }

    public void setIdArriendo(String IdArriendo) {
        this.IdArriendo = IdArriendo;
    }

    public String getIdDepartamento() {
        return IdDepartamento;
    }

    public void setIdDepartamento(String IdDepartamento) {
        this.IdDepartamento = IdDepartamento;
    }

    public String getIdMasterArriendo() {
        return IdMasterArriendo;
    }

    public void setIdMasterArriendo(String IdMasterArriendo) {
        this.IdMasterArriendo = IdMasterArriendo;
    }

    public String getFechaInicio() {
        return FechaInicio;
    }

    public void setFechaInicio(String FechaInicio) {
        this.FechaInicio = FechaInicio;
    }

    public String getFechaFin() {
        return FechaFin;
    }

    public void setFechaFin(String FechaFin) {
        this.FechaFin = FechaFin;
    }

    public int getMonto() {
        return Monto;
    }

    public void setMonto(int Monto) {
        this.Monto = Monto;
    }
     public String getrut() {
        return rut;
    }

    public void setrut(String rut) {
        this.rut = rut;
    }
    
   
}
