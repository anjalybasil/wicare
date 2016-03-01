package com.wicare.dto;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.List;

public class ShoppingCart 
{
	private final double SALES_TAX = 1.02;
	private List<FoodProduct> products = new ArrayList<FoodProduct>();
	private double total;
	private double subTotal;
	
	public List<FoodProduct> getProducts() 
	{
		return products;
	}

	public void setProducts(List<FoodProduct> products) 
	{
		this.products = products;
	}

	public double getSubTotal() 
	{
		
		DecimalFormat df = new DecimalFormat("0.00");
		subTotal = calculateSubTotal();
		
		
		return Double.valueOf(df.format(subTotal));
	}

	private double calculateSubTotal() 
	{	
		double amt = 0;
		//Loop through currentOrder and determine total
		for(int i = 0; i < this.products.size(); i++)
		{
			amt += (this.products.get(i).getFoodPrice() * this.products.get(i).getFoodAmount());
		}
		return amt;
	}

	public void setSubTotal(double subTotal) {
		this.subTotal = subTotal;
	}

	public double getTotal() 
	{
		DecimalFormat df = new DecimalFormat("0.00");
		total = getSubTotal() * SALES_TAX;
		
		
		return Double.valueOf(df.format(total));
	}

	public void setTotal(double total) 
	{
		this.total = total;
	}
	
	public void addProduct(FoodProduct product)
	{
		products.add(product);
	}
	
}
