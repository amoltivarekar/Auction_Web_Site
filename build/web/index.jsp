<html>
<head>
<title>index page</title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- jquery (necessary for Bootstrap's JavaScript plugins) -->
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
</head>
<body>
<!--header start here-->
<div class="login">LOGIN
    <a href="sellerlogin.html">seller</a>
    <a href="bidderlogin.html">bidder</a>
    <a href="adminlogin.html">admin</a>
    <a href="bidding.jsp" style="color:rgb(90,150,200); font-weight: bold;">BIDDING</a>
</div>
<div id="lightbox-panel">
    <h2>Lightbox Panel</h2>
    <p>You can add any valid content here.</p>
    <p align="center"><a id="close-panel" href="#">Close this window</a></p>
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
					<li><a class="active" href="index.jsp">Home</a></li>
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
					<form action="searchproduct">
						<input class="sb-search-input" placeholder="Search by product name" type="search" name="search" id="search">
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
							new UISearch( document.getElementById( 'sb-search' ) );
						</script>
			  <!-- //search-scripts -->
		</div>
		
		<div class="clearfix"> </div>
		</div>
	</div>
</div>
<!--header end here-->
<!--banner strip start here-->
<script src="js/responsiveslides.min.js"></script>
<script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	speed: 500,
        namespace: "callbacks",
        pager: false
      });
    });
  </script>

<div class="banner">
	<div class="container">
	</div>
</div>
<div class="banner-strip">
	<div class="container">
            <h3>We Work On Advertising For Auction Products</h3>	
	</div>
</div>
<!--banner strip end here--> 
<!--services start here-->
<div class="services">
	<div class="container">
		<div class="services-main">
			<div class="services-top">
				<h3>Our Best Services</h3>
				
			</div>
			<div class="services-bottom">
				<div class="row">
					  <div class="col-sm-6 col-md-4 ser">
					<div class="thumbnail">
					  <a><img src="images/300px-Ericsson_bakelittelefon_1931.jpg" alt="Bidding Item" ></a>
					  <div class="caption">
					    <a><h3>Ericsson Bakelit Telephone</h3></a>
					    <p>This is an "AUTOMATIC ELECTRIC" model 40 bakelite desk telephone. The phone dial has been calibrated, all parts of the phone tested and found to be in good operating condition! Very nice condition.</p>
					  </div>
					</div>
					  </div>
					   <div class="col-sm-6 col-md-4 ser">
					<div class="thumbnail">
					  <a><img src="images/Mechanical-pocket-watch-classic-bronze-Big-Vintage-Spider-font-b-Web-b-font-font-b-clock.jpg" alt="Bidding Item" ></a>
					  <div class="caption">
					   <a> <h3>Mechanical Pocket Watch</h3></a>
					    <p>A pocket watch (or pocketwatch) is a watch that is made to be carried in a pocket, as opposed to a wristwatch, which is strapped to the wrist.
They were the most common type of watch from their development in the 16th century until wristwatches became popular after World War I during which a transitional design, trench watches, were used by the military.</p>
					  </div>
					</div>
					  </div>
					   <div class="col-sm-6 col-md-4 ser">
					<div class="thumbnail">
					  <a><img src="images/miQrc7-Jb9hBQlNGJuEedCQ.jpg" alt="Bidding Item"></a>
					  <div class="caption">
					    <a><h3>Canvas river tree landscape painting signed</h3></a>
					    <p>I.Cafieri orignal oil on CANVAS RIVER TREE LANDSCAPE PAINTING SIGNED. This is amazing painting. Painted by original oil colors.</p>
					  </div>
					</div>
					  </div>
				   <div class="clearfix"> </div>
				</div>
				<div class="row">
					  <div class="col-sm-6 col-md-4 ser">
					<div class="thumbnail">
					  <a><img src="images/g5.jpg" alt="Bidding Item"></a>
					  <div class="caption">
					    <a><h3>Galaxy Apartment</h3></a>
					    <p>The term apartment is favoured in North America (although flat is used in the case of a unit which is part of a house containing two or three units, typically one to a floor) and also is the preferred term in Ireland. In the UK, the term apartment is more usual in professional real estate and architectural circles where otherwise the term flat is commonly, but not exclusively, for an apartment without a stair.</p>
					  </div>
					</div>
					  </div>
					   <div class="col-sm-6 col-md-4 ser">
					<div class="thumbnail">
					 <a> <img src="images/ant02.jpg" alt="Bidding Item"></a>
					  <div class="caption">
					   <a><h3>Silver Antiques</h3></a>
					    <p> silver is comfortable with its largely utilitarian role in our domestic lives, offering a neutral backdrop for the feasts and fellowship that surround it.</p>
					  </div>
					</div>
					  </div>
					   <div class="col-sm-6 col-md-4 ser">
					<div class="thumbnail">
					  <a><img src="images/9418157-Close-up-of-a-spyglass-on-the-old-map-Stock-Photo-ship.jpg" alt=""></a>
					  <div class="caption">
					    <a><h3>Spyglass on the old map</h3></a>
					    <p>Spyglass Hill was designed by Robert Trent Jones, Sr., and opened 50 years ago on March 11, 1966, after six years of planning, design, and construction. The course has been in the rotation for the AT&T Pebble Beach National Pro-Am, a February tournament on the West Coast Swing of the PGA Tour, since 1967.</p>
					  </div>
					</div>
					  </div>
				   <div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--services end here-->
<!--fetures start here-->
<div class="features">
	<div class="container">
		<div class="features-main">
			<div class="features-top">
				<h3>Our Best Features</h3>
				<p>Great design is about more than style,about being yourself</p>
			</div>
			<div class="features-bottom">
				<div class="col-md-5 featu-left">
					<a><img src="images/home.jpg" alt=""></a>
				</div>
				<div class="col-md-7 featu-right">
					<h3>Advanced Blog Options</h3>
					<p>Big Flat Campground is a small, quiet campground bordered by Hurdygurdy Creek. Since it is far from towns and highways, it?s the perfect place to ?get away from it all.? The campground is semi-open; trees shade some sites, others have part-shade. Shrubs and grass fill in between sites.</p>
				    <div class="featu-btn">				    	
				    </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>
<!--features end here-->
<!--effec start here-->
<div class="effec">
	<div class="container">
		<div class="effet-main">
			<div class="effec-top">
				<h3>More Effective Features</h3>
				<p>Great design is about more than style, about being yourself</p>
			</div>
			<div class="effec-bottom">
				<div class="col-md-7 effec-left">
					<h3>Advanced Blog Options</h3>
					<p> From the visitor center turn right onto 199 and drive 7.2 miles west. Turn left onto to South Fork Road (County Road 427). The sign will also read Howland Hill Scenic Drive, Stout Grove, and Myrtle Beach. Go ½ mile and bear left at the ?Y? intersection to stay on South Fork Road. Continue for 14 miles and turn left on County Road 405. Campground entrance is 1/4 mile on the left.</p>
				    <div class="effec-btn">				    	
				    </div>
				</div>
				<div class="col-md-5 effec-right">
					<a><img src="images/villa.jpg" alt=""></a>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>
<!--effec end here-->
<!--project star here-->
<link rel="stylesheet" type="text/css" href="css/magnific-popup.css">
			<script type="text/javascript" src="js/nivo-lightbox.min.js"></script>
				<script type="text/javascript">
				$(document).ready(function(){
				    $('#nivo-lightbox-demo a').nivoLightbox({ effect: 'fade' });
				});
				</script>
<div class="project">
	<div class="container">
		<div class="project-main">
			<div class="project-top">
				<h3>Our Latest Projects</h3>
				<p>Great design is about more than style, about being yourself</p>
			</div>
			<div class="project-bottom">
				<div class="col-md-3 project-grid">
						<div class="project-eff">
						<div id="nivo-lightbox-demo"> <p> <a href="images/Mechanical-pocket-watch-classic-bronze-Big-Vintage-Spider-font-b-Web-b-font-font-b-clock.jpg"data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"> <span class="rollover1"> </span></a> </p></div>     
									  	<img class="img-responsive" src="images/Mechanical-pocket-watch-classic-bronze-Big-Vintage-Spider-font-b-Web-b-font-font-b-clock.jpg" alt="">
							  </div>
                                                <div class="project-details">
							<h4>Mechanical Pocket Watch</h4>							
						</div>					
					</div>

					<div class="col-md-3 project-grid">
						<div class="project-eff">
						<div id="nivo-lightbox-demo"> <p> <a href="images/ant02.jpg"data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"> <span class="rollover1"> </span></a> </p></div>     
                                                  <img class="img-responsive" src="images/ant02.jpg" alt="">
						</div>
						<div class="project-details">
							<h4>Silver Antiques</h4>							
						</div>					
					</div>
					<div class="col-md-3 project-grid">
						<div class="project-eff">
						<div id="nivo-lightbox-demo"> <p> <a href="images/gallery-1446741537-screen-shot-2015-11-05-at-111638-am-copy.jpg"data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"> <span class="rollover1"> </span></a> </p></div>     
                                                <img class="img-responsive" src="images/gallery-1446741537-screen-shot-2015-11-05-at-111638-am-copy.jpg" alt="">
							   
						</div>
						 <div class="project-details">
							<h4>1967 old car</h4>								
						</div>					
					</div>
					<div class="col-md-3 project-grid">
						<div class="project-eff">
						<div id="nivo-lightbox-demo"> <p> <a href="images/9418157-Close-up-of-a-spyglass-on-the-old-map-Stock-Photo-ship.jpg" data-lightbox-gallery="gallery1" id="nivo-lightbox-demo"> <span class="rollover1"> </span></a> </p></div>     
									  	<img class="img-responsive" src="images/9418157-Close-up-of-a-spyglass-on-the-old-map-Stock-Photo-ship.jpg" alt="">
						</div>
						<div class="project-details">
							<h4>Spyglass on the old map</h4>
						</div>					
					</div>
			<div class="clearfix"> </div>
			</div>
		</div>
	</div>
</div>
<!--project end here-->
<!--clients start here-->
<div class="clients">
	<div class="container">
		<div class="clients-main">
			<div class="clients-top">
				<h3><span class="clien-hding">Clients</span>Testimonials</h3>
				<p>Great design is about more than style, about being yourself</p>
			</div>
			
		 <div class="clearfix">	 </div>
		</div>
	</div>
</div>
<!-- FlexSlider -->
				  <script defer src="js/jquery.flexslider.js"></script>
				  <script type="text/javascript">
					$(function(){
					  SyntaxHighlighter.all();
					});
					$(window).load(function(){
					  $('.flexslider').flexslider({
						animation: "slide",
						start: function(slider){
						  $('body').removeClass('loading');
						}
					  });
					});
				  </script>
			<!-- FlexSlider -->
<!--clients end here-->
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