/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author diego
 */
public class EditServlet extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out=response.getWriter();
        out.println("<h1>Update Employee</h1>");
        String sid = request.getParameter("id");
        int id = Integer.parseInt(sid);
        
        Emp e = EmpDao.getEmployeeById(id);
        
        out.print("<form action ='EditServlet2' method='get'>");
        out.print("<table>");
        out.print("<tr><td></td><td>          <input type='hidden'   name='id'       value='"+e.getId()+"'/>       </td></tr>");
		out.print("<tr><td>Name:     </td><td><input type='text'     name='name'     value='"+e.getName()+"'/>     </td></tr>");
		out.print("<tr><td>Password: </td><td><input type='password' name='password' value='"+e.getPassword()+"'/> </td></tr>");
		out.print("<tr><td>Email:    </td><td><input type='email'    name='email'    value='"+e.getEmail()+"'/>    </td></tr>");
		out.print("<tr><td>Sex: </td><td><input type='text' name='sex' value='"+e.getSex()+"'/></td></tr>");
                out.print("<tr><td>Country:  </td><td>");
		out.print("<select name='country' style='width:150px'>");
		out.print("<option>India  </option>");
		out.print("<option>USA    </option>");
		out.print("<option>UK     </option>");
		out.print("<option>Other  </option>");
		out.print("</select>");
		out.print("</td></tr>");
		out.print("<tr><td colspan='2'><input type='submit' value='Edit &amp; Save '/></td></tr>");
		out.print("</table>");
		out.print("</form>");
		
		out.close();

    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
