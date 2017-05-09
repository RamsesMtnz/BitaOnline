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
public class MenuTratamientoDTO {
    
    private int id_menu;
    private int id_tratamiento;
    private String menu_tratamientos;

   

    public int getId_menu() {
        return id_menu;
    }

    public void setId_menu(int id_menu) {
        this.id_menu = id_menu;
    }

    public int getId_tratamiento() {
        return id_tratamiento;
    }

    public void setId_tratamiento(int id_tratamiento) {
        this.id_tratamiento = id_tratamiento;
    }

    public String getMenu_tratamientos() {
        return menu_tratamientos;
    }

    public void setMenu_tratamientos(String menu_tratamientos) {
        this.menu_tratamientos = menu_tratamientos;
    }

}
