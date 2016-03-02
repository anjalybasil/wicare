package com.wicare.dto;

import java.io.Serializable;

public class FoodProduct implements Serializable
{	

	private static final long serialVersionUID = -7647602036804074319L;

	public enum Category 
	{ 
		FRUIT, VEGETABLE, MEAT, DAIRY, GRAIN, OIL, SNACK, BEVERAGE;
		
	}
	
	public enum SubCategory
	{
		BEEF, PORK, CHICKEN, EGG, RICE, BREAD, PASTA, NONE
	}
	
	private int foodID;
	private String foodName;
	private double foodPrice;
	private double wicPrice;
	private Category foodCategory;
	private SubCategory foodSubCategory;
	private int foodAmount;
	private String imgFile;
	
	public FoodProduct()
	{
		
	}
	
	public FoodProduct(String name, double price, double wicPrice, String category, int amount, String imgFile)
	{
		foodName = name;
		foodPrice = price;
		foodCategory = Category.valueOf(category);
		foodAmount = amount;
		this.setWicPrice(wicPrice);
		this.imgFile = imgFile;
	}
	
	public int getFoodID() 
	{
		return foodID;
	}
	
	public void setFoodID(int foodID) 
	{
		this.foodID = foodID;
	}
	
	public String getFoodName() 
	{
		return foodName;
	}
	
	public void setFoodName(String foodName) 
	{
		this.foodName = foodName;
	}
	
	public double getFoodPrice() 
	{
		return foodPrice;
	}
	
	public void setFoodPrice(double foodPrice)
	{
		this.foodPrice = foodPrice;
	}
	
	public double getWicPrice() {
		return wicPrice;
	}

	public void setWicPrice(double wicPrice) {
		this.wicPrice = wicPrice;
	}

	public Category getFoodCategory() 
	{
		return foodCategory;
	}
	
	public void setFoodCategory(String foodCategory) 
	{
		this.foodCategory = Category.valueOf(foodCategory);
	}
	
	public SubCategory getFoodSubCategory() 
	{
		return foodSubCategory;
	}

	public void setFoodSubCategory(String foodSubCategory) 
	{
		this.foodSubCategory = SubCategory.valueOf(foodSubCategory);
	}
	
	public int getFoodAmount()
	{
		return foodAmount;
	}
	
	public void setFoodAmount(int foodAmount)
	{
		this.foodAmount = foodAmount;
	}

	public String getImgFile() {
		return imgFile;
	}

	public void setImgFile(String imgFile) {
		this.imgFile = imgFile;
	}
	
	
	@Override
	public String toString() {
		return "FoodProduct [foodID=" + foodID + ", foodName=" + foodName + ", foodPrice=" + foodPrice
				+ ", foodCategory=" + foodCategory + ", foodSubCategory=" + foodSubCategory + ", foodAmount="
				+ foodAmount + ", imgFile=" + imgFile + "]";
	}

	
}
