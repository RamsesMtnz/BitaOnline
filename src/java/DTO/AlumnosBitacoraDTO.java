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
public class AlumnosBitacoraDTO {
    private String folio;
    private String matricula;
    private String nombre;
    private String tratamiento;
    private String cantidada;
    private String fecha;
    private String maestro;

    public AlumnosBitacoraDTO(String folio, String matricula, String nombre, String tratamiento, String cantidada, String fecha, String maestro) {
        this.folio = folio;
        this.matricula = matricula;
        this.nombre = nombre;
        this.tratamiento = tratamiento;
        this.cantidada = cantidada;
        this.fecha = fecha;
        this.maestro = maestro;
    }

    public String getMaestro() {
        return maestro;
    }

    public void setMaestro(String maestro) {
        this.maestro = maestro;
    }
    
    

  

    public String getFolio() {
        return folio;
    }

    public void setFolio(String folio) {
        this.folio = folio;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTratamiento() {
        return tratamiento;
    }

    public void setTratamiento(String tratamiento) {
        this.tratamiento = tratamiento;
    }

    public String getCantidada() {
        return cantidada;
    }

    public void setCantidada(String cantidada) {
        this.cantidada = cantidada;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    

}