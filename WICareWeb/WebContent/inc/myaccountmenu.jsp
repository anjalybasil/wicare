
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="en">

                  <aside class="col-md-3 col-sm-4">

							<!-- - - - - - - - - - - - - - Information - - - - - - - - - - - - - - - - -->

							<section class="section_offset">

								<h3>My Account</h3>

								<ul class="theme_menu">

									<li class="active"><a href='javascript:document.myaccountform.submit()' >Account Dashboard</a></li>
									<li><a href="#">Account Information2</a></li>									
									<li><a href="${pageContext.request.contextPath}/user.do?action=myorders">My Orders</a></li>
									<li></li>
									
									<li></li>

								</ul>

							</section><!--/ .section_offset -->

							<!-- - - - - - - - - - - - - - End of information - - - - - - - - - - - - - - - - -->


						</aside>


</html>