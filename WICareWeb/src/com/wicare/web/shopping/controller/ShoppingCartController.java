package com.wicare.web.shopping.controller;

import java.io.IOException;
import java.rmi.RemoteException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import com.wicare.dto.FoodProduct;
import com.wicare.dto.Order;
import com.wicare.dto.ShoppingCart;
import com.wicare.dto.User;
import com.wicare.exception.CustomException;
import com.wicare.service.FoodService;
import com.wicare.service.FoodServiceImpl;
import com.wicare.service.OrderService;
import com.wicare.service.OrderServiceImpl;

public class ShoppingCartController 
{
	public static Logger logger = Logger.getLogger(ShoppingCartController.class);
	
	FoodService fs = new FoodServiceImpl();
	OrderService os = new OrderServiceImpl();
	final String BACK_TO_PAGE = "category.do?action=print_all_food";
	final String BACK_TO_CART_FROM_SERVLET = "shoppingcart.do?action=shopping_cart";
	final String BACK_TO_CART = "jsp/shop_shopping_cart.jsp";
	final String BACK_HOME = "jsp/home.jsp";

	String forwardView;
	String action;
	
	public void addToCart(HttpServletRequest request, HttpServletResponse response) throws RemoteException
	{
		action = request.getParameter("action");
		
		forwardView = BACK_TO_PAGE;
		User user = (User) request.getSession().getAttribute("user");
		System.out.println("" + user);
		int foodID = Integer.valueOf(request.getParameter("product"));
		System.out.println("Product ID" + foodID);
		FoodProduct food = fs.getFoodByID(foodID).get(0);
		food.setFoodAmount(1);
		System.out.println("Food Object" + food);
		ShoppingCart f = null;
		if(user != null)
		{
			if(user.getCurrentOrder() == null || user.getCurrentOrder().getProducts().isEmpty())
			{
				f = new ShoppingCart();
			}
			else
			{
				f = user.getCurrentOrder();
			}
		}
		else
		{
			forwardView = "/jsp/login.jsp";
		}
		
		int count = 0;
		//Loops through the currentOrder and determines if the food is in there by comparing ID's
		for(int i = 0; i < f.getProducts().size(); i++)
		{
			
			if(f.getProducts().get(i).getFoodID() == food.getFoodID())
			{
				count++;
				f.getProducts().get(i).setFoodAmount(f.getProducts().get(i).getFoodAmount() + 1);
			}

		}
		//Checks to see if count was ever incremented
		if(count == 0)
		{
			f.addProduct(food);			
		}
		user.setCurrentOrder(f);
		for(int i =0; i < user.getCurrentOrder().getProducts().size(); i++)
		{
			System.out.println("Current Order" + user.getCurrentOrder().getProducts().get(i).toString());	
		}

	//	System.out.println(request.getAttribute("product").toString());
	//	System.out.println(request.getSession().getAttribute("user").toString());
		
		RequestDispatcher dispatch = request.getRequestDispatcher(forwardView);
		try 
		{
			dispatch.forward(request, response);
		} 
		catch (ServletException e)	{e.printStackTrace();} 
		catch (IOException e) 		{e.printStackTrace();}
	}

	public void clearCart(HttpServletRequest request, HttpServletResponse response) throws RemoteException
	{
		action = request.getParameter("action");
		forwardView = BACK_TO_CART;

		User user = (User) request.getSession().getAttribute("user");

		user.getCurrentOrder().getProducts().clear();

		try 
		{
			response.sendRedirect(BACK_TO_CART);
		}
		catch (IOException e) {e.printStackTrace();}
		
	}

	public void incrementCart(HttpServletRequest request, HttpServletResponse response) 
	{
		action = request.getParameter("action");
		forwardView = BACK_TO_CART;
		
		//Obtains the user from the session
		User user = (User) request.getSession().getAttribute("user");
		
		//The title may be misleading, but this actually returns the location of the product in relation to the array it's in. 
		//So the first item will return a "product" of 0, the second a product of 1, etc
		int foodID = Integer.valueOf(request.getParameter("product"));
		System.out.println("Product ID" + foodID);
		
		
		FoodProduct food = user.getCurrentOrder().getProducts().get(foodID); //This is the object of type FoodProduct that's sitting the the currentOrder product list 
		ShoppingCart f = user.getCurrentOrder();
		int amt = food.getFoodAmount();
		System.out.println("Amount in current order: " + amt);
		if(action!= null && action.equals("add_cart_from_cart"))
		{
			amt++;
			System.out.println("Amount in current order: " + amt);
			f.getProducts().get(foodID).setFoodAmount(amt);
			user.setCurrentOrder(f);
		}
		else if(action!= null && action.equals("remove_cart_from_cart"))
		{
			if(amt > 0)
			{
				amt--;
				f.getProducts().get(foodID).setFoodAmount(amt);
				user.setCurrentOrder(f);
				if(amt == 0)
				{
					//To-Do: Remove the foodProduct item from the current order
					f.getProducts().remove(foodID);
					user.setCurrentOrder(f);
				}
			}
			if(amt == 0)
			{
				//To-Do: Inform user they can't remove into the negatives.
				amt = 0;
			}
		}
		System.out.println("Inside the incrementCart method");
		
		
		try 
		{
			response.sendRedirect(BACK_TO_CART);
		}
		catch (IOException e) {e.printStackTrace();}
		
	}

	public void deleteFromCart(HttpServletRequest request, HttpServletResponse response) 
	{
		action = request.getParameter("action");
		forwardView = BACK_TO_CART;
		
		//Obtains the user from the session
		User user = (User) request.getSession().getAttribute("user");
		
		//The title may be misleading, but this actually returns the location of the product in relation to the array it's in. 
		//So the first item will return a "product" of 0, the second a product of 1, etc
		int foodID = Integer.valueOf(request.getParameter("product"));
		System.out.println("Product ID" + foodID);
		
		
		FoodProduct food = user.getCurrentOrder().getProducts().get(foodID); //This is the object of type FoodProduct that's sitting the the currentOrder product list 
		ShoppingCart f = user.getCurrentOrder();
		int amt = food.getFoodAmount();
		System.out.println("Amount in current order: " + amt);
		f.getProducts().remove(foodID);
		user.setCurrentOrder(f);
		
		try 
		{
			response.sendRedirect(BACK_TO_CART);
		}
		catch (IOException e) {e.printStackTrace();}
	}

	public void checkout(HttpServletRequest request, HttpServletResponse response) 
	{
		System.out.println("Inside the checkout method of shoppingCartController.  Get hype.");
		SimpleDateFormat sdfDate = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date now = new Date();
		sdfDate.format(now);
		User user = (User) request.getSession().getAttribute("user");
		Order o = new Order(user.getUserid(), user.getCurrentOrder().getTotal(), sdfDate.format(now));
		try 
		{
			os.addOrder(o);
			int size = os.getOrdersByUser(user.getUserid()).size() - 1;
			o.setOrderID(os.getOrdersByUser(user.getUserid()).get(size).getOrderID());
			
			System.out.println("Order successfully added.");
			os.addOrderDetails(o, user.getCurrentOrder().getProducts());
			System.out.println("Order Details successfully added.");
			user.getCurrentOrder().getProducts().clear();
			System.out.println("Current Order cleared successfully.");
			response.sendRedirect(BACK_HOME);
		} 
		catch (CustomException e) {e.printStackTrace();} 
		catch (IOException e) {e.printStackTrace();}
	}

	
	
}
