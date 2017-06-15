/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import DTO.AlumnoMateriasDTO;
import DTO.AlumnosBitacoraDTO;
import DTO.AlumnosDTO;
import DTO.EncargadaDTO;
import DTO.MaestroDTO;
import DTO.MateriasDTO;
import DTO.MenuTratamientoDTO;
import DTO.NombreMaestroDTO;
import DTO.SemestreDTO;
import DTO.TratamientoDTO;

import static com.sun.org.apache.xalan.internal.lib.ExsltDatetime.date;
import java.sql.Connection;
import java.sql.Date;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.lang.NumberFormatException;
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
    private static final String insertarMaterias = "insert into maestro_materias (id_empleado,nombre_completo,usuario,materia,grado,grupo,año) values (?,?,?,?,?,?,?)";
    private static final String insertarAlumnos = "insert into alumnos (matricula,nombre_completo,materia,semestre,grupo,año,correo) values (?,?,?,?,?,?,?)";
    private static final String insertarUsuario = "insert into usuarios (id_empleado,tipo,usuario,contraseña) values (?,?,?,?)";
    private static final String insertarEncargada = "insert into encargada_clinica (id_empleado,nombre,apellido_paterno,apellido_materno,clinica,turno) values (?,?,?,?,?,?)";
    private static final String insertarBitacora = "insert into bitacora (folio,matricula,categoria,tratamiento,cantidad,alumno,fecha,sexo,clinica,comentarios) values (?,?,?,?,?,?,?,?,?,?)";
    private static final String insertarBitacoraRecibos = "insert into Bitacora_Recibos (folio,alumno,nombre_completo,tratamiento,cantidad,fecha,comentario,sexo,clinica,maestro,materia,grado,grupo,año) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
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
    
     public boolean RegistrarMaterias(int id_empleado, String nombre,String usuario, String materias, String grado,String grupo,String año) throws SQLException {

        PreparedStatement pst = null;
        pst = conn.prepareStatement(insertarMaterias);
        pst.setInt(1, id_empleado);
        pst.setString(2, nombre);
         pst.setString(3, usuario);
        pst.setString(4, materias);
        pst.setString(5, grado);
        pst.setString(6, grupo);
        pst.setString(7, año);
        if (pst.executeUpdate() == 1) {
            return true;
        }

        return false;
    }
     
      public boolean RegistrarAlumnos(int matricula, String nombre_completo, String materia,String semestre,String grupo,int año,String correo) throws SQLException {

        PreparedStatement pst = null;
        pst = conn.prepareStatement(insertarAlumnos);
        pst.setInt(1, matricula);
        pst.setString(2, nombre_completo);
        pst.setString(3,materia);
        pst.setString(4,semestre);
        pst.setString(5, grupo);
        pst.setInt(6, año);
        pst.setString(7, correo);
 
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
     
          public boolean RegistroBitacoraRecibos(int folio,int alumno,String nombre, int tratamiento, int cantidad,Date fecha,String comentarios,int sexo,int clinica,String maestro,String materia,String grado,String grupo,String año) throws SQLException {

        PreparedStatement pst = null;
        pst = conn.prepareStatement(insertarBitacoraRecibos);
        pst.setInt(1, folio);
        pst.setInt(2, alumno);
        pst.setString(3, nombre);
        pst.setInt(4, tratamiento);
        pst.setInt(5, cantidad);
        pst.setDate(6, fecha);
        pst.setString(7, comentarios);
        pst.setInt(8, sexo);
        pst.setInt(9, clinica);
        pst.setString(10, maestro);
        pst.setString(11, materia);
        pst.setString(12, grado);
        pst.setString(13, grupo);
        pst.setString(14, año); 
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
            String query = "select folio,alumno,tratamiento,comentario FROM Bitacora_Recibos";
            Connection conexion = Conexionsql.Conexion();
            st = conexion.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {

                AlumnosDTO detalles = new AlumnosDTO(rs.getInt("folio"), rs.getInt("alumno"), rs.getInt("tratamiento"), rs.getString("comentario"));
                alumno.add(detalles);

            }

            return alumno;

        } catch (SQLException ex) {

        }

        return null;

    }
       
       public static List<NombreMaestroDTO> MostrarNombreMaestros() {

        List<NombreMaestroDTO> maestro = new ArrayList<NombreMaestroDTO>();
        try {
            String query = "select nombre_completo FROM Maestro2";
            Connection conexion = Conexionsql.Conexion();
            st = conexion.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {

                NombreMaestroDTO detalles = new NombreMaestroDTO(rs.getString("nombre_completo"));
                maestro.add(detalles);

            }

            return maestro;

        } catch (SQLException ex) {

        }

        return null;

    }
       
        public static List<AlumnoMateriasDTO> MostrarAlumnosMaterias(String materia,String semestre,String grupo) {

        List<AlumnoMateriasDTO> alumno = new ArrayList<AlumnoMateriasDTO>();
        try {
            String query = "select matricula,nombre_completo,materia,semestre,grupo,correo FROM alumnos where materia='"+materia+"' and semestre='"+semestre+"' and grupo='"+grupo+"'";
            Connection conexion = Conexionsql.Conexion();
            st = conexion.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {

                AlumnoMateriasDTO detalles = new AlumnoMateriasDTO(rs.getInt("matricula"),rs.getString("nombre_completo"),rs.getString("materia"),rs.getString("semestre"),rs.getString("grupo"),rs.getString("correo"));
                alumno.add(detalles);

            }

            return alumno;

        } catch (SQLException ex) {

        }

        return null;

    }
        
          
        public static List<AlumnosBitacoraDTO> MostrarRegistroAlumnos(String maestro,String materia,String grado,String grupo) {

        List<AlumnosBitacoraDTO> alumno = new ArrayList<AlumnosBitacoraDTO>();
        try {
            String query = "select folio,alumno,nombre_completo,tratamiento,cantidad,fecha,maestro from bitacora_recibos where maestro='"+maestro+"' and materia='"+materia+"'and grado='"+grado+"' and grupo='"+grupo+"'";
            Connection conexion = Conexionsql.Conexion();
            st = conexion.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {

                AlumnosBitacoraDTO detalles = new AlumnosBitacoraDTO(rs.getString("folio"),rs.getString("alumno"),rs.getString("nombre_completo"),rs.getString("tratamiento"),rs.getString("cantidad"),rs.getString("fecha"),rs.getString("maestro"));
                alumno.add(detalles);

            }

            return alumno;

        } catch (SQLException ex) {

        }

        return null;

    }
        
             
        public static List<AlumnosBitacoraDTO> MostrarRegistroAlum(String maestro,String materia,String grado,String grupo) {

        List<AlumnosBitacoraDTO> alumno = new ArrayList<AlumnosBitacoraDTO>();
        try {
            String query = "select folio,alumno,nombre_completo,tratamiento,cantidad,fecha,maestro from bitacora_recibos where maestro='"+maestro+"' and materia='"+materia+"'and grado='"+grado+"' and grupo='"+grupo+"'";
            Connection conexion = Conexionsql.Conexion();
            st = conexion.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {

                AlumnosBitacoraDTO detalles = new AlumnosBitacoraDTO(rs.getString("folio"),rs.getString("alumno"),rs.getString("nombre_completo"),rs.getString("tratamiento"),rs.getString("cantidad"),rs.getString("fecha"),rs.getString("maestro"));
                alumno.add(detalles);

            }

            return alumno;

        } catch (SQLException ex) {

        }

        return null;

    }
        
        public static List<AlumnoMateriasDTO> MostrarAlumnos(String materia,String semestre,String grupo) {

        List<AlumnoMateriasDTO> alumno = new ArrayList<AlumnoMateriasDTO>();
        try {
                String query = "select matricula,nombre_completo,materia,semestre,grupo,correo FROM alumnos where materia='"+materia+"' and semestre='"+semestre+"' and grupo='"+grupo+"'";
            Connection conexion = Conexionsql.Conexion();
            st = conexion.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {

                AlumnoMateriasDTO detalles = new AlumnoMateriasDTO(rs.getInt("matricula"),rs.getString("nombre_completo"),rs.getString("materia"),rs.getString("semestre"),rs.getString("grupo"),rs.getString("correo"));
                alumno.add(detalles);

            }

            return alumno;

        } catch (SQLException ex) {

        }

        return null;

    }
       
        public static List<MateriasDTO> MostrarMaterias(String user) {

        List<MateriasDTO> materia = new ArrayList<MateriasDTO>();
        try {
            String query = "select Materia FROM maestro_materias where usuario='" + user + "'";
            Connection conexion = Conexionsql.Conexion();
            st = conexion.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {

                MateriasDTO detalles = new MateriasDTO(rs.getString("Materia"));
                materia.add(detalles);

            }

            return materia;

        } catch (SQLException ex) {

        }

        return null;

    }
        
       public static List<SemestreDTO> MostrarSemestre(String user) {

        List<SemestreDTO> semestre = new ArrayList<SemestreDTO>();
        try {
            String query = "select grado FROM maestro_materias where usuario='" + user + "'";
            Connection conexion = Conexionsql.Conexion();
            st = conexion.createStatement();
            rs = st.executeQuery(query);
            while (rs.next()) {

                SemestreDTO detalles = new SemestreDTO(rs.getString("grado"));
                semestre.add(detalles);

            }

            return semestre;

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
            //System.out.println(sql.RegistrarAlumnos("Endodoncia", 7, "A", 2017));
         
                    
                    //System.out.println(sql.RegistrarAlumnos(1, "Alumno 1", "Exodoncia", "6", "A",2010,"correo" ));
                    
                      List<AlumnosBitacoraDTO> detalless = ConsultasMySQL.MostrarRegistroAlumnos("Jordy Can Uitz","Operatoria Dental", "6", "B");
		for(int i=0; i<detalless.size();i++){  
                    System.out.println(detalless.get(i).getMatricula());
                    System.out.println(detalless.get(i).getNombre());
                    System.out.println(detalless.get(i).getCantidada());
                    System.out.println(detalless.get(i).getFecha());
                    System.out.println(detalless.get(i).getFolio());
                    System.out.println(detalless.get(i).getMaestro());
                    

                    
                }
                
            
        } catch (SQLException ex) {
            Logger.getLogger(ConsultasMySQL.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

}
