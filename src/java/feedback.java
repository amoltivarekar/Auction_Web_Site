/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author microsoft
 */
public class feedback extends HttpServlet {
    Connection con;
    String username;
    String password;
    String url;
    PreparedStatement pst;
    RequestDispatcher res;
     
    /**
      * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
      * methods.
      *
      * @param request servlet request
      * @param response servlet response
      * @throws ServletException if a servlet-specific error occurs
      * @throws IOException if an I/O error occurs
      */
     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
             throws ServletException, IOException {
          response.setContentType("text/html;charset=UTF-8");
          try (PrintWriter out = response.getWriter()) {
               /* TODO output your page here. You may use following sample code. */
               out.println("<!DOCTYPE html>");
               out.println("<html>");
               out.println("<head>");
               out.println("<title>Servlet feedback</title>");               
               out.println("</head>");
               out.println("<body>");
               out.println("<h1>Servlet feedback at " + request.getContextPath() + "</h1>");
               out.println("</body>");
               out.println("</html>");
          }
     }

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
          response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
    try
    {
        //Connection
        url="jdbc:oracle:thin:@localhost:1521:XE";
        username="AMOL";
        password="12345";
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection(url,username,password);
        
        //Get Parameters
        String fdkName=request.getParameter("feedbackerName");
        String fdkEmail=request.getParameter("feedbackerEmail");
        String fdkSubject=request.getParameter("feedbackerSubject");
        String fdkPhone=request.getParameter("feedbackerPhone");
        String fdk=request.getParameter("feedback");
        
        //Sql Command
        PreparedStatement pst =con.prepareStatement("insert into feedback(fdkName,fdkEmail,fdkSubject,fdkPhone,fdk) values(?,?,?,?,?)");
        pst.setString(1,fdkName);
        pst.setString(2,fdkEmail);
        pst.setString(3,fdkSubject);
        pst.setString(4,fdkPhone);
        pst.setString(5,fdk);
        
        //Excute Update
        int i=pst.executeUpdate();
        if(i>0)
        {
            out.print("<script>alert('YOU SUCCEFULLY SUBMITED YOUR FEEDBACK ! THANK YOU')</script>");
            res = request.getRequestDispatcher("index.jsp");
            res.include(request,response);
        }   
    }
    catch(Exception e)
    {
        out.print("Hello Exception here : "+e);   
    }
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
