/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package Interfaces;

import Modelo.Departamentos;
import java.util.List;

/**
 *
 * @author avata
 */
public interface CrudDepartamento {
    public List listarDpto();
    public Departamentos listarIdDpto(String IdDepartamento);
    public boolean addDpto(Departamentos dpto);
    public boolean editDpto(Departamentos dpto);
    public boolean deleteDpto(String IdDepartamento);
    public List listarDptoDispo();
    public List listarDptoNoDispo();
    public boolean editDptoEstadoD(String IdDepartamento);
    public boolean editDptoEstadoND(String IdDepartamento);

}
