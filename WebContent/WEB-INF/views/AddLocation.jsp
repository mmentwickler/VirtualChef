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
<title>Add Location Here</title>
</head>
<body>
<h1>Add Location here</h1>
<form method="post" action="Findingchef"  >
  From:<br>
  <input type="text" name="lat1" >
  <br> 
  <input type="text" name="long1" >
  <br>
 To:<br>
  <input type="text" name="lat2" >
  <br> 
  <input type="text" name="long2" >
  <br>
   
  <input type="submit" value="Submit">
</form> 

<% if(session.getAttribute("miles")!=null)
{
	%>
	
	Meters:<h5>${sessionScope.miles}</h5>
	KiloMeters:<h5>${sessionScope.kmiles}</h5>
	NMiles:<h5>${sessionScope.nmiles}</h5>
	
<%} %>
</body>
</html>