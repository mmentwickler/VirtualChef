<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile Setting</title>

<link rel="icon" type="image/ico" href="images/logo.jpg" />

</head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
 integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>Edit Profile</h1>
  	<hr>
	<div class="row">
      <!-- left column -->
    <form method="Post" action="Userprofile" class="form-horizontal" role="form">
     
      <div class="col-md-3">
        <div class="text-center">
        <br>
        <br>
        <br>
        <br>
        <img style="width:300px; height:300px; " src="images/logo.jpg" ></img>
        
         </div>
      </div>
      
      <!-- edit form column -->
      <div class="col-md-9 personal-info">
        <div >
          <a class="panel-close close" ></a> 
          <i class="fa fa-coffee"></i>
         <center><h3>Personal info</h3></center>
        </div>
        <br>
        <br>
        <h3></h3>
        
          <div class="form-group">
            <label class="col-lg-3 control-label">First name:</label>
            <div class="col-lg-8">
              <input name="fname" class="form-control" type="text" value="${sessionScope.userid.getFirstName()}">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Last name:</label>
            <div class="col-lg-8">
              <input name="lname" class="form-control" type="text" value="${sessionScope.userid.getLastName()}">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Mobile Number:</label>
            <div class="col-lg-8">
              <input name="num" class="form-control" type="number" value="${sessionScope.userid.getPhone_num()}">
            </div>
          </div>
          <div class="form-group">
            <label class="col-lg-3 control-label">Email:</label>
            <div class="col-lg-8">
              <input name="email" class="form-control" type="text" value="${sessionScope.userid.getEmail()}">
            </div>
          </div>
         
         
          <div class="form-group">
            <label class="col-md-3 control-label">Password:</label>
            <div class="col-md-8">
              <input name="pass" class="form-control" type="password" value="${sessionScope.userid.getPassword()}">
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label">Confirm password:</label>
            <div class="col-md-8">
              <input class="form-control" type="password" value="${sessionScope.userid.getPassword()}">
            </div>
          </div>
          <div class="form-group">
            <label class="col-md-3 control-label"></label>
            <div class="col-md-8">
              <input name="change" type="submit" class="btn btn-primary" value="Save Changes">
              <span></span>
              <input name="nochange" type="submit" class="btn btn-default" value="Back To Home">
            </div>
          </div>
        
      
      </div>
      </form>
      
  </div>
</div>
<hr>
</body>
</html>