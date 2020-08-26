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
</head>
<body>

<form method="get" action="Testadddish" >
<button name="ab" type="submit" >Add New Dish</button>
</form>
<table width="100%" border="1">
    <tr>
    <th>Dish</th>
    <th>Price</th>
    <th>Image</th>
    </tr>
    <c:forEach var="row" items="${sessionScope.li}">
        <tr>
            <td>${row.dishname}</td>
            <td>${row.price}</td>
            <td>
               <img src="${pageContext.servletContext.contextPath }/photoServlet?id=${row.id}" style="width:200px;height:200px;" />
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>