/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CrudArriendo;
import Modelo.Arriendo;
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
public class ArriendoDAO implements CrudArriendo{
    
    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex= new Conexion();
    Arriendo arri= new Arriendo();
    
    @Override
    public List listarArriendo() {
        List<Arriendo> datos=new ArrayList<>();
        try{
            con=conex.getConnection();
                CallableStatement sp_listar_arriendo = con.prepareCall("{call sp_listar_arriendo(?)}");  
                        sp_listar_arriendo.registerOutParameter(1, OracleTypes.CURSOR);
                        sp_listar_arriendo.execute();
                        ResultSet rs = ((OracleCallableStatement)sp_listar_arriendo).getCursor(1);
            while(rs.next()){
                Arriendo arri= new Arriendo();
                arri.setIdArriendo(rs.getString("IDDETAIL_ARRIENDO"));
                arri.setIdDepartamento(rs.getString("DEPARTAMENTO_IDDEPARTAMENTO"));
                arri.setIdMasterArriendo(rs.getString("MASTER_ARRIENDO_IDMASTER_ARRIENDO"));
                arri.setFechaInicio(rs.getString("FECHA_INICIO"));
                arri.setFechaFin(rs.getString("FECHA_FIN"));
                arri.setMonto(parseInt(rs.getString("MONTO")));
                datos.add(arri);
            }
        }catch (Exception e){
            
        }
        return datos;
    }

    @Override
    public Arriendo listarIdArriendo(String IdArriendo) {
        try{
            con=conex.getConnection();
            CallableStatement sp_listar_arriendoid = con.prepareCall("{call sp_listar_arriendoid(?,?)}");
                    sp_listar_arriendoid.setString(1,IdArriendo);
                    sp_listar_arriendoid.registerOutParameter(2, OracleTypes.CURSOR);
                    sp_listar_arriendoid.execute();
                    ResultSet rs = ((OracleCallableStatement)sp_listar_arriendoid).getCursor(2);
            while(rs.next()){
                arri.setIdArriendo(rs.getString("IDDETAIL_ARRIENDO"));
                arri.setIdDepartamento(rs.getString("DEPARTAMENTO_IDDEPARTAMENTO"));
                arri.setIdMasterArriendo(rs.getString("MASTER_ARRIENDO_IDMASTER_ARRIENDO"));
                arri.setFechaInicio(rs.getString("FECHA_INICIO"));
                arri.setFechaFin(rs.getString("FECHA_FIN"));
                arri.setMonto(parseInt(rs.getString("MONTO")));
            }
        }catch(Exception e){
            
        }
        
        return arri;
    }

    @Override
    public boolean addArriendo(Arriendo arri) {
  try{
            con=conex.getConnection();
                    CallableStatement sp_insertar_arriendo = con.prepareCall("{call sp_insertar_arriendo(?,?,?,?,?,?)}");
                           sp_insertar_arriendo.setString(1,arri.getIdArriendo());
                           sp_insertar_arriendo.setString(2,arri.getIdDepartamento());
                           sp_insertar_arriendo.setString(3,arri.getIdMasterArriendo());
                           sp_insertar_arriendo.setString(4,arri.getFechaInicio());
                           sp_insertar_arriendo.setString(5,arri.getFechaFin());
                           sp_insertar_arriendo.setInt(6,arri.getMonto());
                           sp_insertar_arriendo.execute();
                           
        }catch(Exception e){
             System.out.println("No se ha podido insertar los datos"+ e.getMessage());
                
        }
        return false;
    }

    @Override
    public boolean editArriendo(Arriendo arri) {
        try{
            con=conex.getConnection();
                        CallableStatement sp_actualizar_arriendo = con.prepareCall("{call sp_actualizar_arriendo(?,?,?,?,?,?)}");
                                        sp_actualizar_arriendo.setString(1,arri.getIdArriendo());
                                        sp_actualizar_arriendo.setString(2,arri.getIdDepartamento());
                                        sp_actualizar_arriendo.setString(3,arri.getIdMasterArriendo());
                                        sp_actualizar_arriendo.setString(4,arri.getFechaInicio());
                                        sp_actualizar_arriendo.setString(5,arri.getFechaFin());
                                        sp_actualizar_arriendo.setInt(6,arri.getMonto());
                                        sp_actualizar_arriendo.execute();
        }catch(Exception e){
            System.out.println("No se ha podido editar los datos"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean deleteArriendo(String IdArriendo) {        
        try{
            con=conex.getConnection();
            CallableStatement sp_eliminar_arriendo = con.prepareCall("{call sp_eliminar_arriendo(?)}");
                sp_eliminar_arriendo.setString(1,IdArriendo);
                sp_eliminar_arriendo.execute();
        }catch(Exception e){
            System.out.println("No se ha podido eliminar el arriendo"+ e.getMessage());
        }
        return false;
    }
    
}
