
<!DOCTYPE html>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.String"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%! Connection con;
    String username;
    String password;
    String url;
    PreparedStatement pst,pst1;
    ResultSet result,rs;
    InputStream isp;
    Part filePart;
    Statement stmt;
    String snm,spno,filename,bn;
    %>
    
    <%
    //CONNECTION
    url="jdbc:oracle:thin:@localhost:1521:XE";
    username="AMOL";
    password="12345";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection(url,username,password);
    
    
    // DATE AND TIME
    DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
    Calendar calfordate = Calendar.getInstance();
    String currentdate = dateFormat.format(calfordate.getTime()).toString();
    
    DateFormat timeFormat = new SimpleDateFormat("HH:mm");
    Calendar calfortime = Calendar.getInstance();
    String currenttime = timeFormat.format(calfortime.getTime()).toString();
    
    //FATCHING DATA..
    HttpSession ses=request.getSession(false);   
    bn = ses.getAttribute("biddername").toString();
    pst = con.prepareStatement("select pname,pprice,pdate,ptime,psname,psphoneno from SellerProdInfo where pdate=? and ptime=?"); 
    pst.setString(1,"2016-03-20");
    pst.setString(2,"23:22");
    
    pst1 = con.prepareStatement("select bpbname from biddingproduct where bpdate=? and bptime=?");
    pst1.setString(1,"2016-03-20");
    pst1.setString(2,"23:22");
    %>
<html>
<head>
<title>Bidding Page</title>
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
<script> 
$(document).ready(function(){
    $("#flip").click(function(){
        $("#panel").slideDown("slow");
    });
});
</script>
<script>
     $( "#clickme" ).click(function() {
  $( "#book" ).slideToggle( "slow", function() {
    // Animation complete.
  });
});
</script>
<script>
     function validatephno(evt)
     {
         var charCode = (evt.which) ? evt.which : event.keyCode
         if (charCode < 47 || charCode > 58)
         {
             alert("You cannot insert any Alphabetic character ");
             return false;
         }
     }
</script>
     
<style> 
#panel, #flip {
    padding: 5px;
    text-align: center;
    background-color: #e5eecc;
    border: solid 1px #c3c3c3;
}

#panel {
    padding: 50px;
    display: none;
}
</style>
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
<div class="middle">
	<ul>
            <%
                result =pst.executeQuery();
                result.next();%>
		<li>
			<div>
				<img src="images/blog1.jpg" >
				<div class="user">
                                        <img src="images/t1.jpg" alt=""class="seller img"/>
					<p><% out.print(""+result.getString(5));%><br><% out.print(""+result.getString(6)); %><br>
					seller of this product</p> 
				</div>	
				<div class="prod" class="flt">
					<p ><a style="font-weight:bold; text-transaction:uppercase;"><% out.print(""+result.getString(1)); %></a><br>
                                        <a>Bidding Starting Rate : </a><% out.print(""+result.getInt(2));%><br>
                                        <a>Bidding date :</a><% out.print(""+result.getString(3)); %><br>
					<a>Bidding Time :</a><% out.print(""+result.getString(4)); %><br>
                                        <a>FINAL RATE : </a><a style="color:rgb(90,150,200); font-size:50px;margin-left:20px;">27000</a>
					<br><br>
					</p>	
				</div>
				<hr>			
			</div>
		</li>
          <%
          pst.executeUpdate(); %>
	</ul>
        <div style=" float:right; width:500px; " class="record">
             <table width="90%">
                  <tr class="spaceUnder a">
                       <td align="center" valign="middle" Style="font-weight: bold; border-bottom:1px solid black; padding:10px">BIDDER</td>
                       <td align="center" valign="middle" Style="font-weight: bold; border-bottom:1px solid black; padding:10px">AMOUNT</td>
                  </tr>
                   <%
                rs =pst1.executeQuery();
                while(rs.next()){%>
                  <tr class="spaceUnder a">
                       <td align="center" valign="middle" Style="font-weight: bold; border-bottom:1px solid black; padding:10px"><%=rs.getString(1)%></td>
                       <td align="center" valign="middle" Style="font-weight: bold; border-bottom:1px solid black; padding:10px">5555</td>
                  </tr>
                <%}%>
             </table>
        </div>
        <div style="width:800px; height:220px; padding-top:30px; border-right:solid 3px #979191;">
             <form action="ActualBidding.jsp">
            <img src="images/t1.jpg" alt="bidder" style="width:60px; height:60px; border-radius: 50%; margin-left: 100px;" />
            <a style="font-weight: bold; margin-left:50px; font-size:30px; color:rgb(90,150,200); "><%=bn%></a>
            <br><input type="text" name="amount" placeholder="Amount" onkeypress="return validatephno(event)" style="padding: 7px; color:rgb(90,150,200); font-size:30px; font-weight: bold; width:200px; border:solid 3px #979191; border-radius:15px; margin:30px 0px 0px 100px;">
            <input type="submit" value="ENTER" style=" padding:15px 30px 15px 30px; background: rgb(90,150,200); color:white; font-weight: bold; font-size:20px; border-radius:15px; margin:0px 0px 0px 60px; box-shadow: inset 1px 1px 7px 5px #23527c; ">
             </form>
            </div>
        
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

