package com.wicare.service;

import java.util.List;

import com.wicare.dao.FoodDAO;
import com.wicare.dao.FoodDAOImpl;
import com.wicare.dto.FoodProduct;
import com.wicare.dto.FoodProduct.Category;
import com.wicare.dto.FoodProduct.SubCategory;

public class FoodServiceImpl implements FoodService
{
	FoodDAO foodDAO = new FoodDAOImpl();
	
	@Override
	public int addFood(FoodProduct f) 
	{
		return foodDAO.addFood(f);
	}

	@Override
	public int deleteFood(int foodID) 
	{
		return foodDAO.deleteFood(foodID);
	}

	@Override
	public int updateFood(FoodProduct f) 
	{
		return foodDAO.updateFood(f);
	}

	@Override
	public List<FoodProduct> getFoodByCategory(Category c) 
	{
		return foodDAO.getFoodByCategory(c);
	}

	@Override
	public List<FoodProduct> getAllFood() 
	{
		return foodDAO.getAllFood();
	}

	@Override
	public List<FoodProduct> getFoodByName(String name)
	{
		return foodDAO.getFoodByName(name);
	}
	
	@Override
	public List<FoodProduct> getFoodBySubCategory(SubCategory sc)
	{
		return foodDAO.getFoodBySubCategory(sc);
	}
	
	@Override
	public List<FoodProduct> getFoodByID(int foodID)
	{
		return foodDAO.getFoodByID(foodID);
	}
}
