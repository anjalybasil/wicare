
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
	<body class="front_page promo_popup">

		
		

		<!-- - - - - - - - - - - - - - Main Wrapper - - - - - - - - - - - - - - - - -->

		<div class="wide_layout">

		<jsp:include page="/inc/header.jsp"/>

			<!-- - - - - - - - - - - - - - Page Wrapper - - - - - - - - - - - - - - - - -->

			<div class="page_wrapper">

				<div class="container">

					<div class="row">

						<!-- - - - - - - - - - - - - - Banners - - - - - - - - - - - - - - - - -->

						<aside class="col-md-3 col-sm-4 has_mega_menu">

							<!-- - - - - - - - - - - - - - Today's deals - - - - - - - - - - - - - - - - -->

							<section class="section_offset animated transparent" data-animation="fadeInDown">
								
								<h3 class="widget_title" >Best Sellers</h3>
								

								<!-- - - - - - - - - - - - - - Carousel of today's deals - - - - - - - - - - - - - - - - -->

								<div class="owl_carousel widgets_carousel" >

									<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

									<div class="product_item">

										<!-- - - - - - - - - - - - - - Thumbnail - - - - - - - - - - - - - - - - -->

										<div class="image_wrap" >

											<img src="${pageContext.request.contextPath}/images/tomato.png" alt="">

											<!-- - - - - - - - - - - - - - Product actions - - - - - - - - - - - - - - - - -->
										
									
											<div class="actions_wrap">

												<div class="centered_buttons">
													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>
													
												</div><!--/ .centered_buttons -->

											</div><!--/ .actions_wrap-->
											
											
										
											
											<!-- - - - - - - - - - - - - - End of product actions - - - - - - - - - - - - - - - - -->

										</div><!--/. image_wrap-->

										<!-- - - - - - - - - - - - - - End thumbnail - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

										<div class="label_offer percentage">

											<div>30%</div>OFF

										</div>

										<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Countdown - - - - - - - - - - - - - - - - -->

										<div class="countdown" data-year="2016" data-month="4" data-day="6" data-hours="15" data-minutes="0" data-seconds="0"></div>

										<!-- - - - - - - - - - - - - - End countdown - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Product description - - - - - - - - - - - - - - - - -->

										<div class="description">

											<p><a href="#">Lorem Body Wash, Original 24 fl oz</a></p>

											<div class="clearfix product_info">

												<!-- - - - - - - - - - - - - - Product rating - - - - - - - - - - - - - - - - -->

												<ul class="rating alignright">

													<li class="active"></li>
													<li class="active"></li>
													<li class="active"></li>
													<li class="active"></li>
													<li></li>

												</ul>

												<!-- - - - - - - - - - - - - - End product rating - - - - - - - - - - - - - - - - -->

												<p class="product_price alignleft"><s>$9.99</s> <b>$5.99</b></p>

											</div><!--/ .clearfix.product_info-->

										</div>

										<!-- - - - - - - - - - - - - - End of product description - - - - - - - - - - - - - - - - -->

									</div><!--/ .product_item-->
									
									<!-- - - - - - - - - - - - - - End of product - - - - - - - - - - - - - - - - -->

									<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

									<div class="product_item">

										<!-- - - - - - - - - - - - - - Thumbnail - - - - - - - - - - - - - - - - -->
										
										<div class="image_wrap">

											<img src="${pageContext.request.contextPath}/images/spinach.png" alt="">

											<!-- - - - - - - - - - - - - - Product actions - - - - - - - - - - - - - - - - -->

											<div class="actions_wrap">

												<div class="centered_buttons">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

												</div><!--/ .centered_buttons -->

										  </div><!--/ .actions_wrap-->
											
											<!-- - - - - - - - - - - - - - End of product actions - - - - - - - - - - - - - - - - -->

									  </div><!--/. image_wrap-->

										<!-- - - - - - - - - - - - - - End thumbnail - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

										<div class="label_offer percentage">

											<div>25%</div>OFF

										</div>

										<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Countdown - - - - - - - - - - - - - - - - -->

										<div class="countdown" data-year="2016" data-month="3" data-day="9" data-hours="10" data-minutes="30" data-seconds="30"></div>

										<!-- - - - - - - - - - - - - - End countdown - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Product description - - - - - - - - - - - - - - - - -->

										<div class="description">

											<p><a href="#">Ipsum with Ultra Dolor, Size 4 Diapers 29 ea</a></p>

											<div class="clearfix product_info">

												<!-- - - - - - - - - - - - - - Product rating - - - - - - - - - - - - - - - - -->

												<ul class="rating alignright">

													<li class="active"></li>
													<li class="active"></li>
													<li class="active"></li>
													<li class="active"></li>
													<li class="active"></li>

												</ul>

												<!-- - - - - - - - - - - - - - End product rating - - - - - - - - - - - - - - - - -->

												<p class="product_price alignleft"><s>$16.99</s> <b>$14.99</b></p>

											</div><!--/ .clearfix.product_info-->

										</div>

										<!-- - - - - - - - - - - - - - End of product description - - - - - - - - - - - - - - - - -->

									</div><!--/ .product_item-->
									
									<!-- - - - - - - - - - - - - - End of product - - - - - - - - - - - - - - - - -->

									<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

									<div class="product_item">

										<!-- - - - - - - - - - - - - - Thumbnail - - - - - - - - - - - - - - - - -->
										
										<div class="image_wrap">

											<img src="${pageContext.request.contextPath}/images/spinach.png" alt="">

											<!-- - - - - - - - - - - - - - Product actions - - - - - - - - - - - - - - - - -->

											<div class="actions_wrap">

												<div class="centered_buttons">		

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

												</div><!--/ .centered_buttons -->

											</div><!--/ .actions_wrap-->
											
											<!-- - - - - - - - - - - - - - End of product actions - - - - - - - - - - - - - - - - -->

										</div><!--/. image_wrap-->

										<!-- - - - - - - - - - - - - - End thumbnail - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

										<div class="label_offer percentage">

											<div>40%</div>OFF

										</div>

										<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Countdown - - - - - - - - - - - - - - - - -->

										<div class="countdown" data-year="2016" data-month="3" data-day="9" data-hours="10" data-minutes="30" data-seconds="30"></div>

										<!-- - - - - - - - - - - - - - End countdown - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Product description - - - - - - - - - - - - - - - - -->

										<div class="description">

											<p><a href="#">Ut  Tellus Dolor, Dapibus Eget, 1000mg, Tablets, 120 ea</a></p>

											<div class="clearfix product_info">

											  <p class="product_price alignleft"><s>$103.99</s> <b>$73.99</b></p>

											</div><!--/ .clearfix.product_info-->

										</div>

										<!-- - - - - - - - - - - - - - End of product description - - - - - - - - - - - - - - - - -->

									</div><!--/ .product_item-->
									
									<!-- - - - - - - - - - - - - - End of product - - - - - - - - - - - - - - - - -->

									<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

									<div class="product_item">

										<!-- - - - - - - - - - - - - - Thumbnail - - - - - - - - - - - - - - - - -->
										
										<div class="image_wrap">

											<img src="${pageContext.request.contextPath}/images/green_beens.jpg" alt="">

											<!-- - - - - - - - - - - - - - Product actions - - - - - - - - - - - - - - - - -->

											<div class="actions_wrap">

												<div class="centered_buttons">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

												</div><!--/ .centered_buttons -->
											</div><!--/ .actions_wrap-->
											
											<!-- - - - - - - - - - - - - - End of product actions - - - - - - - - - - - - - - - - -->

										</div><!--/. image_wrap-->

										<!-- - - - - - - - - - - - - - End thumbnail - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

										<div class="label_offer percentage">

											<div>15%</div>OFF

										</div>

										<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Countdown - - - - - - - - - - - - - - - - -->

										<div class="countdown" data-year="2016" data-month="4" data-day="11" data-hours="18" data-minutes="40" data-seconds="40"></div>

										<!-- - - - - - - - - - - - - - End countdown - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Product description - - - - - - - - - - - - - - - - -->

										<div class="description">

											<p><a href="#">Nulla  Facilisi Aenean Nec Eros Vestibulum, Deep Cleansing 1 each</a></p>

											<div class="clearfix product_info">

												<!-- - - - - - - - - - - - - - Product rating - - - - - - - - - - - - - - - - -->

											  <ul class="rating alignright">

													<li class="active"></li>
													<li class="active"></li>
													<li class="active"></li>
													<li></li>
													<li></li>

												</ul>

												<!-- - - - - - - - - - - - - - End product rating - - - - - - - - - - - - - - - - -->

												<p class="product_price alignleft"><s>$5.99</s> <b>$2.99</b></p>

											</div><!--/ .clearfix.product_info-->

										</div>

										<!-- - - - - - - - - - - - - - End of product description - - - - - - - - - - - - - - - - -->

									</div><!--/ .product_item-->
									
									<!-- - - - - - - - - - - - - - End of product - - - - - - - - - - - - - - - - -->

									<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

									<div class="product_item">

										<!-- - - - - - - - - - - - - - Thumbnail - - - - - - - - - - - - - - - - -->
										
										<div class="image_wrap">

											<img src="${pageContext.request.contextPath}/images/mesh1.png" alt="">

											<!-- - - - - - - - - - - - - - Product actions - - - - - - - - - - - - - - - - -->

											<div class="actions_wrap">

												<div class="centered_buttons">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

												</div><!--/ .centered_buttons -->

											</div><!--/ .actions_wrap-->
											
											<!-- - - - - - - - - - - - - - End of product actions - - - - - - - - - - - - - - - - -->

										</div><!--/. image_wrap-->

										<!-- - - - - - - - - - - - - - End thumbnail - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

										<div class="label_offer percentage">

											<div>50%</div>OFF

										</div>

										<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Countdown - - - - - - - - - - - - - - - - -->

										<div class="countdown" data-year="2016" data-month="3" data-day="16" data-hours="11" data-minutes="10" data-seconds="10"></div>

										<!-- - - - - - - - - - - - - - End countdown - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Product description - - - - - - - - - - - - - - - - -->

										<div class="description">

											<p><a href="#">Nam  Elit Agna Endrerit Sit Amet, Chocolate Milk 4 ea</a></p>

											<div class="clearfix product_info">

											  <p class="product_price alignleft"><s>$19.99</s> <b>$13.99</b></p>

											</div><!--/ .clearfix.product_info-->

										</div>

										<!-- - - - - - - - - - - - - - End of product description - - - - - - - - - - - - - - - - -->

									</div><!--/ .product_item-->
									
									<!-- - - - - - - - - - - - - - End of product - - - - - - - - - - - - - - - - -->

								</div><!--/ .widgets_carousel-->

								<!-- - - - - - - - - - - - - - End of carousel of today's deals - - - - - - - - - - - - - - - - -->

								<!-- - - - - - - - - - - - - - View all deals of the day - - - - - - - - - - - - - - - - -->

								<!-- - - - - - - - - - - - - - End of view all deals of the day - - - - - - - - - - - - - - - - -->

							</section><!--/ .section_offset.animated.transparent-->

							<!-- - - - - - - - - - - - - - End of today's deals - - - - - - - - - - - - - - - - -->

							<!-- - - - - - - - - - - - - - Categories - - - - - - - - - - - - - - - - -->

							<section class="section_offset animated transparent" data-animation="fadeInDown">

								<h3>Categories</h3>

								<ul class="theme_menu cats">

									<li class="has_megamenu">

										<a href="${pageContext.request.contextPath}/category.do?action=fruit">Fruits</a>

										<!-- - - - - - - - - - - - - - Mega menu - - - - - - - - - - - - - - - - -->

										<!--/ .mega_menu-->

										<!-- - - - - - - - - - - - - - End of mega menu - - - - - - - - - - - - - - - - -->

									</li>
									<li class="has_megamenu">

										<a href="${pageContext.request.contextPath}/category.do?action=vegetable">Vegetables</a>

										<!-- - - - - - - - - - - - - - Mega menu - - - - - - - - - - - - - - - - -->

										<!--/ .mega_menu-->

										<!-- - - - - - - - - - - - - - End of mega menu - - - - - - - - - - - - - - - - -->

									</li>
									<li class="has_megamenu">

										<a href="${pageContext.request.contextPath}/category.do?action=meat">Meat</a>

										<!-- - - - - - - - - - - - - - Mega menu - - - - - - - - - - - - - - - - -->

										<!--/ .mega_menu-->

										<!-- - - - - - - - - - - - - - End of mega menu - - - - - - - - - - - - - - - - -->

									</li>
									<li class="has_megamenu">

										<a href="${pageContext.request.contextPath}/category.do?action=egg">Egg</a>

										<!-- - - - - - - - - - - - - - Mega menu - - - - - - - - - - - - - - - - -->

										<!--/ .mega_menu-->

										<!-- - - - - - - - - - - - - - End of mega menu - - - - - - - - - - - - - - - - -->

									</li>
									<li class="has_megamenu"><a href="${pageContext.request.contextPath}/category.do?action=bread">Bread</a></li>
									<li class="has_megamenu"><a href="${pageContext.request.contextPath}/category.do?action=dairy">Dairy</a></li>
                                    <li class="has_megamenu"><a href="${pageContext.request.contextPath}/category.do?action=pasta">Pasta</a></li>
                                    <li class="has_megamenu"><a href="${pageContext.request.contextPath}/category.do?action=rice">Rice</a></li>
                                    <li class="has_megamenu"><a href="${pageContext.request.contextPath}/category.do?action=oil">Oil</a></li>
                                    <li class="has_megamenu"><a href="${pageContext.request.contextPath}/category.do?action=snack">Snacks</a></li>
                                    <li class="has_megamenu"><a href="${pageContext.request.contextPath}/category.do?action=beverage">Beverage</a></li>
								</ul>

							</section><!--/ .animated.transparent-->

							<!-- - - - - - - - - - - - - - End of categories - - - - - - - - - - - - - - - - -->

							<!-- - - - - - - - - - - - - - Banner - - - - - - - - - - - - - - - - -->

							<div class="section_offset animated transparent" data-animation="fadeInDown"></div>

							<!-- - - - - - - - - - - - - - End of banner - - - - - - - - - - - - - - - - -->

							<!-- - - - - - - - - - - - - - Testimonials - - - - - - - - - - - - - - - - -->

							<section class="section_offset animated transparent" data-animation="fadeInDown"> <!-- - - - - - - - - - - - - - Carousel of testimonials - - - - - - - - - - - - - - - - -->								<!--/ .widgets_carousel-->

								<!-- - - - - - - - - - - - - - End of carousel of testimonials - - - - - - - - - - - - - - - - -->

								<!-- - - - - - - - - - - - - - View all testimonials - - - - - - - - - - - - - - - - -->
								<!-- - - - - - - - - - - - - - End of view all testimonials - - - - - - - - - - - - - - - - -->

							</section><!--/ .section_offset.animated.transparent-->

							<!-- - - - - - - - - - - - - - End of testimonials - - - - - - - - - - - - - - - - -->

							<!-- - - - - - - - - - - - - - Bestseller Products - - - - - - - - - - - - - - - - --><!-- - - - - - - - - - - - - - End of Bestseller Products - - - - - - - - - - - - - - - - -->

							<!-- - - - - - - - - - - - - - Banner - - - - - - - - - - - - - - - - --><!-- - - - - - - - - - - - - - End of banner - - - - - - - - - - - - - - - - -->

							<!-- - - - - - - - - - - - - - On Sale Products - - - - - - - - - - - - - - - - --><!-- - - - - - - - - - - - - - End of On Sale Products - - - - - - - - - - - - - - - - -->

							<!-- - - - - - - - - - - - - - Sign Up to Our Newsletter - - - - - - - - - - - - - - - - --><!-- - - - - - - - - - - - - - End of Sign Up to Our Newsletter - - - - - - - - - - - - - - - - -->

						</aside><!--/ [col]-->

						<!-- - - - - - - - - - - - - - End of banners - - - - - - - - - - - - - - - - -->

						<!-- - - - - - - - - - - - - - Main slider - - - - - - - - - - - - - - - - -->

						<main class="col-md-9 col-sm-8">

							<div class="section_offset animated transparent" data-animation="fadeInDown">
							
								<!-- - - - - - - - - - - - - - Revolution slider - - - - - - - - - - - - - - - - -->

								<div class="revolution_slider">

									<div class="rev_slider">

										<ul>

											<!-- - - - - - - - - - - - - - Slide 1 - - - - - - - - - - - - - - - - -->

											<li data-transition="papercut" data-slotamount="7">
												
												<img src="${pageContext.request.contextPath}/images/home_slide_4.jpg" alt="">

												<div class="caption sfl stl layer_1" data-x="left" data-hoffset="60" data-y="90" data-easing="easeOutBack" data-speed="600" data-start="900">Best Quality</div>

											  <div class="caption sfl stl layer_2" data-x="left" data-y="138" data-hoffset="60" data-easing="easeOutBack" data-speed="600" data-start="1000"></div>

												<div class="caption sfl stl layer_3" data-x="left" data-y="190" data-hoffset="60" data-easing="easeOutBack" data-speed="600" data-start="1100">at Low Prices</div>

												<div class="caption sfb stb" data-x="left" data-y="245" data-hoffset="60" data-easing="easeOutBack" data-speed="700" data-start="1100">
													<a href="${pageContext.request.contextPath}/category.do?action=print_all_food\" class="button_blue big_btn">Shop Now!</a>
												</div>

											</li>

											<!-- - - - - - - - - - - - - - End of Slide 1 - - - - - - - - - - - - - - - - -->

											<!-- - - - - - - - - - - - - - Slide 2 - - - - - - - - - - - - - - - - -->

											<li data-transition="papercut" data-slotamount="7" class="align_center">
												
												<img src="${pageContext.request.contextPath}/images/elder-hands-care.jpg" alt="">

												<div class="caption sfl stl layer_5" data-x="center" data-y="77" data-easing="easeOutBack" data-speed="600" data-start="900">Have A Question?</div>

												<div class="caption sfl stl layer_6" data-x="center" data-y="135" data-easing="easeOutBack" data-speed="600" data-start="1050"><small>Our</small> 
                                                Teams<br><small>Are</small> Ready <small>to</small> Help You!</div>

												<div class="caption sfb stb" data-x="center" data-y="260" data-easing="easeOutBack" data-speed="700" data-start="1150">
													<a href="jsp/Contact_us.html" class="button_blue big_btn">Contact Us Now!</a>
												</div>

											</li>

											<!-- - - - - - - - - - - - - - End of Slide 2 - - - - - - - - - - - - - - - - -->

											<!-- - - - - - - - - - - - - - Slide 3 - - - - - - - - - - - - - - - - -->

											<li data-transition="papercut" data-slotamount="7">
												
												<img src="${pageContext.request.contextPath}/images/we_care12.jpg" alt="">

												<div class="caption sfl stl layer_8" data-x="right" data-y="73" data-hoffset="-60" data-easing="easeOutBack" data-speed="600" data-start="900"></div>

												<div class="caption sfl stl layer_9" data-x="right" data-y="122" data-hoffset="-60" data-easing="easeOutBack" data-speed="600" data-start="1000"></div>

												<div class="caption sfl stl layer_10" data-x="right" data-y="178" data-hoffset="-60" data-easing="easeOutBack" data-speed="600" data-start="1100"></div>

												<div class="caption sfb stb" data-x="right" data-hoffset="-60" data-y="262" data-easing="easeOutBack" data-speed="700" data-start="1150">
													<!--<a href="#" class="button_blue big_btn">Read More</a>-->
												</div>

											</li>

											<!-- - - - - - - - - - - - - - End of Slide 3 - - - - - - - - - - - - - - - - -->

										</ul>

									</div><!--/ .rev_slider-->

								</div><!--/ .revolution_slider-->
								
								<!-- - - - - - - - - - - - - - End of Revolution slider - - - - - - - - - - - - - - - - -->

							</div><!--/ .section_offset -->

							<!-- - - - - - - - - - - - - - Banners - - - - - - - - - - - - - - - - -->

							<div class="section_offset">

								<div class="row">

									<div class="col-sm-6"></div><!--/ [col]-->

									<div class="col-sm-6"></div><!--/ [col]-->

								</div><!--/ .row-->

							</div><!--/ .section_offset-->

							<!-- - - - - - - - - - - - - - End of banners - - - - - - - - - - - - - - - - -->

							<!-- - - - - - - - - - - - - - Medicine & Health - - - - - - - - - - - - - - - - -->

							<section class="section_offset animated transparent" data-animation="fadeInDown">

								<h3>WICare Categories</h3>

								<!-- - - - - - - - - - - - - - Tabs - - - - - - - - - - - - - - - - -->

								<div class="tabs type_2 products">

									<!-- - - - - - - - - - - - - - Navigation of tabs - - - - - - - - - - - - - - - - -->

									<ul class="tabs_nav clearfix">

										<li><a href="#tab-1">Fruits &amp; Vegetables</a></li>
										<li><a href="#tab-2">Proteins</a></li>
										<li><a href="#tab-3">Dairy</a></li>
										<li><a href="#tab-4">Grains</a></li>
										<li><a href="#tab-5">Others</a></li>

									</ul>
									
									<!-- - - - - - - - - - - - - - End navigation of tabs - - - - - - - - - - - - - - - - -->

									<!-- - - - - - - - - - - - - - Tabs container - - - - - - - - - - - - - - - - -->

									<div class="tab_containers_wrap">

										<div id="tab-1" class="tab_container">

											<!-- - - - - - - - - - - - - - Carousel of featured products - - - - - - - - - - - - - - - - -->

											<div class="owl_carousel carousel_in_tabs">
											 <c:forEach var="food" items="${foodList.food}" />
												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/spinach.png" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

													<div class="label_new">New</div>

													<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Lorem Ipsum Dolor Sit Amet Consectetuer 750mg, Softgels 120 ea</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>

													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/mesh1.png" alt="">

														
													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Ut Tellus Dolor Dapibus Eget 30</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

															<!-- - - - - - - - - - - - - - Product rating - - - - - - - - - - - - - - - - -->

															<ul class="rating alignright">

																<li class="active"></li>
																<li class="active"></li>
																<li class="active"></li>
																<li class="active"></li>
																<li></li>

															</ul>
															
															<!-- - - - - - - - - - - - - - End of product rating - - - - - - - - - - - - - - - - -->

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>
													

													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/potato.png" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

													<div class="label_hot">Hot</div>

													<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Lorem Ipsum Dolor Sit Consectetuer Adipiscing 15, middle_btn 2.5 fl oz (75ml)</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>
													
													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/tomato.png" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

													<div class="label_new">New</div>

													<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Lorem Ipsum Dolor Sit Amet Consectetuer 750mg, Softgels 120 ea</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>
													
													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

											</div><!--/ .sh_container-->
											
											<!-- - - - - - - - - - - - - - End of carousel of featured products - - - - - - - - - - - - - - - - -->

											<!-- - - - - - - - - - - - - - View all - - - - - - - - - - - - - - - - -->

											<footer class="bottom_box">

												<a href="${pageContext.request.contextPath}/category.do?action=print_all_food" class="button_grey middle_btn">View All Products</a>

											</footer>

											<!-- - - - - - - - - - - - - - End of view all - - - - - - - - - - - - - - - - -->

										</div><!--/ #tab-1-->

										<div id="tab-2" class="tab_container">

											<!-- - - - - - - - - - - - - - Carousel of bestsellers - - - - - - - - - - - - - - - - -->

											<div class="owl_carousel carousel_in_tabs">
												
												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/deals_img_1.jpg" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

													<div class="label_new">New</div>

													<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Aenean Auctor Wisi Et Urna 750mg, Softgels 120 ea</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>

													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/tabs_img_2.jpg" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Aenean Auctor Wisi Et Urna 30</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

															<!-- - - - - - - - - - - - - - Product rating - - - - - - - - - - - - - - - - -->

															<ul class="rating alignright">

																<li class="active"></li>
																<li class="active"></li>
																<li class="active"></li>
																<li class="active"></li>
																<li></li>

															</ul>
															
															<!-- - - - - - - - - - - - - - End of product rating - - - - - - - - - - - - - - - - -->

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>

													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/tabs_img_3.jpg" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

													<div class="label_hot">Hot</div>

													<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Lorem Ipsum Dolor Amet Consectetuer Adipiscing 15, middle_btn 2.5 fl oz (75ml)</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>

													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/tabs_img_1.jpg" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

													<div class="label_new">New</div>

													<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Ut Tellus Dolor Dapibus Eget 750mg, Softgels 120 ea</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>

													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

											</div><!--/ .sh_container-->

											<!-- - - - - - - - - - - - - - End of carousel of bestsellers - - - - - - - - - - - - - - - - -->

											<!-- - - - - - - - - - - - - - View all - - - - - - - - - - - - - - - - -->

											<footer class="bottom_box">

												<a href="#" class="button_grey middle_btn">View All Products</a>

											</footer>

											<!-- - - - - - - - - - - - - - End of view all - - - - - - - - - - - - - - - - -->

										</div><!--/ #tab-2-->

										<div id="tab-3" class="tab_container">

											<!-- - - - - - - - - - - - - - Carousel of hot products - - - - - - - - - - - - - - - - -->

											<div class="owl_carousel carousel_in_tabs">
												
												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/deals_img_4.jpg" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

													<div class="label_new">New</div>

													<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Mauris Fermentum Dictum Magna 750mg, Softgels 120 ea</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>

													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/deals_img_3.jpg" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Mauris Fermentum Dictum Magna 30</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

															<!-- - - - - - - - - - - - - - Product rating - - - - - - - - - - - - - - - - -->

															<ul class="rating alignright">

																<li class="active"></li>
																<li class="active"></li>
																<li class="active"></li>
																<li class="active"></li>
																<li></li>

															</ul>
															
															<!-- - - - - - - - - - - - - - End of product rating - - - - - - - - - - - - - - - - -->

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>

													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/deals_img_5.jpg" alt="">

														
													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

													<div class="label_hot">Hot</div>

													<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Lorem Ipsum Dolor Sit Amet Consectetuer, middle_btn 2.5 fl oz (75ml)</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>

													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/tabs_img_1.jpg" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

													<div class="label_new">New</div>

													<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Mauris Fermentum Dictum Magna 750mg, Softgels 180</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>

													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

											</div><!--/ .sh_container-->
											
											<!-- - - - - - - - - - - - - - End of carousel of hot products - - - - - - - - - - - - - - - - -->

											<!-- - - - - - - - - - - - - - View all - - - - - - - - - - - - - - - - -->

											<footer class="bottom_box">

												<a href="#" class="button_grey middle_btn">View All Products</a>

											</footer>

											<!-- - - - - - - - - - - - - - End of view all - - - - - - - - - - - - - - - - -->

										</div><!--/ #tab-3-->

										<div id="tab-4" class="tab_container">

											<!-- - - - - - - - - - - - - - Carousel of top rated products - - - - - - - - - - - - - - - - -->

											<div class="owl_carousel carousel_in_tabs">
												
												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/deals_img_5.jpg" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

													<div class="label_new">New</div>

													<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Mauris Fermentum Dictum Magna 750mg, Softgels 100 af</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>
													
													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/deals_img_3.jpg" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Aenean Auctor Wisi Et Urna 30</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

															<!-- - - - - - - - - - - - - - Product rating - - - - - - - - - - - - - - - - -->

															<ul class="rating alignright">

																<li class="active"></li>
																<li class="active"></li>
																<li class="active"></li>
																<li class="active"></li>
																<li></li>

															</ul>
															
															<!-- - - - - - - - - - - - - - End of product rating - - - - - - - - - - - - - - - - -->

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>

													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/deals_img_1.jpg" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

													<div class="label_hot">Hot</div>

													<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Lorem Ipsum Dolor Sit Amet Consectetuer Adipiscing, middle_btn 2.5 fl oz (75ml)</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>
													
													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/tabs_img_1.jpg" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

													<div class="label_new">New</div>

													<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Nemo Enim Ipsam Voluptatem 750mg, Softgels 120 ea</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>

													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

											</div><!--/ .sh_container-->
											
											<!-- - - - - - - - - - - - - - End of carousel of top rated products - - - - - - - - - - - - - - - - -->

											<!-- - - - - - - - - - - - - - View all - - - - - - - - - - - - - - - - -->

											<footer class="bottom_box">

												<a href="#" class="button_grey middle_btn">View All Products</a>

											</footer>

											<!-- - - - - - - - - - - - - - End of view all - - - - - - - - - - - - - - - - -->

										</div><!--/ #tab-4-->

										<div id="tab-5" class="tab_container">

											<!-- - - - - - - - - - - - - - Carousel of sale products - - - - - - - - - - - - - - - - -->

											<div class="owl_carousel carousel_in_tabs">
												
												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/tabs_img_1.png" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

													<div class="label_new">New</div>

													<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Nemo Enim Ipsam Voluptatem 750mg, Softgels 120 ea</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>

													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/tabs_img_2.png" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Nemo Enim Ipsam Voluptatem Quia 30</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

															<!-- - - - - - - - - - - - - - Product rating - - - - - - - - - - - - - - - - -->

															<ul class="rating alignright">

																<li class="active"></li>
																<li class="active"></li>
																<li class="active"></li>
																<li class="active"></li>
																<li></li>

															</ul>
															
															<!-- - - - - - - - - - - - - - End of product rating - - - - - - - - - - - - - - - - -->

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>

													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/tabs_img_4.png" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

													<div class="label_hot">Hot</div>

													<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Lorem Ipsum Dolor Sit Amet Consectetuer, middle_btn 2.5 fl oz (75ml)</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>

													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

												<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

												<div class="product_item type_2">

													<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

													<div class="image_wrap">

														<img src="${pageContext.request.contextPath}/images/green_beens.jpg" alt="">

														

													</div><!--/. image_wrap-->

													<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Label - - - - - - - - - - - - - - - - -->

													<div class="label_new">New</div>

													<!-- - - - - - - - - - - - - - End label - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

													<div class="description">

														<a href="#">Lorem Dolor Sit Amet Consectetuer 750mg, Softgels 120 ea</a>

														<div class="clearfix product_info">

															<p class="product_price alignleft"><b>$44.99</b></p>

														</div>

													</div>

													<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

													<!-- - - - - - - - - - - - - - Actions - - - - - - - - - - - - - - - - -->

													<div class="buttons_row">

													<a href="${pageContext.request.contextPath}/jsp/login.jsp" class="button_blue middle_btn add_to_cart">Add to Cart</a>

													</div>

													<!-- - - - - - - - - - - - - - End of actions - - - - - - - - - - - - - - - - -->

												</div><!--/ .product_item-->
												
												<!-- - - - - - - - - - - - - - End product - - - - - - - - - - - - - - - - -->

											</div><!--/ .sh_container-->
											
											<!-- - - - - - - - - - - - - - End of carousel of sale products - - - - - - - - - - - - - - - - -->

											<!-- - - - - - - - - - - - - - View all - - - - - - - - - - - - - - - - -->

											<footer class="bottom_box">

												<a href="#" class="button_grey middle_btn">View All Products</a>

											</footer>

											<!-- - - - - - - - - - - - - - End of view all - - - - - - - - - - - - - - - - -->

										</div><!--/ #tab-5-->

									</div>

									<!-- - - - - - - - - - - - - - End of tabs containers - - - - - - - - - - - - - - - - -->

								</div><!--/ .tabs.section_offset-->
								
								<!-- - - - - - - - - - - - - - End of tabs - - - - - - - - - - - - - - - - -->

							</section><!--/ .section_offset -->

							<!-- - - - - - - - - - - - - - End of Medicine & Health - - - - - - - - - - - - - - - - -->

							<!-- - - - - - - - - - - - - - Beauty - - - - - - - - - - - - - - - - --><!--/ .section_offset -->

							<!-- - - - - - - - - - - - - - End of Beauty - - - - - - - - - - - - - - - - -->

							<!-- - - - - - - - - - - - - - Personal Care - - - - - - - - - - - - - - - - -->

							<!--/ .section_offset -->

							<!-- - - - - - - - - - - - - - End of Personal Care - - - - - - - - - - - - - - - - -->

							<!-- - - - - - - - - - - - - - Vitamins & Supplements - - - - - - - - - - - - - - - - --><!--/ .section_offset -->

							<!-- - - - - - - - - - - - - - End of Vitamins & Supplements - - - - - - - - - - - - - - - - -->

						</main><!--/ [col]-->

						<!-- - - - - - - - - - - - - - End of main slider - - - - - - - - - - - - - - - - -->

					</div><!--/ .row-->

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
						
						<p class="c_info_location">433 W Washington Ave, Madison <br>WI 53703</p>

						<div class="proportional_frame">

							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11658.462684975322!2d-89.39002218706464!3d43.07055011641937!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb4322e72044efadb!2s433+W+Washington+Ave%2C+Madison%2C+WI+53703!5e0!3m2!1sen!2sus!4v1456246575135" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

						</div>

						<ul class="c_info_list">

							<li class="c_info_phone">(608) 283-3030</li>
							<li class="c_info_mail"><a href="mailto:#">info@WICare.com</a></li>
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
		<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/queryloader2.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.appear.js"></script>
		<script src="${pageContext.request.contextPath}/js/owlcarousel/owl.carousel.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.countdown.plugin.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.countdown.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/arcticmodal/jquery.arcticmodal.js"></script>
	<!-- 	<script src="twitter/jquery.tweet.min.js"></script> -->
		<script src="${pageContext.request.contextPath}/js/colorpicker/colorpicker.js"></script>
		<script src="${pageContext.request.contextPath}/js/retina.min.js"></script>
		<script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js"></script>

		<!-- Theme files
		============================================ -->
		<script src="${pageContext.request.contextPath}/js/theme.plugins.js"></script>
		<script src="${pageContext.request.contextPath}/js/theme.core.js"></script>
		
	</body>
</html>