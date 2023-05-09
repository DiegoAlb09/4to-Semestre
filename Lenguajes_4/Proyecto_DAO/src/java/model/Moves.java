/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author diego
 */
public class Moves {
   
    private int folio;
    private int cantidad;
    private int precio;
    private int total;
    private String des;
    
    /**---------------------------*/
    public int getFolio() {
            return folio;
    }
    public void setFolio(int folio) {
            this.folio = folio;
    }
    /**---------------------------*/
    public String getDes() {
            return des;
    }
    public void setDes(String des) {
            this.des = des;
    }
    /**---------------------------*/
    public int getCantidad() {
            return cantidad;
    }
    public void setCantidad(int cantidad) {
            this.cantidad = cantidad;
    }
        /**---------------------------*/
    public int getPrecio() {
            return precio;
    }
    public void setPrecio(int precio) {
            this.precio = precio;
    }
        /**---------------------------*/
    public int getTotal() {
            return total;
    }
    public void setTotal(int total) {
            this.total = total;
    }
    
    
}