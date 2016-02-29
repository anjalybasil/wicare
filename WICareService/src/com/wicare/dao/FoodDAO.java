package com.wicare.dao;

import java.util.List;

import com.wicare.dto.FoodProduct.Category;
import com.wicare.dto.FoodProduct.SubCategory;
import com.wicare.dto.FoodProduct;

public interface FoodDAO 
{
	public int addFood(FoodProduct fp);
	public int deleteFood(int foodID);
	public int updateFood(FoodProduct f);
	public List<FoodProduct> getFoodByID(int foodID);
	public List<FoodProduct> getFoodByCategory(Category c);
	public List<FoodProduct> getFoodBySubCategory(SubCategory sc);
	public List<FoodProduct> getFoodByName(String name);
	public List<FoodProduct> getAllFood();
	
	
	
}
