/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author avata
 */
public class Usuario {
    String idusuario;
    String tipousuario;
    String contraseña;
    String nombreusuario;
    String correousuario;
    String rut;
    
    public Usuario(){
        
    }

    public Usuario(String idusuario, String tipousuario, String contraseña, String nombreusuario, String correousuario, String rut) {
        this.idusuario = idusuario;
        this.tipousuario = tipousuario;
        this.contraseña = contraseña;
        this.nombreusuario = nombreusuario;
        this.correousuario = correousuario;
        this.rut = rut;
    
    }

    public String getIdusuario() {
        return idusuario;
    }

    public void setIdusuario(String idusuario) {
        this.idusuario = idusuario;
    }

    public String getTipousuario() {
        return tipousuario;
    }

    public void setTipousuario(String tipousuario) {
        this.tipousuario = tipousuario;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getNombreusuario() {
        return nombreusuario;
    }

    public void setNombreusuario(String nombreusuario) {
        this.nombreusuario = nombreusuario;
    }

    public String getCorreousuario() {
        return correousuario;
    }

    public void setCorreousuario(String correousuario) {
        this.correousuario = correousuario;
    }  
    public String getrut() {
        return rut;
    }

    public void setrut(String rut) {
        this.rut = rut;
    }
}
