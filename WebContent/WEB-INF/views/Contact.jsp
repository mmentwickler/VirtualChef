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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>
Contact
</title>
    <link rel="icon" type="image/ico" href="images/logo.jpg" />

<link rel="stylesheet"  href="bootstrap1.css" type="text/css" media="screen"/>
<link rel="stylesheet"  href="style1.css" type="text/css" media="screen"/>
<!--[if lte IE 8]>
<link rel="stylesheet"  href="menuie.css" type="text/css" media="screen"/>
<link rel="stylesheet"  href="vmenuie.css" type="text/css" media="screen"/>
<![endif]-->
<script type="text/javascript" src="totop.js">
</script>
<script>
function myFunction() {
window.open("login.html");
    var x = document.getElementById("bx");
	    var y = document.getElementById("bt");
			    var z = document.getElementById("ava");

		x.style.display="none";
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
</head>
<body class="Contact">
<div class="totopshow">
<a href="#" class="back-to-top"><img alt="Back to Top" src="images/gototop0.png"/></a>
</div>
<div id="ttr_page" class="container">
<header id="ttr_header">
<div id="ttr_header_inner">
<div class="ttr_headershape01">
<div class="html_content"><p style="margin:0em 0em 0em 0em;line-height: normal;"><br style="font-size:0.571em;" /></p><p style="margin:0em 0em 0em 0em;text-align:Center;line-height: normal;"><span style="font-family:'Roboto','Arial';font-weight:300;color:rgba(153,153,153,1);">Islamabad, Pakistan&nbsp;&nbsp;</span></p></div>
</div>
<div class="ttr_headershape02">
<div class="html_content"><p style="margin:0em 0em 0em 0em;text-align:Center;line-height: normal;">
<br style="font-size:0.571em;" /></p>
			<p
						style="margin: 0em 0em 0em 0em; text-align: Center; line-height: normal;">
						<span
							style="font-family: 'Roboto', 'Arial'; font-weight: 300; color: rgba(153, 153, 153, 1);">&nbsp;&nbsp;&nbsp;&nbsp;Phone:
							+92 345 7373737</span>
					</p></div>
</div>
</div>
</header>
<nav id="ttr_menu" class="navbar-default navbar">
   <div id="ttr_menu_inner_in">
<div class="menuforeground">
</div>
<div class="ttr_menushape1">
<div class="myclass"><p><span style="font-family:'Roboto Slab','Arial';font-weight:700;font-size:2.571em;color:rgba(53,181,235,1);">Virtual Chef</span></p></div>
</div>
<div id="navigationmenu">
<div class="navbar-header">
<button id="nav-expander" data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
<span class="sr-only">
</span>
<span class="icon-bar">
</span>
<span class="icon-bar">
</span>
<span class="icon-bar">
</span>
</button>
<a href="home.html" target="_self">
<img  class="ttr_menu_logo" src="images/logo.jpg" >
</a>
</div>
<div class="menu-center collapse navbar-collapse">
<ul class="ttr_menu_items nav navbar-nav navbar-right">
<li class="ttr_menu_items_parent dropdown">
<form name="home" method="POST" action="Homelink" >
						<a href="javascript:document.home.submit()" class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>Home</a>
</form><hr class ="horiz_separator"/>
</li>
<li class="ttr_menu_items_parent dropdown">
<form name="foodlancer" method="POST" action="Foodlancerlink" >
					
<a href="javascript:document.foodlancer.submit()" class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>Become FoodLancer</a>
</form>
<hr class ="horiz_separator"/>
</li>
<li class="ttr_menu_items_parent dropdown">
<form name="menu" method="POST" action="Menulink" >
						
<a href="javascript:document.menu.submit()" class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>Menu</a>
</form>
<hr class ="horiz_separator"/>
</li>
<li class="ttr_menu_items_parent dropdown active">
<form name="contact" method="POST" action="Contactlink" >
						<a href="javascript:document.contact.submit()" class="ttr_menu_items_parent_link_active"><span class="menuchildicon"></span>Contact</a>
						</form>
						
						<hr class ="horiz_separator"/>
</li><%
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
<div id="ttr_content_and_sidebar_container">
<div id="ttr_content">
<div id="ttr_content_margin"class="container-fluid">
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div class="ttr_Contact_html_row0 row">
<div class="post_column col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="ttr_Contact_html_column00">
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div class="html_content"><p style="text-align:Center;"><span style="font-family:'Roboto Slab','Arial';font-weight:700;font-size:2.571em;color:rgba(53,181,235,1);">CONTACT US</span></p></div>
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div style="clear:both;"></div>
</div>
</div>
<div class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
</div>
<div class="post_column col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="ttr_Contact_html_column01">
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div class="html_content"><p>
<span style="font-family:'Roboto Slab','Arial';font-weight:700;font-size:1.714em;color:rgba(34,34,34,1);">Contact Form</span></p>
<p style="margin:1.43em 0em 0.36em 0em;">
<form id="ContactForm0" class="form-horizontal" role="form" method="post" action="Mail" style="padding:0px 0px 0px 0px;float:left;">
<div class="form-group">
<label class="col-sm-4 control-label">Name</label>
<div class="col-sm-8">
<input type="text" name="name" class="form-control" data-vali="novalidation" /></div></div>
<div class="form-group">
<label class="col-sm-4 control-label required">Email</label><div class="col-sm-8">
<input type="email" name="email" class="form-control required" data-vali="email" /></div></div>

<div class="form-group">
<label class="col-sm-4 control-label">Subject</label><div class="col-sm-8">
<input type="text" name="subject" class="form-control" data-vali="novalidation" /></div></div>
<div class="form-group">
<label class="col-sm-4 control-label">Message</label>
<div class="col-sm-8">
<textarea class="form-control comment" name="message" rows="4"></textarea></div></div>
<div class="form-group"><div class="col-sm-4 col-sm-offset-8">

<input type="submit" class="pull-right btn btn-sm btn-primary" rows="4" id="submit" name="submit" value="Send Message" /></div>
</div><div class="clearfix"></div><div class="success"></div><div class="req_field"></div><div class="clearfix"></div>

</form>

</p></div>
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div style="clear:both;"></div>
</div>
</div>
<div class="clearfix visible-xs-block">
</div>
<div class="post_column col-lg-6 col-md-6 col-sm-6 col-xs-12">
<div class="ttr_Contact_html_column02">
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div class="html_content"><p><span style="font-family:'Roboto Slab','Arial';font-weight:700;font-size:1.714em;color:rgba(34,34,34,1);">Contact Info</span></p><p style="margin:1.43em 0em 0.36em 0em;line-height:1.54929577464789;"><span style="font-family:'Roboto','Arial';font-weight:300;font-size:1.143em;color:rgba(34,34,34,1);">If you would like to disscuss about any thing or need any information.Please contact us and we will be happy to provide you will all the information you need.</span></p><p style="margin:1.43em 0em 0em 0em;line-height:1.54929577464789;"><span style="font-family:'Roboto','Arial';font-weight:500;font-size:1.143em;color:rgba(34,34,34,1);">BlueArea</span></p><p style="margin:0em 0em 0em 0em;line-height:1.54929577464789;"><span style="font-family:'Roboto','Arial';font-weight:500;font-size:1.143em;color:rgba(34,34,34,1);">Islamabad ,Pakistan</span></p><p style="margin:1.43em 0em 0.36em 0em;line-height:1.54929577464789;"><span style="font-family:'Roboto','Arial';font-weight:500;font-size:1.143em;color:rgba(34,34,34,1);">Phone No :- +92 345 737373</span></p><p style="margin:0em 0em 0.36em 0em;line-height:1.54929577464789;"><span style="font-family:'Roboto','Arial';font-weight:500;font-size:1.143em;color:rgba(34,34,34,1);">Fax no :- +49 25 252525</span></p><p style="margin:0em 0em 0.36em 0em;line-height:1.54929577464789;"><span style="font-family:'Roboto','Arial';font-weight:500;font-size:1.143em;color:rgba(34,34,34,1);">Email :- highontech@gmail.com</span></p><p style="margin:0em 0em 0.36em 0em;line-height:1.54929577464789;"><br style="font-family:'Roboto','Arial';font-weight:500;font-size:1.143em;color:rgba(34,34,34,1);" /></p></div>
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div style="clear:both;"></div>
</div>
</div>
 <div id="map"></div>
    <script>
      function initMap() {
        var uluru = {lat:33.7119199, lng: 73.0607508};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 15,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=googlemapkey&callback=initMap">
    </script>
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
<div class="html_content"><p>&nbsp;</p></div>
</div>
<div class="ttr_footershape2">
<div class="html_content"><p>&nbsp;</p></div>
</div>
<div id="ttr_copyright">
<a href="http://www.highontech.com.pk/">
Designed by HignonTech
</a><a href="http://www.highontech.com.pk/">
IT Company
</a>
</div>
<a href="#" class="ttr_footer_facebook" target="_self" >
</a>
<a href="#"class="ttr_footer_twitter" target="_self" >
</a>
<a href="#"class="ttr_footer_googleplus" target="_self" >
</a>
</div>
</div>
</footer>
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-bottom-collapse: separate;"></div>
</div>
<script type="text/javascript">
WebFontConfig = {
google: { families: [ 'Roboto+Slab:700','Roboto+Slab'] }
};
(function() {
var wf = document.createElement('script');
wf.src = ('https:' == document.location.protocol ? 'https' : 'http') + '://ajax.googleapis.com/ajax/libs/webfont/1.0.31/webfont.js';
wf.type = 'text/javascript';
wf.async = 'true';
var s = document.getElementsByTagName('script')[0];
s.parentNode.insertBefore(wf, s);
})();
</script>
</body>
</html>
