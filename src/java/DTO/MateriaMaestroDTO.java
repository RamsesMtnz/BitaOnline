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
public class MateriaMaestroDTO {
    private String Materia;

    public String getMateria() {
        return Materia;
    }

    public void setMateria(String materia) {
        this.Materia = materia;
    }

    public MateriaMaestroDTO(String materia) {
        this.Materia = materia;
    }
}
