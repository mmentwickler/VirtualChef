<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test</title>
 <link rel="icon" type="image/ico" href="images/logo.jpg" />
<link rel="stylesheet"  href="bootstrap0307.css" type="text/css" media="screen"/>
<link rel="stylesheet"  href="style0307.css" type="text/css" media="screen"/>
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
<div class="html_content"><p style="margin:0em 0em 0em 0em;text-align:Center;line-height: normal;"><br style="font-size:0.571em;" /></p><p style="margin:0em 0em 0em 0em;text-align:Center;line-height: normal;"><span style="font-family:'Roboto','Arial';font-weight:300;color:rgba(153,153,153,1);">Phone:- +92 305 7373737</span></p></div>
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
<li class="ttr_menu_items_parent dropdown"><a href="home.html" class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>Home</a>
<hr class ="horiz_separator"/>
</li>
<li class="ttr_menu_items_parent dropdown active"><a href="FoodLancer.html" class="ttr_menu_items_parent_link_active"><span class="menuchildicon"></span>Become FoodLancer</a>
<hr class ="horiz_separator"/>
</li>
<li class="ttr_menu_items_parent dropdown"><a href="Menu.html" class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>Menu</a>
<hr class ="horiz_separator"/>
</li>

<li class="ttr_menu_items_parent dropdown"><a href="contact.html" class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>Contact</a>
<hr class ="horiz_separator"/>
</li>
 <button class="buttonbb button2" onclick="myFunction()" id="bx">Login</button>
</ul>
</div>
</div>
</div>
</nav>

<div id="ttr_content_and_sidebar_container">
<div id="ttr_content">
<div id="ttr_content_margin"class="container-fluid">
<div style=" height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>






<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>
<div style="clear:both;"></div>
</div>
</div>
<div class="clearfix visible-sm-block visible-md-block visible-xs-block">
</div>

<div class="clearfix visible-lg-block visible-xs-block">
</div>
</div>








<div class="ttr_Firm-Profile_html_row5 row">
<div class="post_column col-lg-12 col-md-12 col-sm-12 col-xs-12">
<div class="ttr_Firm-Profile_html_column50">
<div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;"></div>


<h2>Select Languages:</h2>

<form ACTION="jspCheckBox.jsp">
<input type="checkbox" name="id" value="Java"> Java<BR>
<input type="checkbox" name="id" value=".NET"> .NET<BR>
<input type="checkbox" name="id" value="PHP"> PHP<BR>
<input type="checkbox" name="id" value="C/C++"> C/C++<BR>
<input type="checkbox" name="id" value="PERL"> PERL <BR>
<input type="submit" value="Submit">
</form>
<%

String select[] = request.getParameterValues("id"); 
if (select != null && select.length != 0) {
out.println("You have selected: ");
for (int i = 0; i < select.length; i++) {
out.println(select[i]); 
}
}
%>


                                      <form method="post" action="Preference" >

<div class="html_content"><p ><span style="font-family:'Roboto Slab','Arial';font-weight:700;font-size:2.571em;color:rgba(53,181,235,1);">JOIN OUR TEAM AND START SELLING HOMEMADE FOOD</span></p><br><p style="margin:0.71em 0em 0.36em 0em;line-height:1.69014084507042;">
  <span style="font-family:'Roboto','Arial';font-weight:500;font-size:1.429em;color:rgba(34,34,34,1);">Who is our ideal team member?</span></p>
  
  <div class="checkbox">
  <label><div class="ttr_checkbox"><input type="checkbox" name="cb" value="" id="checkbox0"><label for="checkbox0"></label></div>Option 121</label>
</div>
  
  <div class="checkbox">
  <label>Option 1</label>
</div>


<div class="checkbox">
  <label><input type="checkbox" name="cb" value="">Option 2</label>
</div>
<div class="checkbox">
  <label><input type="checkbox" name="cb" value="" >Option 3</label>
</div>

<div class="checkbox">
  <label><input type="checkbox" name="cb" value="cb"/>Option 4</label>
</div>
<div class="checkbox">
  <label><input type="checkbox" name="cb" value="">Option 5</label>
</div>
<div class="checkbox ">
  <label><input type="checkbox" name="cb" value="" >Option 6</label>
</div>

<div class="checkbox">
  <label><input type="checkbox" name="cb" value="">Option 7</label>
</div>
<div class="checkbox">
  <label><input type="checkbox" name="cb" value="">Option 8</label>
</div>
<div class="checkbox ">
  <label><input type="checkbox" name="cb" value="" >Option 9</label>
</div>

<br><p style="margin:0.71em 0em 0.36em 0em;line-height:1.69014084507042;"><span style="font-family:'Roboto','Arial';font-weight:500;font-size:1.429em;color:rgba(34,34,34,1);">Who is a food lancer?</span></p>
<br>

<label class="radio-inline"><input type="radio" name="optradio" checked>Option 1</label>
<label class="radio-inline"><input type="radio" name="optradio">Option 2</label>
<br>
<br>

<br>
<p style="margin:0.71em 0em 0.36em 0em;line-height:1.69014084507042;"><span style="font-family:'Roboto','Arial';font-weight:500;font-size:1.429em;color:rgba(34,34,34,1);">How a woman can sell food Online using Virtual Chef ?</span></p>
<br>
<label class="radio-inline"><input type="radio" name="optradio" checked>Option 1</label>
<label class="radio-inline"><input type="radio" name="optradio">Option 2</label>
<label class="radio-inline"><input type="radio" name="optradio">Option 3</label>

<label class="radio-inline"><input type="radio" name="optradio">Option 4</label>
<label class="radio-inline"><input type="radio" name="optradio">Option 5</label>

<label class="radio-inline"><div class="ttr_radio">
<input type="radio" name="optradio" id="radio11"><label for="radio11"></label></div>Option 121</label>

                            <br>
                            <br>
    <p style=" margin: 0.36em 0em;line-height:1.69014084507042; text-align:right; margin-right: 5em">

   <button class="buttonbb button2" onclick="myFunction()" id="bx">Submit</button>

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
  
  $("input[name=cb]").change(function(){
    var max= 3;
    if( $("input[name=cb]:checked").length == max ){
        $("input[name=cb]").attr('disabled', 'disabled');
        $("input[name=cb]:checked").removeAttr('disabled');
    }else{
         $("input[name=cb]").removeAttr('disabled');
    }
});
</script>
</body>
</html>