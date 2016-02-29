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
	final String BACK_TO_PAGE = "/jsp/category_page.jsp";
	String forwardView;
	String action;
	
	public void addToCart(HttpServletRequest request, HttpServletResponse response) throws RemoteException
	{
		action = request.getParameter("action");
		forwardView = BACK_TO_PAGE;
		User user = (User) request.getSession().getAttribute("user");
		int foodID = (Integer) request.getAttribute("product");
		FoodProduct food = fs.getFoodByID(foodID).get(0);
		ShoppingCart f = null;
		if(user.getCurrentOrder().getProducts().isEmpty())
		{
			f = new ShoppingCart();
		}
		else
		{
			f = user.getCurrentOrder();
		}
		f.addProduct(food);
		user.setCurrentOrder(f);

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
