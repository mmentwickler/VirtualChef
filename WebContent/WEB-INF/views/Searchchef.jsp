<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="Models.Orderz" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Catering  Order Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />

<!-- //Meta tags -->
<!-- Stylesheet -->
<link href="wickedpicker.css" rel="stylesheet" type='text/css'
	media="all" />
<link rel="stylesheet" href="jquery-ui-order.css" />
<link href="style-order.css" rel='stylesheet' type='text/css' />
<!-- //Stylesheet -->
<!--fonts-->

<!--//fonts-->
<style>
#overlay {
	color: #d9ff05;
	position: fixed;
	height: 100%;
	width: 100%;
	z-index: 5000;
	top: 0;
	left: 0;
	font-size: 50px;
	float: left;
	text-align: center;
	padding-top: 25%;
}
</style>
<script type="text/javascript" src="js/jquery.js"></script>

<!-- <script>
	jQuery(window).load(function() {
		//jQuery('#overlay').fadeOut();
	});
</script>-->
<script type="text/javascript">
	$(window).load(function() {
		//myvar=setTimeout(notify, 1000);
		function ahref() {
			$.ajax({
				type : "Post",
				url : "Assigningchef",
				data : "",
				success : function(a) {
					$("#overlay1").load(" #overlay1");

				}
			});
		}
		;
		setTimeout(function() {
			ahref();
		}, 10000);

		//setTimeout(notify, 5000);
	});
	/*$(document).ready(function notify() {
		
		$.ajax({
			type : "Post",
			url : "Assigningchef",
			data : "",
			success : function(a) {
			//	if(a=="true"){
					$("#overlay1").load(" #overlay1");
				//}
				/*else{
					// alert(a);
						}*/
	//	$("#two").load(" #two");
	/*}
	});
	setTimeout(notify, 5000);
	});*/
</script>

</head>
<body>
	<div id="overlay1">

		<%
			//Orderz placedOrderz = (Orderz) session.getAttribute("placedOrderz");
			boolean load = (boolean) request.getSession().getAttribute("findchef");
			boolean nochef = (boolean) request.getSession().getAttribute("nochef");

			if (load) {
				if (nochef) {
		%>
		<br /> <br> <br />


		<h1>Sorry no chef Available! Try Again Later......</h1>
		<br /> <br /> <br> <br /> <br /> <br> <br /> <br> <br>
		<center>

			<form method="post" action="Nochef">
				<button name="seemenu"
					style="padding: 15px 32px; background-color: #35B5EB; color: white;"
					type="submit">Back to Menu </button>
<!-- 
				<button name="retry"
					style="padding: 15px 32px; background-color: #35B5EB; color: white;"
					type="submit">Retry</button> -->
			</form>
		</center>

		<%
			} else {
		%>
		<h1>Assigning you the nearest chef</h1>

		<br> <br>
		<center>

			<img src="images/img.gif" alt="Loading" /><br> <br> <br>

			<span style="color: white; font-size: 25px;" id="one">Searching
				Chef...... </span>

		</center>
		<%
			}
			} else {
		%>

		<h1>Chef Assigned Successfully!</h1>
		<br /> <br /> <br> <br>
		<center>

			<img style="width: 200px; height: 200px;" src="images/tickimg.png"
				alt="Loading" /> <br> <br> <br>
			<form method="get" action="Orderzuser">
				<button
					style="padding: 15px 32px; background-color: #35B5EB; color: white;"
					type="submit">View Orders</button>
			</form>
		</center>
		<%
			}
		%>
	</div>

</body>
</html>