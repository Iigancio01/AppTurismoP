/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author avata
 */
public class Cliente {
    
    String RutCliente;
    String IdUsuario;
    String IdComuna;
    String NombreCli;
    String AppellidoPC;
    String ApellidoMC;
    String Correo;
    String Contrasena;
    String TipoUsuario;
    String nombre_com;
    int estado;

    public Cliente() {
    }

    public Cliente(String RutCliente, String IdUsuario, String IdComuna, String NombreCli, String AppellidoPC, String ApellidoMC, String Correo, String Contrasena, String TipoUsuario,  String nombre_com, int estado) {
        this.RutCliente = RutCliente;
        this.IdUsuario = IdUsuario;
        this.IdComuna = IdComuna;
        this.NombreCli = NombreCli;
        this.AppellidoPC = AppellidoPC;
        this.ApellidoMC = ApellidoMC;
        this.Correo = Correo;
        this.Contrasena = Contrasena;
        this.TipoUsuario = TipoUsuario;   
        this.nombre_com = nombre_com;
        this.estado = estado;
    }

    public String getRutCliente() {
        return RutCliente;
    }

    public void setRutCliente(String RutCliente) {
        this.RutCliente = RutCliente;
    }

    public String getIdUsuario() {
        return IdUsuario;
    }

    public void setIdUsuario(String IdUsuario) {
        this.IdUsuario = IdUsuario;
    }

    public String getIdComuna() {
        return IdComuna;
    }

    public void setIdComuna(String IdComuna) {
        this.IdComuna = IdComuna;
    }

    public String getNombreCli() {
        return NombreCli;
    }

    public void setNombreCli(String NombreCli) {
        this.NombreCli = NombreCli;
    }

    public String getAppellidoPC() {
        return AppellidoPC;
    }

    public void setAppellidoPC(String AppellidoPC) {
        this.AppellidoPC = AppellidoPC;
    }

    public String getApellidoMC() {
        return ApellidoMC;
    }

    public void setApellidoMC(String ApellidoMC) {
        this.ApellidoMC = ApellidoMC;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getContrasena() {
        return Contrasena;
    }

    public void setContrasena(String Contrasena) {
        this.Contrasena = Contrasena;
    }

    public String getTipoUsuario() {
        return TipoUsuario;
    }

    public void setTipoUsuario(String TipoUsuario) {
        this.TipoUsuario = TipoUsuario;
    }   
    
    public String getnombre_com() {
        return nombre_com;
    }

    public void setnombre_com(String nombre_com) {
        this.nombre_com = nombre_com;
    }   
    public int getestado() {
        return estado;
    }

    public void setestado(int estado) {
        this.estado = estado;
    }


    
    
}
