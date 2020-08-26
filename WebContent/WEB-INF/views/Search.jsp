<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="utf-8">
    <title>Homemade Food Delivery</title>
    <meta name="description" content="">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Mobile Specific Meta  -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700" rel="stylesheet">
    <!-- CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/icofont.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/jquery.timepicker.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/meanmenu.css">
    <link rel="stylesheet" href="css/typography.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/png" href="img/favicon.ico">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body data-spy="scroll" data-target="#scroll-menu" data-offset="100">
    <div id="preloader"></div>
    <!-- header-start -->
    <header>
	
        
        <div class="menu-area">
            <div class="container">
                <div class="row">
				
                    <div class="col-md-2 col-sm-6 col-xs-6">
                        <div class="logo">
                            <a href="#"><img src="img/logo.png" alt=""></a>
							
                        </div>
	
                    </div>
                    <div class="col-md-8 col-sm-6 hidden-sm hidden-xs">
                        <div class="menu">
                            <nav>
                                <ul>
                            <form action="Adddish" method="post">

								<input type="text" placeholder="Search Food Item..." name="search" size="35">
								 <% if(session.getAttribute("sr")!=null)
        {
        %>
        <h4 style="float:right;" >
        <%=session.getAttribute("sr") %>
        </h4>
        <% 
        }
        %>
								<button type="submit"><i class="fa fa-search"></i></button>
                            </form>
                                    <li><a href="#">Home</a>
                                    </li>
                                    <li><a href="#">About</a></li>
                                    <li><a href="#">Menu</a></li>
                                    <li><a href="#">Service</a></li>
                                    <li><a href="#">Shop</a></li>
                                    <li><a href="#">Contact Us</a></li>
                                   
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-md-2 col-xs-6">
                        <div class="reservation">
                            <a class="hvr-bs" href="#">Register</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
       
        
        <div class="mobile-menu-area visible-xs visible-sm">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="mobile_menu">
                            <nav id="mobile_menu_active">
                                <ul>
                                    <li><a href="#">Home</a>
                                    </li>
                                    <li><a href="#">About</a></li>
                                    <li><a href="#">Menu</a></li>
                                    <li><a href="#">Service</a></li>
                                    <li><a href="#">Shop</a></li>
                                    <li><a href="#">Contact Us</a></li>                       
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header-end -->
	
	
    
    <!-- footer-start -->
    <footer style="position:fixed;bottom:0;width:100%">
        <div class="footer-top-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="single-footer-item footer-item-desc">
                            <img src="img/logo.png" alt="">
                            <p>We make sure that you get quality, tasty and economical homemade food by our verified and regularly monitored family kitchens. </p>
                            <ul class="footer-social">
                                <li><a href="#" target="_blank"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#" target="_blank"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="single-footer-item footer-item-work-time">
                            <h4 class="footer-title">Work time</h4>
                            <ul class="work-time-list">
                                <li>Monday - Friday <span class="wtl-time">09:00 - 23:00</span></li>
                                <li>Saturday <span class="wtl-time">11:00 - 01:00</span></li>
                                <li>Sunday <span class="wtl-time">12:00 - 23:00</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="single-footer-item footer-item-contact-us">
                            <h4 class="footer-title">Contact Us</h4>
                            <ul class="contact-address-list">
                                <li>3 rd floor Mosscow Plaza ,Blue Area, Islamabad, Pakistan</li>
                                <li>+0315 2520 336</li>
                                <li>info@highontech.com.pk</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="single-footer-item footer-item-subscribe">
                            <h4 class="footer-title">Subscribe to our news</h4>
                            <div class="footer-subscribe-form-area">
                                <form action="#">
                                    <div class="fsfa-input">
                                        <input type="email" placeholder="Your email">
                                        <input class="hvr-bs" type="submit" value="Submit">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom-area">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="footer-bottom">
                            <p>© 2017All Rights Reserved. Development by <a href="http://www.highontech.com.pk">High On Tech</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer-end -->
    <!-- Scripts -->
    <script src="js/jquery-3.2.0.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.counterup.min.js"></script>
    <script src="js/countdown.js"></script>
    <script src="js/jquery.timepicker.min.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.meanmenu.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/jquery.scrollUp.js"></script>
    <script src="js/jquery.mixitup.min.js"></script>
    <script src="js/jquery.waypoints.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/theme.js"></script>
</body>
</html>