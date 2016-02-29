<%@ page import="java.util.*" import="com.wicare.dto.FoodProduct" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Good Browsing</title>
</head>
<body>

	<jsp:include page="/inc/header.jsp"/>

	<table>
		<c:forEach var="food" items="${foodList}" varStatus="i">	
		
		<c:if test="${i.index mod 4 eq 0}">
       		<tr>
   		 </c:if>

		<td><img src="/WICareWeb/images/${food.imgFile}" height="50" width="50"></td>
		<td><c:out value='${food.foodName }' /></td>
		<td><c:out value="$ ${food.foodPrice}" /></td>
   	 	
   	 	<c:if test="${(i.index+1) mod 4 eq 0 or i.last}">
        	</tr>
    	</c:if>
		</c:forEach>
	</table>


</body>
</html>