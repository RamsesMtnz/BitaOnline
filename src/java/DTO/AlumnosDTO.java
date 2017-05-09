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
    private int alumno;
    private int tratamiento;
    private String comentario;

    public AlumnosDTO(int folio, int alumno, int tratamiento, String comentario) {
        this.folio = folio;
        this.alumno = alumno;
        this.tratamiento = tratamiento;
        this.comentario = comentario;
    }

    public int getFolio() {
        return folio;
    }

    public void setFolio(int folio) {
        this.folio = folio;
    }

    public int getAlumno() {
        return alumno;
    }

    public void setAlumno(int alumno) {
        this.alumno = alumno;
    }

    public int getTratamiento() {
        return tratamiento;
    }

    public void setTratamiento(int tratamiento) {
        this.tratamiento = tratamiento;
    }

    public String getComentario() {
        return comentario;
    }

    public void setComentario(String comentario) {
        this.comentario = comentario;
    }

    
}
