<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Please specify your location first</h1>

<form action="Testmaps" method="post" >
<div id="googleMap" style="width:50%;height:400px;"></div>
	<!-- <script>
//var x = document.getElementById("demo");

function getLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else { 
       // x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {
	document.getElementById('lat').value = position.coords.latitude;
	document.getElementById('long').value = position.coords.longitude;
	
   // x.innerHTML = "Latitude: " + position.coords.latitude + 
   // "<br>Longitude: " + position.coords.longitude;
  
    
}
</script>
 <script>
 var lat1;
 var long1;
 var uluru;
 function getLocation() {
	    if (navigator.geolocation) {
	        navigator.geolocation.getCurrentPosition(showPosition);
	    } else { 
	       // x.innerHTML = "Geolocation is not supported by this browser.";
	    }
	}

	function showPosition(position) {
		 lat1=position.coords.latitude;
		 long1=position.coords.longitude;
		 uluru = {lat:position.coords.latitude, lng: position.coords.longitude};
	//	document.getElementById('lat').value = position.coords.latitude;
	//	document.getElementById('long').value = position.coords.longitude;
		
	   // x.innerHTML = "Latitude: " + position.coords.latitude + 
	   // "<br>Longitude: " + position.coords.longitude;
	  
	    
	}
      function initMap() {
       // var uluru = {lat:lat1, lng: long1};
        var map = new google.maps.Map(document.getElementById('googleMap'), {
          zoom: 15,
          center: uluru
        });
        var marker = new google.maps.Marker({
          position: uluru,
          map: map,
          draggable:true,
        });
        google.maps.event.addListener(marker, 'dragend', function (evt) {
            document.getElementById("lat").value = evt.latLng.lat();
            document.getElementById("long").value = evt.latLng.lng();

           // var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
        });
        }
    </script>-->
    <script>
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
      
        var marker = new google.maps.Marker({
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

               // var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);
            });
              infoWindow.setPosition(pos);
          //  infoWindow.setContent('Location found.');
          //  infoWindow.open(map);
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


<input type="hidden" name="lat" id="lat" value="" />
<input type="hidden" name="long" id="long" value="" />

<input type="submit" value="Send coordinates" >
					</form>

</body>
</html>