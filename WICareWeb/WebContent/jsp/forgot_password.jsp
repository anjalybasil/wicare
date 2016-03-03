
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="en">
	<head>
		
	</head>
	<body>

		<!-- - - - - - - - - - - - - - Main Wrapper - - - - - - - - - - - - - - - - -->

		<div class="wide_layout">

			<jsp:include page="/inc/header1.jsp"/>
			
			<!-- - - - - - - - - - - - - - End Header - - - - - - - - - - - - - - - - -->

			<!-- - - - - - - - - - - - - - Page Wrapper - - - - - - - - - - - - - - - - -->

		

			<!-- - - - - - - - - - - - - - Page Wrapper - - - - - - - - - - - - - - - - -->

			<div class="secondary_page_wrapper">

				<div class="container">

	
					<div class="row"><!--/ [col]-->
					
					

						<main class="col-md-9 col-sm-8">

						  <h1>Forgot Password </h1><!--/ .theme_box -->

							<!-- - - - - - - - - - - - - - Contact information - - - - - - - - - - - - - - - - -->
						  <p><!--/ .theme_box --></p>
						  <div class="relative">
						    <div class="table_layout">

								<div class="table_row"><!--/ .table_cell -->

									<div class="table_cell">

										<section>

											<h4></h4>


											<form id="forgotpassword_form" action="${pageContext.request.contextPath}/login.do" method="post"  class="type_2">
												 <input type="hidden" id="action" name="action" value="forgotpassword">
												  		
												  		<div align="center" style="color: #00FF7F;">${updateMessage}</div>
												  		<div align="center" style="color: #FF0000;">${errorMessage}</div>
												<ul>

													<li class="row">
													
													    
													    <div class="col-xs-6">

															<label for="inputEmail" class="required">Email address</label>
															<input type="email" id="inputEmail" name="email" required>

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

												<button type="submit" form="forgotpassword_form" class="button_blue middle_btn">Submit</button>

											</div>

						
										</div>

								  </div><!--/ .table_cell -->

							  </div><!--/ .table_row -->

							</div><!--/ .table_layout -->

						</div>
						  <p>
						      <!-- - - - - - - - - - - - - - End of contact information - - - - - - - - - - - - - - - - -->
							    
						      <span style="text-align: center"></span>
					      </p>
                          
			              <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>
			         
			            

					  </main><!--/ [col]-->

				  </div><!--/ .row-->

				</div><!--/ .container-->

			</div><!--/ .page_wrapper-->
			
			<!-- - - - - - - - - - - - - - End Page Wrapper - - - - - - - - - - - - - - - - -->

				<jsp:include page="/inc/footer1.jsp"/>
			
			<!-- - - - - - - - - - - - - - End Footer - - - - - - - - - - - - - - - - -->

		</div><!--/ [layout]-->
		
		<!-- - - - - - - - - - - - - - End Main Wrapper - - - - - - - - - - - - - - - - -->

		<!-- - - - - - - - - - - - - - Social feeds - - - - - - - - - - - - - - - - -->

			<jsp:include page="/inc/socialfeeds.jsp"/>

		<!-- - - - - - - - - - - - - - End Social feeds - - - - - - - - - - - - - - - - -->
		
		
		
	</body>
</html>