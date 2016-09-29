<!DOCTYPE html>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.String"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%! Connection con;
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
    %>
    
    <%
    String type=request.getParameter("productType");
    
    url="jdbc:oracle:thin:@localhost:1521:XE";
    username="AMOL";
    password="12345";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection(url,username,password);
    stmt = con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
    pst = con.prepareStatement("select pname,pdate,ptime,pprice,psname,psphoneno,pdec from SellerProdInfo where ptype='"+type+"'");

    
    %>
<html>
<head>
<title>Products Page</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jQuery (necessary for Bootstrap"s JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all"/>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }
</script>
<meta name="keywords" content="Auction Responsive web template, Bootstrap Web Templates, Flat Web Templates, AndriodCompatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<!--Google Fonts-->
<!--Google Fonts-->
<link href="//fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet" type="text/css">
<link href="//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic" rel="stylesheet" type="text/css">
<!-- start-smoth-scrolling -->
<script src="js/jquery-2.1.4.min.js"></script>
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$("html,body").animate({scrollTop:$(this.hash).offset().top},1000);
                            	});
			});
	</script>
</head>
<body>
<!-- //end-smoth-scrolling -->
<!--header start here-->
<div class="login">LOGIN
    <a href="sellerlogin.html">seller</a>
    <a href="bidderlogin.html">bidder</a>
    <a href="adminlogin.html">admin</a>
    <a href="bidding.jsp" style="color:rgb(90,150,200); font-weight: bold;">BIDDING</a>    
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
                                        <li><a href="seller.html">Seller</a></li>
                                        <li><a href="bidder.html">Bidder</a></li>
                                        <li><a class="active" href="newproduct.jsp">Products</a></li>
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
<div class="category">
     <a style="margin-left:30px; font-weight:bold; color:rgb(90,200,150);"><% out.print(""+type); %></a>
    <div>
         <form action="newproduct.jsp">
<a>Category</a>
<select name="productType">
                                  <option>All</option>
                                  <option>Old Items</option>
                                  <option>property</option>
                                  <option>Furniture</option>
                                  <option>Vehicles</option>
                                  <option>Jewellery</option>
                                  <option>Watches</option>
                                  <option>Beauty</option>
                                  <option>Sports</option>
                                  <option>Books</option>
                                  <option>Computers & Accessories</option>
                                  <option>Electronics & gadgets</option>
                                  <option>Cloth & Accessories</option>               
</select>
<input type="submit" value="OK" style="border-radius:15px; background: white; padding:8px 20px 8px 20px; font-weight: bold; border:solid 3px #979191">

</form>
</div>
</div>
<div class="middle">
	<ul>
            <%
                rs =pst.executeQuery();
                while(rs.next()){%>
		<li>
			<div>
				<img src="images/blog1.jpg" >
				<div class="user">
                                        <img src="images/t1.jpg" alt=""class="seller img"/>
					<p><% out.print(rs.getString(5));%><br><% out.print(rs.getString(6)); %><br>
					seller of this product</p> 
				</div>	
				<div class="prod" class="flt">
					<p ><a style="font-weight:bold; text-transaction:uppercase;"><% out.print(rs.getString(1)); %></a><br>
					<a>Bidding date :</a><% out.print(rs.getString(2)); %><br>
					<a>Bidding Time :</a><% out.print(rs.getString(3)); %><br>
					<a>Bidding Starting Rate : </a><% out.print(rs.getInt(4)); %><br><br>
					<% out.print(rs.getString(7)); %></p>
					<input type="submit" value="more info" onclick="window.location='single.jsp?prodname=<%=rs.getString(1)%>'">
				</div>
				<hr>			
			</div>
		</li>
          <% } 
          pst.executeUpdate(); %>
	</ul>
</div>
<!--footer start here-->
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
<!--footer end here-->
</body>
</html>

