/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Cliente;
import Modelo.Items;
import java.util.List;

/**
 *
 * @author avata
 */
public interface CrudCliente {

    public List listarCliente();
    public Cliente listarIdCliente(String RutCliente);
    public boolean addCliente(Cliente cli);
    public boolean editCliente(Cliente cli);
    public boolean deleteCliente(String RutCliente);
}
