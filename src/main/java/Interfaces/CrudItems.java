/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;


import Modelo.Items;
import java.util.List;

/**
 *
 * @author avata
 */
public interface CrudItems {
    
    public List listarItems();
    public Items listarIdItems(String IdItem);
    public boolean addItems(Items it);
    public boolean editItems(Items it);
    public boolean deleteItems(String IdItem);
}
