package com.wicare.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.wicare.dao.ConnectionManager;
import com.wicare.dao.OrderDAO;
import com.wicare.dao.OrderDAOImpl;
import com.wicare.dto.FoodProduct;
import com.wicare.dto.Order;
import com.wicare.dto.OrderDetail;
import com.wicare.dto.ShoppingCart;
import com.wicare.exception.CustomException;
import com.wicare.exception.StatusCode;

public class OrderServiceImpl implements OrderService
{

	OrderDAO orderDAO = new OrderDAOImpl();
	
	@Override
	public int addOrder(Order o) throws CustomException
	{
		return orderDAO.addOrder(o);
	}

	@Override
	public int addOrderDetails(Order o, List<FoodProduct> food) throws CustomException
	{
		return orderDAO.addOrderDetails(o, food);
	}

	@Override
	public List<Order> getOrdersByUser(int userID) throws CustomException
	{
		return orderDAO.getOrdersByUser(userID);
	}

	@Override
	public List<Order> getAllOrders() throws CustomException
	{
		return orderDAO.getAllOrders();
	}

	
	public List<OrderDetail> getOrderDetails(int orderId) throws CustomException{
		return orderDAO.getOrderDetails(orderId);
	}
	
}
