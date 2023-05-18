/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CRUD;

/**
 *
 * @author diego
 */
public class Emp {
    private int id;
    private String nom, edad, sex;
    public int getid(){
        return id;
    }
    public void setid(int id) {
	this.id = id;
}
    public String getnom() {
	return nom;
    }
    public void setnom(String nom) {
	this.nom = nom;
    }   
    public String getedad(){
        return edad;
    }
    public void setedad(String edad){
        this.edad = edad;
    }
    public String getsex(){
        return sex;
    }
    public void setsex(String sex){
        this.sex = sex;
    }
}
