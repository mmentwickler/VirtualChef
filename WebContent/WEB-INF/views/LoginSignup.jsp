<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<script type="text/javascript" src="js/jquery.js">
	
</script>
<script type="text/javascript" src="js/jquery-ui.min.js">
	
</script>
<script type="text/javascript" src="js/bootstrap.min.js">
	
</script>
<script type="text/javascript" src="js/Customjs.js">
	
</script>
<script type="text/javascript" src="js/contactform.js">
	
</script>
<title>Login/Signup</title>
<link rel="icon" type="image/ico" href="images/logo.jpg" />

<link rel="stylesheet" href="bootstrap.css" type="text/css" media="screen" />
<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
<link rel='stylesheet' href="login.css"  type='text/css' media="all" />

<script type="text/javascript" src="js/totop.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="stylish Sign in and Sign up Form A Flat Responsive widget, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 

</script>
<!--online_fonts-->
<!--//online_fonts-->
<!--stylesheet-->
</head>
 <%
  response.setHeader("Cache-Control","no-cache");
  response.setHeader("Cache-Control","no-store");
  response.setHeader("Pragma","no-cache");
  response.setDateHeader ("Expires", 0);
  %> 
<body>
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
						Pakistan&nbsp;&nbsp;</span>
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
	<nav  class="navbar-default navbar">
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
					<li class="ttr_menu_items_parent dropdown">
					<form name="home" method="POST" action="Homelink" >
						
					<a href="javascript:document.home.submit()"
						class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>Home</a>
						</form>
						
						
						<hr class="horiz_separator" /></li>
					<li class="ttr_menu_items_parent dropdown">
					<form name="foodlancer" method="POST" action="Foodlancerlink" >
						
					<a
						href="javascript:document.foodlancer.submit()" class="ttr_menu_items_parent_link"><span
							class="menuchildicon"></span>Become Foodlancer</a>
							</form>
						<hr class="horiz_separator" /></li>
					<li class="ttr_menu_items_parent dropdown">
						<form name="menu" method="POST" action="Menulink" >
						
					
					<a href="javascript:document.menu.submit()"
						class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>Menu</a>
						
						</form>
						
						<hr class="horiz_separator" /></li>
					<li class="ttr_menu_items_parent dropdown">
						<form name="contact" method="POST" action="Contactlink" >
					
					<a
						href="javascript:document.contact.submit()" class="ttr_menu_items_parent_link"><span
							class="menuchildicon"></span>Contact</a>
							</form>
							
						<hr class="horiz_separator" /></li>
				</ul>
			</div>
		</div>
	</div>
	</nav>
	<div class="form-w3ls">
		<div class="form-head-w3l">
			<h2>s</h2>
		</div>
		<ul class="tab-group cl-effect-4">
			<li class="tab active"><a href="#signin-agile">Sign In</a></li>
			<li class="tab"><a href="#signup-agile">Sign Up</a></li>
		</ul>
		<div class="tab-content">
			<div id="signin-agile">
				<form action="Login" method="post">

					<p class="header">Login as:</p>
					<select name="user_type">
						<option value="Admin">Admin</option>
						<option value="Chef">Chef</option>
						<option value="Customer">Customer</option>

					</select>

					<p class="header">
						<br>Email
					</p>
					<input type="email" name="user" placeholder="User Name"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'User Name';}"
						required="required">

					<p class="header">Password</p>
					<input type="password" name="password" placeholder="Password"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Password';}"
						required="required"> 
						<c:if test="${requestScope.inc_user_or_pass!=null}">
						

                            <span style="color:red;">
                    
						<%=request.getAttribute("inc_user_or_pass") %>
						</span>
							</c:if>
									<c:if test="${sessionScope.userse!=null}">
							    <span style="color:red;">
                    
						<%=session.getAttribute("userse") %>
						</span>
						</c:if>
				
						<!--  
				 	<c:if test="${not empty inc_user_or_pass}">
						<c:out value="${inc_user_or_pass}" />
					</c:if>-->
					 
				
					 
					 	 <input type="submit" class="sign-in" >
				</form>
			</div>

			<div id="signup-agile">
				<form action="Signup" method="post">

					<p class="header">First Name</p>
					<input type="text" style="color: red" pattern="[A-Za-z]{3,}"
						name="fname" placeholder="Minimum 3 alphabets"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Your Full Name';}"
						required="required">

					<p class="header">Last Name</p>
					<input type="text" name="lname" placeholder="Your Last Name"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Your Full Name';}"
						required="required">

					<p class="header">CONTACT NUMBER</p>
					<input type="text" pattern="^[0][1-9]\d{9}$|^[1-9]\d{9}$"
						name="phone_num" placeholder="03001234567" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Your Full Number';}"
						required="required">

					<p class="header">DATE OF BIRTH</p>
					<input type="date" name="dob" placeholder="Date of Birth"
							min="1900-01-01" max="2018-01-01"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Your Full Name';}"
						required="required">

					<p class="header">CNIC</p>
					<input type="text" pattern="^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$"
						name="cnic" placeholder="11111-1111111-1"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Your Full Name';}"
						required="required">


					<p class="header">Email Address</p>
					<input type="email" name="email" placeholder="Email"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Email';}"
						required="required">

					<p class="header">Password</p>
					<input type="password" name="password" placeholder="Password"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Password';}"
						required="required">

					<p class="header">Confirm Password</p>
					<input type="password" name="password"
						placeholder="Confirm Password" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Confirm Password';}"
						required="required"> ADDRESS<br>
					<textarea class="address" name="address" rowspan=10
						placeholder="Enter Text Here.."></textarea>


					<input type="submit" class="register" value="Sign up">
				</form>
			</div>
		</div>
		<!-- tab-content -->
	</div>
	<!-- /form -->
	<!-- js files -->
	<footer id="ttr_footer">
	<div class="ttr_footerHome_html_row0 row">
		<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
			<div class="ttr_footerHome_html_column00">
				<div
					style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
				<div
					style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
			</div>
		</div>
		<div class="clearfix visible-xs-block"></div>
		<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
			<div class="ttr_footerHome_html_column01">
				<div
					style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
				<div
					style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>

			</div>
			<div
				class="clearfix visible-sm-block visible-md-block visible-xs-block">
			</div>
			<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
				<div class="ttr_footerHome_html_column02">
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
				</div>
			</div>
			<div class="clearfix visible-xs-block"></div>
			<div class="post_column col-lg-3 col-md-6 col-sm-6 col-xs-12">
				<div class="ttr_footerHome_html_column03">
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
					<div
						style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-top-collapse: separate;"></div>
				</div>
			</div>
			<div
				class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
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
	<script type="text/javascript">$(function(){
	    var dtToday = new Date();

	    var month = dtToday.getMonth() + 1;
	    var day = dtToday.getDate();
	    var year = dtToday.getFullYear();

	    if(month < 10)
	        month = '0' + month.toString();
	    if(day < 10)
	        day = '0' + day.toString();

	    var maxDate = year + '-' + month + '-' + day;    
	    $('#txtDate').attr('max', maxDate);
	});</script>

	<script src='js/jquery.min.js'></script>
	<script src="js/index.js"></script>
	<!-- /js files -->
</body>

</html>