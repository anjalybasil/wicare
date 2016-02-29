package com.wicare.web.shopping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wicare.web.shopping.controller.CategoryController;
import com.wicare.web.shopping.controller.ShoppingCartController;

/**
 * Servlet implementation class ShoppingServlet
 */

public class ShoppingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private CategoryController catController = new CategoryController();
    private ShoppingCartController cartController = new ShoppingCartController();
       


	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String action = request.getParameter("action");
		String nextJSP = null;
		
		if(action.equalsIgnoreCase("vegetable")|| action.equalsIgnoreCase("fruit") 	|| 
				action.equalsIgnoreCase("meat") 	|| action.equalsIgnoreCase("egg") 		|| 
				action.equalsIgnoreCase("dairy") 	|| action.equalsIgnoreCase("bread") 	|| 
				action.equalsIgnoreCase("pasta")	|| action.equalsIgnoreCase("rice") 		|| 
				action.equalsIgnoreCase("oil") 		|| action.equalsIgnoreCase("snack") 	|| 
				action.equalsIgnoreCase("fv")		|| action.equalsIgnoreCase("meategg") 	|| 
				action.equalsIgnoreCase("grains")	|| action.equalsIgnoreCase("other")		|| 
				action.equalsIgnoreCase("beverage") || action.equalsIgnoreCase("print_all_food"))
		{
			catController.printFoodHelper(request, response);
		}
		else if(action.equalsIgnoreCase("search"))
		{
			catController.printFoodHelper(request, response);
		}
		else if(action.equalsIgnoreCase("shopping_cart"))
		{
			nextJSP = "/jsp/shopping_cart.jsp";
		}
		else if(action.equalsIgnoreCase("add_to_cart"))
		{
			cartController.addToCart(request, response);			
		}
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
