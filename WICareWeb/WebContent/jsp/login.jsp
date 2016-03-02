<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
		<!-- Basic page needs
		============================================ -->
		<title>WICare | Login</title>
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

		<!-- Old IE stylesheet
		============================================ -->
		<!--[if lte IE 9]>
			<link rel="stylesheet" type="text/css" href="css/oldie.css">
		<![endif]-->
	</head>
	<body>

		<!-- - - - - - - - - - - - - - Main Wrapper - - - - - - - - - - - - - - - - -->

		<div class="wide_layout">

		<jsp:include page="/inc/header.jsp" />

			<!-- - - - - - - - - - - - - - Page Wrapper - - - - - - - - - - - - - - - - -->

			<div class="secondary_page_wrapper">

				<div class="container">

	
					<div class="row"><!--/ [col]-->

						<main class="col-md-9 col-sm-8">

						  <h1>Login </h1><!--/ .theme_box -->

							<!-- - - - - - - - - - - - - - Contact information - - - - - - - - - - - - - - - - -->
						  <p><!--/ .theme_box --></p>
						  <div class="relative">
						    <div class="table_layout">

								<div class="table_row"><!--/ .table_cell -->

									<div class="table_cell">

										<section>

											<h4></h4>

											<p class="subcaption">Already registered? Please log in below:</p>

											<form id="login_form" action="${pageContext.request.contextPath}/login.do" method="post" id="login" class="type_2">
												<input type="hidden" id="action" name="action" value="login">
												 <div style="color: #FF0000;">${errorMessage}</div>
												<ul>

													<li class="row">

														<div class="col-xs-6">

															<label for="inputEmail" class="required">Email address</label>
															<input type="email" id="inputEmail" name="username" required>

														</div>

													</li>

													<li class="row">

														<div class="col-xs-6">

															<label for="inputPassword" class="required">Password</label>
															<input type="password" name="password" id="inputPassword" required>

														</div>

													</li>

													<li class="row">

														<div class="col-xs-12">

															<div class="on_the_sides">

																<div class="left_side">

																	<a href="#" class="small_link">Forgot your password?</a>

																</div>

																<div class="right_side">

																	<span class="prompt">Required Fields</span>

																</div>

															</div>

														</div>

													</li>

												</ul>

											</form>

										</section>

								  </div><!--/ .table_cell -->

							  </div><!--/ .table_row -->

								<div class="table_row"><!--/ .table_cell -->

									<div class="table_cell">

										<div class="on_the_sides login_with">

											<div class="left_side">

												<button type="submit" form="login_form" class="button_blue middle_btn">Login</button>
                                                <a href = "${pageContext.request.contextPath}/jsp/register_page.jsp" class="button_blue middle_btn" href="register_page.jsp">Create account</a>

											</div>

											<div class="right_side v_centered">

												<h4>OR Log In With</h4>

												<ul class="horizontal_list social_btns">

													<li><a href="#" class="icon_btn middle_btn social_facebook tooltip_container"><i class="icon-facebook-1"></i><span class="tooltip top">Facebook</span></a></li>

													<li><a href="#" class="icon_btn middle_btn social_twitter tooltip_container"><i class="icon-twitter"></i><span class="tooltip top">Twitter</span></a></li>

													<li><a href="#" class="icon_btn middle_btn social_googleplus tooltip_container"><i class="icon-gplus-2"></i><span class="tooltip top">GooglePlus</span></a></li>

												</ul><!--/ .horizontal_list.social_btns-->

											</div>

										</div>

								  </div><!--/ .table_cell -->

							  </div><!--/ .table_row -->

							</div><!--/ .table_layout -->

						</div>
						  <p>
						      <!-- - - - - - - - - - - - - - End of contact information - - - - - - - - - - - - - - - - -->
							    
						      <span style="text-align: center">
					      </p>
                          
			              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
			              </p>
			              <div class="table_layout">

							  <div class="table_row"><!--/ .table_cell --><!--/ .table_cell -->

							</div><!--/ .table_row -->

								<div class="table_row"><!--/ .table_cell --><!--/ .table_cell -->

								</div><!--/ .table_row -->

						  </div><!--/ .table_layout -->

					  </main><!--/ [col]-->

				  </div><!--/ .row-->

				</div><!--/ .container-->

			</div><!--/ .page_wrapper-->
			
			<!-- - - - - - - - - - - - - - End Page Wrapper - - - - - - - - - - - - - - - - -->

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
						
						<p class="c_info_location">4303 W. washington <br>Madison, WI 53703</p>

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
		<script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
	<!--  <script src="../js/queryloader2.min.js"></script> -->
		<script src="${pageContext.request.contextPath}/js/jquery.appear.js"></script>
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