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
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>
Food Lancer
</title>
 <link rel="icon" type="image/ico" href="images/logo.jpg" />
 
<link rel="stylesheet"  href="bootstrap.css" type="text/css" media="screen"/>
<link rel="stylesheet"  href="style.css" type="text/css" media="screen"/>
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

<body class="Firm-Profile">

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
<div class="html_content">
<p style="margin:0em 0em 0em 0em;text-align:Center;line-height: normal;"><br style="font-size:0.571em;" /></p>
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
</form>
<hr class ="horiz_separator"/>
</li>
<li class="ttr_menu_items_parent dropdown active">
<form name="foodlancer" method="POST" action="Foodlancerlink" >
					
<a href="javascript:document.foodlancer.submit()" class="ttr_menu_items_parent_link_active"><span class="menuchildicon"></span>Become FoodLancer</a>
</form>
<hr class ="horiz_separator"/>
</li>
<li class="ttr_menu_items_parent dropdown">
<form name="menu" method="POST" action="Menulink" >
						
<a href="javascript:document.menu.submit()" class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>Menu</a>
</form>
<hr class ="horiz_separator"/>
</li>

<li class="ttr_menu_items_parent dropdown">
<form name="contact" method="POST" action="Contactlink" >
						<a href="javascript:document.contact.submit()" class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>Contact</a>
						</form>
<hr class ="horiz_separator"/>
</li>
	<%
							String login = (String) session.getAttribute("login");

							String username = (String) session.getAttribute("username");
							if (!(login.equals("true"))) {
						%>
					<!-- 	<form name="login" method="get" action="Login">

							<a HREF="javascript:document.login.submit()"> Login</a>
						</form>
 -->
 
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
<div style=" height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>





<div class="ttr_Firm-Profile_html_row5 row">
<div class="post_column col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="ttr_Firm-Profile_html_column50">
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
                                       <form method="post" action="Preference" > 

<div class="html_content"><p ><span style="font-family:'Roboto Slab','Arial';font-weight:700;font-size:2.571em;color:rgba(53,181,235,1);">Please answer a few questions so we better know about what you like !</span></p><br><p style="margin:0.71em 0em 0.36em 0em;line-height:1.69014084507042;">
  <span style="font-family:'Roboto','Arial';font-weight:500;font-size:1.429em;color:rgba(34,34,34,1);">Which food do you like (Select any 3)?</span></p>
                   <c:forEach var="row" items="${sessionScope.dishtypes}">
					
 <div class="checkbox">
  <label><div class="ttr_checkbox">
  <input type="checkbox" name="cb" value="${row.id}" id="${row.id}"><label for="${row.id}"></label>
  </div>${row.typeName}</label>
</div>
</c:forEach>

<br><p style="margin:0.71em 0em 0.36em 0em;line-height:1.69014084507042;"><span style="font-family:'Roboto','Arial';font-weight:500;font-size:1.429em;color:rgba(34,34,34,1);">
Are you a Veg?</span></p>
<br>

<label class="radio-inline"><div class="ttr_radio">
<input type="radio"  id="veg1"  value="1" name="veg"><label for="veg1"></label></div>YES</label>

<label class="radio-inline"><div class="ttr_radio">
<input type="radio"  id="veg2" value="0"  name="veg"><label for="veg2"></label></div>NO</label>

<br>
<br>

<br>
<p style="margin:0.71em 0em 0.36em 0em;line-height:1.69014084507042;"><span style="font-family:'Roboto','Arial';font-weight:500;font-size:1.429em;color:rgba(34,34,34,1);">

Do you like spicy food ?</span></p>
<br>

<label class="radio-inline"><div class="ttr_radio">
<input type="radio" name="spicy" id="spicy1" value="1"><label for="spicy1"></label></div>Never</label>
<label class="radio-inline"><div class="ttr_radio" >
<input type="radio" name="spicy" id="spicy2"value="2"><label for="spicy2"></label></div>Rarely</label>
<label class="radio-inline"><div class="ttr_radio">
<input type="radio" name="spicy" id="spicy3" value="3"><label for="spicy3"></label></div>Sometimes</label>
<label class="radio-inline"><div class="ttr_radio">
<input type="radio" name="spicy" id="spicy4" value="4"><label for="spicy4"></label></div>Mostly</label>
<label class="radio-inline"><div class="ttr_radio">
<input type="radio" name="spicy" id="spicy5" value="5"><label for="spicy5"></label></div>Always</label>

                            <br>
                            <br>
    <p style=" margin: 0.36em 0em;line-height:1.69014084507042; text-align:right; margin-right: 5em">

   <button type="submit" class="buttonbb button2"  id="bx">Submit</button>

</p>                              
                                  
</div>
 </form> 
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div style="clear:both;"></div>
</div>
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
<script type="text/javascript">
/* function limit(){
var count=0;
//Get all elements with the class name of Boxes
//var boxes=document.getElementsByClassName('boxes');
//---- Or ------  
//Get all input elements with the type of checkbox.
var boxes=document.querySelectorAll("input[type=checkbox]");
//(this) is used to target the element triggering the function.
 for(var i=0; i<boxes.length; i++){
  //If checkbox is checked AND checkbox name is = to (this) checkbox name +1 to count
  if(boxes[i].checked&&boxes[i].name==this.name){count++;}
}
//If count is more then data-max="" of that element, uncheck last selected element
if(count>3){
  this.checked=false;
  //alert("Maximum of "+this.getAttribute("data-max")+".");
}

} */
//$("input[type=checkbox]").change(limit);

   $("input[type=checkbox]").change(function(){
    var max= 3;
    if( $("input[type=checkbox]:checked").length == max ){
        $("input[type=checkbox]").attr('disabled', 'disabled');
        $("input[type=checkbox]:checked").removeAttr('disabled');
    }else{
         $("input[type=checkbox]").removeAttr('disabled');
    } 
});  
</script>
</body>
</body>
</html>