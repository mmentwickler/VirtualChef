<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" ; charset=ISO-8859-1">
<meta charset="utf-8">

<script type="text/javascript" src="js/jquery.js">
	
</script>
<script type="text/javascript" src="js/jquery-ui.min.js">
	
</script>
<script type="text/javascript" src="js/tt_slideshow.js">
	
</script>
<script type="text/javascript" src="js/bootstrap.min.js">
	
</script>
<script type="text/javascript" src="js/Customjs.js">
	
</script>
<script type="text/javascript" src="js/contactform.js">
	
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.2/owl.carousel.min.js"></script>

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/owl-carousel/1.3.2/owl.carousel.min.css">
<script>
	$(document).ready(function() {

		$("#owl-demo").owlCarousel({

			autoPlay : 3000, //Set AutoPlay to 3 seconds

			items : 4,
			itemsDesktop : [ 1199, 3 ],
			itemsDesktopSmall : [ 979, 3 ]

		});

	});
</script>
<script>
	function myFunction() {
		window.open("login.html");
		var x = document.getElementById("bx");
		var y = document.getElementById("bt");
		var z = document.getElementById("ava");

		x.style.display = "none";
		y.style.display = "inline-block";
		z.style.display = "inline";

	}
</script>

<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>

<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Virtual Chef Home</title>
<link rel="icon" type="image/ico" href="images/logo.jpg" />

<link rel="stylesheet" href="bootstrap1.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="style1.css" type="text/css" media="screen" />
<!--[if lte IE 8]>
<link rel="stylesheet"  href="menuie.css" type="text/css" media="screen"/>
<link rel="stylesheet"  href="vmenuie.css" type="text/css" media="screen"/>
<![endif]-->
<script type="text/javascript" src="totop.js">
	
</script>
<!--[if IE 7]>
<style type="text/css" media="screen">
#ttr_vmenu_items  li.ttr_vmenu_items_parent {margin-left:-16px;font-size:0px;}
</style>
<![endif]-->
<!--[if lt IE 9]>
<script type="text/javascript" src="html5shiv.js">
</script>
<script type="text/javascript" src="respond.min.js">
</script>
<![endif]-->
</head>
<body class="Home">
	<div class="totopshow">
		<a href="#" class="back-to-top"><img alt="Back to Top"
			src="images/gototop0.png" /></a>
	</div>
	<div id="ttr_page" class="container">
		<header id="ttr_header">
		<div id="ttr_header_inner">
			<div class="ttr_headershape01">
				<div class="html_content">
					<p style="margin: 0em 0em 0em 0em; line-height: normal;">
						<br style="font-size: 0.571em;" />
					</p>
					<p
						style="margin: 0em 0em 0em 0em; text-align: Center; line-height: normal;">
						<span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; color: rgba(153, 153, 153, 1);">Islamabad,
							Pakistan</span>
					</p>
				</div>
			</div>
			<div class="ttr_headershape02">
				<div class="html_content">
					<p
						style="margin: 0em 0em 0em 0em; text-align: Center; line-height: normal;">
						<br style="font-size: 0.571em;" />
					</p>
					<p
						style="margin: 0em 0em 0em 0em; text-align: Center; line-height: normal;">
						<span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; color: rgba(153, 153, 153, 1);">&nbsp;&nbsp;&nbsp;&nbsp;Phone:
							+92 345 7373737</span>
					</p>
				</div>
			</div>
		</div>
		</header>

		<nav id="ttr_menu" class="navbar-default navbar">
		<div id="ttr_menu_inner_in">
			<div class="menuforeground"></div>
			<div class="ttr_menushape1">
				<div class="myclass">
					<p>
						<span
							style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 2.571em; color: rgba(53, 181, 235, 1);">Virtual
							Chef</span>
					</p>
				</div>
			</div>
			<div id="navigationmenu">
				<div class="navbar-header">
					<button id="nav-expander" data-target=".navbar-collapse"
						data-toggle="collapse" class="navbar-toggle" type="button">
						<span class="sr-only"> </span> <span class="icon-bar"> </span> <span
							class="icon-bar"> </span> <span class="icon-bar"> </span>
					</button>
					<a href="home.html" target="_self"> <img class="ttr_menu_logo"
						src="images/logo.jpg">
					</a>
				</div>
				<div class="menu-center collapse navbar-collapse">
					<ul class="ttr_menu_items nav navbar-nav navbar-right">
						<li class="ttr_menu_items_parent dropdown active">
							<form name="home" method="POST" action="Homelink">

								<a href="javascript:document.home.submit()"
									class="ttr_menu_items_parent_link_active"><span
									class="menuchildicon"></span>Home</a>


							</form>
							<hr class="horiz_separator" />
						</li>
						<li class="ttr_menu_items_parent dropdown">
							<form name="foodlancer" method="POST" action="Foodlancerlink">
								<a HREF="javascript:document.foodlancer.submit()"
									class="ttr_menu_items_parent_link"><span
									class="menuchildicon"></span>Become FoodLancer</a>
							</form>

							<hr class="horiz_separator" />
						</li>
						<li class="ttr_menu_items_parent dropdown">
							<form name="menu" method="POST" action="Menulink">

								<a href="javascript:document.menu.submit()"
									class="ttr_menu_items_parent_link"><span
									class="menuchildicon"></span>Menu</a>
							</form>
							<hr class="horiz_separator" />
						</li>
						<li class="ttr_menu_items_parent dropdown"><a href="#about"
							class="ttr_menu_items_parent_link"><span
								class="menuchildicon"></span>About</a>
							<hr class="horiz_separator" /></li>
						<li class="ttr_menu_items_parent dropdown">
							<form name="contact" method="POST" action="Contactlink">

								<a href="javascript:document.contact.submit()"
									class="ttr_menu_items_parent_link"><span
									class="menuchildicon"></span>Contact</a>
							</form>

							<hr class="horiz_separator" />
						</li>

						<%
							String login = (String) session.getAttribute("login");

							String username = (String) session.getAttribute("username");
							if (!(login.equals("true"))) {
						%>
						
<a HREF="Login" style="color:white; text-decoration: none;" class="buttonbb button2" id="bx"   > Login</a>
 


						<%
							} else {
						%>

						<div class="pull-right"
							content="width=device-width, initial-scale=1">
							<ul class="nav pull-right">
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									style="padding-left: 23px; color: #35b5eb; font-family: Roboto Slab, Arial; font-size: 16px; font-weight: 900; margin-top: 18px; margin-right: 0px;"
									data-toggle="dropdown"> <c:out
											value="${sessionScope.userid.firstName}" /> <b class="caret"></b></a>



									<div class="image_inner_container1">
										<img src="images/83.jpg">
									</div>




									<ul class="dropdown-menu">

										<li>
										
												<a href="Orderzuser"><i
													class="icon-cog"></i> Orders</a>
										</li>

										<li>
										
												<a href="Contact"><i
													class="icon-envelope"></i> Contact Support</a>
									
										</li>
										<li>
									
												<a href="Userprofile"><i
													class="icon-envelope"></i> Profile Settings</a>
									

										</li>
										<li>
									
												<a HREF="Logout"><i
													class="icon-off"></i> Logout</a>
										</li>
									</ul></li>
							</ul>


						</div>

						<%
							}
						%>

					</ul>

				</div>

			</div>

		</div>
		</nav>
		<div class="ttr_banner_slideshow"></div>
		<div class="ttr_slideshow">
			<div id="ttr_slideshow_inner">
				<ul>
					<li id="Slide0" class="ttr_slide" data-slideEffect="Wipe"><a
						href="#"></a>
						<div class="ttr_slideshow_last">
							<div class="ttr_slideshowshape01" data-effect="None"
								data-begintime="0" data-duration="1" data-easing="linear"
								data-slide="bottom">

								<div class="html_content">
									<p
										style="margin:0em 0em 0em 0em;text-align:Center;font-family:'<String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;>&amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;gt;&amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;gt;&amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;gt;&amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;String xmlns=&quot;clr-namespace:System;assembly=mscorlib&quot;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;Arial&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;amp;gt;&amp;amp;amp;amp;lt;/String&amp;amp;amp;amp;gt;&amp;amp;amp;lt;/String&amp;amp;amp;gt;&amp;amp;lt;/String&amp;amp;gt;&amp;lt;/String&amp;gt;</String>';font-size:1.333em;">
										<span
											style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 3.929em; color: rgba(255, 255, 255, 1);">HYGENIC
											HOMEMADE FOOD FOR YOUR HEALTH</span>
									</p>
								</div>
							</div>
						</div></li>
					<li id="Slide1" class="ttr_slide" data-slideEffect="Wipe"><a
						href="#"></a>
						<div class="ttr_slideshow_last">
							<div class="ttr_slideshowshape11" data-effect="None"
								data-begintime="0" data-duration="1" data-easing="linear"
								data-slide="bottom">
								<div class="html_content">
									<p style="text-align: Center;">
										<span
											style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 3.929em; color: rgba(255, 255, 255, 1);">QUALITY
											FOOD IN AFFORDABLE PRICE</span>
									</p>
								</div>
							</div>
						</div></li>
					<li id="Slide2" class="ttr_slide" data-slideEffect="Wipe"><a
						href="#"></a>
						<div class="ttr_slideshow_last">
							<div class="ttr_slideshowshape21" data-effect="Fade"
								data-begintime="0" data-duration="1" data-easing="linear"
								data-slide="bottom">
								<div class="html_content">
									<p style="text-align: Center;">
										<span
											style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 3.929em; color: rgba(255, 255, 255, 1);">OPPORTUNITY
											FOR WOMEN TO EARN AT HOME</span><br>
							<center>		<form name="foodlancer1" method="POST" action="Foodlancerlink">

										<span><a
											HREF="javascript:document.foodlancer1.submit()"
											target="_self" class="btn btn-md btn-primary">Become
												Foodlancer</a> </span>
									</form></center>
									</p>
								</div>

							</div>
						</div></li>
				</ul>
			</div>
			<div class="ttr_slideshow_in">
				<div class="ttr_slideshow_last">
					<div id="nav"></div>
				</div>
			</div>
		</div>
		<div class="ttr_banner_slideshow"></div>
		<div id="ttr_content_and_sidebar_container">
			<div id="ttr_content">
				<div id="ttr_content_margin" class="container-fluid">
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
					<div class="ttr_Home_html_row0 row">
						<div class="post_column col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="ttr_Home_html_column00">
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div class="html_content">
									<p style="text-align: Center;">
										<span
											style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 2.571em; color: rgba(53, 181, 235, 1);">Feeling
											Hungry???</span>
									</p>
									<p
										style="margin: 2.14em 0em 0.36em 0em; text-align: Center; line-height: 1.69014084507042;">
										<span
											style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(131, 131, 131, 1);">Are
											you hungry? Had a long and busy day? Then Virtual Chef is the
											right place for you! Virtual Chef, offers you a long and
											detailed list of the best Chefs near you. Whether it is a
											delicious Biryani, Pulao or any kind of Pakistani Food you
											are craving, Virtual Chef has an extensive list of Chefs;
											further, if you are in the mood for Indian, Pakistani, or
											Afghan cuisines, there are plenty of Chefs available for you
											to order food online with home delivery. Virtual Chef is
											available in a Three Big Cities of Pakistan Islamabad, Lahore
											and Karachi. </span>
									</p>
									<p
										style="margin: 2.14em 0em 0.36em 0em; text-align: Center; line-height: 1.69014084507042;">
							<center>		<form class="form-horizontal" name="menulink" method="POST" action="Menulink">


										<span><a HREF="javascript:document.menulink.submit()"
											target="_self" class="btn btn-lg btn-primary">See Menu</a></span>
									</form></center>
									</p>
								</div>
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div style="clear: both;"></div>
							</div>
						</div>
						<div
							class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
						</div>
					</div>
					<div class="ttr_Home_html_row1 row">
						<div class="post_column col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="ttr_Home_html_column10">
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div class="html_content">
									<p style="text-align: Center;">
										<span
											style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 2.571em; color: rgba(53, 181, 235, 1); background-color: transparent;">HOW
											TO ORDER</span>
									</p>
								</div>
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div style="clear: both;"></div>
							</div>
						</div>
						<div
							class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
						</div>
						<div class="post_column col-lg-4 col-md-6 col-sm-6 col-xs-12">
							<div class="ttr_Home_html_column11">
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div class="html_content">
									<p style="text-align: Center;">
										<span class="ttr_image"
											style="float: none; display: block; text-align: center; overflow: hidden; margin: 0em 0em 2.14em 0em;"><span><img
												class="ttr_uniform" src="images/menu.jpg"
												style="max-width: 119px; max-height: 119px;" /></span></span><span
											style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 1.429em; color: rgba(34, 34, 34, 1);">See
										</span> <span
											style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 1.429em; color: rgba(34, 34, 34, 1);">Menu
										</span>
									</p>
									<p
										style="margin: 1.43em 0em 0.36em 0em; text-align: Center; line-height: 1.69014084507042;">
										<span
											style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(131, 131, 131, 1);">
											Each product is carefully prepared by our finest chefs using
											quality ingredients. So take the stress out of cooking and
											choose what’s on the MENU!</span><span
											style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(131, 131, 131, 1);">.
										</span><span
											style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(131, 131, 131, 1);"></span><span
											style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(131, 131, 131, 1);">
										</span><span
											style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(131, 131, 131, 1);"></span><span
											style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(131, 131, 131, 1);">
										</span><span
											style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(131, 131, 131, 1);"></span><span
											style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(131, 131, 131, 1);">.</span>
									</p>
									<p
										style="margin: 1.43em 0em 0.36em 0em; text-align: Center; line-height: 1.69014084507042;"></p>
								</div>
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div style="clear: both;"></div>
							</div>
						</div>
						<div class="clearfix visible-xs-block"></div>
						<div class="post_column col-lg-4 col-md-6 col-sm-6 col-xs-12">
							<div class="ttr_Home_html_column12">
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div class="html_content">
									<p style="text-align: Center;">
										<span class="ttr_image"
											style="float: none; display: block; text-align: center; overflow: hidden; margin: 0em 0em 2.14em 0em;"><span><img
												class="ttr_uniform" src="images/address.png"
												style="max-width: 120px; max-height: 120px;" /></span></span><span
											style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 1.429em; color: rgba(34, 34, 34, 1);">Locate
											your </span><span
											style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 1.429em; color: rgba(34, 34, 34, 1);">
										</span><span
											style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 1.429em; color: rgba(34, 34, 34, 1);">Destination</span>
									</p>
									<p
										style="margin: 1.43em 0em 0.36em 0em; text-align: Center; line-height: 1.69014084507042;">
										<span
											style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(131, 131, 131, 1);">After
											selecting food from the menu, sign up with your details.Give
											your address details and Done!.</span>
									</p>
									<p
										style="margin: 1.43em 0em 0.36em 0em; text-align: Center; line-height: 1.69014084507042;">
										<span></span>
									</p>
								</div>
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div style="clear: both;"></div>
							</div>
						</div>
						<div
							class="clearfix visible-sm-block visible-md-block visible-xs-block">
						</div>
						<div class="post_column col-lg-4 col-md-6 col-sm-6 col-xs-12">
							<div class="ttr_Home_html_column13">
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div class="html_content">
									<p id="about" style="text-align: Center;">
										<span class="ttr_image"
											style="float: none; display: block; text-align: center; overflow: hidden; margin: 0em 0em 2.14em 0em;"><span><img
												class="ttr_uniform" src="images/deliver.png"
												style="max-width: 120px; max-height: 120px;" /></span></span><span
											style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 1.429em; color: rgba(34, 34, 34, 1);">Recieve
											Order at Home</span>
									</p>
									<p
										style="margin: 1.43em 0em 0.36em 0em; text-align: Center; line-height: 1.69014084507042;">
										<span
											style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(131, 131, 131, 1);">Recieve
											food at your door, pay bill on delivery and enjoy the food.</span>
									</p>
									<p
										style="margin: 1.43em 0em 0.36em 0em; text-align: Center; line-height: 1.69014084507042;">
										<span> </span>
									</p>
								</div>
								<div
									style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
								<div style="clear: both;"></div>
							</div>
						</div>
						<div class="clearfix visible-lg-block visible-xs-block"></div>
					</div>
					<div
						class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
					</div>
				</div>
				<div class="ttr_Home_html_row4 row">
					<div class="post_column col-lg-5 col-md-12 col-sm-12 col-xs-12">
						<div class="ttr_Home_html_column40">
							<div
								style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
							<div class="html_content">
								<p>
									<span class="ttr_image"
										style="float: Left; overflow: hidden; margin: 0em 0em 0em 0em;"><span><img
											class="ttr_uniform" src="images/aboutus2.jpg"
											style="max-width: 500px; max-height: 333px;" /></span></span>
								</p>
							</div>
							<div
								style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
							<div style="clear: both;"></div>
						</div>
					</div>
					<div
						class="clearfix visible-sm-block visible-md-block visible-xs-block">

					</div>
					<div class="post_column col-lg-7 col-md-12 col-sm-12 col-xs-12">
						<div class="ttr_Home_html_column41">
							<div
								style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
							<div class="html_content">
								<p>
									<span
										style="font-family: 'Roboto Slab', 'Arial'; font-weight: 700; font-size: 2.857em; color: rgba(53, 181, 235, 1);">About
										<p
											style="margin: 1.43em 0em 0.36em 0em; line-height: 1.69014084507042;">
											<b>WE SAVE YOU FROM UNHEALTHY TOXIC FOOD CHOICES BY
												SERVING YOU REAL HEALTHY HOMEMADE FOOD AT YOUR DOORSTEP.</b><br>
											<span
												style="font-family: 'Roboto', 'Arial'; font-weight: 300; font-size: 1.143em; color: rgba(34, 34, 34, 1);">Not
												only health is most neglected aspect of our life, but we
												have tons of unhealthy toxic food choices around us, making
												it hard to live a healthy life. That is why Obesity,
												diabetes and heart diseases have become so common in our
												lives.At lunch.pk, you decided to bring a CHANGE in the
												industry. Not only you get healthy homemade food by
												families, but you help us to make this CHANGE happen and
												empower our foodie women by giving them an opportunity to
												sell homemade food right from their home kitchens. Let’s
												grow this win-win relationship together!</span><br> <b>NOT
												EVERYONE VALUE HYGIENIC FOOD… YOU DO! TAKE A WISE DECISION
												TODAY...</b>
										</p>
										<p
											style="margin: 1.43em 0em 0.36em 0em; line-height: 1.69014084507042;">
										<form  name="contactmore" method="POST" action="Contactlink">

											<span><a
												HREF="javascript:document.contactmore.submit()"
												target="_self" class="btn btn-md btn-primary">more
													detail</a></span>

										</form>
								</p>
							</div>
							<div
								style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
							<div style="clear: both;"></div>
						</div>
						<div
							class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
						</div>
					</div>
				</div>
				<div class="ttr_Home_html_row5 row">
<div class="post_column col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="ttr_Home_html_column50">
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div class="html_content"><p style="text-align:Center;"><span style="font-family:'Roboto Slab','Arial';font-weight:700;font-size:2.571em;color:rgba(53,181,235,1);">Gallery</span></p></div>
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div style="clear:both;"></div>
</div>
</div>
<div class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
</div>
<div id="owl-demo">
          
  <div class="item"><img src="images/1.jpg" alt="Owl Image"></div>
  <div class="item"><img src="images/2.jpg" alt="Owl Image"></div>
  <div class="item"><img src="images/3.jpg" alt="Owl Image"></div>
  <div class="item"><img src="images/4.jpg" alt="Owl Image"></div>
  <div class="item"><img src="images/8.jpg" alt="Owl Image"></div>
  <div class="item"><img src="images/6.jpg" alt="Owl Image"></div>
  <div class="item"><img src="images/7.jpg" alt="Owl Image"></div>

 
</div>

<div class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
</div>
</div>
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
</div>
</div>
<div style="clear:both">
</div>
</div>
<div style="height:0px;width:0px;overflow:hidden;"></div>
<footer id="ttr_footer">
<div class="ttr_footerHome_html_row0 row">
<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
<div class="ttr_footerHome_html_column00">
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
</div>
</div>
<div class="clearfix visible-xs-block">
</div>
<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
<div class="ttr_footerHome_html_column01">
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>

</div>
<div class="clearfix visible-sm-block visible-md-block visible-xs-block">
</div>
<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
<div class="ttr_footerHome_html_column02">
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
</div>
</div>
<div class="clearfix visible-xs-block">
</div>
<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
<div class="ttr_footerHome_html_column03">
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
</div>
</div>
<div class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
</div>
</div>
		<div class="ttr_footer_bottom_footer">
			<div class="ttr_footer_bottom_footer_inner">
				<div class="ttr_footershape1">
					<div class="html_content">
						<p>&nbsp;</p>
					</div>
				</div>
				<div class="ttr_footershape2">
					<div class="html_content">
						<p>&nbsp;</p>
					</div>
				</div>
				<div id="ttr_copyright">
					<a href="http://www.highontech.com.pk/"> Designed by HignonTech
					</a><a href="http://www.highontech.com.pk/"> IT Company </a>
				</div>
				<a href="#" class="ttr_footer_facebook" target="_self"> </a> <a
					href="#" class="ttr_footer_twitter" target="_self"> </a> <a
					href="#" class="ttr_footer_googleplus" target="_self"> </a>
			</div>
		</div>
	</footer>
	<div
		style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-bottom-collapse: separate;"></div>
	</div>
	<script type="text/javascript">
		WebFontConfig = {
			google : {
				families : [ 'Roboto+Slab:700', 'Roboto+Slab' ]
			}
		};
		(function() {
			var wf = document.createElement('script');
			wf.src = ('https:' == document.location.protocol ? 'https' : 'http')
					+ '://ajax.googleapis.com/ajax/libs/webfont/1.0.31/webfont.js';
			wf.type = 'text/javascript';
			wf.async = 'true';
			var s = document.getElementsByTagName('script')[0];
			s.parentNode.insertBefore(wf, s);
		})();
	</script>
</body>
</html>