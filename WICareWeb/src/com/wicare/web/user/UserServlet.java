package com.wicare.web.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.picketbox.util.StringUtil;

import com.sun.xml.internal.ws.util.StringUtils;
import com.wicare.dto.Address;
import com.wicare.dto.Order;
import com.wicare.dto.OrderDetail;
import com.wicare.dto.User;
import com.wicare.exception.CustomException;
import com.wicare.web.user.controller.UserController;

/**
 * Servlet implementation class LoginServlet
 */

public class UserServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private UserController userController = new UserController();
	public static Logger logger = Logger.getLogger(UserController.class);
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 try{
		String action = request.getParameter("action");
		logger.info("User Servelt action :"+ action);
		String nextJSP = null;
			if("login".equalsIgnoreCase(action)){
			    User user = userController.validateUser(request, response);			
				if(null != user){
	   			  HttpSession session = request.getSession(true);
				  session.setAttribute("user",user);
				  session.setAttribute("hasLoggedIn",true);
				  nextJSP = "/jsp/home.jsp";
				}else{
				  request.setAttribute("errorMessage", "Your email or password was incorrect. Please try again.");	
				  nextJSP = "/jsp/login.jsp";
				}
			}else if("register".equalsIgnoreCase(action)){	
				if(validateUserDetails(request,response,action)){
					User user =  userController.register(request, response);			
					if(null != user){
			   			  HttpSession session = request.getSession(true);
						  session.setAttribute("user",user);
						  session.setAttribute("hasLoggedIn",true);
						  nextJSP = "/jsp/home.jsp";
					}
				}else{
					 nextJSP = "/jsp/register_page.jsp";
				}
				
			}else if("update".equalsIgnoreCase(action)){
				if(validateUserDetails(request,response,action)){
					User user =  userController.updateUser(request, response);
					if(null != user){
			   			  HttpSession session = request.getSession(false);
						  session.setAttribute("user",user);
						  request.setAttribute("user", ((User)request.getSession(false).getAttribute("user")).clone());
						  request.setAttribute("updateMessage", "Your account has updated successfully !!.");	
					}
				  
				}
				
			    nextJSP = "/jsp/my_account.jsp";	
				
			}else if("myorders".equalsIgnoreCase(action)){	
				List<Order> orderList = userController.getOrdersByUser(request, response);
		   		    HttpSession session = request.getSession(false);
					session.setAttribute("orderlist",orderList);
					nextJSP = "/jsp/order_list.jsp";				  
				
			}else if("orderdetails".equalsIgnoreCase(action)){		
				 List<OrderDetail> orderDetailList = userController.getOrderDetails(request, response);
		   		 request.setAttribute("orderdetaillist",orderDetailList);
				 nextJSP = "/jsp/order_details.jsp";				  
				
			}else if("logout".equalsIgnoreCase(action)){		
				request.getSession(false).invalidate();
				nextJSP = "/jsp/home.jsp";
			}else if("myaccount".equalsIgnoreCase(action)){	
				 HttpSession session = request.getSession(false);
				 request.setAttribute("user", ((User)session.getAttribute("user")).clone());
				 nextJSP = "/jsp/my_account.jsp";
			}
		else{
			 nextJSP = "/jsp/login.jsp";
		}

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
		dispatcher.forward(request, response);
	 
	 }catch(CustomException e){
		throw new ServletException(e); 
	 }catch(CloneNotSupportedException e){
		throw new ServletException(e); 
	  }
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}	
	
	
	private boolean validateUserDetails(HttpServletRequest request, HttpServletResponse response, String action) throws ServletException, IOException{
			User user = new User();
			
			user.setFirstName(request.getParameter("firstName"));
			user.setMiddleName(request.getParameter("middleName"));
			user.setLastName(request.getParameter("lastName"));				
			user.setWicAcctNo(request.getParameter("wicacctno"));
			user.setWIC(Boolean.parseBoolean(request.getParameter("iswic")));
			user.setEmail(request.getParameter("email"));	
			
			Address address = new Address();
			address.setAddressLine1(request.getParameter("addressline1"));
			address.setAddressLine2(request.getParameter("addressline2"));		
			address.setCity(request.getParameter("city"));		
			address.setState(request.getParameter("state"));		
			address.setZip(request.getParameter("zip"));		
			address.setCountry(request.getParameter("country"));		
			address.setPhoneNo(request.getParameter("phoneNo"));
			address.setAddresstype("Billing");
			
			user.getAddressList().add(address);
			
			request.setAttribute("user", user);
			
			if(StringUtil.isNullOrEmpty(user.getFirstName())){
				  request.setAttribute("errorMessage", "First Name is required..");	
				  return false;
			}
			
			if(StringUtil.isNullOrEmpty(user.getLastName())){
				  request.setAttribute("errorMessage", "Last Name is required..");	
				  return false;
			}
			
			if("register".equalsIgnoreCase(action)){
				if(StringUtil.isNullOrEmpty(user.getEmail())){
					  request.setAttribute("errorMessage", "Email is required..");	
					  return false;
				}
			}
			
			if(StringUtil.isNullOrEmpty(address.getAddressLine1())){
				  request.setAttribute("errorMessage", "AddressLine1 is required..");	
				  return false;
			}
			
			if(StringUtil.isNullOrEmpty(address.getAddressLine2())){
				  request.setAttribute("errorMessage", "AddressLine2 is required..");	
				  return false;
			}
			
			if(StringUtil.isNullOrEmpty(address.getCity())){
				  request.setAttribute("errorMessage", "City is required..");	
				  return false;
			}
			
			if(StringUtil.isNullOrEmpty(address.getZip())){
				  request.setAttribute("errorMessage", "Zip is required..");	
				  return false;
			}
			
			if(StringUtil.isNullOrEmpty(address.getPhoneNo())){
				  request.setAttribute("errorMessage", "PhoneNo is required..");	
				  return false;
			}
			
			if("register".equalsIgnoreCase(action)){
				
				if(StringUtil.isNullOrEmpty(request.getParameter("password"))){
					  request.setAttribute("errorMessage", "Password is required..");	
					  return false;
				}
				
				if(StringUtil.isNullOrEmpty(request.getParameter("confirmPassword"))){
					  request.setAttribute("errorMessage", "ConfirmPassword is required..");	
					  return false;
				}
				
				if(!request.getParameter("password").equals(request.getParameter("confirmPassword"))){
					  request.setAttribute("errorMessage", "Password & Confirm Password should be same...");	
					  return false;
				}
			}
			
			if(user.isWIC() && StringUtil.isNullOrEmpty(user.getWicAcctNo())){
				  request.setAttribute("errorMessage", "Wic Account Number is required...");	
				  return false;
			}
			
			
			
			
			
		
		return true;
		
	}

	
}
