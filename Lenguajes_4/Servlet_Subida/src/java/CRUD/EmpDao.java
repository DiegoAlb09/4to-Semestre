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
import java.util.*;
import java.sql.*;

public class EmpDao {
	public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pruebas","root","");
		}catch(ClassNotFoundException | SQLException e){System.out.println(e);}
		return con;
	}
        public static int save(Emp e){
            int status = 0;
            try{
                Connection con = EmpDao.getConnection();
                PreparedStatement ps = con.prepareStatement("insert into datos(nom,edad,sex) values (?,?,?)");
                ps.setString(1, e.getnom());
                ps.setString(2, e.getedad());
                ps.setString(3, e.getsex());
                
                status=ps.executeUpdate();
                
                con.close();
            }catch(SQLException ex){ex.printStackTrace();}
            return status;
        }
        
        public static int update(Emp e){
            int status = 0;
            try{
                Connection con = EmpDao.getConnection();
                PreparedStatement ps = con.prepareStatement("update datos set nom=?,edad=?,sex=? where 1");
                ps.setString(1, e.getnom());
                ps.setString(2, e.getedad());
                ps.setString(3, e.getsex());
                
                status = ps.executeUpdate();
                con.close();
                
            }catch(SQLException ex){}
            
            return status;
        }
        
}
