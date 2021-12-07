/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CrudDepartamento;
import Modelo.Departamentos;
import static java.lang.Integer.parseInt;
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
public class DepartamentosDAO implements CrudDepartamento {
    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex= new Conexion();

    Departamentos dep= new Departamentos();
       Departamentos mesa= new Departamentos();
       Departamentos mes= new Departamentos();
       Departamentos por= new Departamentos();

    @Override
    public List listarDpto() {
        List<Departamentos> datos=new ArrayList<>();
        try{
            con=conex.getConnection();
                CallableStatement sp_listar_dpto = con.prepareCall("{call sp_listar_dpto(?)}");
                    sp_listar_dpto.registerOutParameter(1, OracleTypes.CURSOR);
                    sp_listar_dpto.execute();
                    ResultSet rs = ((OracleCallableStatement)sp_listar_dpto).getCursor(1);
            while(rs.next()){
                Departamentos d= new Departamentos();
                d.setIdDepartamento(rs.getString("IDDEPARTAMENTO"));
                d.setIdTarifa(rs.getString("TARIFA_IDTARIFA"));
                d.setIdComuna(rs.getString("COMUNA_IDCOMUNA"));
                d.setDireccion(rs.getString("DIRECCION"));
                d.setDescripcion(rs.getString("Descripcion"));
                d.setnombre_com(rs.getString("nombre_com"));
                d.settarifa(parseInt(rs.getString("tarifa")));
                datos.add(d);
            }
        }catch (Exception e){
            
        }
        return datos;
    }

    @Override
    public Departamentos listarIdDpto(String IdDepartamento) {
        try{
            con=conex.getConnection();
                CallableStatement sp_listar_deptoid = con.prepareCall("{call sp_listar_deptoid(?,?)}");
                    sp_listar_deptoid.setString(1,IdDepartamento);
                    sp_listar_deptoid.registerOutParameter(2, OracleTypes.CURSOR);
                    sp_listar_deptoid.execute();
                    ResultSet rs = ((OracleCallableStatement)sp_listar_deptoid).getCursor(2);
            while(rs.next()){
                
                dep.setIdDepartamento(rs.getString("IDDEPARTAMENTO"));
                dep.setIdTarifa(rs.getString("TARIFA_IDTARIFA"));
                dep.setIdComuna(rs.getString("COMUNA_IDCOMUNA"));
                dep.setDireccion(rs.getString("DIRECCION"));
                dep.setDescripcion(rs.getString("Descripcion"));
                dep.setnombre_com(rs.getString("nombre_com"));
                dep.settarifa(parseInt(rs.getString("tarifa")));
                
            }
        }catch (Exception e){
            System.out.println("No se a podido listar"+ e.getMessage());
        }
        return dep;
    }

    
    @Override
    public boolean addDpto(Departamentos dpto) {
          try{
            con=conex.getConnection();
            
            CallableStatement sp_listar_id_depto = con.prepareCall("{call sp_listar_id_depto(?)}");
                    sp_listar_id_depto.registerOutParameter(1, OracleTypes.CURSOR);
                    sp_listar_id_depto.execute( );
                    ResultSet rs = ((OracleCallableStatement)sp_listar_id_depto).getCursor(1);



                    while(rs.next()){
                        dpto.setIdDepartamento(rs.getString("IdDeptoSeq"));
                        

             CallableStatement sp_insertar_dpto = con.prepareCall("{call sp_insertar_dpto(?,?,?,?,?)}");
                sp_insertar_dpto.setString(1,dpto.getIdDepartamento());
                sp_insertar_dpto.setString(2,dpto.getIdTarifa());
                sp_insertar_dpto.setString(3,dpto.getIdComuna());
                sp_insertar_dpto.setString(4,dpto.getDireccion());
                sp_insertar_dpto.setString(5,dpto.getDescripcion());
                sp_insertar_dpto.execute();
        }        
        }catch(Exception e){
            System.out.println("No se ha podido insertar los datos"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean editDpto(Departamentos dpto) {
        try{
            con=conex.getConnection();
              CallableStatement sp_actualizar_dpto = con.prepareCall("{call sp_actualizar_dpto(?,?,?,?,?)}");
                sp_actualizar_dpto.setString(1,dpto.getIdDepartamento());
                sp_actualizar_dpto.setString(2,dpto.getIdTarifa());
                sp_actualizar_dpto.setString(3,dpto.getIdComuna());
                sp_actualizar_dpto.setString(4,dpto.getDireccion());
                sp_actualizar_dpto.setString(5,dpto.getDescripcion());
                sp_actualizar_dpto.execute();
        }catch(Exception e){
            System.out.println("No se ha podido editar los datos"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean deleteDpto(String IdDepartamento) {
        
        try{
           con=conex.getConnection();
                CallableStatement sp_eliminar_dpto = con.prepareCall("{call sp_eliminar_dpto(?)}");
                    sp_eliminar_dpto.setString(1,IdDepartamento);

                    sp_eliminar_dpto.execute();

        }catch(Exception e){
            System.out.println("No se ha podido eliminar el departamento"+ e.getMessage());
        }
        return false;
    }

    @Override
    public List listarDptoDispo() {
       List<Departamentos> datos=new ArrayList<>();
        try{
            con=conex.getConnection();
                CallableStatement sp_listar_dpto = con.prepareCall("{call sp_listar_dpto(?)}");
                    sp_listar_dpto.registerOutParameter(1, OracleTypes.CURSOR);
                    sp_listar_dpto.execute();
                    ResultSet rs = ((OracleCallableStatement)sp_listar_dpto).getCursor(1);
            while(rs.next()){
                Departamentos d= new Departamentos();
                d.setIdDepartamento(rs.getString("IDDEPARTAMENTO"));
                d.setIdTarifa(rs.getString("TARIFA_IDTARIFA"));
                d.setIdComuna(rs.getString("COMUNA_IDCOMUNA"));
                d.setDireccion(rs.getString("DIRECCION"));
                d.setDescripcion(rs.getString("Descripcion"));
                d.setEstadoDpto(parseInt(rs.getString("ESTADODPTO")));
                d.setnombre_com(rs.getString("nombre_com"));
                d.settarifa(parseInt(rs.getString("tarifa")));
                datos.add(d);
            }
        }catch (Exception e){
            System.out.println("No se ha podido listar el departamento"+ e.getMessage());
        }
        return datos;
    }

    @Override
    public List listarDptoNoDispo() {
        List<Departamentos> datos=new ArrayList<>();
        try{
            con=conex.getConnection();
                CallableStatement sp_listar_dpto_nodisp = con.prepareCall("{call sp_listar_dpto_nodisp(?)}");
                    sp_listar_dpto_nodisp.registerOutParameter(1, OracleTypes.CURSOR);
                    sp_listar_dpto_nodisp.execute();
                    ResultSet rs = ((OracleCallableStatement)sp_listar_dpto_nodisp).getCursor(1);
            while(rs.next()){
                Departamentos d= new Departamentos();
                d.setIdDepartamento(rs.getString("IDDEPARTAMENTO"));
                d.setIdTarifa(rs.getString("TARIFA_IDTARIFA"));
                d.setIdComuna(rs.getString("COMUNA_IDCOMUNA"));
                d.setDireccion(rs.getString("DIRECCION"));
                d.setDescripcion(rs.getString("Descripcion"));
                d.setEstadoDpto(parseInt(rs.getString("ESTADODPTO")));
                d.setnombre_com(rs.getString("nombre_com"));
                d.settarifa(parseInt(rs.getString("tarifa")));
                datos.add(d);
            }
        }catch (Exception e){
            System.out.println("No se ha podido listar el departamento"+ e.getMessage());
        }
        return datos;
    }

    @Override
    public boolean editDptoEstadoD(String IdDepartamento) {
       try{
            con=conex.getConnection();
                CallableStatement sp_actualizar_estado_dptoD = con.prepareCall("{call sp_actualizar_estado_dptoD(?)}");
                    sp_actualizar_estado_dptoD.setString(1,IdDepartamento);
                    sp_actualizar_estado_dptoD.execute();

        }catch(Exception e){
            System.out.println("No se ha podido editar los datos"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean editDptoEstadoND(String IdDepartamento) {
       try{
            con=conex.getConnection();
                CallableStatement sp_actualizar_estado_dptoND = con.prepareCall("{call sp_actualizar_estado_dptoND(?)}");
                    sp_actualizar_estado_dptoND.setString(1,IdDepartamento);
                    sp_actualizar_estado_dptoND.execute();
        }catch(Exception e){
            System.out.println("No se ha podido editar los datos"+ e.getMessage());
        }
        return false;
    }
    
    public Departamentos montoMes() {
        try{
            con=conex.getConnection();
                CallableStatement sp_montos_graf = con.prepareCall("{call sp_montos_graf(?)}");
                    sp_montos_graf.registerOutParameter(1, OracleTypes.CURSOR);
                    sp_montos_graf.execute();
                    ResultSet rs = ((OracleCallableStatement)sp_montos_graf).getCursor(1);
            while(rs.next()){
                
                mesa.setMontoPas(rs.getString("mes_anterior"));
               
                
            }
        }catch (Exception e){
            System.out.println("No se a podido listar"+ e.getMessage());
        }
        return mesa;
    }
    public Departamentos montoMesAct() {
           try{
               con=conex.getConnection();
                   CallableStatement sp_montos_graf1 = con.prepareCall("{call sp_montos_graf1(?)}");
                       sp_montos_graf1.registerOutParameter(1, OracleTypes.CURSOR);
                       sp_montos_graf1.execute();
                       ResultSet rs = ((OracleCallableStatement)sp_montos_graf1).getCursor(1);
               while(rs.next()){

                   mes.setMontoMes(rs.getString("mes_actual"));


               }
           }catch (Exception e){
               System.out.println("No se a podido listar"+ e.getMessage());
           }
           return mes;
       }
        public Departamentos Porcen() {
               try{
                   con=conex.getConnection();
                       CallableStatement sp_montos_graf2 = con.prepareCall("{call sp_montos_graf2(?)}");
                           sp_montos_graf2.registerOutParameter(1, OracleTypes.CURSOR);
                           sp_montos_graf2.execute();
                           ResultSet rs = ((OracleCallableStatement)sp_montos_graf2).getCursor(1);
                   while(rs.next()){

                       por.setPorcen(rs.getInt("porcentaje"));


                   }
               }catch (Exception e){
                   System.out.println("No se a podido listar"+ e.getMessage());
               }
               return por;
           }
    
}
