/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class Metodos {
    public boolean EliminarMaestro(int id_empleado) throws SQLException{
		boolean respuesta = false;
		
                try{
                   String query="DELETE FROM Maestro where id_empleado="+id_empleado+" ";
                   Connection conexion = Conexionsql.Conexion();
                   Statement st=null;
                   st=conexion.createStatement();
                   st.executeUpdate(query);
                   respuesta=true;
                   
                }catch(SQLException ex){
                    respuesta=false;
                }
		
		
		return respuesta;
	}
    
     public boolean EliminarUsuario(int id_empleado) throws SQLException{
		boolean respuesta = false;
		
                try{
                   String query="DELETE FROM usuarios where id_empleado="+id_empleado+" ";
                   Connection conexion = Conexionsql.Conexion();
                   Statement st=null;
                   st=conexion.createStatement();
                   st.executeUpdate(query);
                   respuesta=true;
                   
                }catch(SQLException ex){
                    respuesta=false;
                }
		
		
		return respuesta;
	}
    
     public boolean EliminarEncargada(int id_empleado) throws SQLException{
		boolean respuesta = false;
		
                try{    
                   String query="DELETE FROM encargada_clinica where id_empleado="+id_empleado+" ";
                   Connection conexion = Conexionsql.Conexion();
                   Statement st=null;
                   st=conexion.createStatement();
                   st.executeUpdate(query);
                   respuesta=true;
                   
                }catch(SQLException ex){
                    respuesta=false;
                }
		
		
		return respuesta;
	}
     
      public ArrayList<String> getTratamientos(String tratamiento){
         ArrayList<String> tratamientos = new ArrayList<>();
         PreparedStatement pst = null;
         ResultSet rs = null;
         
         try{
             String sql="Select tratamiento from tratamientos where tratamiento like ? limit 10";
             Connection conexion = Conexionsql.Conexion();
             pst=conexion.prepareStatement(sql);
             pst.setString(1, tratamiento+"%");
             rs = pst.executeQuery();
             while(rs.next()){
                 tratamientos.add(rs.getString("tratamiento"));
             }
         }catch(SQLException ex){
             
         }
         
         return tratamientos;
    }
       String resultado;
         public String obtenerCategoria(int id_menu) 
			{
         Statement pst = null;
         ResultSet rs = null;
		
		try{
             Connection conexion = Conexionsql.Conexion();
             pst = conexion.createStatement();
             rs = pst.executeQuery("select tratamiento from area_tratamientos where area="+id_menu);
              while(rs.next()){
                    resultado=rs.getString("tratamiento");
                }
         }catch(SQLException ex){
             
         }

		
		
		return resultado;
	}
         
          String tratamiento;
         public String obtenerTratamiento(int id_tratamiento) 
			{
         Statement pst = null;
         ResultSet rs = null;
		
		try{
             Connection conexion = Conexionsql.Conexion();
             pst = conexion.createStatement();
             rs = pst.executeQuery("select name_tratamiento from menu_tratamientos where contador="+id_tratamiento);
              while(rs.next()){
                    tratamiento=rs.getString("name_tratamiento");
                }
         }catch(SQLException ex){
             
         }

		
		
		return tratamiento;
	}
         
         public String obtenerNombreMaestro(int matricula) 
			{
         Statement pst = null;
         ResultSet rs = null;
		
		try{
             Connection conexion = Conexionsql.Conexion();
             pst = conexion.createStatement();
             rs = pst.executeQuery("select nombre_completo from Maestro2 where id_empleado="+matricula);
              while(rs.next()){
                    resultado=rs.getString("nombre_completo");
                }
         }catch(SQLException ex){
             
         }

		
		
		return resultado;
	}
      
    
    public static void main(String args[]){
        Metodos metodo = new Metodos();
        System.out.print(metodo.obtenerNombreMaestro(32923));
    }
}
