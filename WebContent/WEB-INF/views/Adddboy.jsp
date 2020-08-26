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
 <title>Virtual Chef - Admin Panel</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="A fully featured admin theme which can be used to build CRM, CMS, etc." name="description" />
        <meta content="Coderthemes" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

      <!-- App favicon -->
<link rel="shortcut icon" href="aimages/logo.jpg">

<!-- DataTables -->
<link href="dataTables.bootstrap4.min.css" rel="stylesheet"
	type="text/css" />
<link href="buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
<!-- Responsive datatable examples -->
<link href="responsive.bootstrap4.min.css" rel="stylesheet"
	type="text/css" />

<!-- App css -->
<link href="abootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="aicons.css" rel="stylesheet" type="text/css" />
<link href="ametismenu.min.css" rel="stylesheet" type="text/css" />
<link href="astyle.css" rel="stylesheet" type="text/css" />

<script src="ajs/modernizr.min.js"></script>
<script type="text/javascript">
	$(document).ready(function notify() {

		$.ajax({
			type : "Post",
			url : "Adminnotify",
			data : "",
			success : function(result) {
				$("#noti").load(" #noti");
				$("#noti1").load(" #noti1");
				$("#noti2").load(" #noti2");
				$("#noti3").load(" #noti3");
				$("#noti4").load(" #noti4");
				$("#noti5").load(" #noti5");
						//	$("#numn").load(" #numn");

				//$("#num1").load(" #num1");

			}
		});
		setTimeout(notify, 5000);
	});
</script>
<%
	response.setHeader("Cache-Control", "no-cache");
	response.setHeader("Cache-Control", "no-store");
	response.setHeader("Pragma", "no-cache");
	response.setDateHeader("Expires", 0);
%>
</head>

    <body>

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
             <div class="topbar">

			<!-- LOGO -->
			<div class="topbar-left">
				<a href="#" class="logo" style="color: white;">VIRTUAL
					CHEF </a>
			</div>

			<nav class="navbar-custom">

			<ul class="list-unstyled topbar-right-menu float-right mb-0">


				<li class="dropdown notification-list"><a
					class="nav-link dropdown-toggle arrow-none waves-light waves-effect"
					data-toggle="dropdown" href="#" role="button" aria-haspopup="false"
					aria-expanded="false"> <i class="fi-bell noti-icon"></i> <span
						id="noti" class="badge badge-danger badge-pill noti-icon-badge">
							${sessionScope.adminorderrecords.size()} </span>
				</a>
					<div class="dropdown-menu dropdown-menu-right dropdown-lg">

						<!-- item-->
						<div class="dropdown-item noti-title">
							<h6 class="m-0">
								<span class="float-right"><a href="#" class="text-dark"></a> </span>Notification
							</h6>
						</div>

						<div id="noti1" class="slimscroll" style="max-height: 190px;">




							<!-- item-->

							<c:forEach var="row" items="${sessionScope.adminorderrecords}">

								<a href="javascript:void(0);" class="dropdown-item notify-item">
									<div class="notify-icon bg-custom">
										<i class="mdi mdi-heart"></i>
									</div>
									<p class="notify-details">
										${row.getChef_order().getFirstName()} <small
											class="text-muted"> need Delivery Boy</small>
									</p>
								</a>
							</c:forEach>
						</div>

						<!-- All-->

					
							<a href="Adminnotify"
								class="dropdown-item text-center text-primary notify-item notify-all">
								View all <i class="fi-arrow-right"></i>
							</a>
					
					</div></li>

				<li class="dropdown notification-list"><a
					class="nav-link dropdown-toggle arrow-none waves-light waves-effect"
					data-toggle="dropdown" href="#" role="button" aria-haspopup="false"
					aria-expanded="false"> <i class="fi-speech-bubble noti-icon"></i>
						<span
						id="noti2" class="badge badge-danger badge-pill noti-icon-badge">
							${sessionScope.adminmsgs.size()} </span>
				</a>
					<div class="dropdown-menu dropdown-menu-right dropdown-lg">

						<!-- item-->
						<div class="dropdown-item noti-title">
							<h6 class="m-0">
								<span class="float-right"><a href="#" class="text-dark"></a> </span>Messages
							</h6>
						</div>

						<div id="noti3" class="slimscroll" style="max-height: 190px;">
							<!-- item-->
							<c:forEach var="row" items="${sessionScope.adminmsgs}">
							
							<a href="javascript:void(0);" class="dropdown-item notify-item">
								<div class="notify-icon">
									<img src=""
										class="img-fluid rounded-circle" alt="" />
								</div>
								<p class="notify-details">${row.name}</p>
								<p class="text-muted font-13 mb-0 user-msg">${row.subject}</p>
							</a>
							</c:forEach>

						
						
						</div>

						<!-- All-->
						<a href="AdminMessage"
							class="dropdown-item text-center text-primary notify-item notify-all">
							View all <i class="fi-arrow-right"></i>
						</a>

					</div></li>

				<li class="dropdown notification-list"><a
					class="nav-link dropdown-toggle waves-effect waves-light nav-user"
					data-toggle="dropdown" href="#" role="button" aria-haspopup="false"
					aria-expanded="false"> <img
						src="assets/images/users/avatar-1.jpg" alt="user"
						class="rounded-circle"> <span class="ml-1">Admin <i
							class="mdi mdi-chevron-down"></i>
					</span>
				</a>
					<div class="dropdown-menu dropdown-menu-right profile-dropdown ">
						<!-- item-->
						<div class="dropdown-item noti-title">
							<h6 class="text-overflow m-0">Welcome !</h6>
						</div>



						<!-- item-->
						



						<!-- item-->
						<form name="submitForm" method="POST" action="Logoutadmin">
<center>
							<a HREF="javascript:document.submitForm.submit()"><i
								class="icon-off"></i> Logout</a></center>
						</form>



					</div></li>

			</ul>

			<ul class="list-inline menu-left mb-0">
				<li class="float-left">
					<button
						class="button-menu-mobile open-left waves-light waves-effect">
						<i class="dripicons-menu"></i>
					</button>
				</li>

			</ul>

			</nav>

		</div>
            <!-- Top Bar End -->


            <!-- ========== Left Sidebar Start ========== -->
           		<div class="left side-menu">
			<div class="slimscroll-menu" id="remove-scroll">

				<!--- Sidemenu -->
				<div id="sidebar-menu">
					<!-- Left Menu Start -->
					<ul class="metismenu" id="side-menu">
						<li class="menu-title">Navigation</li>


						<li>
							<form name="Dashboard" method="get" action="Adminhome">
								<a href="javascript:document.Dashboard.submit()"> <i
									class="fi-air-play"></i><span>
										Dashboard </span>
								</a>
							</form>
						</li>

						<li><a href="javascript: void(0);"><i
								class="fi-briefcase"></i> <span> Chef </span> <span
								class="menu-arrow"></span></a>
							<ul class="nav-second-level" aria-expanded="false">
								<li>
									<form name="viewchef" method="get" action="ChefList">

										<a href="javascript:document.viewchef.submit()">View</a>
									</form>
								</li>
								<li>
									<form name="delchef" method="get" action="DelChef">

										<a href="javascript:document.delchef.submit()">Delete</a>
									</form>
								</li>

							</ul></li>

						<li><a href="javascript: void(0);"><i class="fi-box"></i><span>
									User </span> <span class="menu-arrow"></span></a>
							<ul class="nav-second-level" aria-expanded="false">
								<li>
									<form name="viewuser" method="get" action="Userlist">

										<a href="javascript:document.viewuser.submit()">View</a>
									</form>
								</li>
								<li>
									<form name="deluser" method="get" action="Deluser">

										<a href="javascript:document.deluser.submit()">Delete</a>
									</form>
								</li>

							</ul></li>

						<li><a href="javascript: void(0);"><i
								class="fi-bar-graph-2"></i><span> Orders</span> <span
								class="menu-arrow"></span></a>
							<ul class="nav-second-level" aria-expanded="false">
								<li>
									<form name="activeorder" method="get" action="Activeorderz">

										<a href="javascript:document.activeorder.submit()">Active
											Orders</a>
									</form>

								</li>
								<li>
									<form name="comporder" method="get" action="Completedorderz">

										<a href="javascript:document.comporder.submit()">Completed
											Orders</a>
									</form>
								</li>

							</ul></li>



						<li><a href="javascript: void(0);"><i class="fi-disc"></i><span>
									Dishes </span><span class="menu-arrow"></span></a>
							<ul class="nav-second-level" aria-expanded="false">
								<li>
									<form name="viewdish" method="get" action="Viewdishes">

										<a href="javascript:document.viewdish.submit()">View
											Dishes</a>
									</form>
								</li>
								<li>
									<form name="addDish" method="get" action="Addnewdish">

										<a href="javascript:document.addDish.submit()">Add Dish</a>
									</form>
								</li>
								<li>
									<form name="delDish" method="get" action="Deldish">

										<a href="javascript:document.delDish.submit()">Delete Dish</a>
									</form>
								</li>

							</ul></li>

						<li><a href="javascript: void(0);"><i class="fi-layout"></i>
								<span> Delivery Boy </span> <span class="menu-arrow"></span></a>
							<ul class="nav-second-level" aria-expanded="false">
								<li>
									<form name="addDboy" method="get" action="AddDboy">

										<a href="javascript:document.addDboy.submit()">Add
											Delivery Boy</a>
									</form>


								</li>
								<li>
									<form name="view_deliveryboy" method="get" action="Dboylist">

										<a href="javascript:document.view_deliveryboy.submit()">View
											Delivery Boy</a>
									</form>
								</li>
								<li>
									<form name="delete_deliveryboy" method="get" action="Deldboy">

										<a href="javascript:document.delete_deliveryboy.submit()">Delete
											Delivery Boy</a>
									</form>
								</li>

							</ul></li>

						<li class="menu-title">More</li>



						<li >
						<a id="noti4" href="AdminMessage"><i class="fi-clock"></i>
						<c:if test="${fn:length(adminmsgs) gt 0}">
						
						<span class="badge badge-danger badge-pill pull-right">
						${sessionScope.adminmsgs.size()}
					
						</span> 
						</c:if>
									 <span>Messages</span>
						</a>
						
						</li>
						
						<li  >
						<a id="noti5" href="Adminnotify"><i class="fi-clock"></i>
							<c:if test="${fn:length(adminorderrecords) gt 0}">
							
						<span class="badge badge-danger badge-pill pull-right">
							${sessionScope.adminorderrecords.size()}
					
						</span>
						</c:if>
									  <span>Notifications</span>
						</a>
						
						</li>






					</ul>

				</div>
				<!-- Sidebar -->
				<div class="clearfix"></div>

			</div>
			<!-- Sidebar -left -->

		</div>          


            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container-fluid">

                        <div class="row">
                            <div class="col-12">
                                <div class="page-title-box">
                                    <h4 class="page-title float-left">Add Delivery Boy</h4>

                                    <ol class="breadcrumb float-right">
                                        <li class="breadcrumb-item"><a href="#">Virtual Chef</a></li>
                                        <li class="breadcrumb-item"><a href="#">Delivery Boy</a></li>
                                        <li class="breadcrumb-item active">Add Delivery Boy</li>
                                    </ol>

                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->



                        


                       





                        <!-- Form row -->
                        <div class="row">
                            <div class="col-md-12">
                                <div class="card-box">
                                    <h4 class="m-t-0 header-title" style="font-size:25px;">Add Delivery Boy</h4>
                                   

                                    <form method="post" action="AddDboy">
									     <div class="form-group">
                                            <label for="inputAddress" class="col-form-label">First Name</label>
                                            <input name="fname" type="text" class="form-control" id="inputAddress" placeholder=" id ">
                                        </div>
                                       
                                        <div class="form-group">
                                            <label for="inputAddress" class="col-form-label">Last Name</label>
                                            <input name="lname" type="text" class="form-control" id="inputAddress" placeholder=" name ">
                                        </div>
                                         <div class="form-group">
                                            <label for="inputAddress2" class="col-form-label">Phone Number</label>
                                            <input name="phonenum" type="text" pattern="^[0][1-9]\d{9}$|^[1-9]\d{9}$"
                                             class="form-control" id="inputAddress2" >
                                        </div>
										
											<div class="form-group">
                                            <label for="inputAddress2" class="col-form-label">Email</label>
                                            <input name="email" type="text" class="form-control" id="inputAddress2">
                                        </div>
										
                                        <div class="form-group">
                                            <label for="inputAddress2" class="col-form-label">Cnic</label>
                                            <input name="cnic" type="text" 
                                            pattern="^[0-9+]{5}-[0-9+]{7}-[0-9]{1}$"
						
                                            class="form-control" id="inputAddress2" >
                                        </div>
										
											<div class="form-group">
                                            <label for="inputAddress2" class="col-form-label">Date of Birth</label>
                                            <input name="dob" type="date" class="form-control" id="inputAddress2">
                                        </div>
										
										<div class="form-group">
                                            <label for="inputAddress2" class="col-form-label">Address</label>
                                            <input name="address" type="text" class="form-control" id="inputAddress2">
                                        </div>
										
										
										
                                        
                                  
                                        <button type="submit" class="btn btn-primary">Add Delivery boy</button>
                                        	<c:if test="${sessionScope.dboyexist != null}">
						                       <c:out value="${sessionScope.dboyexist}" />
					                                              
					                                              </c:if>
                                    </form>
                                </div>
                            </div>
                        </div>
                        <!-- end row -->

                    </div> <!-- container -->

                </div> <!-- content -->

                <footer class="footer text-right">
                    2017 - 2018 © Virtual Chef. - HighOnTech.com
                </footer>

            </div>


            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


        </div>
        <!-- END wrapper -->



       	<!-- jQuery  -->
	<script src="ajs/jquery.min.js"></script>
	<script src="ajs/popper.min.js"></script>
	<script src="ajs/bootstrap.min.js"></script>
	<script src="ajs/metisMenu.min.js"></script>
	<script src="ajs/waves.js"></script>
	<script src="ajs/jquery.slimscroll.js"></script>
	<script src="ajs/jquery.waypoints.min.js"></script>
	<script src="ajs/jquery.counterup.min.js"></script>


	<!-- Required datatable js -->
	<script src="ajs/jquery.dataTables.min.js"></script>
	<script src="ajs/dataTables.bootstrap4.min.js"></script>
	<!-- Buttons examples -->
	<script src="ajs/dataTables.buttons.min.js"></script>
	<script src="ajs/buttons.bootstrap4.min.js"></script>
	<script src="ajs/jszip.min.js"></script>
	<script src="ajs/pdfmake.min.js"></script>
	<script src="ajs/vfs_fonts.js"></script>
	<script src="ajs/buttons.html5.min.js"></script>
	<script src="ajs/buttons.print.min.js"></script>
	<!-- Responsive examples -->
	<script src="ajs/dataTables.responsive.min.js"></script>
	<script src="ajs/responsive.bootstrap4.min.js"></script>

	<!-- App js -->
	<script src="ajs/jquery.core.js"></script>
	<script src="ajs/jquery.app.js"></script>

    </body>

</html>