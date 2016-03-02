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
		System.out.println("Action in ShoppingServlet: " + action);
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
			nextJSP = "/jsp/shop_shopping_cart.jsp";
			RequestDispatcher dispatch = request.getRequestDispatcher(nextJSP);
			try 
			{
				dispatch.forward(request, response);
			} 
			catch (ServletException e)	{e.printStackTrace();} 
			catch (IOException e) 		{e.printStackTrace();}
		}
		else if(action.equalsIgnoreCase("add_to_cart"))
		{
			System.out.println("Inside add_to_cart calling ShoppingCartController");
			cartController.addToCart(request, response);			
		}
		else if(action.equalsIgnoreCase("clear_cart"))
		{
			System.out.println("Inside clear cart:");
			cartController.clearCart(request, response);
			
		}
		else if(action.equalsIgnoreCase("add_cart_from_cart"))
		{
			cartController.incrementCart(request, response);
			System.out.println("Inside the add_cart_from_cart method: Action = " + action + " product = " + request.getParameter("product"));
			
		}
		else if(action.equalsIgnoreCase("remove_cart_from_cart"))
		{
			cartController.incrementCart(request, response);
			System.out.println("Inside the remove_cart_from_cart method: Action = " + action + " product = " + request.getParameter("product"));
		}
		else if(action.equalsIgnoreCase("remove_from_cart_dropdown"))
		{
			cartController.deleteFromCart(request, response);
		}
		else if(action.equalsIgnoreCase("checkout"))
		{
			cartController.checkout(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
