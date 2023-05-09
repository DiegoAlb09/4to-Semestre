/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author diego
 */
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.User;

public class UserDao {
public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto","root","");
	}catch(Exception e){System.out.println(e);}
	return con;
}
public static int save(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into registros(ID,Nombre,Total) values(?,?,?)");
                ps.setInt(1,u.getID());
		ps.setString(2,u.getName());
                ps.setInt(3,u.getMov());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println("no funciona");}
	return status;
}
public static int update(User u) throws SQLException {
    int status = 0;
    try (Connection con = getConnection();
         PreparedStatement ps = con.prepareStatement("UPDATE registros SET Nombre=?, Total=? WHERE ID=?")) {
        ps.setString(1, u.getName());
        ps.setInt(2, u.getMov());
        ps.setInt(3, u.getID());
        status = ps.executeUpdate();
    } catch (SQLException e) {
        System.out.println("Error al actualizar el usuario: " + e.getMessage());
        throw e;
    }
    return status;
}


public static int delete(User u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("DELETE FROM registros WHERE ID=?");
		ps.setInt(1,u.getID());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}

public static User getRecordById(int id){
	User u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from registros where ID=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new User();
			u.setName(rs.getString("Nombre"));
			u.setMov(rs.getInt("Total"));
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}

public static List<User> getAllRecords(){
	List<User> list=new ArrayList<User>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from registros");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			User u=new User();
			u.setID(rs.getInt("ID"));
                        u.setName(rs.getString("Nombre"));
                        u.setMov(rs.getInt("Total"));
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;

}
public static int hola(){
    int count = 0;
    try{
        Connection con=getConnection();
        PreparedStatement ps=con.prepareStatement("SELECT count(*) FROM movimientos");
        ResultSet rs=ps.executeQuery();
        if(rs.next()){
            count = rs.getInt(1);
        }
    }catch(Exception e){System.out.println(e);}

    return count;
}


}

