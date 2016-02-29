package com.wicare.service;

import java.util.List;

import com.wicare.dto.FoodProduct;
import com.wicare.dto.FoodProduct.Category;
import com.wicare.dto.FoodProduct.SubCategory;

public interface FoodService 
{
	public int addFood(FoodProduct f);
	public int deleteFood(int foodID);
	public int updateFood(FoodProduct f);
	public List<FoodProduct> getFoodByCategory(Category c);
	public List<FoodProduct> getAllFood();
	public List<FoodProduct> getFoodByName(String name);
	public List<FoodProduct> getFoodBySubCategory(SubCategory sc);
	List<FoodProduct> getFoodByID(int foodID);
}
