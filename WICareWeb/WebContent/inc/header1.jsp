
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="en">

<!-- Basic page needs
		============================================ -->
		<title>WICare | My Account</title>
		<meta charset="utf-8">
		<meta name="author" content="">
		<meta name="description" content="">
		<meta name="keywords" content="">

		<!-- Mobile specific metas
		============================================ -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!-- Favicon
		============================================ -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/fav_icon.ico">

		<!-- Google web fonts
		============================================ -->
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,300,300italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

		<!-- Libs CSS
		============================================ -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fontello.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
		
		<!-- Theme CSS
		============================================ -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/arcticmodal/jquery.arcticmodal.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/owlcarousel/owl.carousel.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

		<!-- JS Libs
		============================================ -->
		<script src="${pageContext.request.contextPath}/js/modernizr.js"></script>

	
<script type="text/javascript">
  
function submitThisForm(f) {
	alert( "clicked");
	f.action = "${pageContext.request.contextPath}/login.do";
	f.submit();
	return true;
}

</script>


<!-- - - - - - - - - - - - - - Header - - - - - - - - - - - - - - - - -->
		
        <header id="header" class="type_6">

			<div class="bottom_part">

					<div class="container">

						<div class="row">

							<div class="main_header_row">

								<div class="col-sm-3">

									<!-- - - - - - - - - - - - - - Logo - - - - - - - - - - - - - - - - -->

									<a href="index.html" class="logo">

										<img src="${pageContext.request.contextPath}/images/WIClogo2.png" alt="" width="339" height="80">

									</a>

									<!-- - - - - - - - - - - - - - End of logo - - - - - - - - - - - - - - - - -->

								</div><!--/ [col]-->

							  <div class="col-lg-6 col-md-5 col-sm-5 col-md-offset-2">

									<!-- - - - - - - - - - - - - - Call to action - - - - - - - - - - - - - - - - -->

									<div class="call_us">

										<span></span> <b></b>

									</div><!--/ .call_us-->

									<!-- - - - - - - - - - - - - - End call to action - - - - - - - - - - - - - - - - -->

									<!-- - - - - - - - - - - - - - Search form - - - - - - - - - - - - - - - - -->

									<form class="clearfix search" action="${pageContext.request.contextPath}/category.do">

										<input type="text" name="search_term" tabindex="1" placeholder="Search..." class="alignleft">
										<input type="hidden" name="action" value="search">
										
										<!-- - - - - - - - - - - - - - Categories - - - - - - - - - - - - - - - - --><!--/ .search_category.alignleft-->

										<!-- - - - - - - - - - - - - - End of categories - - - - - - - - - - - - - - - - -->

									  <button class="button_blue def_icon_btn alignleft"></button>

									</form><!--/ #search-->
									
									<!-- - - - - - - - - - - - - - End search form - - - - - - - - - - - - - - - - -->

								</div><!--/ [col]-->
								
								
								
 							
								<div class="col-lg-3 col-sm-4" >

								<div class="clearfix">										

								  </div><!--/ .clearfix-->

									<!-- - - - - - - - - - - - - - Loginbox & Wishlist & Compare - - - - - - - - - - - - - - - - --> 							

									<ul class="account_bar" >

										<li></li>

										<li></li>
										<c:if test="${sessionScope.hasLoggedIn == null or !sessionScope.hasLoggedIn}">
											<li>
	
											  <div class="login_box"><div class="login_box_inner">Welcome Guest <a href="${pageContext.request.contextPath}/jsp/login.jsp" >Login</a> or 
											   <a href="${pageContext.request.contextPath}/jsp/register_page.jsp">Register</a></div></div>
	
										   </li>
									   </c:if>	
									   <c:if test="${sessionScope.hasLoggedIn != null and sessionScope.hasLoggedIn}">
									   <li>

										  <div class="login_box"><div class="login_box_inner">Welcome ${sessionScope.user.firstName}  </div>
										  
										  <form id="logout_form" action="${pageContext.request.contextPath}/login.do" method="post" name="logoutform" >
												<input type="hidden" id="action" name="action" value="logout">	
																							
												<a href='javascript:document.logoutform.submit()' >Logout</a>
												
										  </form>		
										  
										  </div>

									   </li>
									   </c:if>

									</ul><!--/ .account_bar-->

									<!-- - - - - - - - - - - - - - End Loginbox & Wishlist & Compare - - - - - - - - - - - - - - - - -->

								</div><!--/ [col]-->
							

							</div><!--/ .main_header_row-->

						</div><!--/ .row-->

					</div><!--/ .container-->

				</div><!--/ .bottom_part -->

				<!-- - - - - - - - - - - - - - End of bottom part - - - - - - - - - - - - - - - - -->

				<!-- - - - - - - - - - - - - - Main navigation wrapper - - - - - - - - - - - - - - - - -->

				<div id="main_navigation_wrap">

					<div class="container">

						<div class="row">

							<div class="col-xs-12">

								<!-- - - - - - - - - - - - - - Sticky container - - - - - - - - - - - - - - - - -->

								<div class="sticky_inner type_2">

									<!-- - - - - - - - - - - - - - Navigation item - - - - - - - - - - - - - - - - --><!--/ .nav_item-->

									<!-- - - - - - - - - - - - - - End of navigation item - - - - - - - - - - - - - - - - -->

									<!-- - - - - - - - - - - - - - Navigation item - - - - - - - - - - - - - - - - -->

									<div class="nav_item">

										<nav class="main_navigation">

											<ul>

												<li><a href="${pageContext.request.contextPath}/jsp/home.jsp">Home</a></li>
												<c:if test="${sessionScope.hasLoggedIn != null and sessionScope.hasLoggedIn}">	
												   
																							
													
													
												     <li><a href='javascript:document.myaccountform.submit()' >My Account</a></li>
													
													 <form id="myaccount_form" action="${pageContext.request.contextPath}/user.do" method="post" name="myaccountform" >
														<input type="hidden" id="action" name="action" value="myaccount">														
													 </form>		
										  
													
													
													
													<li><a href="${pageContext.request.contextPath}/jsp/shop_shopping_cart.jsp">Shopping Cart</a></li>
													<li><a href="shop_checkout.html">Checkout</a></li>
													
												</c:if>
												<li></li>
												<li><a href="additional_page_contact.html">Contact Us</a></li>
											   

												

											</ul>

										</nav><!--/ .main_navigation-->

									</div>

									<!-- - - - - - - - - - - - - - End of navigation item - - - - - - - - - - - - - - - - -->

									<!-- - - - - - - - - - - - - - Navigation item - - - - - - - - - - - - - - - - -->
									<c:if test="${sessionScope.hasLoggedIn != null and sessionScope.hasLoggedIn}">	
									<div class="nav_item size_3">

										<button id="open_shopping_cart" class="open_button" data-amount="${sessionScope.user.currentOrder.products.size()}" >
											<b class="title">My Cart</b>
											<b class="total_price">${sessionScope.user.currentOrder.subTotal}</b>
											
										</button>

										<!-- - - - - - - - - - - - - - Products list - - - - - - - - - - - - - - - - -->

										<div class="shopping_cart dropdown">

												<div class="animated_item">

													<p class="title">Recently added item(s)</p>

													<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

													<c:forEach var="food" items="${sessionScope.user.currentOrder.products}" varStatus="i">
													<div class="clearfix sc_product">


														<a href="#" class="product_thumb"><img src="/WICareWeb/images/groceries/${food.imgFile}" height="50" width="50"></a>
																																										
														<a href="#" class="product_name">${food.foodName}</a>

														<p>${food.foodAmount} x ${food.foodPrice * food.foodAmount}</p>

														<button class="close"></button><!-- remove delete (make this remove from the shopping cart) -->

													</div><!--/ .clearfix.sc_product-->
													
													</c:forEach>
													
												</div><!--/ .animated_item-->

												<div class="animated_item">

													<!-- - - - - - - - - - - - - - Total info - - - - - - - - - - - - - - - - -->

													<ul class="total_info">

														<li><span class="price">Tax:</span> 2%</li>

														<li><span class="price">Discount:</span> $0.00</li>

														<li class="total"><b><span class="price">Total:</span> ${sessionScope.user.currentOrder.total}</b></li>

													</ul>
													
													<!-- - - - - - - - - - - - - - End of total info - - - - - - - - - - - - - - - - -->

												</div><!--/ .animated_item-->

												<div class="animated_item">

													<a href="${pageContext.request.contextPath}/jsp/shop_shopping_cart.jsp" class="button_grey">View Cart</a>

													<a href="${pageContext.request.contextPath}/jsp/shop_checkout.jsp" class="button_blue">Checkout</a>

												</div><!--/ .animated_item-->

									  </div><!--/ .shopping_cart.dropdown-->
										
										<!-- - - - - - - - - - - - - - End of products list - - - - - - - - - - - - - - - - -->
										
									</div><!--/ .nav_item-->
									</c:if>

									<!-- - - - - - - - - - - - - - End of navigation item - - - - - - - - - - - - - - - - -->

								</div><!--/ .sticky_inner -->

								<!-- - - - - - - - - - - - - - End of sticky container - - - - - - - - - - - - - - - - -->

							</div><!--/ [col]-->

						</div><!--/ .row-->

					</div><!--/ .container-->

				</div><!--/ .main_navigation_wrap-->

				<!-- - - - - - - - - - - - - - End of main navigation wrapper - - - - - - - - - - - - - - - - -->

			</header>
			</html>