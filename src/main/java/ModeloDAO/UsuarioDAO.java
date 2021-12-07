/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.ValidarLogin;
import Modelo.Usuario;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import oracle.jdbc.OracleCallableStatement;
import oracle.jdbc.OracleTypes;

/**
 *
 * @author avata
 */
public class UsuarioDAO implements ValidarLogin {
    Connection con;
    Conexion cn=new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    
    @Override
    public int validar(Usuario usu){
        try{
            int r=0;
            con=cn.getConnection();
          
            CallableStatement sp_validar_usuario = con.prepareCall("{call sp_validar_usuario(?,?,?)}");
                    sp_validar_usuario.setString(1,usu.getCorreousuario());
                    sp_validar_usuario.setString(2,usu.getContraseña());
                    sp_validar_usuario.registerOutParameter(3, OracleTypes.CURSOR);
                    sp_validar_usuario.execute();
                    ResultSet rs = ((OracleCallableStatement)sp_validar_usuario).getCursor(3);
            while(rs.next()){
                r=r+1;
                usu.setCorreousuario(rs.getString("CORREOELECTRONICO"));
                usu.setContraseña(rs.getString("PASSWORD_2"));
                usu.setTipousuario(rs.getString("TIPO_USUARIO_IDTIPO_USUARIO"));
                usu.setNombreusuario(rs.getString("NOMBREUSUARIO"));

            }
            
            if(r==1 && "1".equals(usu.getTipousuario())){
                return 1;
            }else if(r==1 && "2".equals(usu.getTipousuario())){
                return 2;
            }else if(r==0){
                
                return 0;
            }
        }catch(Exception e){
            System.out.println("No se ha podido validar"+e.getMessage());
        }
        return 0;
    }

    @Override
    public int validarTipo(Usuario usu) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
