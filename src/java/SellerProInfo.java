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

@WebServlet(urlPatterns = {"/SellerProInfo"})
public class SellerProInfo extends HttpServlet {

    String sn,se,sa,sp;
    ResultSet rs;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet SellerProInfo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SellerProInfo at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       PrintWriter pw=response.getWriter();
        try
        {
            String url = "jdbc:oracle:thin:@localhost:1521:XE";
            String username = "AMOL";
            String password = "12345";
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection(url,username,password);
            
            HttpSession session1=request.getSession(false);
            
            String valueSUR = session1.getAttribute("sname").toString();
            String pnm=request.getParameter("productname");
            String ppr=request.getParameter("productprice");
            String pdt=request.getParameter("productdate");
            String ptm=request.getParameter("producttime");
            String pdec=request.getParameter("pdec");
            String type=request.getParameter("productType");
            
            PreparedStatement pst1 = con.prepareStatement("select sname,semail,saddress,sphoneno from SellerSelfInfo where sname='"+valueSUR+"'");
           
            rs =pst1.executeQuery();
            
            while(rs.next())
            {
                sn = rs.getString(1);
                se = rs.getString(2);
                sa = rs.getString(3);
                sp = rs.getString(4);
            }
            pst1.executeUpdate();
            
            int pprice=Integer.parseInt(ppr);
            
            if(!(pnm.isEmpty() ||  ppr.isEmpty() || pdt.isEmpty() || ptm.isEmpty() || pdec.isEmpty()    ))
            {
                PreparedStatement pst = con.prepareStatement("insert into SellerProdInfo(pname,pprice,pdate,ptime,pdec,psname,psemail,psaddress,psphoneno,ptype) values(?,?,?,?,?,?,?,?,?,?)");
                
                pst.setString(1,pnm);
                pst.setInt(2,pprice);
                pst.setString(3,pdt);
                pst.setString(4,ptm);
                pst.setString(5,pdec);
                pst.setString(6,sn);
                pst.setString(7,se);
                pst.setString(8,sa);
                pst.setString(9,sp);
                pst.setString(10,type);
                
                int i=pst.executeUpdate();
                if(i>0)
                {
                    pw.print("<script>alert('YOU HAVE SUCCESSFULLY REGISTER! THANK YOU')</script>");
                }
            }
            else
            {
                pw.print("<script>alert('YOU CAN'T INSERT NULL VALUES')</script>");
            }
            RequestDispatcher rs = request.getRequestDispatcher("sellerIProInfo.jsp");
            rs.include(request,response); 
        }
        catch(Exception e)
        {
            pw.print("Hello Exception :"+e);
        }
    }


    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
