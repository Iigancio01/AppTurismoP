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
   
   

    public Servicios() {
    }

    public Servicios(String IdSubFamiliaServicio, String IdFamiliaServicio, String NombreSubFamilia,  String NombreFam) {
        this.IdSubFamiliaServicio = IdSubFamiliaServicio;
        this.IdFamiliaServicio = IdFamiliaServicio;
        this.NombreSubFamilia = NombreSubFamilia;
        this.NombreFam = NombreFam;
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
   
}
