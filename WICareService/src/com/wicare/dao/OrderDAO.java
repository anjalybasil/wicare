package com.wicare.dao;

import java.util.List;

import com.wicare.dto.FoodProduct;
import com.wicare.dto.Order;
import com.wicare.exception.CustomException;

public interface OrderDAO
{
	public int addOrder(Order o) throws CustomException;
	public List<Order> getOrdersByUser(int userID) throws CustomException;
	public List<Order> getAllOrders() throws CustomException;
	int addOrderDetails(Order o, List<FoodProduct> food) throws CustomException;
}
