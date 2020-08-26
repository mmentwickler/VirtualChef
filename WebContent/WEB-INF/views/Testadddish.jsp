<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="com.oreilly.servlet.MultipartRequest"
   %>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Upload dishes</h2>
<form method="post" action="Testadddish" enctype="multipart/form-data" >
  Dish Name:<br>
  <input type="text" name="name" >
  <br>
  Price:<br>
  <input type="number" name="price">
  <br>
  Upload Image:<br>
   <input type="file" name="file" id="file">
   <br><br>     
  <input type="submit" value="Submit">
</form> 

</body>
</html>