/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Servicios;
import java.util.List;

/**
 *
 * @author avata
 */
public interface CrudServicios {
    
    public List listarServicios();
    public Servicios listarIdServicios(String IdItem);
    public boolean addServicios(Servicios se);
    public boolean editServicio(Servicios se);
    public boolean deleteServicio(String IdSubFamiliaServicio);
}
