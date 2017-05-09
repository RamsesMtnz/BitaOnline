/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DTO.MenuTratamientoDTO;
import DTO.TratamientoDTO;
import Modelo.ConexionMySQL;
import Modelo.ConsultasMySQL;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class ServletPrueba extends HttpServlet {
 private static final long serialVersionUID = 1L;
    
   
      public ServletPrueba() {
        super();
       
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}
    
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
      String accion = request.getParameter("accion");
		
		if(accion == null){
			accion = "menu_tratamiento";
		}
		


		try{
			//crear la conexion de base de datos
			Connection conn = ConexionMySQL.getConexionUnica
				("localhost", "facultad_odontologia", "root", "root");
			
			//crear el DAO
			ConsultasMySQL sql = new ConsultasMySQL(conn);			
			String archivo = "";
			
			//Pregunto que acción hacer
			if(accion.equals("menu_tratamiento")){
				// llamar a la funcion obtener estados
				List<TratamientoDTO> listaTratamiento = sql.obtenerTratamientos();
				request.setAttribute("listaTratamiento", listaTratamiento);
				archivo = "EncargadaDeClinica/RegistroDeBitacora.jsp";
				
			}else if(accion.equals("tratamiento")){
				int id_tratamiento = Integer.parseInt( 
						request.getParameter("id_tratamiento"));
				List<MenuTratamientoDTO> listaTratamientos = 
						sql.obtenerMenuTratamiento(id_tratamiento);
				request.setAttribute("listaTratamientos", listaTratamientos);
				archivo = "EncargadaDeClinica/tratamientos.jsp";
			}
			
			RequestDispatcher view = 
					request.getRequestDispatcher(archivo);
			view.forward(request, response);
			
		}catch(SQLException e){
			e.printStackTrace();
		}
}
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    
}
