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
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author amol
 */
@WebServlet(urlPatterns = {"/register"})
public class register extends HttpServlet {

    Connection con;
    String username;
    String password;
    String url;
    PreparedStatement pst,pst1,pst2,pst3;
    String suser,spass,bn,be,ba,bph,bus,bpass,sn,se,sa,sph,pn,pd,ptm,pdc,sprod;
    int pp;
    String[] sur= new String[1000];
    String[] sps= new String[1000];
    ResultSet rs,rs1,rs2,rs3;
    RequestDispatcher res;
    private Object session;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath() + "</h1>");
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
        
        suser=request.getParameter("busername");
        spass=request.getParameter("bpassword");
        sprod=request.getParameter("prnm");

        pst=con.prepareStatement("select busername,bpassword from BidderSelfInfo");
        rs=pst.executeQuery();

        int i=0,j=0;
        while(rs.next())
        {
            sur[i] = rs.getString(1);
            sps[i] = rs.getString(2);
            
            if(suser.equals(sur[i]) && spass.equals(sps[i]))
            {
                pst1=con.prepareStatement("select * from SellerProdInfo where pname='"+sprod+"'");
                rs1=pst1.executeQuery();
                rs1.next();
                pn=rs1.getString(1);
                pp=rs1.getInt(2);
                pd=rs1.getString(3);
                ptm=rs1.getString(4);
                pdc=rs1.getString(5);
                sn=rs1.getString(6);
                se=rs1.getString(7);
                sa=rs1.getString(8);
                sph=rs1.getString(9);
                
                 
                pst2=con.prepareStatement("select bname,bemail,baddress,bphoneno,busername,bpassword from BidderSelfInfo where busername='"+sur[i]+"'and bpassword='"+sps[i]+"'");
                rs2=pst2.executeQuery();
                rs2.next();
                bn=rs2.getString(1);
                be=rs2.getString(2);
                ba=rs2.getString(3);
                bph=rs2.getString(4);
                bus=rs2.getString(5);
                bpass=rs2.getString(6);
                
                
                pst3=con.prepareStatement("insert into biddingproduct(bpname,bpprice,bpdate,bptime,bpdec,bpsname,bpsemail,bpsaddress,bpsphone,bpbname,bpbemail,bpbaddress,bpbphoneno,bpbusername,bpbpassword) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
               
                pst3.setString(1,pn);
                pst3.setInt(2,pp);
                pst3.setString(3,pd);
                pst3.setString(4,ptm);
                pst3.setString(5,pdc);
                pst3.setString(6,sn);
                pst3.setString(7,se);
                pst3.setString(8,sa);
                pst3.setString(9,sph);
                pst3.setString(10,bn);
                pst3.setString(11,be);
                pst3.setString(12,ba);
                pst3.setString(13,bph);
                pst3.setString(14,bus);
                pst3.setString(15,bpass);
                
                int k=pst3.executeUpdate();
                if(k>0)
                {
                    out.print("<script>alert('YOU HAVE SUCCESSFULLY REGISTERED ! THANK YOU')</script>");
                }
                
                res = request.getRequestDispatcher("newproduct.jsp");
                res.include(request,response);
                j++;
            }
            i++;
        }
        if(j==0)
        {
            res = request.getRequestDispatcher("single.jsp");
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
