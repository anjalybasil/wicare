package com.wicare.web.shopping.controller;

import java.io.IOException;
import java.rmi.RemoteException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wicare.dto.FoodProduct;
import com.wicare.dto.ShoppingCart;
import com.wicare.dto.User;
import com.wicare.service.FoodService;
import com.wicare.service.FoodServiceImpl;

public class ShoppingCartController 
{
	FoodService fs = new FoodServiceImpl();
	final String BACK_TO_PAGE = "category.do?action=print_all_food";
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
	
	
}
