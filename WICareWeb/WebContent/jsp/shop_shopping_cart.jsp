<%@ page import = "java.util.*" import = "com.wicare.dto.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix ="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
	<head>
		<!-- Basic page needs
		============================================ -->
		<title>WICare | Shopping Cart</title>
		<meta charset="utf-8">
		<meta name="author" content="">
		<meta name="description" content="">
		<meta name="keywords" content="">

		<!-- Mobile specific metas
		============================================ -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

		<!-- Favicon
		============================================ -->
		<link rel="shortcut icon" type="image/x-icon" href="../images/fav_icon.ico">

		<!-- Google web fonts
		============================================ -->
		<link href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,300,300italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

		<!-- Libs CSS
		============================================ -->
		<link rel="stylesheet" href="../css/animate.css">
		<link rel="stylesheet" href="../css/fontello.css">
		<link rel="stylesheet" href="../css/bootstrap.min.css">
		
		<!-- Theme CSS
		============================================ -->
		<link rel="stylesheet" href="../js/arcticmodal/jquery.arcticmodal.css">
		<link rel="stylesheet" href="../js/owlcarousel/owl.carousel.css">
		<link rel="stylesheet" href="../css/style.css">

		<!-- JS Libs
		============================================ -->
		<script src="../js/modernizr.js"></script>

		<!-- Old IE stylesheet
		============================================ -->
		<!--[if lte IE 9]>
			<link rel="stylesheet" type="text/css" href="css/oldie.css">
		<![endif]-->
	</head>
	
	<script type="text/javascript">
		function incrementMethod(action, id)
		{
			var URL = "../shoppingcart.do?action="+action+"&product=" + id;
			window.location.href= URL;
		}
	
	</script>
	<body>

		<!-- - - - - - - - - - - - - - Main Wrapper - - - - - - - - - - - - - - - - -->

		<div class="wide_layout">

		<jsp:include page="/inc/header.jsp" />

			<!-- - - - - - - - - - - - - - Page Wrapper - - - - - - - - - - - - - - - - -->

			<div class="secondary_page_wrapper">

				<div class="container">

					<!-- - - - - - - - - - - - - - Breadcrumbs - - - - - - - - - - - - - - - - -->

					<ul class="breadcrumbs">

						<li><a href="../index.html">Home</a></li>
						<li>Shopping Cart</li>						

					</ul>

					<section class="section_offset">

						<h1>Shopping Cart</h1>
						
						<!-- - - - - - - - - - - - - - Shopping cart table - - - - - - - - - - - - - - - - -->

						<div class="table_wrap">

							<table class="table_type_1 shopping_cart_table">

								<thead>

									<tr>
										<th class="product_image_col">Product Image</th>
										<th class="product_title_col">Product Name</th>
										<th>Price</th>
										<th class="product_qty_col">Quantity</th>
										<th>Total</th>
									</tr>

								</thead>

								<tbody>
								<c:forEach var="currentOrder" items="${sessionScope.user.currentOrder.products}" varStatus="i">	
	      								<tr>

										<!-- - - - - - - - - - - - - - Product Image - - - - - - - - - - - - - - - - -->
											
										<td class="product_image_col" data-title="Product Image">
											
											<img src="/WICareWeb/images/groceries/${currentOrder.imgFile}" height="50" width="50">

										</td>

										<!-- - - - - - - - - - - - - - End of product Image - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Product name - - - - - - - - - - - - - - - - -->

										<td data-title="Product Name">

											<c:out value='${currentOrder.foodName}' />

										</td>

										<!-- - - - - - - - - - - - - - End of product name - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Price - - - - - - - - - - - - - - - - -->

										<td class="subtotal" data-title="Price">
											
											<c:if test="${sessionScope.user.WIC == true}">
												<c:out value="$ ${currentOrder.wicPrice}" />
											</c:if>
											<c:if test="${sessionScope.user.WIC == false}">
												<c:out value="$ ${currentOrder.foodPrice}" />
											</c:if>

										</td>

										<!-- - - - - - - - - - - - - - End of Price - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Quantity - - - - - - - - - - - - - - - - -->

										<td data-title="Quantity">

											<div class="qty min clearfix">
													<!--          Find a way to send the varStatus to the method -->
										<button class="theme_button" onClick="incrementMethod('remove_cart_from_cart', ${i.index})" data-direction="minus">&#45;</button>
												<input type="text" name="" value='${currentOrder.foodAmount}' />
										<button class="theme_button" onClick="incrementMethod('add_cart_from_cart', ${i.index})" data-direction="plus">&#43;</button>

											</div><!--/ .qty.min.clearfix-->

										</td>

										<!-- - - - - - - - - - - - - - End of quantity - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Total - - - - - - - - - - - - - - - - -->

										<td class="total" data-title="Total">
										
											<c:if test="${sessionScope.user.WIC == true}">
												<c:out value="$ ${currentOrder.wicPrice * currentOrder.foodAmount}" />
											</c:if>
											<c:if test="${sessionScope.user.WIC == false}">
												<c:out value="$ ${currentOrder.foodPrice * currentOrder.foodAmount}" />
											</c:if>
										</td>

										<!-- - - - - - - - - - - - - - End of total - - - - - - - - - - - - - - - - -->

										
								
	        						</tr>
	    				</c:forEach>
						</tbody>
						</table> 

						</div><!--/ .table_wrap -->

						<footer class="bottom_box on_the_sides">

							<div class="left_side">

								<a href="${pageContext.request.contextPath}/category.do?action=print_all_food" class="button_blue middle_btn">Continue Shopping</a>

							</div>

							<div class="right_side">

								<a href="${pageContext.request.contextPath}/shoppingcart.do?action=clear_cart" class="button_grey middle_btn">Clear Shopping Cart</a>

							</div>

						</footer><!--/ .bottom_box -->

						<!-- - - - - - - - - - - - - - End of shopping cart table - - - - - - - - - - - - - - - - -->

					</section><!--/ .section_offset -->

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
										<c:out value='$ ${sessionScope.user.currentOrder.wicTotal}' />
									</c:if>
									<c:if test="${sessionScope.user.WIC == false}">
										<c:out value='$ ${sessionScope.user.currentOrder.total}' />
									</c:if>	
									
									
									</td>

											</tr>

										</tfoot>

									</table>

								</div>

								<footer class="bottom_box">

									<a class="button_blue middle_btn" href="${pageContext.request.contextPath}/jsp/shop_checkout.jsp">Proceed to Checkout</a>

									<div class="single_link_wrap">

										<a href="#">Checkout with Multiple Addresses</a>

									</div>

								</footer>

							</section><!-- / [col] -->

						</div><!--/ .row -->

					</div><!--/ .section_offset --></div><!--/ .container-->

			</div><!--/ .page_wrapper-->
			
			<!-- - - - - - - - - - - - - - End Page Wrapper - - - - - - - - - - - - - - - - -->

			<!-- - - - - - - - - - - - - - Footer - - - - - - - - - - - - - - - - -->

			<footer id="footer">

				<div class="container">

					<!-- - - - - - - - - - - - - - Infoblocks - - - - - - - - - - - - - - - - -->

					<div class="infoblocks_container">

						<ul class="infoblocks_wrap">

							<li>
								<a href="#" class="infoblock type_1">

									<i class="icon-paper-plane"></i>
									<span class="caption"><b>Fast &amp; Free Delivery</b></span>

								</a><!--/ .infoblock-->
							</li>

							<li>
								<a href="#" class="infoblock type_1">

									<i class="icon-lock"></i>
									<span class="caption"><b>Safe &amp; Secure Payment</b></span>

								</a><!--/ .infoblock-->
							</li>

							<li>
								<a href="#" class="infoblock type_1">

									<i class="icon-money"></i>
									<span class="caption"><b>100% Money back Guaranted</b></span>

								</a><!--/ .infoblock-->
							</li>

						</ul><!--/ .infoblocks_wrap.section_offset.clearfix-->

					</div><!--/ .infoblocks_container -->
						
					<!-- - - - - - - - - - - - - - End of infoblocks - - - - - - - - - - - - - - - - -->

				</div><!--/ .container -->

				<!-- - - - - - - - - - - - - - Footer section- - - - - - - - - - - - - - - - -->

				<div class="footer_section">

					<div class="container">

						<div class="row">

							<div class="col-md-3 col-sm-6">

								<!-- - - - - - - - - - - - - - About us widget- - - - - - - - - - - - - - - - -->

								<section class="widget">

									<h4>Follow us</h4>
<!-- - - - - - - - - - - - - - Social icon's list - - - - - - - - - - - - - - - - -->

									<ul class="social_btns">

										<li>
											<a href="#" class="icon_btn middle_btn social_facebook tooltip_container"><i class="icon-facebook-1"></i><span class="tooltip top">Facebook</span></a>
										</li>

										<li>
											<a href="#" class="icon_btn middle_btn  social_twitter tooltip_container"><i class="icon-twitter"></i><span class="tooltip top">Twitter</span></a>
										</li>

										<li>
											<a href="#" class="icon_btn middle_btn social_googleplus tooltip_container"><i class="icon-gplus-2"></i><span class="tooltip top">GooglePlus</span></a>
										</li>

										<li>
											<a href="#" class="icon_btn middle_btn social_pinterest tooltip_container"><i class="icon-pinterest-3"></i><span class="tooltip top">Pinterest</span></a>
										</li>

										<li>
											<a href="#" class="icon_btn middle_btn social_flickr tooltip_container"><i class="icon-flickr-1"></i><span class="tooltip top">Flickr</span></a>
										</li>

										<li>
											<a href="#" class="icon_btn middle_btn social_youtube tooltip_container"><i class="icon-youtube"></i><span class="tooltip top">Youtube</span></a>
										</li>

										<li>
											<a href="#" class="icon_btn middle_btn social_vimeo tooltip_container"><i class="icon-vimeo-2"></i><span class="tooltip top">Vimeo</span></a>
										</li>

										<li>
											<a href="#" class="icon_btn middle_btn social_instagram tooltip_container"><i class="icon-instagram-4"></i><span class="tooltip top">Instagram</span></a>
										</li>

										<li>
											<a href="#" class="icon_btn middle_btn social_linkedin tooltip_container"><i class="icon-linkedin-5"></i><span class="tooltip top">LinkedIn</span></a>
										</li>

									</ul>
									
									<!-- - - - - - - - - - - - - - End social icon's list - - - - - - - - - - - - - - - - -->

								</section>
								
								<!-- - - - - - - - - - - - - - End of about us widget - - - - - - - - - - - - - - - - -->

							</div><!--/ [col]-->

							<div class="col-md-2 col-sm-6">

								<!-- - - - - - - - - - - - - - Information widget - - - - - - - - - - - - - - - - -->

								<section class="widget">

									<h4>Information</h4>

									<ul class="list_of_links">

										<li><a href="#">About Us</a></li>
										<li><a href="#">Delivery Information</a></li>
										
										

									</ul>

								</section><!--/ .widget-->
								
								<!-- - - - - - - - - - - - - - End of information widget - - - - - - - - - - - - - - - - -->
							
							</div><!--/ [col]-->

							<div class="col-md-2 col-sm-6">

								<!-- - - - - - - - - - - - - - Extras widget - - - - - - - - - - - - - - - - -->

								<section class="widget">

									<h4>&nbsp;</h4>

								</section><!--/ .widget-->

								<!-- - - - - - - - - - - - - - End of extras widget - - - - - - - - - - - - - - - - -->

							</div><!--/ [col]-->

							<div class="col-md-2 col-sm-6">

								<!-- - - - - - - - - - - - - - My account widget - - - - - - - - - - - - - - - - -->

								<section class="widget">

									<h4>My Account</h4>

									<ul class="list_of_links">

										<li><a href="#">My Account</a></li>
										<li><a href="#">Order History</a></li>
										

									</ul>

								</section><!--/ .widget-->

								<!-- - - - - - - - - - - - - - End my account widget - - - - - - - - - - - - - - - - -->

							</div>

							<div class="col-md-3 col-sm-6">

								<!-- - - - - - - - - - - - - - Blog widget - - - - - - - - - - - - - - - - -->

								<section class="widget">

									<h4><!--/ .clearfix-->								    </h4>
									<ul class="list_of_entries">

										<!-- - - - - - - - - - - - - - End of entry - - - - - - - - - - - - - - - - -->

									</ul>

								</section><!--/ .widget-->

								<!-- - - - - - - - - - - - - - End of blog widget - - - - - - - - - - - - - - - - -->

							</div><!--/ [col]-->

						</div><!--/ .row-->

					</div><!--/ .container -->

				</div><!--/ .footer_section_2-->

				<!-- - - - - - - - - - - - - - End footer section- - - - - - - - - - - - - - - - -->

				<hr>

				<!-- - - - - - - - - - - - - - Footer section - - - - - - - - - - - - - - - - -->

				<div class="footer_section_3 align_center">

					<div class="container">

						<!-- - - - - - - - - - - - - - Payments - - - - - - - - - - - - - - - - -->

						<ul class="payments">

							<li><img src="../images/payment_1.png" alt=""></li>
							<li><img src="../images/payment_2.png" alt=""></li>
							<li><img src="../images/payment_3.png" alt=""></li>
							<li><img src="../images/payment_4.png" alt=""></li>
							<li><img src="../images/payment_5.png" alt=""></li>
							<li><img src="../images/payment_6.png" alt=""></li>
							<li><img src="../images/payment_7.png" alt=""></li>
							<li><img src="../images/payment_8.png" alt=""></li>

						</ul>
						
						<!-- - - - - - - - - - - - - - End of payments - - - - - - - - - - - - - - - - -->

						<!-- - - - - - - - - - - - - - Footer navigation - - - - - - - - - - - - - - - - -->

						<nav class="footer_nav">

							<ul class="bottombar">

								<li><a href="#">Home</a></li>
								<li><a href="#">About us</a></li>
								<li><a href="#">Contact us</a></li>
								<li><a href="#">Privacy Policy</a></li>
								<li><a href="#">Terms &amp; Conditions</a></li>
								<li></li>

							</ul>

						</nav>
						
						<!-- - - - - - - - - - - - - - End of footer navigation - - - - - - - - - - - - - - - - -->

						<p class="copyright">&copy; 2016 WICare. All Rights Reserved.</p>

					</div><!--/ .container -->

				</div><!--/ .footer_section-->

				<!-- - - - - - - - - - - - - - End footer section - - - - - - - - - - - - - - - - -->

			</footer>
			
			<!-- - - - - - - - - - - - - - End Footer - - - - - - - - - - - - - - - - -->

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

						<iframe src="http://www.facebook.com/plugins/likebox.php?href=http%3A%2F%2Fwww.facebook.com%2Fthemeforest&amp;width=235&amp;height=345&amp;colorscheme=light&amp;show_faces=true&amp;header=false&amp;stream=false&amp;show_border=false&amp;appId=438889712801266" style="border:none; overflow:hidden; width:235px; height:345px;"></iframe>

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

							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11658.462684975322!2d-89.39002218706464!3d43.07055011641937!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb4322e72044efadb!2s433+W+Washington+Ave%2C+Madison%2C+WI+53703!5e0!3m2!1sen!2sus!4v1456246575135" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

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