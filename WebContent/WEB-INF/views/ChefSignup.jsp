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
<script type="text/javascript" src="jquery.js">
	
</script>
<script type="text/javascript" src="jquery-ui.min.js">
	
</script>
<script type="text/javascript" src="bootstrap.min.js">
	
</script>
<script type="text/javascript" src="Customjs.js">
	
</script>
<script type="text/javascript" src="contactform.js">
	
</script>
<title>Chef Signup</title>
<link rel="icon" type="image/ico" href="images/logo.jpg" />
<link rel="stylesheet" href="bootstrap.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
<script type="text/javascript" src="totop.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="stylish Sign in and Sign up Form A Flat Responsive widget, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 


</script>
<!--online_fonts-->
<!--//online_fonts-->
<link href="loginju.css" rel='stylesheet' type='text/css' media="all" />
<!--stylesheet-->
</head>
<body id="bd1">
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
					<a HREF="Login" style="color:white; text-decoration: none;" class="buttonbb button2" id="bx" > Login</a>



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
		</nav>	<div class="form-w3ls">
		<div class="form-head-w3l">
			<h2>s</h2>
		</div>
		<ul class="tab-group cl-effect-4">
			<li class="tab active" style="margin-left: 40px;"><a
				href="#signin-agile">Sign Up</a></li>

		</ul>
		<div class="tab-content">
			<div id="signin-agile">
				<form action="ChefSignup" method="post">

					<p class="header">
						<br>First Name
					</p>
					<input type="text" name="fname" pattern="[A-Za-z]{3,}" required="required"
						placeholder="Minimum 3 alphabets" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'First Name';}">


					<p class="header">
						<br>Last Name
					</p>
					<input type="text" name="lname" placeholder="last name"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Last Name';}"
						required="required">


					<p class="header">
						<br>Contact Number
					</p>
					<input type="text" pattern="^[0][1-9]\d{9}$|^[1-9]\d{9}$" name="cnum" required="required"
						placeholder="contact number" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Contact number';}">

					<p class="header">
						<br>Dob
					</p>
					<input 
					min="1900-01-01" max="2018-01-01"
					type="date" name="dob" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'dob';}"
						required="required">


					<p class="header">
						<br>Cnic
					</p>
					<input type="text" name="cnic" placeholder="11111-1111111-1"
					    pattern="^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Cnic';}"
						required="required">

					<p class="header">
						<br>Email
					</p>
					<input type="email" name="email" placeholder="email"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'email';}"
						required="required">

					<p class="header">Password</p>
					<input type="password" name="password" placeholder="password"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'password';}"
						required="required">
						
						 ADDRESS<br>
					<textarea class="address" name="address" rowspan=10
						placeholder="Enter your Address Here.."></textarea>



					<p class="header">Account Number</p>
					<input type="text" name="Account-number"
						placeholder="account number" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Your Account Number';}"
						required="required">

					<p class="header">Education</p>
					<input type="text" 
						name="education" placeholder="education" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Your Education';}"
						required="required">

					<p class="header">Your Skills</p>
					<br>  <select name="dish_name" multiple
						style="max-width: 100%;">
                    	<c:forEach items='${requestScope.dishes}' var='dish'>
						  <option value="${dish.id}">${dish.dishname}</option> 
						</c:forEach>
					 </select>
					 <br>
					<!--  <input type="text" name="dob" placeholder="start year"
						onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Your Full Name';}"
						required="required">

					 <p class="header">End Year</p>
					<input type="text" pattern="^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$"
						name="end year" placeholder="end year" onfocus="this.value = '';"
						onblur="if (this.value == '') {this.value = 'Your Full Name';}"
						required="required">-->


					<br>Description<br>
					<textarea class="address" name="comment" rowspan=10
						placeholder="describe yourself...."></textarea>
                        <span style="color:red;">
                    	<%=session.getAttribute("chefje") %>
					    </span>

					<input type="submit" class="register" value="Submit">

				</form>
			</div>

			<div id="signup-agile"></div>
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