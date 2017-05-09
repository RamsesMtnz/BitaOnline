/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import DTO.AlumnosDTO;
import DTO.EncargadaDTO;
import DTO.MaestroDTO;
import DTO.MenuTratamientoDTO;
import DTO.TratamientoDTO;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.sql.Connection;
import java.sql.Date;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class ConsultasMySQL {

    public ConsultasMySQL(Connection conn) {
        this.conn = conn;
    }

    private static final String sesion = "select * from usuarios where usuario = ? and contraseña=? and tipo=?";
     private static final String sesion2 = "select * from usuarios where usuario = ? and contraseña=?";
    Connection conn;
    String consulta = "select producto,usuario,precio,categoria FROM Detalles_Venta";
    private static final String insertarMaestro = "insert into Maestro2 (id_empleado,nombre_completo,correo) values (?,?,?)";
    private static final String insertarUsuario = "insert into usuarios (id_empleado,tipo,usuario,contraseña) values (?,?,?,?)";
    private static final String insertarEncargada = "insert into encargada_clinica (id_empleado,nombre,apellido_paterno,apellido_materno,clinica,turno) values (?,?,?,?,?,?)";
    private static final String insertarBitacora = "insert into bitacora (folio,matricula,categoria,tratamiento,cantidad,alumno,fecha,sexo,clinica,comentarios) values (?,?,?,?,?,?,?,?,?,?)";
    private static final String insertarBitacoraRecibos = "insert into Bitacora_Recibos (folio,alumno,tratamiento,cantidad,fecha,comentario,sexo,clinica) values (?,?,?,?,?,?,?,?)";
    private static final String obtenerTratamientos = "select * from area_tratamientos";
    private static final String obtenerMenuTratamientos = "select * from menu_tratamientos where area_tratamiento = ?";
    private static final String obtenerCategoria = "select tratamiento from tratamientos where id_tratamiento = ?";
    
    public boolean autentificacion(int tipo,String usuario,String contraseña) throws SQLException{
		
		PreparedStatement pst = null;
		ResultSet re = null;
		
		pst = conn.prepareStatement(sesion);
		pst.setString(1, usuario);
		pst.setString(2, contraseña);
                pst.setInt(3, tipo);
		re = pst.executeQuery();
		
		if(re.absolute(1)){
			return true;
		}
		
		return false;
	}
    public boolean autentificacion2(String usuario,String contraseña) throws SQLException{
		
		PreparedStatement pst = null;
		ResultSet re = null;
		
		pst = conn.prepareStatement(sesion2);
		pst.setString(1, usuario);
		pst.setString(2, contraseña);
		re = pst.executeQuery();
		
		if(re.absolute(1)){
			return true;
		}
		
		return false;
	}
    
     public boolean RegistrarMaestro(int id_empleado, String nombre, String correo) throws SQLException,NumberFormatException{

        PreparedStatement pst = null;
        pst = conn.prepareStatement(insertarMaestro);
        pst.setInt(1, id_empleado);
        pst.setString(2, nombre);
        pst.setString(3, correo);

        if (pst.executeUpdate() == 1) {
            return true;
        }

        return false;
    }

    public boolean RegistrarEncargada(int id_empleado, String nombre, String apellido_paterno, String apellido_materno, String clinica, String turno) throws SQLException {

        PreparedStatement pst = null;
        pst = conn.prepareStatement(insertarEncargada);
        pst.setInt(1, id_empleado);
        pst.setString(2, nombre);
        pst.setString(3, apellido_paterno);
        pst.setString(4, apellido_materno);
        pst.setString(5, clinica);
        pst.setString(6, turno);

        if (pst.executeUpdate() == 1) {
            return true;
        }

        return false;
    }

    public boolean RegistrarUsuario(int id_empleado, int tipo, String usuario, String contraseña) throws SQLException {

        PreparedStatement pst = null;
        pst = conn.prepareStatement(insertarUsuario);
        pst.setInt(1, id_empleado);
        pst.setInt(2, tipo);
        pst.setString(3, usuario);
        pst.setString(4, contraseña);

        if (pst.executeUpdate() == 1) {
            return true;
        }

        return false;
    }
     public boolean RegistroBitacora(int folio,int matricula, String categoria, String tratamiento, String cantidad,String alumno,Date fecha,String sexo,String clinica,String comentarios) throws SQLException {

        PreparedStatement pst = null;
        pst = conn.prepareStatement(insertarBitacora);
        pst.setInt(1, folio);
        pst.setInt(2, matricula);
        pst.setString(3, categoria);
        pst.setString(4, tratamiento);
        pst.setString(5, cantidad);
        pst.setString(6, alumno);
        pst.setDate(7, fecha);
        pst.setString(8, sexo);
        pst.setString(9, clinica);
        pst.setString(10, comentarios);

        if (pst.executeUpdate() == 1) {
            return true;
        }

        return false;
    }
     
          public boolean RegistroBitacoraRecibos(int folio,int alumno, int tratamiento, int cantidad,Date fecha,String comentarios,int sexo,int clinica) throws SQLException {

        PreparedStatement pst = null;
        pst = conn.prepareStatement(insertarBitacoraRecibos);
        pst.setInt(1, folio);
        pst.setInt(2, alumno);
        pst.setInt(3, tratamiento);
        pst.setInt(4, cantidad);
        pst.setDate(5, fecha);
        pst.setString(6, comentarios);
        pst.setInt(7, sexo);
        pst.setInt(8, clinica);

        if (pst.executeUpdate() == 1) {
            return true;
        }

        return false;
    }

    Connection conexion = null;
    static Statement st = null;
    static ResultSet rs = null;
    static String user = "sd";

 public static List<MaestroDTO> MostrarMaestros() {

        List<MaestroDTO> maestros = new ArrayList<MaestroDTO>();
        try {
            String query = "select id_empleado,nombre_completo,correo FROM Maestro2";
            Connection conexion = Conexionsql.Conexion();
            st = conexion.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {

                MaestroDTO detalles = new MaestroDTO(rs.getInt("id_empleado"), rs.getString("nombre_completo"), rs.getString("correo"));
                maestros.add(detalles);

            }

            return maestros;

        } catch (SQLException ex) {

        }

        return null;

    }
    
    public static List<EncargadaDTO> MostrarEncargada() {

        List<EncargadaDTO> encargada = new ArrayList<EncargadaDTO>();
        try {
            String query = "select id_empleado,nombre,apellido_paterno,apellido_materno,clinica,turno FROM encargada_clinica";
            Connection conexion = Conexionsql.Conexion();
            st = conexion.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {

                EncargadaDTO detalles = new EncargadaDTO(rs.getInt("id_empleado"), rs.getString("nombre"), rs.getString("apellido_paterno"), rs.getString("apellido_materno"), rs.getString("clinica"),rs.getString("turno"));
                encargada.add(detalles);

            }

            return encargada;

        } catch (SQLException ex) {

        }

        return null;

    }
    
       public static List<AlumnosDTO> MostrarAlumnos() {

        List<AlumnosDTO> alumno = new ArrayList<AlumnosDTO>();
        try {
            String query = "select folio,matricula,alumno,tratamiento,comentarios FROM bitacora";
            Connection conexion = Conexionsql.Conexion();
            st = conexion.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {

                AlumnosDTO detalles = new AlumnosDTO(rs.getInt("folio"), rs.getInt("matricula"), rs.getString("alumno"), rs.getString("tratamiento"), rs.getString( "comentarios"));
                alumno.add(detalles);

            }

            return alumno;

        } catch (SQLException ex) {

        }

        return null;

    }

    public boolean EliminarMaestro(int id_empleado) throws SQLException {
        boolean respuesta = false;

        try {
            String query = "DELETE FROM Maestro where id_empleado=" + id_empleado + " ";
            Connection conexion = Conexionsql.Conexion();
            Statement st = null;
            st = conexion.createStatement();
            st.executeUpdate(query);
            respuesta = true;

        } catch (SQLException ex) {
            respuesta = false;
        }

        return respuesta;
    }
    
    	public List<TratamientoDTO> obtenerTratamientos() 
			throws SQLException{
		List<TratamientoDTO> listaTratamientos = 
				new ArrayList<TratamientoDTO>();
		
		Statement sentencia;
		ResultSet rs;
		TratamientoDTO tratamientoDTO;
		
		sentencia = conn.createStatement();
		rs = sentencia.executeQuery(obtenerTratamientos);
		
		while( rs.next() ){	
			tratamientoDTO = new TratamientoDTO();
			tratamientoDTO.setId_tratamiento(rs.getInt("area") );
			tratamientoDTO.setTratamiento(rs.getString("tratamiento"));
			listaTratamientos.add(tratamientoDTO);
			//System.out.println(estadoDTO.getIdEstado() + " " + estadoDTO.getEstado());
		}
		
		rs.close();
		sentencia.close();
		
		return listaTratamientos;
	}
        
        
        public List<MenuTratamientoDTO> obtenerMenuTratamiento(int id_tratamiento) 
			throws SQLException{
		List<MenuTratamientoDTO> listamenu_tratamientos = 
				new ArrayList<MenuTratamientoDTO>();
		
		PreparedStatement sentencia;
		ResultSet rs;
		MenuTratamientoDTO menuTratamiento;
		
		sentencia = conn.prepareStatement(obtenerMenuTratamientos);
		sentencia.setInt(1, id_tratamiento);
		rs = sentencia.executeQuery();
		
		while( rs.next() ){	
                    menuTratamiento = new MenuTratamientoDTO();
                    menuTratamiento.setId_menu(rs.getInt("contador") );
                    menuTratamiento.setId_tratamiento(rs.getInt("area_tratamiento") );
                    menuTratamiento.setMenu_tratamientos(rs.getString("name_tratamiento"));
                    listamenu_tratamientos.add(menuTratamiento);
			//System.out.println(estadoDTO.getIdEstado() + " " + estadoDTO.getEstado());
		}
		
		rs.close();
		sentencia.close();
		
		return listamenu_tratamientos;
	}
        
        String resultado;
         public String obtenerCategoria(int id_menu) 
			throws SQLException{
		
		
		Statement sentencia=null;
		
		
		sentencia = conn.createStatement();
        	ResultSet rs = sentencia.executeQuery("select tratamiento from tratamientos where id_tratamiento="+id_menu);

                
                while(rs.next()){
                    resultado=rs.getString("tratamiento");
                }
		
		rs.close();
		sentencia.close();
		
		return resultado;
	}

    
   

    public static void main(String[] args) throws ParseException {
        Connection conn;
        try {
            conn = ConexionMySQL.getConexionUnica("localhost", "facultad_odontologia", "root", "root");

            ConsultasMySQL sql = new ConsultasMySQL(conn);
            
            
            SimpleDateFormat dateformat= new SimpleDateFormat("yyyy-MM-dd");
            java.sql.Date f=java.sql.Date.valueOf("1995-02-19");
		String datef=dateformat.format(f);
                java.sql.Date sqlDate=java.sql.Date.valueOf(datef);
                     System.out.println(sql.RegistroBitacoraRecibos(8, 49247,2, 5,sqlDate,"ninguno",2, 1));
        } catch (SQLException ex) {
            Logger.getLogger(ConsultasMySQL.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
