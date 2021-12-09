/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author avata
 */
public class Servicios {
   String IdSubFamiliaServicio;
   String IdFamiliaServicio;
   String NombreSubFamilia;
   String NombreFam;
   String rut;
   int num;
   int monto;
   String idservicio;

    public Servicios() {
    }

    public Servicios(String IdSubFamiliaServicio, String IdFamiliaServicio, String NombreSubFamilia, String NombreFam, String rut, int num, int monto, String idservicio) {
        this.IdSubFamiliaServicio = IdSubFamiliaServicio;
        this.IdFamiliaServicio = IdFamiliaServicio;
        this.NombreSubFamilia = NombreSubFamilia;
        this.NombreFam = NombreFam;
        this.rut = rut;
        this.num = num;
        this.monto = monto;
        this.idservicio = idservicio;
    }

    public String getIdSubFamiliaServicio() {
        return IdSubFamiliaServicio;
    }

    public void setIdSubFamiliaServicio(String IdSubFamiliaServicio) {
        this.IdSubFamiliaServicio = IdSubFamiliaServicio;
    }

    public String getIdFamiliaServicio() {
        return IdFamiliaServicio;
    }

    public void setIdFamiliaServicio(String IdFamiliaServicio) {
        this.IdFamiliaServicio = IdFamiliaServicio;
    }

    public String getNombreSubFamilia() {
        return NombreSubFamilia;
    }

    public void setNombreSubFamilia(String NombreSubFamilia) {
        this.NombreSubFamilia = NombreSubFamilia;
    }

    public String getNombreFam() {
        return NombreFam;
    }

    public void setNombreFam(String NombreFam) {
        this.NombreFam = NombreFam;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public int getMonto() {
        return monto;
    }

    public void setMonto(int monto) {
        this.monto = monto;
    }

    public String getIdservicio() {
        return idservicio;
    }

    public void setIdservicio(String idservicio) {
        this.idservicio = idservicio;
    }

}