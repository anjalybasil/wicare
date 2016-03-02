package com.wicare.service;

import java.util.List;

import com.wicare.dto.FoodProduct;
import com.wicare.dto.Order;
import com.wicare.dto.OrderDetail;
import com.wicare.exception.CustomException;

public interface OrderService 
{
	public int addOrder(Order o) throws CustomException;
	public List<Order> getOrdersByUser(int userID) throws CustomException;
	public List<Order> getAllOrders() throws CustomException;
	public int addOrderDetails(Order o, List<FoodProduct> food) throws CustomException;
	public List<OrderDetail> getOrderDetails(int orderId) throws CustomException;
}
