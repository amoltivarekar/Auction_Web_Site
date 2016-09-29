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
@WebServlet(urlPatterns = {"/editProduct"})
public class editProduct extends HttpServlet {

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
            out.println("<title>Servlet editProduct</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet editProduct at " + request.getContextPath() + "</h1>");
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
        try{
            String epn=request.getParameter("eproductname");
            String eprice=request.getParameter("eproductprice");
            int epp=Integer.parseInt(eprice);
            String epd=request.getParameter("eproductdate");
            String ept=request.getParameter("eproducttime");
            String epdec=request.getParameter("epdec");
            
            String productName=request.getParameter("prn");
    
            String url = "jdbc:oracle:thin:@localhost:1521:XE";
            String username = "AMOL";
            String password = "12345";
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection(url,username,password);
            if(!(epn.isEmpty() ||  eprice.isEmpty() || epd.isEmpty() || ept.isEmpty() || epdec.isEmpty()))
            {
                
                PreparedStatement pst = con.prepareStatement("update sellerProdInfo set pname=?,pprice=?,pdate=?,ptime=?,pdec=? where pname='"+productName+"'");
                pst.setString(1,epn);
                pst.setInt(2,epp);
                pst.setString(3,epd);
                pst.setString(4,ept);
                pst.setString(5,epdec);

                int i=pst.executeUpdate();
                if(i>0)
                {
                    out.print("<script>alert('YOU HAVE SUCCESSFULLY UPDATE YOUR PRODUCT INFO ! THANK YOU')</script>");
                }
            }
            else
            {
                out.print("<script>alert('YOU CAN'T INSERT NULL VALUES')</script>");
            }
            RequestDispatcher rs = request.getRequestDispatcher("history.jsp");
            rs.include(request,response);
        }
        catch(Exception e)
        {
            out.print("hello : "+e);
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
