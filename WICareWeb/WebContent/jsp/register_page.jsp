<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="en">

	<head>
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

		<!-- Old IE stylesheet
		============================================ -->
		<!--[if lte IE 9]>
			<link rel="stylesheet" type="text/css" href="css/oldie.css">
		<![endif]-->
		
	    <script type="text/javascript">
	   
	    function validateForm(){
    	
		  var firstName = document.getElementById("first_name");			  
		   if(firstName.value == null || firstName.value == "") {
		  		alert("First Name is required...");
		  		return false;
		  	} 
		   
		   var lastName = document.getElementById("last_name");			  
		   if(lastName.value == null || lastName.value == "") {
		  		alert("Last Name is required...");
		  		return false;
		  	}
		   
		   var email = document.getElementById("email");			  
		   if(email.value == null || email.value == "") {
		  		alert("Email is required...");
		  		return false;
		  	}
		   
		   var addressline1 = document.getElementById("addressline1");			  
		   if(addressline1.value == null || addressline1.value == "") {
		  		alert("Address Line1 is required...");
		  		return false;
		  	}
		   
		   var addressline2 = document.getElementById("addressline2");			  
		   if(addressline2.value == null || addressline2.value == "") {
		  		alert("Address Line2 is required...");
		  		return false;
		  	}
		   
		   var city = document.getElementById("city");			  
		   if(city.value == null || city.value == "") {
		  		alert("City is required...");
		  		return false;
		  	}
		   
		   var state = document.getElementById("state");			  
		   if(state.value == null || state.value == "") {
		  		alert("State is required...");
		  		return false;
		  	}
		   
		   var zip = document.getElementById("zip");			  
		   if(zip.value == null || zip.value == "") {
		  		alert("Zip is required...");
		  		return false;
		  	}
		   
		  
		   
		   var phoneNo = document.getElementById("phoneNo");			  
		   if(phoneNo.value == null || phoneNo.value == "") {
		  		alert("Phone Number is required...");
		  		return false;
		  	}
		   
		   var password = document.getElementById("password");			  
		   if(password.value == null || password.value == "") {
		  		alert("Password is required...");
		  		return false;
		  	}
		   
		   
		   var confirmPassword = document.getElementById("confirmPassword");			  
		   if(confirmPassword.value == null || confirmPassword.value == "") {
		  		alert("Confirm Password is required...");
		  		return false;
		  	}
		   
		   
		   if(confirmPassword.value != password.value) {
		  		alert("Password & Confirm Password should be same...");
		  		return false;
		  	}
		   
		   
		   
		   var iswic = document.getElementById("radio_1");			  
		   if(iswic.checked) {
			    var wicAccountNumber = document.getElementById("wicacctno");
			    if(wicAccountNumber.value == null || wicAccountNumber.value == "") {
			    	alert("Wic Account Number is required...");
			    	return false;
			    }		  		
		  		
		  	}
		  
		   
	       
	       return true;
	    }
	    
	    
	    function enableDisableWicAccountNumber() {
			   
			   var iswic = document.getElementById("radio_1");	
			   if(!iswic.checked) {
				   var wicAccountNumber = document.getElementById("wicacctno");
				   wicAccountNumber.value = null;
				   document.getElementById("wicacctno").readOnly  = true;
			   }else{
				   document.getElementById("wicacctno").readOnly   = document.getElementById("phoneNo").readOnly;
			   }
			   
		   }
	    
		</script>
		
	</head>
	<body onload="enableDisableWicAccountNumber();">

		<!-- - - - - - - - - - - - - - Main Wrapper - - - - - - - - - - - - - - - - -->

		<div class="wide_layout">

			<jsp:include page="/inc/header.jsp"></jsp:include>

			<!-- - - - - - - - - - - - - - Page Wrapper - - - - - - - - - - - - - - - - -->

			<div class="secondary_page_wrapper">

				<div class="container">

					

					<div class="row"><!--/ [col]-->

						<main class="col-md-9 col-sm-8">

						  <h1>Register </h1><!--/ .theme_box -->

							<!-- - - - - - - - - - - - - - Contact information - - - - - - - - - - - - - - - - -->
						  <p><!--/ .theme_box --></p>
						  <section class="section_offset">

						<h3>&nbsp;</h3>

  						<div align="center" style="color: #FF0000;">${errorMessage}</div>
  									
  								
						  		
						  		
  									
						<div class="theme_box">
											

							<form class="type_2" action="${pageContext.request.contextPath}/register.do" method="post" id="register" >
								 <input type="hidden" id="action" name="action" value="register">
								<ul>
									
									<li class="row">
										
										<div class="col-sm-6">
											
											<label for="first_name" class="required">First Name</label>
											<input type="text"  id="first_name" name = "firstName" value="${requestScope.user.firstName}" >

										</div><!--/ [col] -->

										<div class="col-sm-6">
											
											<label for="last_name" class="required">Last Name</label>
											<input type="text" id="last_name" name="lastName" value="${requestScope.user.lastName}" >

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">
										
										<div class="col-sm-6">
											
											<label for="company_name">Middle Name</label>
											<input type="text"  id="middle_name" name ="middleName" value="${requestScope.user.middleName}" >

										</div><!--/ [col] -->

										<div class="col-sm-6">
											
											<label for="email_address" class="required">Email Address</label>
											<input type="text"  id="email" name="email" value="${requestScope.user.email}">

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">	

										<div class="col-xs-12">

											<label for="address" class="required">Address 1</label>
											<input type="text"  id="addressline1" name ="addressline1" value="${requestScope.user.addressList[0].addressLine1}" >

										</div><!--/ [col] -->

									</li><!-- / .row -->

									<li class="row">

										<div class="col-xs-12">

											<label for="address" class="required">Address 2</label>
                                          <input type="text"  id="addressline2" name ="addressline2" value="${requestScope.user.addressList[0].addressLine2}">

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">

										<div class="col-sm-6">
											
											<label for="city" class="required">City</label>
											<input type="text"  id="city" name="city" value="${requestScope.user.addressList[0].city}" >

										</div><!--/ [col] -->

										<div class="col-sm-6">

											<label class="required">State/Province</label>

											<input type="text"  id="state" name="state" value="${requestScope.user.addressList[0].state}">

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">

										<div class="col-sm-6">

											<label for="postal_code" class="required">Zip/Postal Code</label>
											<input type="text"  id="zip" name="zip" value="${requestScope.user.addressList[0].zip}">

										</div><!--/ [col] -->

										<div class="col-sm-6">

											<label class="required">Country</label>

											<div class="custom_select">

												<select name="country" >
													
													<option value="USA">USA</option>
													

												</select>

											</div>

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">

										<div class="col-sm-6">

											<label for="telephone" class="required">Telephone</label>
											<input type="text"  id="phoneNo" name="phoneNo" value="${requestScope.user.addressList[0].phoneNo}">

										</div><!--/ [col] -->

										
									</li><!--/ .row -->

									<li class="row">

										<div class="col-sm-6">

											<label for="password" class="required">Password</label>
											<input type="password"  id="password" name="password">

										</div><!--/ [col] -->

										<div class="col-sm-6">

											<label for="confirm" class="required">Confirm Password</label>
											<input type="password" id="confirmPassword" name="confirmPassword">

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">

									  <div class="col-xs-6">
										<input type="radio" id="radio_1" name="iswic" value="true" onclick="javascript:enableDisableWicAccountNumber();" <c:if test="${requestScope.user.WIC eq true}">CHECKED</c:if> >
										<label for="radio_1">WIC Member</label>
									  </div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">

									  <div class="col-xs-6">
											<input type="radio" name="iswic" id="radio_2" value ="false" onclick="javascript:enableDisableWicAccountNumber();" <c:if test="${requestScope.user.WIC eq false or requestScope.user == null }">CHECKED</c:if> >
											<label for="radio_2">Non-WIC Member</label>

									  </div>
									</li>
									<li class="row">
									  <div class="col-sm-6">
									    <label for="fax4">WIC Account #</label>
									    <input type="text" name="wicacctno" id="wicacctno" value="${requestScope.user.wicAcctNo}">
								      </div>
									</li>
									<li class="row"> </li>
									<!--/ .row -->

								</ul>
								
						<footer class="bottom_box on_the_sides">

							<div class="left_side">

                                  <button class='button_blue middle_btn' type='submit'>Register</button>
								<!-- <a href="#" class="button_blue middle_btn">Register</a> -->

							</div>

							<div class="right_side">

								<span class="prompt">Required Fields</span>

							</div>

						</footer>

							</form>

						</div>

					

					</section>
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
		<script src="${pageContext.request.contextPath}/js/queryloader2.min.js"></script>
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