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
<link rel="stylesheet" type="text/css" href="janimate.css">
<link rel="stylesheet" type="text/css" href="jbootstrap.min.css">
<link rel="stylesheet" type="text/css" href="jline-awesome.css">
<link rel="stylesheet" type="text/css"
	href="jline-awesome-font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="jfont-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="jjquery.mCustomScrollbar.min.css">
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
				$("#reqs").load(" #reqs");
				$("#num").load(" #num");
				$("#numn").load(" #numn");
				$("#not").load(" #not");
				$("#not1").load(" #not1");
		     
				//	$("#numn").load(" #numn");

				//$("#num1").load(" #num1");

			}
		});
		setTimeout(notify, 10000);
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
									
								<a class="nav-item nav-link" id="nav-password-tab"
									data-toggle="tab" href="#nav-password" role="tab"
									aria-controls="nav-password" aria-selected="false"><i
									class="fa fa-lock"></i>Change Password</a> 
				
									
								<a class="nav-item nav-link" id="nav-deactivate-tab"
									data-toggle="tab" href="#nav-deactivate" role="tab"
									aria-controls="nav-deactivate" aria-selected="false"><i
									class="fa fa-random"></i>Deactivate Account</a>
							</div>
						</div>
						<!--acc-leftbar end-->
					</div>
					<div class="col-lg-9">
						<div class="tab-content" id="nav-tabContent">
							<div class="tab-pane fade show " id="nav-acc"
								role="tabpanel" aria-labelledby="nav-acc-tab">
								<div class="acc-setting">
									<h3>Account Setting</h3>
									<form>
										<div class="notbar">
											<h4>Notification Sound</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Vivamus pretium nulla quis erat dapibus, varius
												hendrerit neque suscipit. Integer in ex euismod, posuere
												lectus id</p>
											<div class="toggle-btn">
												<a href="#" title=""><img src="cimages/up-btn.png"
													alt=""></a>
											</div>
										</div>
										<!--notbar end-->
										<div class="notbar">
											<h4>Notification Email</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Vivamus pretium nulla quis erat dapibus, varius
												hendrerit neque suscipit. Integer in ex euismod, posuere
												lectus id</p>
											<div class="toggle-btn">
												<a href="#" title=""><img src="cimages/up-btn.png"
													alt=""></a>
											</div>
										</div>
										<!--notbar end-->
										<div class="notbar">
											<h4>Chat Message Sound</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Vivamus pretium nulla quis erat dapibus, varius
												hendrerit neque suscipit. Integer in ex euismod, posuere
												lectus id</p>
											<div class="toggle-btn">
												<a href="#" title=""><img src="cimages/up-btn.png"
													alt=""></a>
											</div>
										</div>
										<!--notbar end-->
										<div class="save-stngs">
											<ul>
												<li><button type="submit">Save Setting</button></li>
												<li><button type="submit">Restore Setting</button></li>
											</ul>
										</div>
										<!--save-stngs end-->
									</form>
								</div>
								<!--acc-setting end-->
							</div>
							<div class="tab-pane fade" id="nav-status" role="tabpanel"
								aria-labelledby="nav-status-tab">
								<div class="acc-setting">
									<h3>Profile Status</h3>
									<div class="profile-bx-details">
										<div class="row">
											<div class="col-lg-3 col-md-6 col-sm-12">
												<div class="profile-bx-info">
													<div class="pro-bx">
														<img src="cimages/pro-icon1.png" alt="">
														<div class="bx-info">
															<h3>$5,145</h3>
															<h5>Total Income</h5>
														</div>
														<!--bx-info end-->
													</div>
													<!--pro-bx end-->
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing.</p>
												</div>
												<!--profile-bx-info end-->
											</div>
											<div class="col-lg-3 col-md-6 col-sm-12">
												<div class="profile-bx-info">
													<div class="pro-bx">
														<img src="cimages/pro-icon2.png" alt="">
														<div class="bx-info">
															<h3>$4,745</h3>
															<h5>Widthraw</h5>
														</div>
														<!--bx-info end-->
													</div>
													<!--pro-bx end-->
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing.</p>
												</div>
												<!--profile-bx-info end-->
											</div>
											<div class="col-lg-3 col-md-6 col-sm-12">
												<div class="profile-bx-info">
													<div class="pro-bx">
														<img src="cimages/pro-icon3.png" alt="">
														<div class="bx-info">
															<h3>$1,145</h3>
															<h5>Sent</h5>
														</div>
														<!--bx-info end-->
													</div>
													<!--pro-bx end-->
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing.</p>
												</div>
												<!--profile-bx-info end-->
											</div>
											<div class="col-lg-3 col-md-6 col-sm-12">
												<div class="profile-bx-info">
													<div class="pro-bx">
														<img src="cimages/pro-icon4.png" alt="">
														<div class="bx-info">
															<h3>130</h3>
															<h5>Total Projects</h5>
														</div>
														<!--bx-info end-->
													</div>
													<!--pro-bx end-->
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing.</p>
												</div>
												<!--profile-bx-info end-->
											</div>
										</div>
									</div>
									<!--profile-bx-details end-->
									<div class="pro-work-status">
										<!-- <h4>Work Status  -  Last Months Working Status</h4> -->
									</div>
									<!--pro-work-status end-->
								</div>
								<!--acc-setting end-->
							</div>
							<div class="tab-pane fade show active" id="nav-password" role="tabpanel"
								aria-labelledby="nav-password-tab">
								<div class="acc-setting">
									<h3>Account Setting</h3>
									<form name="chngpass" method="post" action="Chefchangepswd">
										<div class="cp-field">
											<h5>Old Password</h5>
											<div class="cpp-fiel">
												<input type="text" name="old-pass"
													placeholder="Old Password"> <i class="fa fa-lock"></i>
											</div>
										</div>
										<div class="cp-field">
											<h5>New Password</h5>
											<div class="cpp-fiel">
												<input type="text" name="new-pass"
													placeholder="New Password"> <i class="fa fa-lock"></i>
											</div>
										</div>
										<div class="cp-field">
											<h5>Repeat Password</h5>
											<div class="cpp-fiel">
												<input type="text" name="repeat-password"
													placeholder="Repeat Password"> <i
													class="fa fa-lock"></i>
											</div>
										</div>
										<div class="cp-field">
											<c:if test="${sessionScope.wrongpass!=null}">
      
         <center>
   <span style="color:red;" >
      <c:out value="${sessionScope.wrongpass}"/>
      </span>
      </center>
      </c:if>
										</div>
										<div class="save-stngs pd2">
											<ul>
												<li><button type="submit">Change Password</button></li>
											</ul>
										</div>
										<!--save-stngs end-->
									</form>
								</div>
								<!--acc-setting end-->
							</div>
							<div class="tab-pane fade" id="nav-notification" role="tabpanel"
								aria-labelledby="nav-notification-tab">
								<div class="acc-setting">
									<h3>Notifications</h3>
									<div class="notifications-list">
										<c:forEach var="row" items="${sessionScope.a_orderz}">

											<div class="notfication-details">
												<div class="noty-user-img">
													<img src="cimages/resources/ny-img2.png" alt="">
												</div>
												<div class="notification-info">
													<h3>
														<a href="#" title="">${row.ordered_dish}</a> Assigned to
														you
													</h3>
													<span>2 min ago</span>
												</div>
												<!--notification-info -->
											</div>
										</c:forEach>


									</div>
									<!--notifications-list end-->
								</div>
								<!--acc-setting end-->
							</div>
							<div class="tab-pane fade" id="nav-requests" role="tabpanel"
								aria-labelledby="nav-requests-tab">
								<div class="acc-setting">
									<h3>Requests</h3>
									<div id="reqs" class="requests-list">
										<c:forEach var="row" items="${sessionScope.match_Orders}">
											<div class="request-details">
												<div class="noty-user-img">
													<img src="cimages/resources/r-img1.png" alt="">
												</div>
												<div class="request-info">
													<h3>${row.ordered_dish}</h3>
													<span>${row.servings}</span>
												</div>
												<div class="accept-feat">
													<form method="post" name="Dealrequest" action="Dealrequest">
														<ul>
															<li><button name="accept" value="${row.getId()}"
																	type="submit" class="accept-req">Accept</button></li>
															<!--  	<li><button type="submit" class="accept-req" data-toggle="modal" data-target="#myModal">Details</button></li>-->
															<li><button name="delete" value="${row.getId()}"
																	type="submit" class="close-req">
																	<i class="la la-close"></i>
																</button></li>
															<input type="submit" name="accept" value="${row.getId()}" />


														</ul>
													</form>
												</div>
												<!--accept-feat end-->
											</div>
										</c:forEach>

										<!--request-detailse end-->

									</div>
									<!--requests-list end-->
								</div>
								<!--acc-setting end-->
							</div>
							<div class="tab-pane fade" id="nav-deactivate" role="tabpanel"
								aria-labelledby="nav-deactivate-tab">
								<div class="acc-setting">
									<h3>Deactivate Account</h3>
									<form name="dactvaccnt" method="post" action="Deactivechef">
										<div class="cp-field">
											<h5>Email</h5>
											<div class="cpp-fiel">
												<input type="text" name="email" placeholder="Email">
												<i class="fa fa-envelope"></i>
											</div>
										</div>
										<div class="cp-field">
											<h5>Password</h5>
											<div class="cpp-fiel">
												<input type="password" name="password"
													placeholder="Password"> <i class="fa fa-lock"></i>
											</div>
										</div>
										<div class="cp-field">
											<h5>Please Explain Further</h5>
											<textarea></textarea>
										</div>
										<div class="cp-field">
											<div class="fgt-sec">
												
											</div>
											<p>
											<c:if test="${sessionScope.wrongemailpass!=null}">
      
         <center>
   <span style="color:red;" >
      <c:out value="${sessionScope.wrongemailpass}"/>
      </span>
      </center>
      </c:if>
											</p>
										</div>
										<div class="save-stngs pd3">
											<ul>
												<li><button type="submit">Delete Account</button></li>
											</ul>
										</div>
										<!--save-stngs end-->
									</form>
								</div>
								<!--acc-setting end-->
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--account-tabs-setting end-->
		</div>
		</section>








		<footer>
		<div class="footy-sec mn no-margin">
			<div class="container">
				<ul>
					<li><a href="#" title="">Help Center</a></li>
					<li><a href="#" title="">Privacy Policy</a></li>
					<li><a href="#" title="">Community Guidelines</a></li>
					<li><a href="#" title="">Cookies Policy</a></li>
					<li><a href="#" title="">Career</a></li>
					<li><a href="#" title="">Forum</a></li>
					<li><a href="#" title="">Language</a></li>
					<li><a href="#" title="">Copyright Policy</a></li>
				</ul>
				<p>
					<img src="cimages/copy-icon2.png" alt="">Copyright 2018
				</p>
				<img class="fl-rgt" src="cimages/logo2.png" alt="">
			</div>
		</div>
		</footer>

	</div>
	<!--theme-layout end-->



	<script type="text/javascript" src="cjs/jquery.min.js"></script>
	<script type="text/javascript" src="cjs/popper.js"></script>
	<script type="text/javascript" src="cjs/bootstrap.min.js"></script>
	<script type="text/javascript" src="cjs/jquery.mCustomScrollbar.js"></script>
	<script type="text/javascript" src="slick.min.js"></script>
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
<!-- Mirrored from gambolthemes.net/html/workwise/profile-account-setting.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Sep 2018 10:23:34 GMT -->
</html>