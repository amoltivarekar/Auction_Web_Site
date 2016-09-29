package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.ResultSet;
import java.io.InputStream;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.*;
import java.lang.String;

public final class newproduct_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 Connection con;
    String username;
    String password;
    String url;
    PreparedStatement pst,pst1;
    ResultSet rs,rs2;
    InputStream isp;
    Part filePart;
    Statement stmt;
    String snm,spno,filename;
    int i=0;
    
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("    ");

    String type=request.getParameter("productType");out.print(type);
    
    url="jdbc:oracle:thin:@localhost:1521:XE";
    username="AMOL";
    password="12345";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection(url,username,password);
    stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    if( (type.equals("All")))
    {
          pst = con.prepareStatement("select pname,pdate,ptime,pprice,psname,psphoneno,pdec from SellerProdInfo");
    }
    else
    {
          pst = con.prepareStatement("select pname,pdate,ptime,pprice,psname,psphoneno,pdec from SellerProdInfo where ptype='"+type+"'");
    }
    
    
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<title>Products Page</title>\n");
      out.write("<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\">\n");
      out.write("<!-- jQuery (necessary for Bootstrap\"s JavaScript plugins) -->\n");
      out.write("<!-- Custom Theme files -->\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\"/>\n");
      out.write("<!-- Custom Theme files -->\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }\n");
      out.write("</script>\n");
      out.write("<meta name=\"keywords\" content=\"Auction Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design\" />\n");
      out.write("<!--Google Fonts-->\n");
      out.write("<!--Google Fonts-->\n");
      out.write("<link href=\"//fonts.googleapis.com/css?family=Lato:100,300,400,700,900\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<link href=\"//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<!-- start-smoth-scrolling -->\n");
      out.write("<script src=\"js/jquery-2.1.4.min.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/easing.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("\t\t\tjQuery(document).ready(function($) {\n");
      out.write("\t\t\t\t$(\".scroll\").click(function(event){\t\t\n");
      out.write("\t\t\t\t\tevent.preventDefault();\n");
      out.write("\t\t\t\t\t$(\"html,body\").animate({scrollTop:$(this.hash).offset().top},1000);\n");
      out.write("                            \t});\n");
      out.write("\t\t\t});\n");
      out.write("\t</script>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("<!-- //end-smoth-scrolling -->\n");
      out.write("<!--header start here-->\n");
      out.write("<div class=\"login\">LOGIN\n");
      out.write("    <a href=\"sellerlogin.html\">seller</a>\n");
      out.write("    <a href=\"bidderlogin.html\">bidder</a>\n");
      out.write("    <a href=\"adminlogin.html\">admin</a>\n");
      out.write("    <a href=\"bidding.jsp\" style=\"color:rgb(90,150,200); font-weight: bold;\">BIDDING</a>    \n");
      out.write("</div>\n");
      out.write("<div class=\"header\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"header-main\">\n");
      out.write("\t\t\t<div class=\"logo\">\n");
      out.write("\t\t\t\t<a href=\"index.jsp\"> Auction </a>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"head-right\">\n");
      out.write("\t\t\t  <div class=\"top-nav\">\n");
      out.write("\t\t\t\t\t<span class=\"menu\"> <img src=\"images/icon.png\" alt=\"\"/></span>\n");
      out.write("\t\t\t\t<ul class=\"res\">\n");
      out.write("\t\t\t\t\t<li><a  href=\"index.jsp\">Home</a></li>\n");
      out.write("                                        <li><a href=\"seller.html\">Seller</a></li>\n");
      out.write("                                        <li><a href=\"bidder.html\">Bidder</a></li>\n");
      out.write("                                        <li><a class=\"active\" href=\"newproduct.jsp\">Products</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"about.html\">About Us</a></li>                                       \n");
      out.write("\t\t\t\t\t<li><a href=\"contact.html\">Contact</a></li>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t\t<!-- script-for-menu -->\n");
      out.write("\t\t\t\t\t\t\t<script>\n");
      out.write("\t\t\t\t\t\t\t   $( \"span.menu\" ).click(function() {\n");
      out.write("\t\t\t\t\t\t\t\t $( \"ul.res\" ).slideToggle( 300, function() {\n");
      out.write("\t\t\t\t\t\t\t\t // Animation complete.\n");
      out.write("\t\t\t\t\t\t\t\t  });\n");
      out.write("\t\t\t\t\t\t\t\t });\n");
      out.write("\t\t\t\t\t\t\t</script>\n");
      out.write("\t\t\t<!-- /script-for-menu -->\n");
      out.write("\t\t\t </div>\t\n");
      out.write("\t\t\t<div class=\"search-box\">\n");
      out.write("\t\t\t\t<div id=\"sb-search\" class=\"sb-search\">\n");
      out.write("\t\t\t\t\t<form>\n");
      out.write("\t\t\t\t\t\t<input class=\"sb-search-input\" placeholder=\"Search\" type=\"search\" name=\"search\" id=\"search\">\n");
      out.write("\t\t\t\t\t\t<input class=\"sb-search-submit\" type=\"submit\" value=\"\">\n");
      out.write("\t\t\t\t\t\t<span class=\"sb-icon-search\"> </span>\n");
      out.write("\t\t\t\t\t</form>\n");
      out.write("\t\t\t   </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t   <!-- search-scripts -->\n");
      out.write("\t\t\t\t\t<script src=\"js/classie.js\"></script>\n");
      out.write("\t\t\t\t\t<script src=\"js/uisearch.js\"></script>\n");
      out.write("\t\t\t\t\t\t<script>\n");
      out.write("\t\t\t\t\t\t\tnew UISearch( document.getElementById( \"sb-search\" ) );\n");
      out.write("\t\t\t\t\t\t</script>\n");
      out.write("\t\t\t  <!-- //search-scripts -->\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\n");
      out.write("\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("</div>\n");
      out.write("<div class=\"category\">\n");
      out.write("    <div>\n");
      out.write("         <form action=\"newproduct.jsp\">\n");
      out.write("<a>Category</a>\n");
      out.write("<select name=\"productType\">\n");
      out.write("                                  <option>All</option>\n");
      out.write("                                  <option>Old Items</option>\n");
      out.write("                                  <option>property</option>\n");
      out.write("                                  <option>Furniture</option>\n");
      out.write("                                  <option>Vehicles</option>\n");
      out.write("                                  <option>Jewellery</option>\n");
      out.write("                                  <option>Watches</option>\n");
      out.write("                                  <option>Beauty</option>\n");
      out.write("                                  <option>Sports</option>\n");
      out.write("                                  <option>Books</option>\n");
      out.write("                                  <option>Computers & Accessories</option>\n");
      out.write("                                  <option>Electronics & gadgets</option>\n");
      out.write("                                  <option>Cloth & Accessories</option>               \n");
      out.write("</select>\n");
i++;
      out.write("\n");
      out.write("<input type=\"submit\" value=\"OK\" style=\"border-radius:15px; background: white; padding:8px 20px 8px 20px; font-weight: bold; border:solid 3px #979191\">\n");
      out.write("\n");
      out.write("</form>\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<div class=\"middle\">\n");
      out.write("\t<ul>\n");
      out.write("            ");

                rs =pst.executeQuery();
                while(rs.next()){
      out.write("\n");
      out.write("\t\t<li>\n");
      out.write("\t\t\t<div>\n");
      out.write("\t\t\t\t<img src=\"images/blog1.jpg\" >\n");
      out.write("\t\t\t\t<div class=\"user\">\n");
      out.write("                                        <img src=\"images/t1.jpg\" alt=\"\"class=\"seller img\"/>\n");
      out.write("\t\t\t\t\t<p>");
 out.print(rs.getString(5));
      out.write("<br>");
 out.print(rs.getString(6)); 
      out.write("<br>\n");
      out.write("\t\t\t\t\tseller of this product</p> \n");
      out.write("\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t<div class=\"prod\" class=\"flt\">\n");
      out.write("\t\t\t\t\t<p ><a style=\"font-weight:bold; text-transaction:uppercase;\">");
 out.print(rs.getString(1)); 
      out.write("</a><br>\n");
      out.write("\t\t\t\t\t<a>Bidding date :</a>");
 out.print(rs.getString(2)); 
      out.write("<br>\n");
      out.write("\t\t\t\t\t<a>Bidding Time :</a>");
 out.print(rs.getString(3)); 
      out.write("<br>\n");
      out.write("\t\t\t\t\t<a>Bidding Starting Rate : </a>");
 out.print(rs.getInt(4)); 
      out.write("<br><br>\n");
      out.write("\t\t\t\t\t");
 out.print(rs.getString(7)); 
      out.write("</p>\n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"more info\" onclick=\"window.location='single.jsp?prodname=");
      out.print(rs.getString(1));
      out.write("'\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<hr>\t\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</li>\n");
      out.write("          ");
 } 
          pst.executeUpdate(); 
      out.write("\n");
      out.write("\t</ul>\n");
      out.write("</div>\n");
      out.write("<!--footer start here-->\n");
      out.write("<div class=\"footer\">\n");
      out.write("\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"footer-main\">\n");
      out.write("\t\t\t<div class=\"col-md-3 footer-grid\">\n");
      out.write("\t\t\t\t<h3>About This Theme</h3>\n");
      out.write("\t\t\t\t<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.account of the system.</p>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-md-3 footer-grid\">\n");
      out.write("\t\t\t\t<h3>Recents Posts</h3>\n");
      out.write("\t\t\t  <div class=\"ftr-sub-gd\">\n");
      out.write("\t\t\t\t<div class=\"col-md-4 ftr-gd2-img\">\n");
      out.write("\t\t\t\t\t<a href=\"#\"><img src=\"images/s1.jpg\" alt=\"\"></a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-8 ftr-gd2-text\">\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><h4>How to Have The Best Vacation</h4></a>\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><p>Mar 3rd,2015</p></a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t  </div>\n");
      out.write("\t\t\t  <div class=\"ftr-sub-gd\">\n");
      out.write("\t\t\t\t<div class=\"col-md-4 ftr-gd2-img\">\n");
      out.write("\t\t\t\t\t<a href=\"#\"><img src=\"images/s2.jpg\" alt=\"\"></a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-8 ftr-gd2-text\">\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><h4>How to Have The Best Vacation</h4></a>\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><p>Mar 3rd,2015</p></a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t  </div>\n");
      out.write("\t\t\t  <div class=\"ftr-sub-gd\">\n");
      out.write("\t\t\t\t<div class=\"col-md-4 ftr-gd2-img\">\n");
      out.write("\t\t\t\t\t<a href=\"#\"><img src=\"images/s3.jpg\" alt=\"\"></a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-8 ftr-gd2-text\">\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><h4>How to Have The Best Vacation</h4></a>\n");
      out.write("\t\t\t\t\t\t<a href=\"#\"><p>Mar 3rd,2015</p></a>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t  </div>\n");
      out.write("\t\t   </div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"col-md-3 footer-grid\">\n");
      out.write("\t\t\t\t<h3>Recent Projects</h3>\n");
      out.write("\t\t\t\t<div class=\"ftr-gd4-img\">\n");
      out.write("\t\t\t\t    <div class=\"col-md-3 ftr-gd4-1\"><a href=\"#\"><img src=\"images/f1.jpg\" alt=\"\"></a></div>\n");
      out.write("\t\t\t\t    <div class=\"col-md-3 ftr-gd4-1\"><a href=\"#\"><img src=\"images/f2.jpg\" alt=\"\"></a></div>\n");
      out.write("\t\t\t\t    <div class=\"col-md-3 ftr-gd4-1\"><a href=\"#\"><img src=\"images/f3.jpg\" alt=\"\"></a></div>\n");
      out.write("\t\t\t\t    <div class=\"col-md-3 ftr-gd4-1\"><a href=\"#\"><img src=\"images/f4.jpg\" alt=\"\"></a></div>\n");
      out.write("\t\t\t\t  <div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"ftr-gd4-img\">\n");
      out.write("\t\t\t\t    <div class=\"col-md-3 ftr-gd4-1\"><a href=\"#\"><img src=\"images/f5.jpg\" alt=\"\"></a></div>\n");
      out.write("\t\t\t\t    <div class=\"col-md-3 ftr-gd4-1\"><a href=\"#\"><img src=\"images/f6.jpg\" alt=\"\"></a></div>\n");
      out.write("\t\t\t\t    <div class=\"col-md-3 ftr-gd4-1\"><a href=\"#\"><img src=\"images/f7.jpg\" alt=\"\"></a></div>\n");
      out.write("\t\t\t\t    <div class=\"col-md-3 ftr-gd4-1\"><a href=\"#\"><img src=\"images/f8.jpg\" alt=\"\"></a></div>\n");
      out.write("\t\t\t\t  <div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"ftr-gd4-img\">\n");
      out.write("\t\t\t\t    <div class=\"col-md-3 ftr-gd4-1\"><a href=\"#\"><img src=\"images/f9.jpg\" alt=\"\"></a></div>\n");
      out.write("\t\t\t\t    <div class=\"col-md-3 ftr-gd4-1\"><a href=\"#\"><img src=\"images/f10.jpg\" alt=\"\"></a></div>\n");
      out.write("\t\t\t\t    <div class=\"col-md-3 ftr-gd4-1\"><a href=\"#\"><img src=\"images/f11.jpg\" alt=\"\"></a></div>\n");
      out.write("\t\t\t\t    <div class=\"col-md-3 ftr-gd4-1\"><a href=\"#\"><img src=\"images/f12.jpg\" alt=\"\"></a></div>\n");
      out.write("\t\t\t\t  <div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t</div>\n");
      out.write("        </div>\t\n");
      out.write("</div>\n");
      out.write("</div>\n");
      out.write("<!--footer end here-->\n");
      out.write("</body>\n");
      out.write("</html>\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
