/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Interfaces.CrudCliente;
import Modelo.Cliente;
import java.util.ArrayList;
import java.util.List;
import Config.Conexion;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import oracle.jdbc.OracleCallableStatement;
import oracle.jdbc.OracleTypes;


public class ClienteDAO implements CrudCliente{

    PreparedStatement ps;
    ResultSet rs;
    Connection con;
    Conexion conex= new Conexion();

    Cliente cli= new Cliente();
    
    @Override
    public List listarCliente() {
       List<Cliente> datos=new ArrayList<>();
        try{
               con=conex.getConnection();
                CallableStatement sp_listar_cliente = con.prepareCall("{call sp_listar_cliente(?)}");  
                    sp_listar_cliente.registerOutParameter(1, OracleTypes.CURSOR);
                    sp_listar_cliente.execute();
                    ResultSet rs = ((OracleCallableStatement)sp_listar_cliente).getCursor(1);
                        while(rs.next()){
                            Cliente cli= new Cliente();
                            cli.setRutCliente(rs.getString("RUTCLIENTE"));
                            cli.setIdUsuario(rs.getString("USUARIO_IDUSUARIO"));
                            cli.setIdComuna(rs.getString("COMUNA_IDCOMUNA"));
                            cli.setNombreCli(rs.getString("NOMBRE"));
                            cli.setAppellidoPC(rs.getString("APELLIDOP"));
                            cli.setApellidoMC(rs.getString("APELLIDOM"));
                            
                            datos.add(cli);
                            }
                            }catch (Exception e){
                                System.out.println("Los datos no se han podido listar "+e.getMessage());
                            }
                            return datos;
                        }

    @Override
    public Cliente listarIdCliente(String RutCliente) {
        try{
         con=conex.getConnection();
                CallableStatement sp_listar_clienteid = con.prepareCall("{call sp_listar_clienteid(?,?)}");
                    sp_listar_clienteid.setString(1,RutCliente);
                    sp_listar_clienteid.registerOutParameter(2, OracleTypes.CURSOR);
                    sp_listar_clienteid.execute();
                    ResultSet rs = ((OracleCallableStatement)sp_listar_clienteid).getCursor(2);
                    while(rs.next()){
                
                        cli.setRutCliente(rs.getString("RUTCLIENTE"));
                        cli.setIdUsuario(rs.getString("USUARIO_IDUSUARIO"));
                        cli.setIdComuna(rs.getString("COMUNA_IDCOMUNA"));
                        cli.setNombreCli(rs.getString("NOMBRE"));
                        cli.setAppellidoPC(rs.getString("APELLIDOP"));
                        cli.setApellidoMC(rs.getString("APELLIDOM"));
                        }
                        }catch (Exception e){
                            System.out.println("No se a podido listar"+ e.getMessage());
                        }
                        return cli;
                    }

    @Override
    public boolean addCliente(Cliente cli) {
           try{
             con=conex.getConnection();
             CallableStatement sp_insertar_usuario = con.prepareCall("{call sp_insertar_usuario(?,?,?,?,?)}");
                sp_insertar_usuario.setString(1,cli.getIdUsuario());
                sp_insertar_usuario.setString(2,cli.getNombreCli());
                sp_insertar_usuario.setString(3,cli.getTipoUsuario());
                sp_insertar_usuario.setString(4,cli.getContrasena());
                sp_insertar_usuario.setString(5,cli.getCorreo());
       
                sp_insertar_usuario.execute();
                
              CallableStatement sp_insertar_cliente = con.prepareCall("{call sp_insertar_cliente(?,?,?,?,?,?)}");
                sp_insertar_cliente.setString(1,cli.getRutCliente());
                sp_insertar_cliente.setString(2,cli.getIdUsuario());
                sp_insertar_cliente.setString(3,cli.getIdComuna());
                sp_insertar_cliente.setString(4,cli.getNombreCli());
                sp_insertar_cliente.setString(5,cli.getAppellidoPC());
                sp_insertar_cliente.setString(6,cli.getApellidoMC());

                sp_insertar_cliente.execute();

 
        }catch(Exception e){
            System.out.println("No se ha podido insertar los datos"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean editCliente(Cliente cli) {
        try{
             con=conex.getConnection();
              CallableStatement sp_actualizar_cliente = con.prepareCall("{call sp_actualizar_cliente(?,?,?,?,?,?)}");
                sp_actualizar_cliente.setString(1,cli.getRutCliente());
                sp_actualizar_cliente.setString(2,cli.getIdUsuario());
                sp_actualizar_cliente.setString(3,cli.getIdComuna());
                sp_actualizar_cliente.setString(4,cli.getNombreCli());
                sp_actualizar_cliente.setString(5,cli.getAppellidoPC());
                sp_actualizar_cliente.setString(6,cli.getApellidoMC());
                sp_actualizar_cliente.execute();
 
        }catch(Exception e){
            System.out.println("No se ha podido editar los datos"+ e.getMessage());
        }
        return false;
    }

    @Override
    public boolean deleteCliente(String RutCliente) {
        
        try{
             con=conex.getConnection();
              CallableStatement sp_eliminar_cliente = con.prepareCall("{call sp_eliminar_cliente(?)}");
                sp_eliminar_cliente.setString(1,RutCliente);
                sp_eliminar_cliente.execute();
        }catch(Exception e){
            System.out.println("No se ha podido eliminar el cliente"+ e.getMessage());
        }
        return false;
    }
    
}
