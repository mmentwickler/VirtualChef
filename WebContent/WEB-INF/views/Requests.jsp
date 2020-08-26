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
</head>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(document).ready(function notify() {

		$.ajax({
			type : "Post",
			url : "Searchingorders",
			data : "",
			success : function(result) {
				$("#num").load(" #num");
				$("#num1").load(" #num1");
				$("#not").load(" #not");
				$("#rq").load(" #rq");
				$("#not1").load(" #not1");
				
				
			}
		});
		setTimeout(notify, 5000);
		});
</script>
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

							<a href="javascript:document.requests.submit()" title="">

								Requests
							</a>

						</form>

					</li>

					<li><a href="Skills" title=""> Skills </a></li>

					<li><a id="not" href="#" title="" class="not-box-open">
							Notification<c:if test="${fn:length(a_orderz) gt 0}">
							
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
								    
								    <a id="rq" class="nav-item nav-link" id="nav-requests-tab" data-toggle="tab" href="#nav-requests" role="tab" aria-controls="nav-requests" aria-selected="false"><i class="fa fa-group"></i>
								    Requests
								    <c:if test="${fn:length(match_Orders) gt 0}">
							
							<span class="badge">${sessionScope.match_Orders.size()}</span>
							</c:if>
								    </a>
					
								  </div>
							</div><!--acc-leftbar end-->
						</div>
						<div class="col-lg-9">
							<div class="tab-content" id="nav-tabContent">
								
									
							  	
							  	
							  	<div class="tab-pane fade show active" id="nav-requests" role="tabpanel" aria-labelledby="nav-requests-tab">
							  		<div class="acc-setting">
							  			<h3>Requests</h3>
							  			<div id="num" class="requests-list">
							  				
							  				<c:forEach var="row" items="${sessionScope.match_Orders}">
							  				<div class="request-details">
							  					<div class="noty-user-img">
							  						<img src="${pageContext.servletContext.contextPath }/photoServlet?id=${row.id}" alt="">
							  					</div>
							  					<div class="request-info">
							  						<h3>${row.ordered_dish}</h3>
							  						<span>Serving : ${row.servings}</span>
							  					</div>
							  					<div class="accept-feat">
							  					<form method="post" name="Dealrequest" action="Dealrequest" >
							  						<ul>  <li>
							  						
							  						<button name="accept" value="${row.getId()}" type="submit" class="accept-req">Accept</button>
							  						</li>
													<!--  	<li><button type="submit" class="accept-req" data-toggle="modal" data-target="#myModal">Details</button></li>-->
							  							<li>
							  							
							  								<button style="background-color: red; border-color:red; " name="delete" value="${row.getId()}" type="submit" class="accept-req">Delete</button>
							  					
							  							</li>
							  							<!--
							        <input type="submit" name="accept" value="${row.getId()}"/>
							         -->
							        
							  							
							  						
							  						</ul>
							  					</form>
							  					</div><!--accept-feat end-->
							  				</div>
							  				</c:forEach>
							  				
							  				<!--request-detailse end-->

							  			</div><!--requests-list end-->
							  		</div><!--acc-setting end-->
							  	</div>
							  	
							</div>
						</div>
					</div>
				</div><!--account-tabs-setting end-->
			</div>
		</section>



		

	</div><!--theme-layout end-->
	
	
	
	<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Modal Header</h4>
      </div>
      <div class="modal-body">
        <p>Your Message if any.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Accept</button>
      </div>
    </div>

  </div>
</div>


<script type="text/javascript" src="cjs/jquery.min.js"></script>
<script type="text/javascript" src="cjs/popper.js"></script>
<script type="text/javascript" src="cjs/bootstrap.min.js"></script>
<script type="text/javascript" src="cjs/jquery.mCustomScrollbar.js"></script>
<script type="text/javascript" src="slick.min.js"></script>
<script type="text/javascript" src="cjs/script.js"></script>
<script type="text/javascript" src="cjs/disabled.js"></script>

</body>
<script>'undefined'=== typeof _trfq || (window._trfq = []);'undefined'=== typeof _trfd && (window._trfd=[]),_trfd.push({'tccl.baseHost':'secureserver.net'}),_trfd.push({'ap':'cpsh'},{'server':'a2plcpnl0235'}) // Monitoring performance to make your website faster. If you want to opt-out, please contact web hosting support.</script><script src='../../../img1.wsimg.com/tcc/tcc_l.combined.1.0.6.min.js'></script>
<!-- Mirrored from gambolthemes.net/html/workwise/profile-account-setting.html by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 16 Sep 2018 10:23:34 GMT -->

</html>