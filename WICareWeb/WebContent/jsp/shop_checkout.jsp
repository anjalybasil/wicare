<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="en">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<head>
		<!-- Basic page needs
		============================================ -->
		<title>WICare | Home</title>
		<meta charset="utf-8">
		<meta name="author" content="">
		<meta name="description" content="">
		<meta name="keywords" content="">

		<!-- Mobile specific metas
		============================================ -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!-- Favicon
		============================================ -->
		<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/images/favicon.ico">

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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/rs-plugin/css/settings.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/owlcarousel/owl.carousel.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/arcticmodal/jquery.arcticmodal.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

		<!-- JS Libs
		============================================ -->
		<script src="js/modernizr.js"></script>

		<!-- Old IE stylesheet
		============================================ -->
		<!--[if lte IE 9]>
			<link rel="stylesheet" type="text/css" href="css/oldie.css">
		<![endif]-->
	</head>
<script type="text/javascript">

		function placeOrder(action, id)
		{
			var URL = "../shoppingcart.do?action="+action+"&product=" + id;
			window.location.href= URL;
		}
	
	</script>
	<body class="front_page promo_popup">

		
		

		<!-- - - - - - - - - - - - - - Main Wrapper - - - - - - - - - - - - - - - - -->

		<div class="wide_layout">

		<jsp:include page="/inc/header.jsp"/>


			<!-- - - - - - - - - - - - - - Page Wrapper - - - - - - - - - - - - - - - - -->

			<div class="secondary_page_wrapper">

				<div class="container">

					<!-- - - - - - - - - - - - - - Breadcrumbs - - - - - - - - - - - - - - - - -->

					<ul class="breadcrumbs">

						<li><a href="../index.html">Home</a></li>
						<li>Checkout</li>

					</ul>

					<h1 class="page_title">Checkout</h1>

					<!-- - - - - - - - - - - - - - Checkout method - - - - - - - - - - - - - - - - -->

					<section class="section_offset">
<!--/ .relative -->

				  </section><!--/ .section_offset -->

					<!-- - - - - - - - - - - - - - End of checkout method - - - - - - - - - - - - - - - - -->

					<!-- - - - - - - - - - - - - - Billing information - - - - - - - - - - - - - - - - -->

					<section class="section_offset">

					  <h3>Payment Information</h3>

						<div class="theme_box">
<form class="type_2">
								
			  <ul>
									
									<li class="row">
										
										<div class="col-sm-6">
											
											<label for="first_name" class="required">First Name</label>
											<input type="text" name="" id="first_name">

										</div><!--/ [col] -->

										<div class="col-sm-6">
											
											<label for="last_name" class="required">Last Name</label>
											<input type="text" name="" id="last_name">

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">
										
									  <div class="col-sm-6">
											
										<label for="Card_number" class="required">Card Number</label>
										  <input type="text" id="company_name" size="16" maxlength="16">

									  </div><!--/ [col] -->

									  <div class="col-sm-6">
											
										<label for="Expiration_Date" class="required">Expiration Date</label>
                                        <input type="date">
</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">	

										<div class="col-xs-1">

											<label for="Card_CVV" class="required">Card CVV</label>
											<input type="text" name="" id="Card_CVV" size="3" maxlength="3">

										</div><!--/ [col] -->

									</li><!-- / .row -->

									<li class="row">

										<div class="col-xs-12"> </div><!--/ [col] -->

									</li><!--/ .row -->

								  <!--/ .row -->

								  <!--/ .row -->

								  <!--/ .row -->

									<!--/ .row -->

									<!--/ .row -->

									<!--/ .row -->

			</ul>

						  </form>

					  </div>

						<footer class="bottom_box on_the_sides">

							<div class="left_side"> </div>

							<div class="right_side">

								<span class="prompt">Required Fields</span>

							</div>

						</footer>

					</section><!--/ .section_offset -->

					<!-- - - - - - - - - - - - - - End of billing information - - - - - - - - - - - - - - - - -->

					<!-- - - - - - - - - - - - - - Shipping information - - - - - - - - - - - - - - - - -->

					<section class="section_offset">

						<h3>Shipping Information</h3>

					  <div class="theme_box">
<form class="type_2">
								
			  <ul>
									
									<li class="row">
										
										<div class="col-sm-6">
											
											<label for="first_name" class="required">First Name</label>
											<input type="text" name="" id="first_name">

										</div><!--/ [col] -->

										<div class="col-sm-6">
											
											<label for="last_name" class="required">Last Name</label>
											<input type="text" name="" id="last_name">

										</div><!--/ [col] -->

									</li><!--/ .row -->

								  <!--/ .row -->

									<li class="row">	

										<div class="col-xs-12">

											<label for="address" class="required">Address 1</label>
											<input type="text" name="" id="address">

										</div><!--/ [col] -->

									</li><!-- / .row -->

									<li class="row">

										<div class="col-xs-12">

											<label for="address">Address 2</label>
                                          <input type="text" name="" id="addres2">

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">

										<div class="col-sm-6">
											
											<label for="city" class="required">City</label>
											<input type="text" name="" id="city">

										</div><!--/ [col] -->

										<div class="col-sm-6">

											<label class="required">State/Province</label>

											<input type="text" name="" id="city">

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">

										<div class="col-sm-6">

											<label for="postal_code" class="required">Zip/Postal Code</label>
											<input type="text" name="" id="postal_code">

										</div><!--/ [col] -->

										<div class="col-sm-6">

											<label class="required">Country</label>

											<div class="custom_select">

												<select name="">
													
													<option value="USA">USA</option>
													<option value="Australia">Australia</option>
													<option value="Austria">Austria</option>
													<option value="Argentina">Argentina</option>
													<option value="Canada">Canada</option>

												</select>

											</div>

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<!--/ .row -->

									<!--/ .row -->

									<!--/ .row -->

									<li class="row"> </li>
									<li class="row"> </li>
								  <!--/ .row -->

			</ul>

						</form>

					  </div>

						<footer class="bottom_box on_the_sides">

							<div class="left_side buttons_row"> </div>

							<div class="right_side">

								<span class="prompt">Required Fields</span>

							</div>

						</footer>

					</section><!--/ .section_offset -->

					<!-- - - - - - - - - - - - - - End of billing information - - - - - - - - - - - - - - - - -->

					<!-- - - - - - - - - - - - - - Shipping method - - - - - - - - - - - - - - - - -->

					<section class="section_offset"> </section>


					<!-- - - - - - - - - - - - - - End of shipping method - - - - - - - - - - - - - - - - -->

					<!-- - - - - - - - - - - - - - Payment information - - - - - - - - - - - - - - - - -->

					<section class="section_offset">
<div class="container">
  <form class="form-horizontal" role="form">
</form>
</div>
</section>


					<!-- - - - - - - - - - - - - - End of payment information - - - - - - - - - - - - - - - - -->

					<!-- - - - - - - - - - - - - - Order review - - - - - - - - - - - - - - - - -->

					<section class="section_offset">

						<h3>Order Review</h3>

						<div class="table_wrap">

							<table class="table_type_1 order_review">

								<thead>
									
									<tr>
										
									  <th class="product_title_col">Product Name</th>
										<th class="product_price_col">Price</th>
										<th class="product_qty_col">Quantity</th>
										<th class="product_total_col">Total</th>

									</tr>

								</thead>

								<tbody>
									<c:forEach var="food" items="${sessionScope.user.currentOrder.products}" varStatus="i">
										<tr>																			
										  	<td data-title="Product Name">${food.foodName}</td>
											<td data-title="Price" class="subtotal">
											<c:if test="${sessionScope.user.WIC == true}">
													<c:out value='$ ${food.wicPrice}' />
												</c:if>
												<c:if test="${sessionScope.user.WIC == false}">
													<c:out value='$ ${food.foodPrice}' />
												</c:if>		
											
											</td>
											<td data-title="Quantity">${food.foodAmount }</td>
											<td data-title="Total" class="total">
											<c:if test="${sessionScope.user.WIC == true}">
													<c:out value="${food.wicPrice * food.foodAmount }"/>
												</c:if>
												<c:if test="${sessionScope.user.WIC == false}">
													<c:out value="${food.foodPrice * food.foodAmount }"/>
												</c:if>																																		
											</td>
										</tr>
									</c:forEach>									
								</tbody>
							</table>
							
						</div><!--/ .table_wrap -->
<br/><br/>
					<div class="section_offset">

						<div class="row">

								<h3>Total</h3>

								<div class="table_wrap">

									<table class="zebra">

										<tfoot>

											<tr>
													
												<td>Subtotal</td>
								
											<td>												
												<c:if test="${sessionScope.user.WIC == true}">
													<c:out value='$ ${(sessionScope.user.currentOrder.wicSubTotal)}' />
												</c:if>
												<c:if test="${sessionScope.user.WIC == false}">
													<c:out value='$ ${(sessionScope.user.currentOrder.subTotal)}' />	
												</c:if>												
											</td>

											</tr>

											<tr class="total">
													
												<td>Total</td>
									<td>
									
									<c:if test="${sessionScope.user.WIC == true}">
													<c:out value='$ ${(sessionScope.user.currentOrder.wicTotal)}' />
												</c:if>
												<c:if test="${sessionScope.user.WIC == false}">
													<c:out value='$ ${(sessionScope.user.currentOrder.total)}' />	
												</c:if>		
									
									</td>

											</tr>

										</tfoot>

									</table>

								</div>
							</div>
						</div>
						<footer class="bottom_box on_the_sides">

							<div class="left_side v_centered">

								<span>Forgot an item?</span>

								<a href="${pageContext.request.contextPath}/jsp/shop_shopping_cart.jsp" class="button_grey middle_btn">Edit Your Cart</a>

							</div>

							<div class="right_side">

								<a href="${pageContext.request.contextPath}/category.do?action=checkout"><button class="button_blue middle_btn">Place Order</button></a>
							</div>
						</footer>
					</section>

					<!-- - - - - - - - - - - - - - End of order review - - - - - - - - - - - - - - - - -->

				</div><!--/ .container-->

			</div><!--/ .page_wrapper-->
			
			<!-- - - - - - - - - - - - - - End Page Wrapper - - - - - - - - - - - - - - - - -->

			<jsp:include page="/inc/footer.jsp"></jsp:include>

		</div><!--/ [layout]-->
		
		<!-- - - - - - - - - - - - - - End Main Wrapper - - - - - - - - - - - - - - - - -->

		<!-- - - - - - - - - - - - - - Social feeds - - - - - - - - - - - - - - - - -->

		<ul class="social_feeds">

			<!-- - - - - - - - - - - - - - Facebook - - - - - - - - - - - - - - - - -->

			<li>

				<button class="icon_btn middle_btn social_facebook open_"><i class="icon-facebook-1"></i></button>

				
				<section class="dropdown">

					<div class="animated_item">

						<h3 class="title">Join Us on Facebook</h3>

					</div><!--/ .animated_item-->

					<div class="animated_item">

						<iframe src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fthemeforest&amp;width=235&amp;=345&amp;colorscheme=light&amp;show_faces=true&amp;header=false&amp;stream=false&amp;show_border=false&amp;appId=438889712801266" style="border:none; overflow:hidden; width:235px; height:345px;"></iframe>

					</div><!--/ .animated_item-->

				</section><!--/ .dropdown-->

			</li>

			<!-- - - - - - - - - - - - - - End of Facebook - - - - - - - - - - - - - - - - -->

			<!-- - - - - - - - - - - - - - Twitter - - - - - - - - - - - - - - - - -->

			<li>

				<button class="icon_btn middle_btn social_twitter open_"><i class="icon-twitter"></i></button>

				<section class="dropdown">

					<div class="animated_item">

						<h3 class="title">Latest Tweets</h3>

					</div><!--/ .animated_item-->

					<div class="tweet_list_wrap"></div>
					 
					<footer class="animated_item bottom_box">

						<a href="#" class="button_grey middle_btn twitter_follow">Follow Us</a>	

					</footer><!--/ .animated_item-->

				</section><!--/ .dropdown-->

			</li>

			<!-- - - - - - - - - - - - - - End of Twitter - - - - - - - - - - - - - - - - -->

			<!-- - - - - - - - - - - - - - Contact us - - - - - - - - - - - - - - - - -->

			<li>

				<button class="icon_btn middle_btn social_contact open_"><i class="icon-mail-8"></i></button>

				<section class="dropdown">

					<div class="animated_item">

						<h3 class="title">Contact Us</h3>

					</div><!--/ .animated_item-->
					 
					<div class="animated_item">

						<p class="form_caption"></p>

						<form class="contactform" novalidate>

							<ul>

								<li class="row">

									<div class="col-xs-12">

										<input type="text" required title="Name" name="cf_name" placeholder="Your name">

									</div>

								</li>

								<li class="row">

									<div class="col-xs-12">

										<input type="email" required title="Email" name="cf_email" placeholder="Your address">

									</div>

								</li>

								<li class="row">

									<div class="col-xs-12">

										<textarea placeholder="Message" required title="Message" name="cf_message" rows="6"></textarea>

									</div>

								</li>
								
								<li class="row">

									<div class="col-xs-12">

										<button class="button_grey middle_btn">Send</button>

									</div>

								</li>

							</ul>

						</form>

					</div><!--/ .animated_item-->

				</section><!--/ .dropdown-->

			</li>

			<!-- - - - - - - - - - - - - - End contact us - - - - - - - - - - - - - - - - -->

			<!-- - - - - - - - - - - - - - Google map - - - - - - - - - - - - - - - - -->

			<li>

				<button class="icon_btn middle_btn social_gmap open_"><i class="icon-location-4"></i></button>

				<!--Location-->

				<section class="dropdown">

					<div class="animated_item">

						<h3 class="title">Store Location</h3>

					</div><!--/ .animated_item-->
					 
					<div class="animated_item">
						
						<p class="c_info_location">8901 Marmora Road,<br>Glasgow, D04 89GR.</p>

						<div class="proportional_frame">

							<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3024.238131852431!2d-74.006059!3d40.712773999999996!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c258fda88cefb3%3A0x7f1e88758d210007!2z0J3RjNGOLdC50L7RgNC60YHQutC40Lkg0KHQuNGC0Lgt0YXQvtC70Ls!5e0!3m2!1sru!2sua!4v1415946524959" style="border:0"></iframe>

						</div>

						<ul class="c_info_list">

							<li class="c_info_phone">800-599-65-80</li>
							<li class="c_info_mail"><a href="mailto:#">info@companyname.com</a></li>
							<li class="c_info_schedule">

								<ul>

									<li>Monday-Friday: 8.00-20.00</li>
									<li>Saturday: 9.00-15.00</li>
									<li>Sunday: closed</li>

								</ul>

							</li>

						</ul>

					</div><!--/ .animated_item-->

				</section><!--/ .dropdown-->
			
			</li>

			<!-- - - - - - - - - - - - - - End google map - - - - - - - - - - - - - - - - -->

		</ul>

		<!-- - - - - - - - - - - - - - End Social feeds - - - - - - - - - - - - - - - - -->
		
		<!-- Include Libs & Plugins
		============================================ -->
		<script src="../js/jquery-2.1.1.min.js"></script>
		<script src="../js/queryloader2.min.js"></script>
		<script src="../js/jquery.appear.js"></script>
		<script src="../js/owlcarousel/owl.carousel.min.js"></script>
		<script src="../twitter/jquery.tweet.min.js"></script>
		<script src="../js/arcticmodal/jquery.arcticmodal.js"></script>
		<script src="../js/jquery.countdown.plugin.min.js"></script>
		<script src="../js/jquery.countdown.min.js"></script>
		<script src="../js/colorpicker/colorpicker.js"></script>
		<script src="../js/retina.min.js"></script>
		<script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js"></script>

		<!-- Theme files
		============================================ -->
		<script src="../js/theme.plugins.js"></script>
		<script src="../js/theme.core.js"></script>
		
	</body>
</html>