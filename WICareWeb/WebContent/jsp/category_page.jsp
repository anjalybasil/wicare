<%@ page import = "java.util.*" import = "com.wicare.dto.*" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="en">
	<head>
		<!-- Basic page needs
		============================================ -->
		<title>WICare | Category Page v1</title>
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
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery-ui.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/arcticmodal/jquery.arcticmodal.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/js/owlcarousel/owl.carousel.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">

		<!-- JS Libs
		============================================ -->
		<script src="${pageContext.request.contextPath}/js/modernizr.js"></script>

		<!-- Old IE stylesheet
		============================================ -->
		<!--[if lte IE 9]>
			<link rel="stylesheet" type="text/css" href="css/oldie.css">
		<![endif]-->
	</head>
	<body>

		<!-- - - - - - - - - - - - - - Main Wrapper - - - - - - - - - - - - - - - - -->

		<div class="wide_layout">

			<jsp:include page="/inc/header.jsp"></jsp:include>
			
			<!-- - - - - - - - - - - - - - Page Wrapper - - - - - - - - - - - - - - - - -->

			<div class="secondary_page_wrapper">

				<div class="container">

					<!-- - - - - - - - - - - - - - Breadcrumbs - - - - - - - - - - - - - - - - -->

					<ul class="breadcrumbs">

						<li><a href="${pageContext.request.contextPath}/jsp/home.jsp">Home</a></li>
						<c:set var="categories" value="0" />
						<c:if test="${categories > 0 }">
						<li>Grocery</li>
						</c:if>
						<li>${foodList[0].foodCategory.name()}</li>
					</ul>

					<!-- - - - - - - - - - - - - - Related products - - - - - - - - - - - - - - - - -->				  <!--/ .section_offset-->

					<!-- - - - - - - - - - - - - - End of related products - - - - - - - - - - - - - - - - -->

					<!-- - - - - - - - - - - - - - Category description - - - - - - - - - - - - - - - - -->
					<!-- - - - - - - - - - - - - - End of category description - - - - - - - - - - - - - - - - -->

					<!-- - - - - - - - - - - - - - Filter - - - - - - - - - - - - - - - - -->
					<!-- - - - - - - - - - - - - - End of filter - - - - - - - - - - - - - - - - -->

					<!-- - - - - - - - - - - - - - Products - - - - - - - - - - - - - - - - -->

					<div class="section_offset">

						<header class="top_box on_the_sides">

							<div class="left_side clearfix v_centered">

								<!-- - - - - - - - - - - - - - Sort by - - - - - - - - - - - - - - - - -->

								<div class="v_centered">

									<span>Sort by:</span>

									<div class="custom_select sort_select">
										
										<select name="">
												
											<option value="Fruits"></option>
											<option value="Vegetables"></option>
											<option value="Meats"></option>
											<option value="Snacks"></option>

										</select>

									</div>

								</div>

								<!-- - - - - - - - - - - - - - End of sort by - - - - - - - - - - - - - - - - -->

							</div>

							<div class="right_side">

								<!-- - - - - - - - - - - - - - Product layout type - - - - - - - - - - - - - - - - -->

								<div class="layout_type buttons_row" data-table-container="#products_container">

									<a href="#" data-table-layout="grid_view" class="button_grey middle_btn icon_btn active tooltip_container"><i class="icon-th"></i><span class="tooltip top">Grid View</span></a>

									<a href="#" data-table-layout="list_view list_view_products" class="button_grey middle_btn icon_btn tooltip_container"><i class="icon-th-list"></i><span class="tooltip top">List View</span></a>

								</div>

								<!-- - - - - - - - - - - - - - End of product layout type - - - - - - - - - - - - - - - - -->

							</div>

						</header>  <!-- End of table header -->
						
						<div class="table_layout" id="products_container">

							<c:forEach var="food" items="${foodList}" varStatus="i">	
								<c:if test="${i.index mod 4 eq 0}">
      								<div class="table_row">
  								 </c:if>
								<!-- - - - - - - - - - - - - - Product - - - - - - - - - - - - - - - - -->

								<div class="table_cell">

									<div class="product_item">

										<!-- - - - - - - - - - - - - - Thumbmnail - - - - - - - - - - - - - - - - -->

										<div class="image_wrap">

											<img src="${pageContext.request.contextPath}/images/groceries/${food.imgFile}" height="200" width="200">

											<!-- - - - - - - - - - - - - - Product actions - - - - - - - - - - - - - - - - -->
		<!--  Here's where I need to pass the FoodProduct as a parameter if possible, but I Can't figure out how. -->
											<div class="actions_wrap">

												<div class="centered_buttons">

												<form action="${pageContext.request.contextPath}/shoppingcart.do" name="shoppingcartform">
													<input type="hidden" name="product" value="${food.foodID }">
													<input type="hidden" name="action" value="add_to_cart">
													<input type="submit" class="button_blue middle_btn add_to_cart" value="Add to Cart">
												
												</form>
												
												
												</div><!--/ .centered_buttons -->

											</div><!--/ .actions_wrap-->
											
											<!-- - - - - - - - - - - - - - End of product actions - - - - - - - - - - - - - - - - -->

										</div><!--/. image_wrap-->

										<!-- - - - - - - - - - - - - - End thumbmnail - - - - - - - - - - - - - - - - -->

										<!-- - - - - - - - - - - - - - Product title & price - - - - - - - - - - - - - - - - -->

										<div class="description">

											<a href="#"><c:out value='${food.foodName }' /></a>

											<div class="clearfix product_info">

												<p class="product_price alignleft">
												<b>
												<c:if test="${sessionScope.user.WIC == true}">
												<c:out value="$ ${food.wicPrice}" /></c:if>
												<c:if test="${sessionScope.user.WIC == false}">
												<c:out value="$ ${food.foodPrice}" /></c:if>
												</b>
												</p>

											</div>

										</div>

										<!-- - - - - - - - - - - - - - End of product title & price - - - - - - - - - - - - - - - - -->

										
										
									</div><!--/ .product_item-->

								</div>

								<c:if test="${(i.index+1) mod 4 eq 0 or i.last}">
        							</div>
    							</c:if>
    							
    					</c:forEach>
    							
						</div><!--/ .table_layout -->

<%-- <!-- Look up expression language syntax and make this table loop with expression languages. -->
<c:set var="i" value="${0}"/>
<c:forEach var="food" items="${foodList}">		
	
	<c:if test="${i % 4 == 0}" > 
		<tr>
	</c:if>
	
	
	<!--  Display name, price, etc -->
	<td>${food.foodName }</td>
		
	<c:if test="${(i+1) % 4 == 0 || i > 4}" > 
		</tr>
	</c:if>	
	<c:set var="i" value="${i+1}"/>
</c:forEach> --%>

				  </div>

					<!-- - - - - - - - - - - - - - End of products - - - - - - - - - - - - - - - - -->

				</div><!--/ .container-->

			<!--/ .page_wrapper-->
			
			<!-- - - - - - - - - - - - - - End Page Wrapper - - - - - - - - - - - - - - - - -->

<%-- <%
	List<FoodProduct> foodList = (List<FoodProduct>)request.getAttribute("foodList");
	for(FoodProduct f : foodList)
	{
		out.println("<tr><img src='/WICareWeb/images/" + f.getImgFile() + "' height='100' width='100'>");
		out.println("<td>" + f.getFoodName() + "</td>");
		out.println("<td>$" + f.getFoodPrice() + "</td></tr><br>");
		//To-do: add to cart button.  Doesn't leave page.  Dynamically changes the cart in the header.
		out.println("<td></td>");
	}
	
%> --%>

			

			
		<jsp:include page="/inc/footer.jsp"></jsp:include>
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

						<p class="form_caption">Lorem ipsum dolor sit amet, adipis mauris accumsan.</p>

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
		<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery-ui.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/queryloader2.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.appear.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.countdown.plugin.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/jquery.countdown.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/owlcarousel/owl.carousel.min.js"></script>
		<script src="${pageContext.request.contextPath}/twitter/jquery.tweet.min.js"></script>
		<script src="${pageContext.request.contextPath}/js/arcticmodal/jquery.arcticmodal.js"></script>
		<script src="${pageContext.request.contextPath}/js/colorpicker/colorpicker.js"></script>
		<script src="${pageContext.request.contextPath}/js/retina.min.js"></script>
		<script type="text/javascript" src="http://s7.addthis.com/js/300/addthis_widget.js"></script>

		<!-- Theme files
		============================================ -->
		<script src="${pageContext.request.contextPath}/js/theme.plugins.js"></script>
		<script src="${pageContext.request.contextPath}/js/theme.core.js"></script>
		
	</body>
</html>