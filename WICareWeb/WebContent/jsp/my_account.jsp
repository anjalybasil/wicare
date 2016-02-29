
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
  			
		  
		   
		   function toggle() {
				var ele = document.getElementById("my_account_update");
				var editbutton = document.getElementById("edit_button");
				if(ele.style.display == "block") {
			    		ele.style.display = "none";
			    		editbutton.style.display = "block";
			  	}
				else {
					ele.style.display = "block";
					editbutton.style.display = "none";
				}
				
								
				
				   document.getElementById("first_name").readOnly  = !document.getElementById("first_name").readOnly;
	               document.getElementById("last_name").readOnly   = !document.getElementById("last_name").readOnly;
	               document.getElementById("middle_name").readOnly   = !document.getElementById("middle_name").readOnly;
	               

				   document.getElementById("addressline1").readOnly  = !document.getElementById("addressline1").readOnly;
	               document.getElementById("addressline2").readOnly  = !document.getElementById("addressline2").readOnly;
	               document.getElementById("city").readOnly   = !document.getElementById("city").readOnly;
	               

				   document.getElementById("state").readOnly  = !document.getElementById("state").readOnly;
	               document.getElementById("zip").readOnly   = !document.getElementById("zip").readOnly;
	               document.getElementById("phoneNo").readOnly   = !document.getElementById("phoneNo").readOnly;
	               
	            
	               document.getElementById("wicacctno").readOnly  = !document.getElementById("wicacctno").readOnly;
	           
	               
	               
	               
	          return false;     
	               
	            
			} 
		   
		   
		   
		   function validateForm()
		    {
			   
			   
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
		
	   </script>
		
	</head>
	<body >

		<!-- - - - - - - - - - - - - - Main Wrapper - - - - - - - - - - - - - - - - -->

		<div class="wide_layout">

			<jsp:include page="/inc/header.jsp"/>

			<!-- - - - - - - - - - - - - - Page Wrapper - - - - - - - - - - - - - - - - -->

			<div class="secondary_page_wrapper">

				<div class="container">

					

					<div class="row">

					  <aside class="col-md-3 col-sm-4">

							<!-- - - - - - - - - - - - - - Information - - - - - - - - - - - - - - - - -->

							<section class="section_offset">

								<h3>My Account</h3>

								<ul class="theme_menu">

									
									
									  <li class="active"><a href='javascript:document.myaccountform.submit()' >Account Dashboard</a></li>
													
												 
								<!-- 	<li class="active"><a href="#">Change Password</a></li>		 -->	 
									
									<li><a href="#">Account Information</a></li>
									
									
									<li><a href="#">My Orders</a></li>
	<!-- 								<li><a href="url_to_delete" onclick="return confirm('Are you sure you want to delete your Account?')">Delete Account</a></li>
 -->									

								</ul>

							</section><!--/ .section_offset -->

							<!-- - - - - - - - - - - - - - End of information - - - - - - - - - - - - - - - - -->

							<!-- - - - - - - - - - - - - - Banner - - - - - - - - - - - - - - - - -->

							<div class="section_offset">

								<a href="#" class="banner">
									
								</a>

							</div>

							<!-- - - - - - - - - - - - - - End of banner - - - - - - - - - - - - - - - - -->

						</aside><!--/ [col]-->

						<main class="col-md-9 col-sm-8">

							<h1>My Dashboard</h1>

							<section class="theme_box">

								<h4>Hello, ${sessionScope.user.firstName} !</h4>

								<p>&nbsp;</p>

							</section><!--/ .theme_box -->

							<!-- - - - - - - - - - - - - - Contact information - - - - - - - - - - - - - - - - -->
						  <p><!--/ .theme_box --></p>
						  <div class="theme_box" >
						  


							<a class="icon_btn button_dark_grey edit_button"  id="edit_button" href="javascript:toggle();" ><i class="icon-pencil"></i></a>

							<form class="type_2" action="${pageContext.request.contextPath}/user.do" method="post" id="update" name="updateform" onsubmit="return validateForm();">
								 <input type="hidden" id="action" name="action" value="update">
								 <input type="hidden" id="userid" name="userid" value="${sessionScope.user.userid}">								 
								 <input type="hidden" id="addressid" name="addressid" value="${sessionScope.user.addressList[0].id}">
								 
								<ul>
									
									<li class="row">
										
										<div class="col-sm-6">
											
											<label for="first_name" class="required">First Name</label>
											<input type="text"  id="first_name" name = "firstName" value="${sessionScope.user.firstName}" readonly="readonly" >

										</div><!--/ [col] -->

										<div class="col-sm-6">
											
											<label for="last_name" class="required">Last Name</label>
											<input type="text" id="last_name" name="lastName" value="${sessionScope.user.lastName}" readonly="readonly">

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">										
										
										
										<div class="col-sm-6">
											
											<label for="middle_name">Middle Name</label>										
											<input type="text" id="middle_name" name="middleName"  value="${sessionScope.user.middleName}" readonly="readonly">

										</div><!--/ [col] -->

										<div class="col-sm-6">
											
											<label for="email_address" class="required">Email Address</label>
											<input type="text"  id="email_address" name="email" value="${sessionScope.user.email}" readonly="readonly">

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">	

										<div class="col-xs-12">

											<label for="address" class="required">Address 1</label>
											<input type="text"  id="addressline1" name ="addressline1" value="${sessionScope.user.addressList[0].addressLine1}" readonly="readonly">

										</div><!--/ [col] -->

									</li><!-- / .row -->

									<li class="row">

										<div class="col-xs-12">

											<label for="address" class="required">Address 2</label>
                                          <input type="text"  id="addressline2" name ="addressline2" value="${sessionScope.user.addressList[0].addressLine2}" readonly="readonly">

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">

										<div class="col-sm-6">
											
											<label for="city" class="required">City</label>
											<input type="text"  id="city" name="city" value="${sessionScope.user.addressList[0].city}" readonly="readonly">

										</div><!--/ [col] -->

										<div class="col-sm-6">

											<label class="required">State/Province</label>

											<input type="text"  id="state" name="state" value="${sessionScope.user.addressList[0].state}" readonly="readonly">

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">

										<div class="col-sm-6">

											<label for="postal_code" class="required">Zip</label>
											<input type="text"  id="zip" name="zip" value="${sessionScope.user.addressList[0].zip}" readonly="readonly">

										</div><!--/ [col] -->

										<div class="col-sm-6">

											<label class="required">Country</label>

											<div class="custom_select">

												<select name="country" id="country" >													
													<option value="USA">USA</option>
												</select>

											</div>

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">

										<div class="col-sm-6">

											<label for="telephone" class="required">Telephone</label>
											<input type="text"  id="phoneNo" name="phoneNo"  value="${sessionScope.user.addressList[0].phoneNo}"  readonly="readonly">

										</div><!--/ [col] -->

										
									</li><!--/ .row -->

									

									<li class="row">

									  <div class="col-xs-6">

										 <input type="radio" id="radio_1" name="iswic" value="true" <c:if test="${sessionScope.user.WIC eq true}">CHECKED</c:if> >
										 <label for="radio_1">WIC Member</label>
									  </div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">

									  <div class="col-xs-6">

											<input type="radio" name="iswic" id="radio_2" value="false" <c:if test="${sessionScope.user.WIC eq false}">CHECKED</c:if> >
											<label for="radio_2">Non-WIC Member</label>

									  </div>
									</li>
									
									
									<li class="row">
									  <div class="col-sm-6">
									    <label for="fax4">WIC Account #</label>
									    <input type="text" name="wicacctno" id="wicacctno" value="${sessionScope.user.wicAcctNo}"  readonly="readonly">
								      </div>
									</li>

								</ul>
							
						
						
						  <footer class="bottom_box on_the_sides"  id="my_account_update" style="display: none">

							<div class="left_side">
                                  <button class='button_blue middle_btn' type='submit'>Update</button>
                                  <button class='button_blue middle_btn' onclick="toggle();" type="button">Cancel</button>
                                 
                                  
							</div>
							
							

							<div class="right_side">
								<span class="prompt">Required Fields</span>
							</div>

						  </footer>
						  
					
					  
					
					  
					  								
					
					 </form>

						</div>
						  <p>
						      <!-- - - - - - - - - - - - - - End of contact information - - - - - - - - - - - - - - - - -->
							    
						      <span style="text-align: center"></span>
					      </p>
                          
			              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
                           
		                
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

			<!-- - - - - - - - - - - - - - Footer - - - - - - - - - - - - - - - - -->
			
			<jsp:include page="/inc/footer.jsp"/>
			
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
						
						<p class="c_info_location">443 W washington<br>Madison, 53703</p>

						<div class="proportional_frame">

							<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d11658.462684975322!2d-89.39002218706464!3d43.07055011641937!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xb4322e72044efadb!2s433+W+Washington+Ave%2C+Madison%2C+WI+53703!5e0!3m2!1sen!2sus!4v1456246575135" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>

						</div>

						<ul class="c_info_list">

							<li class="c_info_phone">608 203 7080</li>
							<li class="c_info_mail"><a href="mailto:#">info@wicare.com</a></li>
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