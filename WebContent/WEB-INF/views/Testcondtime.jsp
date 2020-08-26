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
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
$(window).load(function(){
		//myvar=setTimeout(notify, 1000);
		function ahref() {
			$.ajax({
				type : "Post",
				url : "Testcondtime",
				data : "",
				success : function(a) {
					$("#num").load(" #num");
	 
			}
		});
  };
  setTimeout(function(){ ahref(); }, 5000);

	//setTimeout(notify, 5000);
});
			
</script>
</head>
<body>
<form action="Testcondtime" method="post" >
<input type="submit" name="check" value="CHECK" />
</form>
<div id="num" >


${sessionScope.ts}


</div>
</body>
</html>