/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Mantencion;
import java.util.List;

/**
 *
 * @author avata
 */
public interface CrudMantencion {
    public List listarDptoMantencion();
    public boolean addDpto(Mantencion man);
    public boolean deleteMantenimientoDpto(String IdMantencion);
}
