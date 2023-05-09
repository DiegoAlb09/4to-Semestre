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
public class User 
{
    private int id;
    private int mov;
    private String name;
    /**---------------------------*/
    public int getID() {
            return id;
    }
    public void setID(int id) {
            this.id = id;
    }
    /**---------------------------*/
    public String getName() {
            return name;
    }
    public void setName(String name) {
            this.name = name;
    }
    /**---------------------------*/
    public int getMov() {
            return mov;
    }
    public void setMov(int mov) {
            this.mov = mov;
    }
    

}
