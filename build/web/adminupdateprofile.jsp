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
    PreparedStatement pst;
    String suser,spass,sur,uvalue,pvalue,su,sur1,aname;
    Part filePart;
    ResultSet rs;
%>

<%
    try
    {
    aname=request.getParameter("sname");
    url="jdbc:oracle:thin:@localhost:1521:XE";
    username="AMOL";
    password="12345";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection(url,username,password);
    
    
    pst = con.prepareStatement("select name,emailid,address,phoneno,username,password from admin where name='"+aname+"'");
    rs=pst.executeQuery();
    rs.next(); 
    
    }
    catch(Exception e)
    {
     out.print("hello :"+e);   
    }   
%>
    
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Update Profile</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
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
	
                function validatephno(evt)
                {
                    var charCode = (evt.which) ? evt.which : event.keyCode
                    if (charCode < 47 || charCode > 58)
                    {
                        alert("You cannot insert any Alphabetic character ");
                        return false;
                    }

                }
                function validateFm(evt)
                {
                    var charCode = (evt.which) ? evt.which : event.keyCode
                    if (charCode < 47 || charCode > 58)
                    {
                    }
                    else
                    {
                        alert("You cannot insert numeric values");
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
            <a href="adminupdateprofile.jsp?sname=<%=aname%>"><%=aname%></a>
            <a href="AdminProfilePage.jsp" class="tag">profile</a>
            <a href="sellerrecords.jsp" class="tag">Seller Records</a>
            <a href="bidderrecords.jsp" class="tag">Bidder Records</a>
            <a href="allproducts.jsp" class="tag">All Products</a>
            <a href="feedback.jsp" class="tag">Feedback</a>
            <a href="adminlogout" class="tag ">Logout</a>
        </div>
        <div class="contact" style="padding-bottom: 10%;">
	<div class="contact-main">
	   <div class="container">
			<div class="contact-top">
				<h3>ADMIN</h3>
				<p>Admin should fill the below information and Edit the account</p>
			</div>
			<div class="contact-bottom">
			  <form action="adminprofileupdate?user=<%=aname%>" method="post" name="myForm" onSubmit="return validateForm()" >
				<div class="col-md-7 contact-left">
                             <% rs =pst.executeQuery();
                                while(rs.next()){%>       
		            <p>Name</p>
		             <input type="text" value="<% out.print(rs.getString(1)); %>" name="afullname" onkeypress="return validateFm(event)" style="color:#0B758A;" readonly/>
		            <p>E-mail</p> 
		             <input type="text" value="<% out.print(rs.getString(2)); %>" name="aemail" style="color:#0B758A;"/>
		            <p>Address</p>
		             <input type="text" value="<% out.print(rs.getString(3)); %>" name="aaddress" style="color:#0B758A;"/>
		            <p>Phone No.</p>
		             <input type="text" value="<% out.print(rs.getString(4)); %>" name="aphoneno" onkeypress="return validatephno(event)" style="color:#0B758A;"/>
                            <p>UserName</p>
		             <input type="text" value="<% out.print(rs.getString(5)); %>" name="ausername" style="color:#0B758A;"/>
                            <p>Password</p>
		             <input type="password" value="<% out.print(rs.getString(6)); %>" name="apassword" style="color:#0B758A;"/>  
                             
                                </div>
				<div class="col-md-5 contact-right">
					<p>Photo</p>
                                        <img src="images/t1.jpg" width="200px" height="200px">
                                        <br><input type="submit" value="submit">
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
>
