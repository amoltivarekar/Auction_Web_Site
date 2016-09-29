<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%!
    Connection con;
    String username;
    String password;
    String url;
    PreparedStatement pst,pst1;
    String pn,sur;
    Part filePart;
    ResultSet rs,rst;
%>

<%
    try
    {
        String productName=request.getParameter("product");
        url="jdbc:oracle:thin:@localhost:1521:XE";
        username="AMOL";
        password="12345";
        Class.forName("oracle.jdbc.driver.OracleDriver");
        con=DriverManager.getConnection(url,username,password);
        HttpSession session1=request.getSession(false);   
        sur = session1.getAttribute("sname").toString();
        
        pst = con.prepareStatement("select pname,pprice,pdate,ptime,pdec from SellerProdInfo where pname='"+productName+"'");
        rs =pst.executeQuery();
        while(rs.next())
        {
            pn=rs.getString(1);
        }
    }
    catch(Exception e)
    {
        out.print("hello"+e);
    }
    
%>
    
<!DOCTYPE html>
<html>
    <head>
        <title>sellerProdInfo page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>index page</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
</script>
<meta name="keywords" content="Auction" />
<!--Google Fonts-->
<!--Google Fonts-->
<link href='//fonts.googleapis.com/css?family=Lato:100,300,400,700,900' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
	</script>
	<script>
		function myfunction()
		{
			//prompt("'");
			//document.getElementById("a").innerHTML="<Input type='' placeholder='amc'>";
			prompt("","ussername");
			prompt("","type='password'");
		}
	
                function validateprice(evt)
                {
                    var charCode = (evt.which) ? evt.which : event.keyCode;
                    if (charCode < 47 || charCode > 58)
                    {
                        alert("You cannot insert any Alphabetic character ");
                        return false;
                    }

                }
        </script>
</head>
<body>
<div class="login">LOGIN
<a href="sellerlogin.html">seller</a>
<a href="bidderlogin.html">bidder</a>
<a href="adminlogin.html">admin</a>
</div>
    <div class="header">
	<div class="container">
		<div class="header-main">
			<div class="logo">
				<a href="index.jsp"> Auction </a>
			</div>
			<div class="head-right">
			  <div class="top-nav">
					<span class="menu"> <img src="images/icon.png" alt=""/></span>
				<ul class="res">
					<li><a  href="index.jsp">Home</a></li>
                                        <li><a href="seller.html">seller</a></li>
                                        <li><a href="bidder.html">Bidder</a></li>
                                        <li><a href="newproduct.jsp">Products</a></li>
					<li><a href="about.html">About Us</a></li>                                       
					<li><a href="contact.html">Contact</a></li>
				<div class="clearfix"></div>
				</ul>
				<!-- script-for-menu -->
							<script>
							   $( "span.menu" ).click(function() {
								 $( "ul.res" ).slideToggle( 300, function() {
								 // Animation complete.
								  });
								 });
							</script>
			<!-- /script-for-menu -->
			 </div>	
			<div class="search-box">
				<div id="sb-search" class="sb-search">
					<form>
						<input class="sb-search-input" placeholder="Search" type="search" name="search" id="search">
						<input class="sb-search-submit" type="submit" value="">
						<span class="sb-icon-search"> </span>
					</form>
			   </div>
			</div>
			<div class="clearfix"> </div>
			   <!-- search-scripts -->
					<script src="js/classie.js"></script>
					<script src="js/uisearch.js"></script>
						<script>
							new UISearch( document.getElementById( "sb-search" ) );
						</script>
			  <!-- //search-scripts -->
		</div>
		
		<div class="clearfix"> </div>
		</div>
	</div>
</div>
        <div class="userbar">
            <img src="images/t1.jpg" />
             <a href="profile.jsp?sname=<%=sur%>"><%=sur%></a>
            <a href="sellerlogin" class="tag1">Product Registration Form</a>
            <a href="history.jsp" class="tag ">History</a>
            <a href="LogoutServlet" class="tag ">Logout</a>
        </div>
        <div class="contact" style="padding-bottom: 10%;">
	<div class="contact-main">
	   <div class="container">
			<div class="contact-top">
				<h3>SELLER </h3>
				<p>Seller should Edit the below information of product for Auction</p>
			</div>
			<div class="contact-bottom">
			  <form action="editProduct?prn=<%=pn%>" method="post" >
				<div class="col-md-7 contact-left">
                <% rst =pst.executeQuery();
                while(rst.next()){%>
		            <p>Name Of Product</p>
                             <input type="text" value="<% out.print(rst.getString(1)); %>" name="eproductname"  style="color:#0B758A;"/>
		            <p>Price Of Product</p> 
		             <input type="text" value="<% out.print(rst.getInt(2)); %>" name="eproductprice" style="color:#0B758A;" onkeypress="return validateprice(event)"/>
		            <p>Date</p>
		             <input type="date" value="<% out.print(rst.getString(3)); %>" style="color:#0B758A;" name="eproductdate" />
                            <p>Time</p>
		             <input type="time" value="<% out.print(rst.getString(4)); %>" style="color:#0B758A;" name="eproducttime" />
                            <p>Description</p>
                            <textarea name="epdec" value="" style="color:#0B758A;"><% out.print(rst.getString(5)); %></textarea>
                                </div>
				<div class="col-md-5 contact-right">
					<p>Photo</p>
                                        <input type="file" name="pphoto">
                                        <input type="submit" value="SUBMIT">
				 </div>
                                <%}
                                pst.executeUpdate();
                                %>
				 <div class="clearfix"> </div>
				</div>
				</form>
		</div>
	</div>
</div>
<div class="footer">
	<div class="container">
		<div class="footer-main">
			<div class="col-md-3 footer-grid">
				<h3>About This Theme</h3>
				<p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit.account of the system.</p>
			</div>
			<div class="col-md-3 footer-grid">
				<h3>Recents Posts</h3>
			  <div class="ftr-sub-gd">
				<div class="col-md-4 ftr-gd2-img">
					<a href="#"><img src="images/s1.jpg" alt=""></a>
				</div>
				<div class="col-md-8 ftr-gd2-text">
						<a href="#"><h4>How to Have The Best Vacation</h4></a>
						<a href="#"><p>Mar 3rd,2015</p></a>
				</div>
				<div class="clearfix"> </div>
			  </div>
			  <div class="ftr-sub-gd">
				<div class="col-md-4 ftr-gd2-img">
					<a href="#"><img src="images/s2.jpg" alt=""></a>
				</div>
				<div class="col-md-8 ftr-gd2-text">
						<a href="#"><h4>How to Have The Best Vacation</h4></a>
						<a href="#"><p>Mar 3rd,2015</p></a>
				</div>
				<div class="clearfix"> </div>
			  </div>
			  <div class="ftr-sub-gd">
				<div class="col-md-4 ftr-gd2-img">
					<a href="#"><img src="images/s3.jpg" alt=""></a>
				</div>
				<div class="col-md-8 ftr-gd2-text">
						<a href="#"><h4>How to Have The Best Vacation</h4></a>
						<a href="#"><p>Mar 3rd,2015</p></a>
				</div>
				<div class="clearfix"> </div>
			  </div>
		   </div>
			
			<div class="col-md-3 footer-grid">
				<h3>Recent Projects</h3>
				<div class="ftr-gd4-img">
				    <div class="col-md-3 ftr-gd4-1"><a href="#"><img src="images/f1.jpg" alt=""></a></div>
				    <div class="col-md-3 ftr-gd4-1"><a href="#"><img src="images/f2.jpg" alt=""></a></div>
				    <div class="col-md-3 ftr-gd4-1"><a href="#"><img src="images/f3.jpg" alt=""></a></div>
				    <div class="col-md-3 ftr-gd4-1"><a href="#"><img src="images/f4.jpg" alt=""></a></div>
				  <div class="clearfix"> </div>
				</div>
				<div class="ftr-gd4-img">
				    <div class="col-md-3 ftr-gd4-1"><a href="#"><img src="images/f5.jpg" alt=""></a></div>
				    <div class="col-md-3 ftr-gd4-1"><a href="#"><img src="images/f6.jpg" alt=""></a></div>
				    <div class="col-md-3 ftr-gd4-1"><a href="#"><img src="images/f7.jpg" alt=""></a></div>
				    <div class="col-md-3 ftr-gd4-1"><a href="#"><img src="images/f8.jpg" alt=""></a></div>
				  <div class="clearfix"> </div>
				</div>
				<div class="ftr-gd4-img">
				    <div class="col-md-3 ftr-gd4-1"><a href="#"><img src="images/f9.jpg" alt=""></a></div>
				    <div class="col-md-3 ftr-gd4-1"><a href="#"><img src="images/f10.jpg" alt=""></a></div>
				    <div class="col-md-3 ftr-gd4-1"><a href="#"><img src="images/f11.jpg" alt=""></a></div>
				    <div class="col-md-3 ftr-gd4-1"><a href="#"><img src="images/f12.jpg" alt=""></a></div>
				  <div class="clearfix"> </div>
				</div>
			</div>
		<div class="clearfix"> </div>
		</div>
	</div>
</div>
</div>
    </body>
</html>
