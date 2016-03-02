
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html lang="en">
	<head>
	
	
	
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
	               
	            
	             //  document.getElementById("wicacctno").readOnly  = !document.getElementById("wicacctno").readOnly;
	               
	               enableDisableWicAccountNumber();
	               
	               
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
		
		   
		   function shoHideEditDetails() {
			   			
			   if(!(null == '${errorMessage}' ||  "" == '${errorMessage}')){
				   toggle();
			   }
			   
			   enableDisableWicAccountNumber();
			   
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
	<body onload="shoHideEditDetails();">

		<!-- - - - - - - - - - - - - - Main Wrapper - - - - - - - - - - - - - - - - -->

		<div class="wide_layout">

				<jsp:include page="/inc/header1.jsp"/>

			<!-- - - - - - - - - - - - - - Page Wrapper - - - - - - - - - - - - - - - - -->

			<div class="secondary_page_wrapper">

				<div class="container">

					

					<div class="row">
					
					<jsp:include page="/inc/myaccountmenu.jsp"/>

					  

						<main class="col-md-9 col-sm-8">

							<h1>My Dashboard</h1>

							<section class="theme_box">

								<h4>Hello, ${sessionScope.user.firstName} !</h4>

								<p>&nbsp;</p>

							</section><!--/ .theme_box -->

							<!-- - - - - - - - - - - - - - Contact information - - - - - - - - - - - - - - - - -->
						  <p><!--/ .theme_box --></p>
						  		<div align="center" style="color: #00FF7F;">${updateMessage}</div>
						  		<div align="center" style="color: #FF0000;">${errorMessage}</div>
						  		
						  	
						  		
						  		
						  <div class="theme_box" >
						  

							
								<a class="icon_btn button_dark_grey edit_button"  id="edit_button" href="javascript:toggle();" ><i class="icon-pencil"></i></a>
						
												 
								                  

							<form class="type_2" action="${pageContext.request.contextPath}/user.do" method="post" id="update" name="updateform">
								 <input type="hidden" id="action" name="action" value="update">
								 <input type="hidden" id="userid" name="userid" value="${sessionScope.user.userid}">								 
								 <input type="hidden" id="addressid" name="addressid" value="${sessionScope.user.addressList[0].id}">
								 
								                   
								<ul>
									
									<li class="row">
										
										<div class="col-sm-6">
											
											<label for="first_name" class="required">First Name</label>
											<input type="text"  id="first_name" name = "firstName" value="${requestScope.user.firstName}" readonly="readonly" >

										</div><!--/ [col] -->

										<div class="col-sm-6">
											
											<label for="last_name" class="required">Last Name</label>
											<input type="text" id="last_name" name="lastName" value="${requestScope.user.lastName}" readonly="readonly">

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">										
										
										
										<div class="col-sm-6">
											
											<label for="middle_name">Middle Name</label>										
											<input type="text" id="middle_name" name="middleName"  value="${requestScope.user.middleName}" readonly="readonly">

										</div><!--/ [col] -->

										<div class="col-sm-6">
											
											<label for="email_address" class="required">Email Address</label>
											<input type="text"  id="email_address" name="email" value="${requestScope.user.email}" readonly="readonly">

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">	

										<div class="col-xs-12">

											<label for="address" class="required">Address 1</label>
											<input type="text"  id="addressline1" name ="addressline1" value="${requestScope.user.addressList[0].addressLine1}" readonly="readonly">

										</div><!--/ [col] -->

									</li><!-- / .row -->

									<li class="row">

										<div class="col-xs-12">

											<label for="address" class="required">Address 2</label>
                                          <input type="text"  id="addressline2" name ="addressline2" value="${requestScope.user.addressList[0].addressLine2}" readonly="readonly">

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">

										<div class="col-sm-6">
											
											<label for="city" class="required">City</label>
											<input type="text"  id="city" name="city" value="${requestScope.user.addressList[0].city}" readonly="readonly">

										</div><!--/ [col] -->

										<div class="col-sm-6">

											<label class="required">State/Province</label>

											<input type="text"  id="state" name="state" value="${requestScope.user.addressList[0].state}" readonly="readonly">

										</div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">

										<div class="col-sm-6">

											<label for="postal_code" class="required">Zip</label>
											<input type="text"  id="zip" name="zip" value="${requestScope.user.addressList[0].zip}" readonly="readonly">

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
											<input type="text"  id="phoneNo" name="phoneNo"  value="${requestScope.user.addressList[0].phoneNo}"  readonly="readonly">

										</div><!--/ [col] -->

										
									</li><!--/ .row -->

									

									<li class="row">

									  <div class="col-xs-6">

										 <input type="radio" id="radio_1" name="iswic" value="true" onclick="javascript:enableDisableWicAccountNumber();"<c:if test="${requestScope.user.WIC eq true}">CHECKED</c:if> >
										 <label for="radio_1">WIC Member</label>
									  </div><!--/ [col] -->

									</li><!--/ .row -->

									<li class="row">

									  <div class="col-xs-6">

											<input type="radio" name="iswic" id="radio_2" value="false" onclick="javascript:enableDisableWicAccountNumber();"<c:if test="${requestScope.user.WIC eq false or requestScope.user == null }">CHECKED</c:if> >
											<label for="radio_2">Non-WIC Member</label>

									  </div>
									</li>
									
									
									<li class="row">
									  <div class="col-sm-6">
									    <label for="fax4">WIC Account #</label>
									    <input type="text" name="wicacctno" id="wicacctno" value="${requestScope.user.wicAcctNo}"  readonly="readonly">
								      </div>
									</li>

								</ul>
							
						
						
						  <footer class="bottom_box on_the_sides"  id="my_account_update" style="display: none">

							<div class="left_side">
                                  <button class='button_blue middle_btn' type='submit'>Update</button>
                                  <button class='button_blue middle_btn' onclick="javascript:document.myaccountform.submit()" type="button">Cancel</button>
                                 
                                  
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
			
			
			<jsp:include page="/inc/footer1.jsp"/>
			
			<!-- - - - - - - - - - - - - - End Footer - - - - - - - - - - - - - - - - -->

			

		</div><!--/ [layout]-->
		
		<!-- - - - - - - - - - - - - - End Main Wrapper - - - - - - - - - - - - - - - - -->

		<!-- - - - - - - - - - - - - - Social feeds - - - - - - - - - - - - - - - - -->

		<jsp:include page="/inc/socialfeeds.jsp"/>

		<!-- - - - - - - - - - - - - - End Social feeds - - - - - - - - - - - - - - - - -->
	</body>
</html>