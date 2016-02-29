package com.wicare.dto;

import java.util.List;

public class ShoppingCart 
{
	private List<FoodProduct> products;
	private double total;
	
	
	public List<FoodProduct> getProducts() 
	{
		return products;
	}

	public void setProducts(List<FoodProduct> products) 
	{
		this.products = products;
	}

	public double getTotal() 
	{
		return total;
	}

	public void setTotal(double total) 
	{
		this.total = total;
	}
	public double calculateTotal()
	{
		return 0.0;
	}
	
	public void addProduct(FoodProduct product)
	{
		products.add(product);
	}
	
}
