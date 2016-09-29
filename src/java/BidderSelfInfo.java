/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author student
 */
public class BidderSelfInfo extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    Connection con;
    String username;
    String password;
    String url;
    PreparedStatement pst;
    RequestDispatcher rs;
    InputStream isp;
    Part filePart;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet BidderSelfInfo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet BidderSelfInfo at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
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
     * Handles the HTTP
     * <code>POST</code> method.
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
       PrintWriter pw=response.getWriter();
        try
        {
            url="jdbc:oracle:thin:@localhost:1521:XE";
            username="AMOL";
            password="12345";
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con=DriverManager.getConnection(url,username,password);
            

            String bnm=request.getParameter("bfullname");
            String bem=request.getParameter("bemail");
            String badd=request.getParameter("baddress");
            String bphone=request.getParameter("bphoneno");
            String buser=request.getParameter("busername");
            String bpass=request.getParameter("bpassword");
            /*filePart = request.getPart("bphoto");
            if (filePart != null) 
            {
                isp = filePart.getInputStream();
            }*/
            //File imgfile = new File("C:\\Users\\student\\Desktop\\emp.jpg");
            //FileInputStream fin = new FileInputStream(imgfile);

            if(!(bnm.isEmpty() ||  bem.isEmpty() || badd.isEmpty() || bphone.isEmpty() || buser.isEmpty() || bpass.isEmpty()))
            {
                pst=con.prepareStatement("insert into BidderSelfInfo(bname,bemail,baddress,bphoneno,busername,bpassword) values(?,?,?,?,?,?)");
                //rs =pst.executeQuery();
                //String snm = rs.getInt();
                pst.setString(1,bnm);
                pst.setString(2,bem);
                pst.setString(3,badd);
                pst.setString(4,bphone);
                pst.setString(5,buser);
                pst.setString(6,bpass);
               /* if (isp != null) 
                {
                    pst.setBlob(7,isp);
                }*/
                // pst.setBinaryStream(7,fin,(int)imgfile.length());
                int i=pst.executeUpdate();
                if(i>0)
                {
                    pw.print("<script>alert('YOU SUCCEFULLY REGISTER! THANK YOU')</script>");
                }
            }
            else
            {
                pw.print("<script>alert('YOU CAN'T INSERT NULL VALUES')</script>");
            }
            rs = request.getRequestDispatcher("bidder.html");
            rs.include(request,response);    
        }
        catch(Exception e)
        {
		pw.print("hello Exception here : "+e);
	}
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
