<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Virtual Chef - Chef Panel</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="janimate.css">
<link rel="stylesheet" type="text/css" href="jbootstrap.min.css">
<link rel="stylesheet" type="text/css" href="jline-awesome.css">
<link rel="stylesheet" type="text/css" href="jline-awesome-font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="jfont-awesome.min.css">
<link rel="stylesheet" type="text/css" href="jjquery.mCustomScrollbar.min.css">
<link rel="stylesheet" type="text/css" href="slick.css">
<link rel="stylesheet" type="text/css" href="slick-theme.css">
<link rel="stylesheet" type="text/css" href="jstyle1.css">
<link rel="stylesheet" type="text/css" href="jresponsive.css">
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
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
<body >
	

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
					
					<a href="javascript:document.orders.submit()" title=""> Orders </a>
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

							<a  id="num" href="javascript:document.requests.submit()" title="">

								Requests
							
								<c:if test="${fn:length(match_Orders) gt 0}">
								<span  class="badge">${sessionScope.match_Orders.size()}</span>
								</c:if>
								
							</a>

						</form>

					</li>

					<li><a href="Skills" title=""> Skills </a></li>

					<li><a id="not" href="#" title="" class="not-box-open">
							Notification
								<c:if test="${fn:length(a_orderz) gt 0}">
							
							<span class="badge">${sessionScope.a_orderz.size()}</span>
							</c:if>
					</a>
									<div  class="notification-box">
							<div class="nt-title">
							</div>
							<div id="not1" class="nott-list">
			
					        <c:forEach begin="0" end="5" var="row" items="${sessionScope.a_orderz}">
								
								<div class="notfication-details">
									<div class="noty-user-img">
										<img src="${pageContext.servletContext.contextPath }/photoServlet?id=${row.id}" alt="">
									</div>
									<div class="notification-info">
										<h3>
											<a href="#" title="">${row.ordered_dish}</a>&nbsp;&nbsp; Assigned to you
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
						</div>
						<!--notification-box end--></li>
				</ul>
				</nav>
				<!--nav end-->
				<div class="menu-btn">
					<a href="#" title=""><i class="fa fa-bars"></i></a>
				</div>
				<!--menu-btn end-->
				<div class="user-account">
					<div class="user-info">
						<img src="cimages/83.jpg" alt=""> <a href="#"
							title=""><c:out value="${sessionScope.chefid.firstName}" /></a>
						<i class="la la-sort-down" style="color: black"></i>
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


		<section class="profile-account-setting">
			<div class="container">
				<div class="account-tabs-setting">
					<div class="row">
						<div class="col-lg-3">
							<div class="acc-leftbar">
								<div class="nav nav-tabs" id="nav-tab" role="tablist">

								    <a class="nav-item nav-link" id="nav-status-tab" data-toggle="tab" href="#nav-status" role="tab" aria-controls="nav-status" aria-selected="false"><i class="fa fa-line-chart"></i>Earnings</a>
					
								  </div>
							</div><!--acc-leftbar end-->
						</div>
						<div class="col-lg-9">
							<div class="tab-content" id="nav-tabContent">
								
							  	<div class="tab-pane fade show active" id="nav-status" role="tabpanel" aria-labelledby="nav-status-tab">
							  		<div class="acc-setting">
							  			<h3>Earnings</h3>
							  			<div class="profile-bx-details">
							  				<center>
							  				
							  				<div class="row">
							  					<div  class="col-lg-3 col-md-6 col-sm-12">
							  						<div class="profile-bx-info">
							  							<div class="pro-bx">
							  								<img src="cimages/pro-icon1.png" alt="">
							  								<div class="bx-info">
							  									<h3>${sessionScope.income}</h3>
							  									<h5>Total Income</h5>
							  								</div><!--bx-info end-->
							  							</div><!--pro-bx end-->
							  								</div><!--profile-bx-info end-->
							  					</div>
							  		
							  					<div  class="col-lg-3 col-md-6 col-sm-12">
							  						<div class="profile-bx-info">
							  							<div class="pro-bx">
							  								<img src="cimages/pro-icon4.png" alt="">
							  								<div class="bx-info">
							  									<h3>${sessionScope.projects}</h3>
							  									<h5>Total Projects</h5>
							  								</div><!--bx-info end-->
							  							</div><!--pro-bx end-->
							  							</div><!--profile-bx-info end-->
							  					</div>
							  				</div>
							  				
							  					</center>
							  			</div><!--profile-bx-details end-->
							  			<div class="pro-work-status">
							  				<!-- <h4>Work Status  -  Last Months Working Status</h4> -->
							  			</div><!--pro-work-status end-->
							  		</div><!--acc-setting end-->
							  	</div>
							  	
							  	
							  	
							  	
								
								
								
							  	</div>
							</div>
						</div>
					</div>
				</div><!--account-tabs-setting end-->
			</div>
		</section>



		



<script type="text/javascript" src="cjs/jquery.min.js"></script>
<script type="text/javascript" src="cjs/popper.js"></script>
<script type="text/javascript" src="cjs/bootstrap.min.js"></script>
<script type="text/javascript" src="cjs/jquery.mCustomScrollbar.js"></script>
<script type="text/javascript" src="lib/slick/slick.min.js"></script>
<script type="text/javascript" src="cjs/script.js"></script>
<script type="text/javascript" src="cjs/disabled.js"></script>

</body>
<script>'undefined'=== typeof _trfq || (window._trfq = []);'undefined'=== typeof _trfd && (window._trfd=[]),_trfd.push({'tccl.baseHost':'secureserver.net'}),_trfd.push({'ap':'cpsh'},{'server':'a2plcpnl0235'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src='../../../img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js'></script>
<!-- Mirrored from gambolthemes.net/html/workwise/profile-account-setting.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Sep 2018 10:23:34 GMT -->

</html>