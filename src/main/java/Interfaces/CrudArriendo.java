/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Arriendo;
import java.util.List;

/**
 *
 * @author avata
 */
public interface CrudArriendo {
    public List listarArriendo();
    public Arriendo listarIdArriendo(String IdArriendo);
    public boolean addArriendo(Arriendo arri);
    public boolean editArriendo(Arriendo arri);
    public boolean deleteArriendo(String IdArriendo);
   public boolean validarArriendo(); 
   public boolean eliminaArriendo();
}
