/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Config;

import java.sql.Connection;
import java.sql.DriverManager;


/**
 *
 * @author avata
 */
public class Conexion {
    Connection con;
    String url="jdbc:oracle:thin:@34.176.137.180:1521:xe";
    String user="C##VICENTE";
    String pass="123456";
    
    public Connection getConnection(){
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection(url,user,pass);
            System.out.println("Conexion exitosa");
        }catch(Exception e){
            System.out.println("Error de conexion"+ e.getMessage());
        }
        return con;
    }
}
