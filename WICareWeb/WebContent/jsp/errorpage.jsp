<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" isErrorPage ="true"%>

<!DOCTYPE html>
<html lang="en">
	<head>
		
	</head>
	<body>

		<!-- - - - - - - - - - - - - - Main Wrapper - - - - - - - - - - - - - - - - -->

		<div class="wide_layout">
		
		 <jsp:include page="/inc/header1.jsp"/>

			<!-- - - - - - - - - - - - - - Header - - - - - - - - - - - - - - - - -->
			<%-- <h1>Opps...</h1>
				<table width="100%" border="1">
					<tr valign="top">
					<td width="40%"><b>Error:</b></td>
					<td>${pageContext.exception}</td>
					</tr>
					<tr valign="top">
					<td><b>URI:</b></td>
					<td>${pageContext.errorData.requestURI}</td>
					</tr>
					<tr valign="top">
					<td><b>Status code:</b></td>
					<td>${pageContext.errorData.statusCode}</td>
					</tr>
					<tr valign="top">
					<td><b>Stack trace:</b></td>
					<td>
					<c:forEach var="trace" 
					         items="${pageContext.exception.stackTrace}">
					<p>${trace}</p>
					</c:forEach>
					</td>
					</tr>
  		 		 </table> --%>
			
			
			

			
			
			<!-- - - - - - - - - - - - - - End Header - - - - - - - - - - - - - - - - -->

			<!-- - - - - - - - - - - - - - Page Wrapper - - - - - - - - - - - - - - - - -->

			<div class="secondary_page_wrapper">

				<div class="container">

					<div class="row">

						<div class="col-xs-12">

						<h1>Opps...</h1>
						<table width="100%" border="1">
							<tr valign="top">
							<td width="40%"><b>Error:</b></td>
							<td>${pageContext.exception}</td>
							</tr>
							<tr valign="top">
							<td><b>URI:</b></td>
							<td>${pageContext.errorData.requestURI}</td>
							</tr>
							<tr valign="top">
							<td><b>Status code:</b></td>
							<td>${pageContext.errorData.statusCode}</td>
							</tr>
							<tr valign="top">
							<td><b>Stack trace:</b></td>
							<td>
							<c:forEach var="trace" 
							         items="${pageContext.exception.stackTrace}">
							<p>${trace}</p>
							</c:forEach>
							</td>
							</tr>
		  		 		 </table>

						</div><!--/ [col]-->

					</div><!--/ .row -->

				</div><!--/ .container-->

			</div><!--/ .page_wrapper-->
			
			<!-- - - - - - - - - - - - - - End Page Wrapper - - - - - - - - - - - - - - - - -->

			<!-- - - - - - - - - - - - - - Footer - - - - - - - - - - - - - - - - -->

			<jsp:include page="/inc/footer1.jsp"/>
			
			<!-- - - - - - - - - - - - - - End Footer - - - - - - - - - - - - - - - - -->

			

		    </div>
		
		<!-- - - - - - - - - - - - - - End Main Wrapper - - - - - - - - - - - - - - - - -->

		<!-- - - - - - - - - - - - - - Social feeds - - - - - - - - - - - - - - - - -->

		<jsp:include page="/inc/socialfeeds.jsp"/>

		<!-- - - - - - - - - - - - - - End Social feeds - - - - - - - - - - - - - - - - -->

				
		
	</body>
</html>