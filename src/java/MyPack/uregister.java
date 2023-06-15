/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package MyPack;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author HP
 */
public class uregister extends HttpServlet 
        
{
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
            /* TODO output your page here. You may use following sample code. */
           String name = request.getParameter("dname");
           String aadhar= request.getParameter("aadhar");
           String mob = request.getParameter("mob");
           String email = request.getParameter("email");
           String gender = request.getParameter("gender");
           String age = request.getParameter("age");
           String bld = request.getParameter("bld");
           String add = request.getParameter("add");
           String pin = request.getParameter("pin");
           String loc = request.getParameter("loc");
           String pass = request.getParameter("pass");
           
           out.println(name);
           out.println(aadhar);
           out.println(mob);
           
           
           MyDb db = new MyDb();
           Connection con =db.getCon();
           Statement stmt = con.createStatement();
           
        stmt.executeUpdate("insert into hregister(dname,aadhar number,contact number,email,gender,age,blood group,address,pincode,location,pass)values('"+name+"','"+aadhar+"','"+mob+"','"+email+"','"+gender+"','"+age+"','"+bld+"','"+add+"','"+pin+"','"+loc+"','"+pass+"') ");
           
           out.println("register sucess");
           String redirectedPage = "/parentPage";
          response.sendRedirect("registrationsuccess.jsp");
           
           
        } catch (SQLException ex) 
        
        {
            Logger.getLogger(uregister.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println(ex);
            System.out.println("Data not received");
            
            
        }
    }
    
}
    
    

