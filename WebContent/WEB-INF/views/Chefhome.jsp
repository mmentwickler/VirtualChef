<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	import="Models.Orderz"
	import="java.util.List"
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
<link rel="stylesheet" type="text/css" src="jline-awesome.css">
<link rel="stylesheet" type="text/css"
	href="jline-awesome-font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="jfont-awesome.min.css">
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
<script type="text/javascript">
function checkIt() {
	var agree=window.confirm("Are you sure you want to delete this file?");
	if (agree){return true;}
	
	else{return false;}
	  }

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
						<i class="la la-sort-down" style="color: black;"></i>
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


		<section class="cover-sec">
		 <img style="height:300px;"
			src="cimages/c.jpg" alt=""> </section>


		<main>
		<div class="main-section">
			<div class="container">
				<div class="main-section-data">
					<div class="row">
						<div class="col-lg-3">
							<div class="main-left-sidebar">
								<div class="user_profile">
									<div class="user-pro-img">
										<img style="width:150px; height:150px;" src="cimages/c.jpg" alt="">
									</div>
									<!--user-pro-img end-->
									<div class="user_pro_status"></div>
									<!--user_pro_status end-->

								</div>
								<!--user_profile end-->
								<div class="suggestions full-width">
									<div class="sd-title">
										<h3>Add Skills</h3>
										<span><i  data-toggle="modal"
											data-target="#modalLoginForm">
											<img src="cimages/add.png"/>
											</i></span>


									</div>
									<!--sd-title end-->

									<div class="suggestions-list">
										<c:forEach begin="0" end="2" var="row" items="${sessionScope.chefid.getF_items()}" >
										<div class="suggestion-usd">
								<img src="${pageContext.servletContext.contextPath }/photoServlet?id=${row.id}" alt="" style="width:50px;height:50px;">
											<div class="sgt-text">
												<h4>${row.dishname}</h4>

											</div>
											<span>
										 	<form method="post" action="Del_dish">
                                            <input name="del_dish" type="hidden" value="${row.getId()}">
							
											<button type="submit"  name="del_skill"  onclick="return checkIt()">
										    <img alt="" src="cimages/del.png">
										    </button>
											</form>
											
											<!-- <i name="del_skill" class="la la-trash" data-toggle="modal"
												data-target="#myModal" type="submit" value="${row.getId()}" ></i> -->
												
												
												</span>


										</div>
							</c:forEach>
										
										<div class="view-more">
											<a href="${pageContext.servletContext.contextPath }/Skills" title="">View More</a>
										</div>
									</div>
									<!--suggestions-list end-->
								</div>
								<!--suggestions end-->
							</div>
							<!--main-left-sidebar end-->
						</div>
						<div class="col-lg-6">
							<div class="main-ws-sec">
								<div class="user-tab-sec">
									<h3>${sessionScope.chefid.firstName} ${sessionScope.chefid.lastName}</h3>
									<div class="star-descp">
										<span>Chef at Self Employed</span>
									
									</div>
									<!--star-descp end-->
									<div class="tab-feed">
										<ul>

											<li data-tab="info-dd" class="active"><a href="#"
												title=""> <img src="cimages/ic2.png" alt=""> <span>Info</span>
											</a></li>
											<li data-tab="portfolio-dd"><a href="#" title=""> <img
													src="cimages/ic3.png" alt=""> <span>Portfolio</span>
											</a></li>
										</ul>
									</div>
									<!-- tab-feed end-->
								</div>
								<!--user-tab-sec end-->

								<div class="product-feed-tab current" id="info-dd">
								
									<!--user-profile-ov end-->

									<div class="user-profile-ov">
										<h3>Education</h3>
										<p>${sessionScope.chefid.education}</p>
								
									</div>
									<!--user-profile-ov end-->
									<div class="user-profile-ov">
										<h3>Location</h3>
										<p>${sessionScope.chefid.address}</p>
										</div>
									<!--user-profile-ov end-->
									<div class="user-profile-ov">
										<h3>Skills</h3>
										<ul>
										  <c:forEach var="row" items="${sessionScope.chefid.getF_items()}">
  
											<li><a href="#" title="">${row.dishname}</a></li>
									     </c:forEach>
									    </ul>
									</div>
									<!--user-profile-ov end-->
								</div>
								<!--product-feed-tab end-->
								<div class="product-feed-tab" id="portfolio-dd">
									<div class="portfolio-gallery-sec">
										<h3>Portfolio</h3>
										<div class="gallery_pf">
											<div class="row">
										
										<c:forEach var="row" items="${sessionScope.chefid.getF_items()}">
  
												<div class="col-lg-4 col-md-4 col-sm-6 col-6">
													<div class="gallery_pt">
														<img src="${pageContext.servletContext.contextPath }/photoServlet?id=${row.id}" alt=""> <a
															href="#" title=""><img src="cimages/all-out.png"
															alt=""></a>
													</div>
													<!--gallery_pt end-->
												</div>
												</c:forEach>
											</div>
										</div>
										<!--gallery_pf end-->
									</div>
									<!--portfolio-gallery-sec end-->
								</div>
								<!--product-feed-tab end-->
							</div>
							<!--main-ws-sec end-->
						</div>



						<div
							style="height: 0px; width: 0px; overflow: hidden; -webkit-margin-bottom-collapse: separate;"></div>
					</div>

					<div class="modal fade" id="exampleModal" tabindex="-1"
						role="dialog" aria-labelledby="exampleModalLabel"
						aria-hidden="true">
						<div class="modal-dialog" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
									<h4 class="modal-title" id="exampleModalLabel">Input
										parameters</h4>
								</div>
								<div class="modal-body">
									<form>
										<div class="form-group">
											<label for="recipient-name" class="form-control-label">Base
												URL to fill id with your data (optional):</label> <input type="text"
												class="form-control" id="recipient-name" value="Test">
										</div>
										<div class="form-group">
											<label for="message-text" class="form-control-label">Max
												#pics per cluster:</label> <input type="text" class="form-control"
												id="message-text">
										</div>
									</form>
								</div>
								<div class="modal-footer">
									<button type="button" class="btn btn-secondary"
										data-dismiss="modal">Close</button>
									<button id="paramsOkay" type="button" class="btn btn-primary">
										Okay</button>
								</div>
							</div>
						</div>
					</div>
					<div class="modal fade" id="modalLoginForm" tabindex="-1"
						role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
						<div class="modal-dialog" role="document">
						<form action="addskill" method="post">
							<div class="modal-content">
								<div class="modal-header text-center">
									<h4 class="modal-title w-100 font-weight-bold">Add Skills</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-label="Close">
										<span aria-hidden="true">&times;</span>
									</button>
								</div>
								<div class="modal-body mx-3">
									<div class="md-form mb-5">
										<i class="la la-upload"></i> 
										 <select style="width: 100%;" name="skill_name" multiple >
                    	<c:forEach items='${sessionScope.dish}' var='dish'>
						  <option value="${dish.getId()}">${dish.dishname}</option> 
						</c:forEach>
					 </select>
										<!--  <input type="text"
											id="defaultForm-email" class="form-control validate">-->
										<label data-error="wrong" data-success="right"
											for="defaultForm-email"></label>
									</div>

								</div>
								<div class="modal-footer d-flex justify-content-center">
									<button type="submit" class="btn btn-default">Add</button>
								<!-- 	<input type="submit" value="ADD SKILLS"> -->
								</div>
							</div>
							</form>
						</div>
					</div>


					<!-- Modal HTML -->
					<div id="myModal" class="modal fade">
						<div class="modal-dialog modal-confirm">
							<div class="modal-content">
								<div class="modal-header">
									<div class="icon-box">
										<i class="la la-close"></i>
									</div>
									<h4 class="modal-title">Are you sure?</h4>
									<button type="button" class="close" data-dismiss="modal"
										aria-hidden="true">&times;</button>
								</div>
								<div class="modal-body">
									<p>Do you really want to delete these records? This process
										cannot be undone.</p>
								</div>
								<form method="post" action="Del_dish">
								<div class="modal-footer">
									<button type="button" class="btn btn-info" data-dismiss="modal">Cancel</button>
									<button  type="submit" class="btn btn-danger">Delete</button>
								</div>
								</form>
							</div>
						</div>
					</div>


					<script type="text/javascript" src="cjs/jquery.min.js"></script>
					<script type="text/javascript" src="cjs/popper.js"></script>
					<script type="text/javascript" src="cjs/bootstrap.min.js"></script>
					<script type="text/javascript" src="cjs/slick.min.js"></script>
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
<!-- Mirrored from gambolthemes.net/html/workwise/user-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Sep 2018 10:23:12 GMT -->
</html>