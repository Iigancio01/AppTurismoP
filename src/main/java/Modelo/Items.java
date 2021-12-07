/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;


public class Items {
    
    String IdItem;
    String IdFamiliaItem;
    String Descripcion;  
    String nombrefam;
    int ValorItem;

    public Items() {
    }

    public Items(String IdItem, String IdFamiliaItem, String Descripcion, int ValorItem, String nombrefam) {
        this.IdItem = IdItem;
        this.IdFamiliaItem = IdFamiliaItem;
        this.Descripcion = Descripcion;
        this.nombrefam = nombrefam;
        this.ValorItem = ValorItem;
    }

    public String getIdItem() {
        return IdItem;
    }

    public void setIdItem(String IdItem) {
        this.IdItem = IdItem;
    }

    public String getIdFamiliaItem() {
        return IdFamiliaItem;
    }

    public void setIdFamiliaItem(String IdFamiliaItem) {
        this.IdFamiliaItem = IdFamiliaItem;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }   
    public String getnombrefam() {
        return nombrefam;
    }

    public void setnombrefam(String nombrefam) {
        this.nombrefam = nombrefam;
    }

    public int getValorItem() {
        return ValorItem;
    }

    public void setValorItem(int ValorItem) {
        this.ValorItem = ValorItem;
    }
    
    
    
}
