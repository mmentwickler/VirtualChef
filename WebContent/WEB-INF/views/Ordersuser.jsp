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
<title>Order Details</title>
<link rel="icon" type="image/ico" href="images/logo.jpg" />

<link rel="stylesheet" href="bootstrap.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="style1.css" type="text/css" media="screen" />

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

		x.style.display = "none";
		y.style.display = "inline-block";
		z.style.display = "inline";

	}
</script>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	/*$(document).ready(function notify() {

		$.ajax({
			type : "Get",
			url : "Orderzuser",
			data : "",
			success : function(result) {
				$("#ordertable").load(" #ordertable");
		
			}
		});
		setTimeout(notify, 10000);
	});*/
</script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
.table-wrapper {
	background: #fff;
	padding: 20px 25px;
	margin: 30px auto;
	border-radius: 3px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-wrapper .btn {
	float: right;
	color: #333;
	background-color: #fff;
	border-radius: 3px;
	border: none;
	outline: none !important;
	margin-left: 10px;
}

.table-wrapper .btn:hover {
	color: #333;
	background: #f2f2f2;
}

.table-wrapper .btn.btn-primary {
	color: #fff;
	background: #03A9F4;
}

.table-wrapper .btn.btn-primary:hover {
	background: #03a3e7;
}

.table-title .btn {
	font-size: 13px;
	border: none;
}

.table-title .btn i {
	float: left;
	font-size: 21px;
	margin-right: 5px;
}

.table-title .btn span {
	float: left;
	margin-top: 2px;
}

.table-title {
	color: #fff;
	background: #4b5366;
	padding: 16px 25px;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}

.table-title h2 {
	margin: 5px 0 0;
	font-size: 24px;
}

.show-entries select.form-control {
	width: 60px;
	margin: 0 5px;
}

.table-filter .filter-group {
	float: right;
	margin-left: 15px;
}

.table-filter input, .table-filter select {
	height: 34px;
	border-radius: 3px;
	border-color: #ddd;
	box-shadow: none;
}

.table-filter {
	padding: 5px 0 15px;
	border-bottom: 1px solid #e9e9e9;
	margin-bottom: 5px;
}

.table-filter .btn {
	height: 34px;
}

.table-filter label {
	font-weight: normal;
	margin-left: 10px;
}

.table-filter select, .table-filter input {
	display: inline-block;
	margin-left: 5px;
}

.table-filter input {
	width: 200px;
	display: inline-block;
}

.filter-group select.form-control {
	width: 110px;
}

.filter-icon {
	float: right;
	margin-top: 7px;
}

.filter-icon i {
	font-size: 18px;
	opacity: 0.7;
}

table.table tr th, table.table tr td {
	border-color: #e9e9e9;
	padding: 12px 15px;
	vertical-align: middle;
}

table.table tr th:first-child {
	width: 60px;
}

table.table tr th:last-child {
	width: 80px;
}

table.table-striped tbody tr:nth-of-type(odd) {
	background-color: #fcfcfc;
}

table.table-striped.table-hover tbody tr:hover {
	background: #f5f5f5;
}

table.table th i {
	font-size: 13px;
	margin: 0 5px;
	cursor: pointer;
}

table.table td a {
	font-weight: bold;
	color: #566787;
	display: inline-block;
	text-decoration: none;
}

table.table td a:hover {
	color: #2196F3;
}

table.table td a.view {
	width: 30px;
	height: 30px;
	color: #2196F3;
	border: 2px solid;
	border-radius: 30px;
	text-align: center;
}

table.table td a.view i {
	font-size: 22px;
	margin: 2px 0 0 1px;
}

table.table .avatar {
	border-radius: 50%;
	vertical-align: middle;
	margin-right: 10px;
}

.status {
	font-size: 30px;
	margin: 2px 2px 0 0;
	display: inline-block;
	vertical-align: middle;
	line-height: 10px;
}

.text-success {
	color: #10c469;
}

.text-info {
	color: #62c9e8;
}

.text-warning {
	color: #FFC107;
}

.text-danger {
	color: #ff5b5b;
}

.pagination {
	float: right;
	margin: 0 0 5px;
}

.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #fff;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}

.pagination li a:hover {
	color: #666;
}

.pagination li.active a {
	background: #03A9F4;
}

.pagination li.active a:hover {
	background: #0397d6;
}

.pagination li.disabled i {
	color: #ccc;
}

.pagination li i {
	font-size: 16px;
	padding-top: 6px
}

.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}
</style>
</head>
<body class="Contact">
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
									class="ttr_menu_items_parent_link"><span
									class="menuchildicon"></span>Home</a>
							</form>
							<hr class="horiz_separator" />
						</li>
						<li class="ttr_menu_items_parent dropdown">
							<form name="foodlancer" method="POST" action="Foodlancerlink">

								<a href="javascript:document.foodlancer.submit()"
									class="ttr_menu_items_parent_link_active"><span
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

						<li class="ttr_menu_items_parent dropdown"><form
								name="contact" method="POST" action="Contactlink">
								<a href="javascript:document.contact.submit()"
									class="ttr_menu_items_parent_link"><span
									class="menuchildicon"></span>Contact</a>
							</form>
							<hr class="horiz_separator" /></li>
						<%
							String login = (String) session.getAttribute("login");

							String username = (String) session.getAttribute("username");
							if (!(login.equals("true"))) {
						%>
						<form name="login" method="get" action="Login">

							<a HREF="javascript:document.login.submit()"> Login</a>
						</form>





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

										<li><a href="Orderzuser"><i class="icon-cog"></i>
												Orders</a></li>

										<li><a href="Contact"><i class="icon-envelope"></i>
												Contact Support</a></li>
										<li><a href="Userprofile"><i class="icon-envelope"></i>
												Profile Settings</a></li>
										<li><a HREF="Logout"><i class="icon-off"></i> Logout</a>
										</li>
									</ul></li>
							</ul>


						</div>
						<%
							}
						%>

						<!-- 
 <img src="images/avatar.png" alt="Avatar" style="display:none;margin-left:40px" id="ava" class="avatar">
 <p id="bt" style="display:none;margin-right: -80px;margin-left: 1px;padding-top: 23px;">Welcome Ali</p>-->

					</ul>

				</div>

			</div>

		</div>
		</nav>

		<div class="table-wrapper">
			<div class="table-title">
				<h1>Order Details</h1>
			</div>
			<div class="table-filter">
				<div class="row">

					<div class="col-sm-9">

                        <br>
                        <br>
						<div style="float:left;" class="filter-group">
							<label><b>Order Status</b></label>
							<form action="Orderzuser" method="get">
								<select name="statususerorder" onchange="this.form.submit()">
									<option value="start">Start</option>
									<option value="all">All</option>
									<option value="one_hour_left">One_hour_left</option>
									<option value="cooked">Cooked</option>
									<option value="dispatched">Dispatched</option>

								</select>
							</form>

						</div>
						<span class="filter-icon"><i></i></span>
					</div>
				</div>
			</div>
						
			<table id="ordertable" class="table table-striped table-hover">
				<thead>
					<tr>
						<th>#</th>
						<th>Order</th>
						<th>Chef</th>
						<th>Order Date</th>
						<th>Status</th>
						<th>Net Amount</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${records}" var="record">

						<tr>
							<td>1</td>
							<td>${record.ordered_dish}</td>
							<td>${record.getChef_order().getFirstName()}</td>
							<td>${record.getDate()}</td>
							<td><span class="status text-success">&bull;</span>${record.status}</td>
							<td>${record.total_price}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			<div class="clearfix">
				<!-- 	<div class="hint-text">
					Showing <b>5</b> out of <b>25</b> entries
				</div> -->
				<ul class="pagination">
					<c:if test="${currentPage != 1}">
						<li class="page-item"><a class="page-link"
							href="Orderzuser?recordsPerPage=${recordsPerPage}&currentPage=${currentPage-1}">Previous</a>
						</li>
					</c:if>
					<!-- <li class="page-item disabled"><a href="#">Previous</a></li>-->

					<c:forEach begin="1" end="${noOfPages}" var="i">
						<c:choose>
							<c:when test="${currentPage eq i}">
								<li class="page-item active"><a class="page-link"> ${i}
										<span class="sr-only">(current)</span>
								</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item"><a class="page-link"
									href="Orderzuser?recordsPerPage=${recordsPerPage}&currentPage=${i}">${i}</a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${currentPage lt noOfPages}">
						<li class="page-item"><a class="page-link"
							href="Orderzuser?recordsPerPage=${recordsPerPage}&currentPage=${currentPage+1}">Next</a>
						</li>
					</c:if>

				</ul>
			</div>
			<!-- <div class="clearfix">
                <div class="hint-text">Showing <b>5</b> out of <b>25</b> entries</div>
                <ul class="pagination">
                    <li class="page-item disabled"><a href="#">Previous</a></li>
                    <li class="page-item"><a href="#" class="page-link">1</a></li>
                    <li class="page-item"><a href="#" class="page-link">2</a></li>
                    <li class="page-item"><a href="#" class="page-link">3</a></li>
                    <li class="page-item active"><a href="#" class="page-link">4</a></li>
                    <li class="page-item"><a href="#" class="page-link">5</a></li>
					<li class="page-item"><a href="#" class="page-link">6</a></li>
					<li class="page-item"><a href="#" class="page-link">7</a></li>
                    <li class="page-item"><a href="#" class="page-link">Next</a></li>
                </ul>
            </div>-->
		</div>


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
						<a href="http://www.highontech.com.pk/"> Designed by
							HignonTech </a><a href="http://www.highontech.com.pk/"> IT
							Company </a>
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

</body>


</body>
</html>