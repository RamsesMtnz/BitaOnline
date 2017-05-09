/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class Conexionsql {
	static String url="jdbc:mysql://localhost:3306/facultad_odontologia";
	static String usuario="root";
	static String contraseña="root";
	
	public static Connection Conexion() throws SQLException{
	
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conexion= DriverManager.getConnection(url,usuario,contraseña);
			
			return conexion;
			
		}catch(ClassNotFoundException es){
			return null;
		} 
	}
}
