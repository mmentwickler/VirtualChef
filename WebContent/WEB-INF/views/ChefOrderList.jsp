<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />

<title>Virtual Chef - Chef Panel</title>
<link rel="stylesheet" type="text/css" href="janimate.css">
<link rel="stylesheet" type="text/css" href="jbootstrap.min.css">
<link rel="stylesheet" type="text/css" href="jline-awesome.css">
<link rel="stylesheet" type="text/css"
	href="jline-awesome-font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="jfont-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="jjquery.mCustomScrollbar.min.css">
<link rel="stylesheet" type="text/css" href="slick1.css">
<link rel="stylesheet" type="text/css" href="slick-theme1.css">
<link rel="stylesheet" type="text/css" href="styleo.css">

<link rel="stylesheet" type="text/css" href="jresponsive.css">
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
	color: #999;
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
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function notify() {

		$.ajax({
			type : "Post",
			url : "Searchingorders",
			data : "",
			success : function(result) {
				$("#num").load(" #num");
				$("#numn").load(" #numn");
				$("#not").load(" #not");
				$("#not1").load(" #not1");

				//$("#num1").load(" #num1");

			}
		});
		setTimeout(notify, 5000);
	});
</script>
</head>


<body>
	<div class="wrapper">


		<header>
		<div class="container">
			<div class="header-data">
				<div class="logo">
					<a href="Profile.html" title=""><img src="cimages/logo.jpg"
						alt=""></a>
				</div>
				<!--logo end-->

				<div class="search-bar">
					<span
						style="margin-top: 20px; font-family: 'Arial'; font-weight: 700; font-size: 2.371em; color: rgba(53, 181, 235, 1);">Virtual
						Chef</span>

				</div>
				<!--search-bar end-->
				<nav>
				<ul>
					<li>
						<form name="profile" method="POST" action="Chprofilelink">

							<a href="javascript:document.profile.submit()" title=""> <span><img
									src="cimages/icon1.png" alt=""></span> My Profile
							</a>

						</form>
					</li>

					<li>

						<form name="orders" method="get" action="Cheforderpagi">

							<a href="javascript:document.orders.submit()" title="">
								Orders </a>
						</form>
					</li>
					<li>
						<form name="earnings" method="post" action="Earningslink">

							<a href="javascript:document.earnings.submit()" title="">

								Earnings </a>
						</form>
					</li>
					<li>

						<form name="requests" method="POST" action="Orderrequests">

							<a id="num" href="javascript:document.requests.submit()" title="">

								Requests <c:if test="${fn:length(match_Orders) gt 0}">
									<span class="badge">${sessionScope.match_Orders.size()}</span>
								</c:if>

							</a>

						</form>

					</li>

					<li><a href="Skills" title=""> Skills </a></li>

					<li><a id="not" href="#" title="" class="not-box-open">
							Notification <c:if test="${fn:length(a_orderz) gt 0}">

								<span class="badge">${sessionScope.a_orderz.size()}</span>
							</c:if>
					</a>
						<div class="notification-box">
							<div class="nt-title"></div>
							<div id="not1" class="nott-list">

								<c:forEach begin="0" end="5" var="row"
									items="${sessionScope.a_orderz}">

									<div class="notfication-details">
										<div class="noty-user-img">
											<img
												src="${pageContext.servletContext.contextPath }/photoServlet?id=${row.id}"
												alt="">
										</div>
										<div class="notification-info">
											<h3>
												<a href="#" title="">${row.ordered_dish}</a>&nbsp;&nbsp;
												Assigned to you
											</h3>
										</div>
										<!--notification-info -->
									</div>
								</c:forEach>
								<div class="view-all-nots">

									<a href="Cheforderlist" title="">View All Notification</a>

								</div>
							</div>
							<!--nott-list end-->
						</div> <!--notification-box end--></li>
				</ul>
				</nav>
				<!--nav end-->
				<div class="menu-btn">
					<a href="#" title=""><i class="fa fa-bars"></i></a>
				</div>
				<!--menu-btn end-->
				<div class="user-account">
					<div class="user-info">
						<img src="cimages/83.jpg" alt=""> <a href="#" title=""><c:out
								value="${sessionScope.chefid.firstName}" /></a> <i
							class="la la-sort-down" style="color: black"></i>
					</div>
					<div class="user-account-settingss">

						<!--search_form end-->
						<h3>Setting</h3>
						<ul class="us-links">
							<li>

								<form name="chefsettings" method="POST"
									action="Chefsettingslink">

									<a href="javascript:document.chefsettings.submit()" title="">


										Account Setting</a>

								</form>

							</li>
						</ul>

						<h3 class="tc">
							<form name="submitForm" method="POST" action="LogoutChef">

								<a href="javascript:document.submitForm.submit()" title="">Logout</a>
							</form>

						</h3>
					</div>
					<!--user-account-settingss end-->
				</div>
			</div>
			<!--header-data end-->
		</div>
		</header>

		<!--header end-->
		<div class="table-wrapper">
			<div class="table-title"></div>
			<div class="table-filter">
				<div class="row">

					<div class="col-sm-9">

						<br> <br>

						<div style="float: left;" class="filter-group">
							<label><b>Order Status</b></label> <br> <br>
							<form action="Cheforderpagi" method="get">
								<select name="statuscheforder" onchange="this.form.submit()">
									<option value="start"></option>
									<option value="all">All</option>
									<option value="placed">Placed</option>
									<option value="start">Start</option>
									<option value="one_hour_left">One_hour_left</option>
									<option value="cooked">Cooked</option>
									<option value="dBoyontheway">DBoyontheway</option>
									<option value="dispatched">Dispatched</option>
									<option value="completed">Completed</option>


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
						<th>Order</th>
						<th>Location</th>
						<th>Order Date</th>
						<th>Status</th>
						<th>Net Amount</th>
						<th>Change Status</th>
					</tr>
				</thead>
				<tbody>

					<c:forEach items="${chorderrecords}" var="record">
						<form method="POST" action="Changestatus">

							<input type="hidden" name="order_id" value="${record.getId()}">

							<tr>
								<td>${record.ordered_dish}</td>
								<td>${record.address}</td>
								<td>${record.getDate()}</td>
								<td><span class="status text-success">&bull;</span>${record.status}</td>
								<td>${record.total_price}</td>

								<td><select name="status" onchange="this.form.submit()">
										<option value="start"></option>
										<c:if test="${record.getStatus()=='placed'}">
										
										<option value="start">Start</option>
										</c:if>
										<c:if test="${record.getStatus()=='start'}">
										
										<option value="one_hour_left">One_hour_left</option>
										</c:if>
										<c:if test="${record.getStatus()=='one_hour_left'}">
										
										<option value="cooked">Cooked</option>
										</c:if>
									  <c:if test="${record.getStatus()=='dBoyontheway'}">
										
										<option value="dispatched">Dispatched</option>
                                           </c:if>
								</select> <!--  <a href="#" class="view" title="View Details"
								data-toggle="tooltip"><i class="material-icons">&#xE5C8;</i></a>-->
								</td>

								<!-- 				<td><button type="submit" class="btn btn-primary dropdown-toggle" id="menu1" type="button" data-toggle="dropdown">Change Status<span class="caret"></span></button>
							 <ul name="selected" class="dropdown-menu" role="menu" aria-labelledby="menu1">
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">One_hour_left</a></li>
                            <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Cooked</a></li>
														 <li role="presentation"><a role="menuitem" tabindex="-1" href="#">Dispatched</a></li>

               </ul></td>-->


							</tr>
						</form>
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
							href="Cheforderpagi?recordsPerPage=${recordsPerPage}&currentPage=${currentPage-1}">Previous</a>
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
									href="Cheforderpagi?recordsPerPage=${recordsPerPage}&currentPage=${i}">${i}</a>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>
					<c:if test="${currentPage lt noOfPages}">
						<li class="page-item"><a class="page-link"
							href="Cheforderpagi?recordsPerPage=${recordsPerPage}&currentPage=${currentPage+1}">Next</a>
						</li>
					</c:if>

				</ul>
			</div>
		</div>
	</div>








	<script type="text/javascript" src="cjs/jquery.min.js"></script>
	<script type="text/javascript" src="cjs/popper.js"></script>
	<script type="text/javascript" src="cjs/bootstrap.min.js"></script>
	<script type="text/javascript" src="cjs/jquery.mCustomScrollbar.js"></script>
	<script type="text/javascript" src="clib/slick.min1.js"></script>
	<script type="text/javascript" src="cjs/script.js"></script>
	<script type="text/javascript" src="cjs/disabled.js"></script>

</body>
<script>
	'undefined' === typeof _trfq || (window._trfq = []);
	'undefined' === typeof _trfd && (window._trfd = []), _trfd.push({
		'tccl.baseHost' : 'secureserver.net'
	}), _trfd.push({
		'ap' : 'cpsh'
	}, {
		'server' : 'a2plcpnl0235'
	}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.
</script>
<script src='../../../img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js'></script>

</html>