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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author amol
 */
@WebServlet(urlPatterns = {"/profileUpdate"})
public class bidderprofileupdate extends HttpServlet {

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
            out.println("<title>Servlet profileUpdate</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet profileUpdate at " + request.getContextPath() + "</h1>");
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
        try{
            String sn=request.getParameter("bfullname");
            String se=request.getParameter("bemail");
            String sa=request.getParameter("baddress");
            String sp=request.getParameter("bphoneno");
            String su=request.getParameter("busername");
            String spass=request.getParameter("bpassword");
            
            
            String bidderName=request.getParameter("user");
    
            String url = "jdbc:oracle:thin:@localhost:1521:XE";
            String username = "AMOL";
            String password = "12345";
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection(url,username,password);
            if(!(sn.isEmpty() ||  se.isEmpty() || sa.isEmpty() || sp.isEmpty() || su.isEmpty() || spass.isEmpty()))
            {
                
                PreparedStatement pst = con.prepareStatement("update BidderSelfInfo set bname=?,bemail=?,baddress=?,bphoneno=?,busername=?,bpassword=? where bname='"+bidderName+"'");
                pst.setString(1,sn);
                pst.setString(2,se);
                pst.setString(3,sa);
                pst.setString(4,sp);
                pst.setString(5,su);
                pst.setString(6,spass);

                int i=pst.executeUpdate();
                if(i>0)
                {
                    out.print("<script>alert('YOU HAVE SUCCESSFULLY UPDATE YOUR SELF INFO ! THANK YOU')</script>");
                }
            }
            else
            {
                out.print("<script>alert('YOU CAN'T INSERT NULL VALUES')</script>");
            }
            RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
            rs.include(request,response);
        }
        catch(Exception e)
        {
            out.print("hello : "+e);
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
