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
	private double wicTotal;
	private double wicSubTotal;
	
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
		
		DecimalFormat df = new DecimalFormat("####.##");
		subTotal = calculateSubTotal();
		
		
		return Double.valueOf(df.format(subTotal));
	}

	public double getWicSubTotal() 
	{
		DecimalFormat df = new DecimalFormat("####.##");
		this.wicSubTotal = calculateWicSubTotal();
		
		
		return Double.valueOf(df.format(this.wicSubTotal));
	}

	public double calculateWicSubTotal() 
	{
		double amt = 0;
		for(int i = 0; i < this.products.size(); i++)
		{
			amt += (this.products.get(i).getWicPrice() * this.products.get(i).getFoodAmount());
		}
		return amt;
	}

	public double calculateSubTotal() 
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

	public void setWicSubTotal(double wicSubTotal)
	{
		this.wicSubTotal = wicSubTotal;
	}

	public double getTotal() 
	{
		DecimalFormat df = new DecimalFormat("#####.##");
		total = getSubTotal() * SALES_TAX;
		
		
		return Double.valueOf(df.format(total));
	}

	public double getWicTotal()
	{
		DecimalFormat df = new DecimalFormat("#####.##");
		this.wicTotal = getWicSubTotal() * SALES_TAX;
		
		
		return Double.valueOf(df.format(this.wicTotal));
	}

	public void setTotal(double total) 
	{
		this.total = total;
	}
	
	public void setWicTotal(double wicTotal)
	{
		this.wicTotal = wicTotal;
	}

	
	
	public void addProduct(FoodProduct product)
	{
		products.add(product);
	}
	
}
