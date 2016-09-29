import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author student
 */@MultipartConfig
public class sellerinfo extends HttpServlet {

    Connection con;
    String username;
    String password;
    String url;
    PreparedStatement pst;


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet sellerinfo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet sellerinfo at " + request.getContextPath() + "</h1>");
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
        PrintWriter out = response.getWriter();
        try {
            // Connect to Oracle
            String url="jdbc:oracle:thin:@localhost:1521:XE";
            String username="AMOL";
            String password="12345";
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection(url,username,password);
            con.setAutoCommit(false);

            //get parameter
            String snm=request.getParameter("sfullname");
            String sem=request.getParameter("semail");
            String sadd=request.getParameter("saddress");
            String sphone=request.getParameter("sphoneno");
            String suser=request.getParameter("susername");
            String spass=request.getParameter("spassword");
            //Part photo =  request.getPart("playerphoto");
            
            PreparedStatement pst = con.prepareStatement("insert into SellerSelfInfo(sname,semail,saddress,sphoneno,susername,spassword) values(?,?,?,?,?,?)");
            pst.setString(1,snm);
            pst.setString(2,sem);
            pst.setString(3,sadd);
            pst.setString(4,sphone);
            pst.setString(5,suser);
            pst.setString(6,spass);   
            // size must be converted to int otherwise it results in error
            //pst.setBinaryStream(2, photo.getInputStream(), (int)  photo.getSize());
            
            int i=pst.executeUpdate();
            if(i>0)
            {
              out.print("<script>alert('YOU SUCCEFULLY REGISTER! THANK YOU')</script>");
            }
            
            RequestDispatcher rs = request.getRequestDispatcher("index.jsp");
            rs.include(request,response);
            con.commit();
            con.close();
        }
        catch(Exception e)
        {
		out.print("hello Exception here : "+e);
	}
        finally {            
            out.close();
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

    private String getParameter(String sname) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
