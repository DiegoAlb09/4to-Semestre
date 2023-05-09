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
import static dao.UserDao.getConnection;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;
import model.User;
import model.Moves;
public class MovesDao {
    public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto","root","");
	}catch(Exception e){System.out.println(e);}
	return con;
}
    public static int save(Moves m){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("insert into movimientos(Folio,Descripcion,Cantidad,Precio,Total) values(?,?,?,?,?)");
                ps.setInt(1,m.getFolio());
		ps.setString(2,m.getDes());
                ps.setInt(3,m.getCantidad());
                ps.setInt(4,m.getPrecio());
                ps.setInt(5,m.getTotal());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println("no funciona");}
        
	return status;
}
    public static List<Moves> getAllRecords(){
	List<Moves> list=new ArrayList<Moves>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from movimientos");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Moves m=new Moves();
			m.setFolio(rs.getInt("Folio"));
                        m.setDes(rs.getString("Descripcion"));
                        m.setCantidad(rs.getInt("Cantidad"));
                        m.setPrecio(rs.getInt("Precio"));
                        m.setTotal(rs.getInt("Total"));
			list.add(m);
		}
	}catch(Exception e){System.out.println(e);}
	return list;

}
    public static Moves getRecordById(int folio){
	Moves m=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from movimientos where Folio=?");
		ps.setInt(1,folio);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			m=new Moves();
			m.setDes(rs.getString("Descripcion"));
                        m.setCantidad(rs.getInt("Cantidad"));
			m.setPrecio(rs.getInt("Precio"));
                        m.setTotal(rs.getInt("Total"));
		}
	}catch(Exception e){System.out.println(e);}
	return m;
}
public static int update(Moves m) throws SQLException {
    int status = 0;
    try (Connection con = getConnection();
         PreparedStatement ps = con.prepareStatement("UPDATE movimientos SET Descripcion=?, Cantidad=?, Precio=?, Total=? WHERE Folio=?")) {
        ps.setString(1, m.getDes());
        System.out.println(m.getDes()+"");
        ps.setInt(2, m.getCantidad());
         System.out.println(m.getCantidad()+"");
        ps.setInt(3, m.getPrecio());
         System.out.println(m.getPrecio()+"");
        ps.setInt(4, m.getTotal());
         System.out.println(m.getTotal()+"");
        ps.setInt(5, m.getFolio());
         System.out.println(m.getFolio()+"");
        status = ps.executeUpdate();
    } catch (SQLException e) {
    System.out.println("Error al actualizar el usuario: " + e.getMessage());
    e.printStackTrace();
    throw e;
}

    return status;
}
public static int delete(Moves m){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("DELETE FROM movimientos WHERE Folio=?");
		ps.setInt(1,m.getFolio());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}

}