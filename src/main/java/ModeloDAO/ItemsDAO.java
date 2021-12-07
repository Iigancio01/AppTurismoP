/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CrudItems;
import Modelo.Items;
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
public class ItemsDAO implements CrudItems {

    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex= new Conexion();
    
    Items itm =new Items();
            
    @Override
    public List listarItems() {
        List<Items> datos=new ArrayList<>();    
        try{
            con=conex.getConnection();
                CallableStatement sp_listar_item = con.prepareCall("{call sp_listar_item(?)}");
                    sp_listar_item.registerOutParameter(1, OracleTypes.CURSOR);
                    sp_listar_item.execute( );
                    ResultSet rs = ((OracleCallableStatement)sp_listar_item).getCursor(1);



                    while(rs.next()){
                        Items it= new Items();
                        it.setIdItem(rs.getString("IDITEM"));
                        it.setIdFamiliaItem(rs.getString("SUB_FAMILIA_ITEM_IDSUB_FAMILIA_ITEM"));
                        it.setDescripcion(rs.getString("DESCRIPCION"));
                        it.setValorItem(parseInt(rs.getString("VALOR")));
                        it.setnombrefam(rs.getString("nombrefam"));

                        datos.add(it);
            }
        }catch (Exception e){
            System.out.println("No se han podido listar los items "+e.getMessage());
        }
        return datos;
    }

    @Override
    public Items listarIdItems(String IdItem) {
        try{
            con=conex.getConnection();
                CallableStatement sp_listar_itemid = con.prepareCall("{call sp_listar_itemid(?,?)}");
                    sp_listar_itemid.setString(1,IdItem);
                    sp_listar_itemid.registerOutParameter(2, OracleTypes.CURSOR);
                    sp_listar_itemid.execute();
                    ResultSet rs = ((OracleCallableStatement)sp_listar_itemid).getCursor(2);
                    while(rs.next()){

                        itm.setIdItem(rs.getString("IDITEM"));
                        itm.setIdFamiliaItem(rs.getString("SUB_FAMILIA_ITEM_IDSUB_FAMILIA_ITEM"));
                        itm.setDescripcion(rs.getString("DESCRIPCION"));
                        itm.setValorItem(parseInt(rs.getString("VALOR")));
                        itm.setnombrefam(rs.getString("nombrefam"));


            }
        }catch (Exception e){
            System.out.println("No se a podido listar"+ e.getMessage());
        }
        return itm;
    }
 
    @Override
    public boolean addItems(Items it) {
          try{
            con=conex.getConnection();
                 CallableStatement sp_listar_id_item = con.prepareCall("{call sp_listar_id_item(?)}");
                    sp_listar_id_item.registerOutParameter(1, OracleTypes.CURSOR);
                    sp_listar_id_item.execute( );
                    ResultSet rs = ((OracleCallableStatement)sp_listar_id_item).getCursor(1);



                    while(rs.next()){
                        it.setIdItem(rs.getString("IdItemSeq"));
                        

            
              CallableStatement sp_insertar_item = con.prepareCall("{call sp_insertar_item(?,?,?,?)}");
                sp_insertar_item.setString(1,it.getIdItem());
                sp_insertar_item.setString(2,it.getIdFamiliaItem());
                sp_insertar_item.setString(3,it.getDescripcion());
                sp_insertar_item.setInt(4,it.getValorItem());
                sp_insertar_item.execute();
 }
        }catch(Exception e){
            System.out.println("No se ha podido insertar los datos"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean editItems(Items it) {
        try{
           con=conex.getConnection();
              CallableStatement sp_actualizar_item = con.prepareCall("{call sp_actualizar_item(?,?,?,?)}");
                sp_actualizar_item.setString(1,it.getIdItem());
                sp_actualizar_item.setString(2,it.getIdFamiliaItem());
                sp_actualizar_item.setString(3,it.getDescripcion());
                sp_actualizar_item.setInt(4,it.getValorItem());
                sp_actualizar_item.execute();
        }catch(Exception e){
            System.out.println("No se ha podido editar los datos"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean deleteItems(String IdItem) {
          try{
             con=conex.getConnection();
                CallableStatement sp_eliminar_item = con.prepareCall("{call sp_eliminar_item(?)}");
                    sp_eliminar_item.setString(1,IdItem);
                    sp_eliminar_item.execute();

        }catch(Exception e){
            System.out.println("No se ha podido eliminar el item"+ e.getMessage());
        }
        return false;
    }
    
}
