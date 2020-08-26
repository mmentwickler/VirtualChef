<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Catering  Order Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript">
	
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	
</script>      <script>
      // Note: This example requires that you consent to location sharing when
      // prompted by your browser. If you see the error "The Geolocation service
      // failed.", it means you probably did not give permission for the browser to
      // locate you.
      var map, infoWindow;
      function initMap() {
          var def_pointer={lat:33.7119199, lng: 73.0607508};
        map = new google.maps.Map(document.getElementById('googleMap'), {
          center:def_pointer ,
          zoom: 15
        });
          document.getElementById("lat").value =33.7119199;
          document.getElementById("long").value =73.0607508;
      
        var marker= new google.maps.Marker({
            position: def_pointer,
            map: map,
            draggable:true,
          });    
          
          
        google.maps.event.addListener(marker, 'dragend', function (evt) {
            document.getElementById("lat").value = evt.latLng.lat();
            document.getElementById("long").value = evt.latLng.lng();

           // var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
        });

        infoWindow = new google.maps.InfoWindow;

        // Try HTML5 geolocation.
        if (navigator.geolocation) {
          navigator.geolocation.getCurrentPosition(function(position) {
            var pos = {
              lat: position.coords.latitude,
              lng: position.coords.longitude
            };
            document.getElementById("lat").value = position.coords.latitude;
            document.getElementById("long").value = position.coords.longitude;

            marker.setPosition(pos);
          google.maps.event.addListener(marker, 'dragend', function (evt) {
                document.getElementById("lat").value = evt.latLng.lat();
                document.getElementById("long").value = evt.latLng.lng();
            });
              infoWindow.setPosition(pos);
            map.setCenter(pos);
          }, function() {
            handleLocationError(true, infoWindow, map.getCenter());
          });
        } else {
                 // Browser doesn't support Geolocation
          handleLocationError(false, infoWindow, map.getCenter());
        }
      }

      function handleLocationError(browserHasGeolocation, infoWindow, pos) {
        infoWindow.setPosition(pos);
        infoWindow.setContent(browserHasGeolocation ?
                              'Error: The Geolocation service failed.' :
                              'Error: Your browser doesn\'t support geolocation.');
        infoWindow.open(map);
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAUjQYmokVuNGX47qQA1IN6T8Obiixz2X8&callback=initMap">
    </script>

<!-- //Meta tags -->
<!-- Stylesheet -->
<link href="wickedpicker.css" rel="stylesheet" type='text/css'
	media="all" />
<link rel="stylesheet" href="jquery-ui-order.css" />
<link href="style-order.css" rel='stylesheet' type='text/css' />

<style>

input:-webkit-autofill,
input:-webkit-autofill:hover,
input:-webkit-autofill:focus,
input:-webkit-autofill:active {
    transition: background-color 5000s ease-in-out 0s;
    -webkit-text-fill-color:white;
}

</style>

</head>

<body onload="getLocation()">
	<!--background-->
	<h1>Place Order</h1>
	<div class="bg-agile">
		<div class="book-appointment">

			<div class="book-agileinfo-form">
				<form action="Searchchef" method="post">

					<h2 class="sub-head-w3ls">Place Order Details</h2>
					<div class="main-agile-sectns">
						<div class="agileits-btm-spc form-text1">
							<input
								 style=	 "color:#a0a0a0 !important;"
						type="text" name="name" placeholder="Full Name"
								required="">
						</div>
						<div class="agileits-btm-spc form-text1">
							<input
							style=	 "color:#a0a0a0 !important;"
							pattern="^[0][1-9]\d{9}$|^[1-9]\d{9}$"
							 type="text" name="phoneno" placeholder="Phone number"
								required="">
						</div>
					</div>
			
					<div class="main-agile-sectns">
						<div class="agileits-btm-spc form-text1">
							<input
							style=	 "color:#a0a0a0 !important;"
							 type="text" name="address" placeholder="Address"
								required="">
						</div>

					</div>
					<div class="main-agile-sectns">
						<div class="agileits-btm-spc form-text1">
							<input name="serving" 
							 type="number" min="1"
							 max="1000"
							 style=
							 "
							 	 color:#a0a0a0 ;
						
							 width:84%;
							 padding:12px 20px;
							 border:none;
							 border-bottom:1px solid rgba(255, 255, 255, 0.27);
							 background-color:transparent;
							 "
								placeholder="No of Servings (max-1000)" value="" onfocus="this.value = '';"
								onblur="if (this.value == '') " required="">
						</div>
						
					</div>
			
					<div class="main-agile-sectns">
						<div class="agileits-btm-spc form-text1">
							<input
							style=	 "color:#a0a0a0 !important;"
							 type="text" name="city" placeholder="City" required="">
						</div>

						<div class="agileits-btm-spc form-text1">
							<input
							style=	 "color:#a0a0a0 !important;"
							 type="text" name="message"
								placeholder="Your Message (if any)" required="">


						</div>
					</div>


					<input type="hidden" name="lat" id="lat" value="" /> <input
						type="hidden" name="long" id="long" value="" />







					<div class="clear"></div>
					<input type="submit" value="Submit">

					<div class="clear"></div>
				</form>
			</div>

		</div>

		<div id="googleMap"  class="left-agileits-w3layouts-img">








		</div>

	</div>
	<!--copyright-->
	<div class="copy-w3layouts">
		<p>
			Designed by HighOnTech Team</a>
		</p>
	</div>
	<!--//copyright-->
	<script type="text/javascript" src="cjs/jquery-2.2.3.min.js"></script>
	<!-- Time -->
	<script type="text/javascript" src="cjs/wickedpicker.js"></script>
	<script type="text/javascript">
		$('.timepicker').wickedpicker({
			twentyFour: false
		});
	</script>
	<!--// Time -->
	<!-- Calendar -->
	<script src="cjs/jquery-ui.js"></script>
	<script>
		$(function () {
			$("#datepicker,#datepicker1,#datepicker2,#datepicker3").datepicker();
		});
	</script>
	<!-- //Calendar -->

</body>
</html>