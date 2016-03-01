package com.wicare.web.user;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.wicare.dto.Order;
import com.wicare.dto.OrderDetail;
import com.wicare.dto.User;
import com.wicare.web.user.controller.UserController;

/**
 * Servlet implementation class LoginServlet
 */

public class UserServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private UserController userController = new UserController();
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		System.out.println("Login Servelt : "  + action);
		String nextJSP = null;
		if("login".equalsIgnoreCase(action)){
		    User user = userController.validateUser(request, response);			
			if(null != user){
   			  HttpSession session = request.getSession(true);
			  session.setAttribute("user",user);
			  session.setAttribute("hasLoggedIn",true);
			  nextJSP = "/jsp/home.jsp";
			}else{
			  nextJSP = "/jsp/login.jsp";
			}
		}else if("register".equalsIgnoreCase(action)){		
			User user =  userController.register(request, response);			
			if(null != user){
	   			  HttpSession session = request.getSession(true);
				  session.setAttribute("user",user);
				  session.setAttribute("hasLoggedIn",true);
				  nextJSP = "/jsp/home.jsp";
			}else{
				  nextJSP = "/jsp/register_page.jsp";
			}
			
		}else if("update".equalsIgnoreCase(action)){		
			User user =  userController.updateUser(request, response);
			if(null != user){
	   			  HttpSession session = request.getSession(false);
				  session.setAttribute("user",user);
				  session.setAttribute("hasLoggedIn",true);
				  nextJSP = "/jsp/my_account.jsp";				  
			}else{
				  nextJSP = "/jsp/register_page.jsp";
				  
			}
			
		}else if("myorders".equalsIgnoreCase(action)){		
			List<Order> orderList = userController.getOrdersByUser(request, response);
			if(null != orderList){
	   			  HttpSession session = request.getSession(true);
				  session.setAttribute("orderlist",orderList);
				  nextJSP = "/jsp/order_list.jsp";				  
			}else{
				  nextJSP = "/jsp/home.jsp";
			}
			
		}else if("orderdetails".equalsIgnoreCase(action)){		
			List<OrderDetail> orderDetailList = userController.getOrderDetails(request, response);
			if(null != orderDetailList){
	   			  request.setAttribute("orderdetaillist",orderDetailList);
				  nextJSP = "/jsp/order_details.jsp";				  
			}else{
				  nextJSP = "/jsp/home.jsp";
			}
			
		}else if("logout".equalsIgnoreCase(action)){		
			request.getSession(false).invalidate();
			nextJSP = "/jsp/home.jsp";
		}else if("myaccount".equalsIgnoreCase(action)){	
			nextJSP = "/jsp/my_account.jsp";
		}
		
		
		else{
			 nextJSP = "/jsp/login.jsp";
		}

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
		dispatcher.forward(request, response);
		
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}	

	
}
