package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class bidding_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<style>\r\n");
      out.write("@import url(http://fonts.googleapis.com/css?family=Open+Sans:300,400,700);\r\n");
      out.write("\r\n");
      out.write("*{margin:0;padding:0;}\r\n");
      out.write("\r\n");
      out.write("body{\r\n");
      out.write("  background:white;\r\n");
      out.write("  font-family:'Open Sans',sans-serif;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".button{\r\n");
      out.write("  border-radius:10px;\r\n");
      out.write("  width:100px;\r\n");
      out.write("  background:rgb(94,200,170);\r\n");
      out.write("  display:block;\r\n");
      out.write("  margin:0 auto;\r\n");
      out.write("  margin-top:1%;\r\n");
      out.write("  padding:10px;\r\n");
      out.write("  text-align:center;\r\n");
      out.write("  text-decoration:none;\r\n");
      out.write("  color:#fff;\r\n");
      out.write("  cursor:pointer;\r\n");
      out.write("  transition:background .3s;\r\n");
      out.write("  -webkit-transition:background .3s;\r\n");
      out.write("}\r\n");
      out.write(".button:hover{\r\n");
      out.write("  background:#2288bb;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#login\r\n");
      out.write("{\r\n");
      out.write("  width:500px;\r\n");
      out.write("  margin:0 auto;\r\n");
      out.write("  margin-top:5px;\r\n");
      out.write("  margin-bottom:2%;\r\n");
      out.write("  transition:opacity 1s;\r\n");
      out.write("  -webkit-transition:opacity 1s;\r\n");
      out.write("}\r\n");
      out.write("#triangle{\r\n");
      out.write("  width:0;\r\n");
      out.write("  border-top: 12px solid transparent;\r\n");
      out.write("  border-right:12px solid transparent;\r\n");
      out.write("  border-bottom:12px solid rgb(94,200,170);;\r\n");
      out.write("  border-left:12px solid transparent;\r\n");
      out.write("  margin:0 auto;\r\n");
      out.write("}\r\n");
      out.write("#login h1{\r\n");
      out.write("  background:rgb(94,200,170);\r\n");
      out.write("  padding:20px 0;\r\n");
      out.write("  font-size:140%;\r\n");
      out.write("  font-weight:300;\r\n");
      out.write("  text-align:center;\r\n");
      out.write("  color:#fff;\r\n");
      out.write("}\r\n");
      out.write(".backg{\r\n");
      out.write("  background:#f0f0f0;\r\n");
      out.write("  padding:10% 4%;\r\n");
      out.write("}\r\n");
      out.write("form{\r\n");
      out.write("  background:white;\r\n");
      out.write("  padding:6% 4%;\r\n");
      out.write("}\r\n");
      out.write("input[type=\"text\"],input[type=\"password\"]{\r\n");
      out.write("  width:92%;\r\n");
      out.write("  background:#fff;\r\n");
      out.write("  margin-bottom:5%;\r\n");
      out.write("  margin-left:20px;\r\n");
      out.write("  border:1px solid #ccc;\r\n");
      out.write("  padding:4%;\r\n");
      out.write("  font-family:'Open Sans',sans-serif;\r\n");
      out.write("  font-size:95%;\r\n");
      out.write("\r\n");
      out.write("}\r\n");
      out.write("input[type=\"submit\"],input[type=\"submit\"],form a{\r\n");
      out.write("  background:rgb(94,200,170);\r\n");
      out.write("  border:0;\r\n");
      out.write("  padding:5% 45% 5% 45%;\r\n");
      out.write("  font-family:'Open Sans',sans-serif;\r\n");
      out.write("  font-size:100%;\r\n");
      out.write("  color:#fff;\r\n");
      out.write("  cursor:pointer;\r\n");
      out.write("  transition:background .3s;\r\n");
      out.write("  -webkit-transition:background .3s;\r\n");
      out.write("  text-decoration: none;\r\n");
      out.write("}\r\n");
      out.write(".login\r\n");
      out.write(" {\r\n");
      out.write("    background-color:white;\r\n");
      out.write("    padding: 5px;\r\n");
      out.write(" }\r\n");
      out.write(".login a\r\n");
      out.write(" {\r\n");
      out.write("    text-decoration:none;\r\n");
      out.write("    padding-left:20px;\r\n");
      out.write("    font-size:15px;\r\n");
      out.write("    color:rgb(94,200,170);\r\n");
      out.write(" }\r\n");
      out.write(" body{\r\n");
      out.write("      background-image:url(images/back.jpg);\r\n");
      out.write("     background-repeat:no-repeat;\r\n");
      out.write("     background-attachment: scroll;\r\n");
      out.write("     \r\n");
      out.write("       \r\n");
      out.write(" }\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("<div class=\"login\">LOGIN\r\n");
      out.write("    <a href=\"sellerlogin.html\">seller</a>\r\n");
      out.write("    <a href=\"bidderlogin.html\">bidder</a>\r\n");
      out.write("    <a href=\"adminlogin.html\">admin</a>\r\n");
      out.write("    <a href=\"bidding.jsp\" style=\"color:rgb(90,150,200); font-weight: bold;\">BIDDING</a>\r\n");
      out.write("</div>\r\n");
      out.write("<span href=\"#\" class=\"button\" id=\"toggle-login\">Bidding</span>\r\n");
      out.write("\r\n");
      out.write("<div id=\"login\">\r\n");
      out.write("  <div id=\"triangle\"></div>\r\n");
      out.write("  <h1>Log in</h1>\r\n");
      out.write("  <form action=\"BiddingLogin\" method=\"post\" class=\"backg\">\r\n");
      out.write("    <input type=\"text\" placeholder=\"username\" name=\"bus\" />\r\n");
      out.write("    <input type=\"password\" placeholder=\"password\" name=\"bpass\" /><br><br>\r\n");
      out.write("    <input type=\"submit\" value=\"Log in\">   \r\n");
      out.write("    <br><br><br><br>\r\n");
      out.write("        <a href=\"index.jsp\">Close</a>\r\n");
      out.write("  </form>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script>\r\n");
      out.write("$('#toggle-login').click(function(){\r\n");
      out.write("  $('#login').toggle();\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
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
