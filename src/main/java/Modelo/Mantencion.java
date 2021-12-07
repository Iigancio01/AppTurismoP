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
public class Mantencion {
    String IdMantencion;
    String IdDepartmentoM;
    String FechaM;

    public Mantencion() {
    }

    public Mantencion(String IdMantencion, String IdDepartmentoM, String FechaM) {
        this.IdMantencion = IdMantencion;
        this.IdDepartmentoM = IdDepartmentoM;
        this.FechaM = FechaM;
    }

    public String getIdMantencion() {
        return IdMantencion;
    }

    public void setIdMantencion(String IdMantencion) {
        this.IdMantencion = IdMantencion;
    }

    public String getIdDepartmentoM() {
        return IdDepartmentoM;
    }

    public void setIdDepartmentoM(String IdDepartmentoM) {
        this.IdDepartmentoM = IdDepartmentoM;
    }

    public String getFechaM() {
        return FechaM;
    }

    public void setFechaM(String FechaM) {
        this.FechaM = FechaM;
    }


    
    
}
