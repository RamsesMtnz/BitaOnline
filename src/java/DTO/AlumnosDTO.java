/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DTO;

/**
 * 
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class AlumnosDTO {
    
    private int folio;
    private int matricula;
    private String nombre;
    private String tratamientos;
    private String comentarios;

    public AlumnosDTO(int folio, int matricula, String nombre, String tratamientos, String comentarios) {
        this.folio = folio;
        this.matricula = matricula;
        this.nombre = nombre;
        this.tratamientos = tratamientos;
        this.comentarios = comentarios;
    }

    
    
    public int getFolio() {
        return folio;
    }

    public void setFolio(int folio) {
        this.folio = folio;
    }

    public int getMatricula() {
        return matricula;
    }

    public void setMatricula(int matricula) {
        this.matricula = matricula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTratamientos() {
        return tratamientos;
    }

    public void setTratamientos(String tratamientos) {
        this.tratamientos = tratamientos;
    }

    public String getComentarios() {
        return comentarios;
    }

    public void setComentarios(String comentarios) {
        this.comentarios = comentarios;
    }
   

}