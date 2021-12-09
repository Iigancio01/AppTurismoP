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
        @Override

        public boolean addTour(Servicios se) {

        try{
            con=conex.getConnection();
            
            CallableStatement sp_id_tour = con.prepareCall("{call sp_id_tour(?)}");
                      sp_id_tour.registerOutParameter(1, OracleTypes.CURSOR);
                      sp_id_tour.execute();
                      ResultSet rs = ((OracleCallableStatement)sp_id_tour).getCursor(1);


                      while(rs.next()){
                          se.setIdservicio(rs.getString("IdTourSe"));

            CallableStatement sp_insertar_tour = con.prepareCall("{call sp_insertar_tour(?,?)}");
                sp_insertar_tour.setString(1,se.getIdservicio());
                sp_insertar_tour.setString(2,se.getRut());
                sp_insertar_tour.execute();
                
                     
                   CallableStatement sp_calcula_tour = con.prepareCall("{call sp_calcula_tour(?,?)}");
                             sp_calcula_tour.setInt(1,se.getNum());
                             sp_calcula_tour.registerOutParameter(2, OracleTypes.CURSOR);
                             sp_calcula_tour.execute();  
                             ResultSet rs1 = ((OracleCallableStatement)sp_calcula_tour).getCursor(2);
                             while(rs1.next()){
                             se.setMonto(rs1.getInt("monto_tot"));
                             
                               CallableStatement sp_actu_tour = con.prepareCall("{call sp_actu_tour(?,?)}");
                             sp_actu_tour.setString(1,se.getIdservicio());
                             sp_actu_tour.setInt(2,se.getMonto());
                             sp_actu_tour.execute();
                             } }
        
        }catch(Exception e){
            System.out.println("No se ha podido eliminar la mantencion"+ e.getMessage());
        }
        return false;
    }
            public Servicios monto() {        
        try{
            con=conex.getConnection();
               CallableStatement sp_monto_tour = con.prepareCall("{call sp_monto_tour(?)}");
                      sp_monto_tour.registerOutParameter(1, OracleTypes.CURSOR);
                      sp_monto_tour.execute();
                      ResultSet rs = ((OracleCallableStatement)sp_monto_tour).getCursor(1);


                      while(rs.next()){
                          se.setMonto(rs.getInt("monto"));
                          
                          }
        }catch(Exception e){
            System.out.println("No se ha podido eliminar el arriendo"+ e.getMessage());
        }
        return se;
    }
        @Override
    public boolean validarTour() {        
        try{
            con=conex.getConnection();
            CallableStatement sp_valida_tour = con.prepareCall("{call sp_valida_tour}");
            sp_valida_tour.execute();
        }catch(Exception e){
            System.out.println("No se ha podido eliminar el arriendo"+ e.getMessage());
        }
        return false;
    }   
            @Override
    public boolean eliminaTour() {        
        try{
            con=conex.getConnection();
            CallableStatement sp_elimina_tour = con.prepareCall("{call sp_elimina_tour}");
            sp_elimina_tour.execute();
        }catch(Exception e){
            System.out.println("No se ha podido eliminar el arriendo"+ e.getMessage());
        }
        return false;
    } 
    
}
