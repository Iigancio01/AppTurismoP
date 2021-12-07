/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import Modelo.Mantencion;
import Interfaces.CrudMantencion;
import java.sql.CallableStatement;
import oracle.jdbc.OracleCallableStatement;
import oracle.jdbc.OracleTypes;


public class MantencionDAO implements CrudMantencion{
    
    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex= new Conexion();
    
    Mantencion man= new Mantencion();

    @Override
    public List listarDptoMantencion() {
        List<Mantencion> datos=new ArrayList<>();
        try{
            con=conex.getConnection();
                CallableStatement sp_listar_mantenimiento = con.prepareCall("{call sp_listar_mantenimiento(?)}");
                    sp_listar_mantenimiento.registerOutParameter(1, OracleTypes.CURSOR);
                    sp_listar_mantenimiento.execute();
                    ResultSet rs = ((OracleCallableStatement)sp_listar_mantenimiento).getCursor(1);
            while(rs.next()){
                Mantencion m= new Mantencion();
                m.setIdMantencion(rs.getString("IDMANTENIMIENTO"));
                m.setIdDepartmentoM(rs.getString("DEPARTAMENTO_IDDEPARTAMENTO"));
                m.setFechaM(rs.getString("FECHA"));

                datos.add(m);
            }
        }catch (Exception e){
            
        }
        return datos;
    }
    @Override
    public boolean deleteMantenimientoDpto(String IdMantencion) {        
        try{
            con=conex.getConnection();
           CallableStatement sp_eliminar_mantenimiento = con.prepareCall("{call sp_eliminar_mantenimiento(?)}");
                    sp_eliminar_mantenimiento.setString(1,IdMantencion);
                    sp_eliminar_mantenimiento.execute();

        }catch(Exception e){
            System.out.println("No se ha podido eliminar la mantencion"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean addDpto(Mantencion man) {
         try{
            con=conex.getConnection();
                CallableStatement sp_insertar_mantenimiento = con.prepareCall("{call sp_insertar_mantenimiento(?,?,?)}");
                   sp_insertar_mantenimiento.setString(1,man.getIdMantencion());
                   sp_insertar_mantenimiento.setString(2,man.getIdDepartmentoM());
                   sp_insertar_mantenimiento.setString(3,man.getFechaM());
                   sp_insertar_mantenimiento.execute();
        }catch(Exception e){
            System.out.println("No se ha podido insertar los datos"+ e.getMessage());
        }
        return false;
    }
    
}
