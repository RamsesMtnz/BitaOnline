/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import DTO.BitacoraDTO;
import Modelo.ConexionMySQL;
import Modelo.ConsultasMySQL;
import Modelo.DatosBitacora;
import Modelo.Metodos;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class ServletBitacora extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      
          String fol=request.getParameter("folio");
            int folio=Integer.parseInt(fol);
            
            String m=request.getParameter("matricula");
            int alumno=Integer.parseInt(m);
            
            //String categoria=request.getParameter("categoria");
            //String t=request.getParameter("tratamiento");
           // int tratamiento=Integer.parseInt(t);
            
            //String c=request.getParameter("cantidad");
            //int cantidad=Integer.parseInt(c);
            
            
            String fecha=request.getParameter("fecha");
            SimpleDateFormat dateformat= new SimpleDateFormat("yyyy-MM-dd");
            java.sql.Date f=java.sql.Date.valueOf(fecha);
            String datef=dateformat.format(f);
            java.sql.Date sqlDate=java.sql.Date.valueOf(datef);
            
            String s=request.getParameter("sexo");
            int sexo=0;
            if(s.equals("Masculino")){
               sexo=1;
            }
            else if(s.equals("Femenino")){
                sexo=2;
            }
            int clinica=0;
            String cli=request.getParameter("clinica");
            if(cli.equals("Clinica 1")){
                clinica=1;
            }
            else if(cli.equals("Clinica 2")){
                clinica=2;
            }
            else if(cli.equals("Clinica 3")){
                clinica=3;
            }
           
            
            String comentarios=request.getParameter("comentarios");
            String maestro=request.getParameter("maestro");
            String materia=request.getParameter("materia");
            String grado=request.getParameter("grado");
            String grupo=request.getParameter("grupo");   
            String año=request.getParameter("año");
            String nombre=request.getParameter("alumno");

             Connection conn;
		
		try{
			conn = ConexionMySQL.getConexionUnica
					("localhost", "facultad_odontologia", "root", "root");
			ConsultasMySQL registrar = new ConsultasMySQL(conn);
                         Metodos metodo = new Metodos();
			 for(BitacoraDTO tratamientos : DatosBitacora.listado){
                           //if(registrar.RegistroBitacora(folio,matricula,metodo.obtenerCategoria(Integer.parseInt(tratamientos.getCategoria())), metodo.obtenerTratamiento(Integer.parseInt(tratamientos.getTratamiento())), tratamientos.getCantidad(), alumno,sqlDate, sexo,clinica, comentarios)){
                          if(registrar.RegistroBitacoraRecibos(folio, alumno,nombre, Integer.parseInt(tratamientos.getTratamiento()), Integer.parseInt(tratamientos.getCantidad()), sqlDate, comentarios, sexo, clinica,maestro,materia,grado,grupo,año)){

                           }
                         }
                         
                         response.sendRedirect("cargarFormulario");
                         DatosBitacora.listado.clear();
                        			
		}catch(SQLException e){
			
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
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
