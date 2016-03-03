
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

			<div class="secondary_page_wrapper">

				<div class="container">

					
					<div class="row">

						<jsp:include page="/inc/myaccountmenu.jsp"/>
						

						<main class="col-md-9 col-sm-8">

							<h1>My Orders</h1>

						<!-- 	<header class="top_box on_the_sides">

								<div class="left_side v_centered">

									<p class="visible_pages">Showing 1 to 10 of 30 (3 pages)</p>

									<span>Show:</span> 

									<div class="custom_select">

										<select name="">

											<option value="10">10</option>
											<option value="9">9</option>
											<option value="8">8</option>
											<option value="7">7</option>
											<option value="6">6</option>
											<option value="5">5</option>
											<option value="4">4</option>
											<option value="3">3</option>
											<option value="2">2</option>
											<option value="1">1</option>

										</select>

									</div>

								</div>

								<div class="right_side">
								
									<ul class="pags">

										<li><a href="#"></a></li>
										<li class="active"><a href="#">1</a></li>
										<li><a href="#">2</a></li>
										<li><a href="#">3</a></li>
										<li><a href="#"></a></li>

									</ul>

								</div>

							</header> --><!--/ .top_box -->

							<div class="table_wrap">

								<table class="table_type_1 orders_table">

									<thead>

										<tr>
											
											<th class="order_number_col">Order Number</th>
											<th>Order Date</th>
										<!-- 	<th class="ship_col">Ship To</th> -->
											<th>Order Status</th>
											<th class="order_total_col">Total</th>
											<th class="product_action_col">Action</th>

										</tr>

									</thead>

									<tbody>


                                     <c:forEach var="order" items="${sessionScope.orderlist}">
      
										<tr>
											
											<td data-title="Order Number"><c:out value="${order.orderID}"/></td>

											<td data-title="Order Date"><c:out value="${order.orderDate}"/></td>
										

											<td data-title="Order Status">Confirmed</td>

											<td data-title="Total" class="total"><c:out value="${order.orderTotal}"/></td>

											<td data-title="Action">
												
												<ul class="buttons_col">

													<li>
														
														<a href="${pageContext.request.contextPath}/user.do?action=orderdetails&orderID=${order.orderID}" class="button_grey">View Order</a>

													</li>

													

												</ul>

											</td>

										</tr>

									</c:forEach>	

									</tbody>

								</table>

							</div>



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