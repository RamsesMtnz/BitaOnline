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
public class MaestroDTO {

     private int id_empleado;
    private String nombreCompleto;
   
    private String correo;

    public MaestroDTO(int id_empleado, String nombreCompleto, String correo) {
        this.id_empleado = id_empleado;
        this.nombreCompleto = nombreCompleto;
        this.correo = correo;
    }

    public int getId_empleado() {
        return id_empleado;
    }

    public void setId_empleado(int id_empleado) {
        this.id_empleado = id_empleado;
    }

    public String getNombreCompleto() {
        return nombreCompleto;
    }

    public void setNombreCompleto(String nombreCompleto) {
        this.nombreCompleto = nombreCompleto;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }
}
