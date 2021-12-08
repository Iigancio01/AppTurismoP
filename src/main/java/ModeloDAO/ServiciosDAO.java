/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CrudServicios;
import Modelo.Servicios;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import oracle.jdbc.OracleCallableStatement;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author avata
 */
public class ServiciosDAO implements CrudServicios {
    
    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex= new Conexion();
    
    Servicios se= new Servicios();
    
    
    
    @Override
    public List listarServicios() {
        List<Servicios> datos=new ArrayList<>();
        try{
            con=conex.getConnection();
           CallableStatement sp_listar_servicio = con.prepareCall("{call sp_listar_servicio(?)}");  
                        sp_listar_servicio.registerOutParameter(1, OracleTypes.CURSOR);
                        sp_listar_servicio.execute();
                        ResultSet rs = ((OracleCallableStatement)sp_listar_servicio).getCursor(1);
            while(rs.next()){
                Servicios se= new Servicios();
                se.setIdSubFamiliaServicio(rs.getString("IDSUB_FAMILIA_SERVICIO"));
                se.setIdFamiliaServicio(rs.getString("FAMILIA_SERVICIO_IDFAMILIA_SERVICIO"));
                se.setNombreSubFamilia(rs.getString("nombre"));
                se.setNombreFam(rs.getString("NOM_FAMILIA"));

                datos.add(se);
            }
        }catch (Exception e){
            
        }
        return datos;
    }

    @Override
    public Servicios listarIdServicios(String IdSubFamiliaServicio) {
         
        try{
            con=conex.getConnection();
            CallableStatement sp_listar_servicioid = con.prepareCall("{call sp_listar_servicioid(?,?)}");
                    sp_listar_servicioid.setString(1,IdSubFamiliaServicio);
                    sp_listar_servicioid.registerOutParameter(2, OracleTypes.CURSOR);
                    sp_listar_servicioid.execute();
                    ResultSet rs = ((OracleCallableStatement)sp_listar_servicioid).getCursor(2);
            while(rs.next()){
              se.setIdSubFamiliaServicio(rs.getString("IDSUB_FAMILIA_SERVICIO"));
              se.setIdFamiliaServicio(rs.getString("FAMILIA_SERVICIO_IDFAMILIA_SERVICIO"));
              se.setNombreSubFamilia(rs.getString("nombre"));
              se.setNombreFam(rs.getString("NOM_FAMILIA"));
            }
        }catch(Exception e){
            
        }
        
        return se;
    }

    @Override
    public boolean addServicios(Servicios se) {
       
        try{
            con=conex.getConnection();
            
                  CallableStatement sp_listar_id_sub_fam = con.prepareCall("{call sp_listar_id_sub_fam(?)}");
                    sp_listar_id_sub_fam.registerOutParameter(1, OracleTypes.CURSOR);
                    sp_listar_id_sub_fam.execute();
                    ResultSet rs = ((OracleCallableStatement)sp_listar_id_sub_fam).getCursor(1);



                    while(rs.next()){
                        se.setIdSubFamiliaServicio(rs.getString("IdSubSeq"));
                    CallableStatement sp_insertar_servicio = con.prepareCall("{call sp_insertar_servicio(?,?,?)}");
                           sp_insertar_servicio.setString(1,se.getIdSubFamiliaServicio());
                           sp_insertar_servicio.setString(2,se.getIdFamiliaServicio());
                           sp_insertar_servicio.setString(3,se.getNombreSubFamilia());
                           sp_insertar_servicio.execute();
                    }
        }catch(Exception e){
             System.out.println("No se ha podido insertar los datos"+ e.getMessage()); 
        }
        return false;
    }

    @Override
    public boolean editServicio(Servicios se) {
        try{
            con=conex.getConnection();
            CallableStatement sp_actualizar_servicio = con.prepareCall("{call sp_actualizar_servicio(?,?,?)}");
                           sp_actualizar_servicio.setString(1,se.getIdSubFamiliaServicio());
                           sp_actualizar_servicio.setString(2,se.getIdFamiliaServicio());
                           sp_actualizar_servicio.setString(3,se.getNombreSubFamilia());
                           sp_actualizar_servicio.execute();
        }catch(Exception e){
            System.out.println("No se ha podido editar los datos"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean deleteServicio(String IdSubFamiliaServicio) {

        try{
            con=conex.getConnection();
            CallableStatement sp_eliminar_servicio = con.prepareCall("{call sp_eliminar_servicio(?)}");
                sp_eliminar_servicio.setString(1,IdSubFamiliaServicio);
                sp_eliminar_servicio.execute();
        }catch(Exception e){
            System.out.println("No se ha podido eliminar la mantencion"+ e.getMessage());
        }
        return false;
    }
    
}
