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
import javax.servlet.http.HttpSession;

/**
 *
 * @author microsoft
 */
public class BidderLogin1 extends HttpServlet {
    Connection con;
    String username;
    String password;
    String url;
    PreparedStatement pst;
    String suser,spass;
    String[] sur= new String[1000];
    String[] sps= new String[1000];
    ResultSet rs;
    RequestDispatcher res;
    private Object session;
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
            out.println("<title>Servlet BidderLogin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BidderLogin at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        
        url="jdbc:oracle:thin:@localhost:1521:XE";
        username="AMOL";
        password="12345";
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection(url,username,password);

        suser=request.getParameter("bu");
        spass=request.getParameter("bp");
        
        HttpSession ses=request.getSession();  
        
      
        pst=con.prepareStatement("select busername,bpassword,bname from BidderSelfInfo");

        pst.executeUpdate();
        rs=pst.executeQuery();
        int i=0,j=0;
        while(rs.next())
        {
            sur[i] = rs.getString(1);
            sps[i] = rs.getString(2);
            
            
            if(suser.equals(sur[i]) && spass.equals(sps[i]))
            {
                ses.setAttribute("biddername",rs.getString(3));
                
                res = request.getRequestDispatcher("BidderProfile.jsp");               
                res.include(request,response);
                
                j++;
            } 
            i++;
        }
        if(j==0)
        {
            res = request.getRequestDispatcher("bidderlogin.html");
            res.include(request,response);
            out.print("<script> alert('Wrong username and password')</script>");
        }
        pst.executeUpdate();        
    }
    catch(Exception e)
    {
        out.print("hello : "+e);
    }

    }
}
