package com.wicare.web.shopping.controller;

import java.io.IOException;
import java.rmi.RemoteException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wicare.dto.FoodProduct;
import com.wicare.dto.FoodProduct.Category;
import com.wicare.dto.FoodProduct.SubCategory;
import com.wicare.service.FoodService;
import com.wicare.service.FoodServiceImpl;

public class CategoryController 
{
	FoodService fs = new FoodServiceImpl();
	final String TEST_LIST_OUTPUT = "/jsp/category_page.jsp";
	public void printFoodHelper(HttpServletRequest request, HttpServletResponse response) throws RemoteException
	{
		
		String action = request.getParameter("action");
		String forwardView = TEST_LIST_OUTPUT;
		
		if(action != null && action.equalsIgnoreCase("print_all_food"))
		{
			List<FoodProduct> foodList = fs.getAllFood();
			request.setAttribute("foodList", foodList);
		}
		else if(action!= null && action.equalsIgnoreCase("search"))
		{
			String searchTerm = request.getParameter("search_term");
			List<FoodProduct> foodList = fs.getFoodByName(searchTerm);
			request.setAttribute("foodList", foodList);
		}
		else if(action!= null && action.equalsIgnoreCase("dairy"))
		{
			List<FoodProduct> foodList = fs.getFoodByCategory(Category.DAIRY);
			request.setAttribute("foodList", foodList);
		}
		else if(action != null && action.equalsIgnoreCase("fruit"))
		{
			List<FoodProduct> foodList = fs.getFoodByCategory(Category.FRUIT);
			request.setAttribute("foodList", foodList);
		}
		else if(action!= null && action.equalsIgnoreCase("vegetable"))
		{
			List<FoodProduct> foodList = fs.getFoodByCategory(Category.VEGETABLE);
			request.setAttribute("foodList", foodList);
		}
		else if(action!= null && action.equalsIgnoreCase("meat"))
		{
			List<FoodProduct> foodList = fs.getFoodByCategory(Category.MEAT);
			request.setAttribute("foodList", foodList);
		}
		else if(action!= null && action.equalsIgnoreCase("egg"))
		{
			List<FoodProduct> foodList = fs.getFoodBySubCategory(SubCategory.EGG);
			request.setAttribute("foodList", foodList);
		}
		else if(action!= null && action.equalsIgnoreCase("bread"))
		{
			List<FoodProduct> foodList = fs.getFoodBySubCategory(SubCategory.BREAD);
			request.setAttribute("foodList", foodList);
		}
		else if(action!= null && action.equalsIgnoreCase("pasta"))
		{
			List<FoodProduct> foodList = fs.getFoodBySubCategory(SubCategory.PASTA);
			request.setAttribute("foodList", foodList);
		}
		else if(action!= null && action.equalsIgnoreCase("rice"))
		{
			List<FoodProduct> foodList = fs.getFoodBySubCategory(SubCategory.RICE);
			request.setAttribute("foodList", foodList);
		}
		else if(action!= null && action.equalsIgnoreCase("oil"))
		{
			List<FoodProduct> foodList = fs.getFoodByCategory(Category.OIL);
			request.setAttribute("foodList", foodList);
		}
		else if(action!= null && action.equalsIgnoreCase("snack"))
		{
			List<FoodProduct> foodList = fs.getFoodByCategory(Category.SNACK);
			request.setAttribute("foodList", foodList);
		}
		else if(action!= null && action.equalsIgnoreCase("beverage"))
		{
			List<FoodProduct> foodList = fs.getFoodByCategory(Category.BEVERAGE);
			request.setAttribute("foodList", foodList);
		}
		else if(action!= null && action.equalsIgnoreCase("fv"))
		{
			List<FoodProduct> fruitList = fs.getFoodByCategory(Category.FRUIT);
			List<FoodProduct> vegList = fs.getFoodByCategory(Category.VEGETABLE);
			
			request.setAttribute("foodList", fruitList);
			request.setAttribute("foodList1", vegList);
		}
		else if(action!= null && action.equalsIgnoreCase("meategg"))
		{
			List<FoodProduct> foodList1 = fs.getFoodByCategory(Category.MEAT);		
			request.setAttribute("foodList", foodList1);
		}
		else if(action!= null && action.equalsIgnoreCase("grains"))
		{
			List<FoodProduct> foodList = fs.getFoodByCategory(Category.GRAIN);
			request.setAttribute("foodList", foodList);
		}
		else if(action!= null && action.equalsIgnoreCase("other"))
		{
			List<FoodProduct> foodList = fs.getFoodByCategory(Category.SNACK);
			List<FoodProduct> foodist1 = fs.getFoodByCategory(Category.BEVERAGE);
			
			request.setAttribute("foodList", foodList);
			request.setAttribute("foodList1", foodist1);
		}
		
		
		RequestDispatcher dispatch = request.getRequestDispatcher(forwardView);
		try 
		{
			dispatch.forward(request, response);
		} 
		catch (ServletException e)	{e.printStackTrace();} 
		catch (IOException e) 		{e.printStackTrace();}
	}
	
}
