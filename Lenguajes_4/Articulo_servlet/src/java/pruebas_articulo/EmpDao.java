/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pruebas_articulo;
import java.util.*;
import java.sql.*;
/**
 *
 * @author diego
 */
public class EmpDao {
    public static Connection getConnection(){
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/pruebas","root","");
        }catch(ClassNotFoundException|SQLException e){System.out.println(e);}
        return con;
    }
    public static int save(Emp e){
        int status = 0;
        try{
            Connection con = EmpDao.getConnection();
            PreparedStatement ps = con.prepareStatement("insert into datos(nombre) values(?)");
            ps.setString(1, e.getNombre());
            
            status=ps.executeUpdate();
            con.close();
        }catch(SQLException ex){}
        return status;
    }
    public static int update(Emp e){
        int status = 0;
        try{
            Connection con = EmpDao.getConnection();
            PreparedStatement ps = con.prepareStatement("update datos set nombre=? where 1");
            ps.setString(1, e.getNombre());
            
            status=ps.executeUpdate();
            con.close();
        }catch(SQLException ex){}
        return status;
    }
    public static List<Emp> getAllNom(){
        List<Emp> list = new ArrayList<Emp>();
        
        try{
            Connection con = EmpDao.getConnection();
            PreparedStatement ps = con.prepareStatement("select * from datos");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                Emp e = new Emp();
                e.setNombre(rs.getString(1));
                list.add(e);
            }
            con.close();
        }catch(Exception e){e.printStackTrace();}
        return list;
    }
}
