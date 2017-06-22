/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DTO;

/**
 *
 * @author RamsesMtnz
 */
public class MatriculaMaestroDTO {
     public String id_empleado;

    public String getid_empleado() {
        return id_empleado;
    }

    public void setid_empleado(String id_empleado) {
        this.id_empleado = id_empleado;
    }

    public MatriculaMaestroDTO(String id_empleado) {
        this.id_empleado = id_empleado;
    }
}
