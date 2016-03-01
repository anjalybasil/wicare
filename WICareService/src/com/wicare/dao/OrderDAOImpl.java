package com.wicare.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.wicare.dao.ConnectionManager;
import com.wicare.dto.FoodProduct;
import com.wicare.dto.Order;
import com.wicare.dto.OrderDetail;
import com.wicare.exception.CustomException;
import com.wicare.exception.StatusCode;

public class OrderDAOImpl implements OrderDAO
{

	@Override
	public int addOrder(Order o) throws CustomException
	{
		int returnValue = -1;
		String insertQuery = "INSERT INTO wicare.wi_orders (`user_id`, `order_total`,`order_date`)"
				+ "VALUES( ?, ? , ?)";

		System.out.println("Insert query");

		Connection conn = null;
		PreparedStatement pstmt = null;
		try 
		{
			conn = ConnectionManager.getConnectionFromDataSource();
			pstmt = conn.prepareStatement(insertQuery);
			pstmt.setInt		(1, o.getCustomerID());
			pstmt.setDouble		(2, o.getOrderTotal());
			pstmt.setString		(3, o.getOrderDate());
			
			returnValue = ConnectionManager.executeUpdate(pstmt);


		} 
		catch (SQLException e) {throw new CustomException(e, StatusCode.DB_ERROR);}
		finally 
		{
			try {pstmt.close(); conn.close();} 
			catch (Exception e2) {}
		}
		return returnValue;
	}

	@Override
	public int addOrderDetails(Order o, List<FoodProduct> food) throws CustomException
	{
		int returnValue = -1;

		Connection conn = null;
		PreparedStatement pstmt = null;
		
		for(int i=0; i < food.size(); i++)
		{
			String insertQuery = "INSERT INTO wicare.wi_order_details (`order_id`, `product_id`, `product_quantity`, `product_price`)"
					+ "VALUES( ?, ?, ?, ?)";

			System.out.println("Insert query");

			
				conn = ConnectionManager.getConnectionFromDataSource();
				try 
				{
					pstmt = conn.prepareStatement(insertQuery);
					pstmt.setInt		(1, o.getOrderID());
					pstmt.setInt		(2, food.get(i).getFoodID());
					pstmt.setInt		(3, food.get(i).getFoodAmount());
					pstmt.setDouble		(4, food.get(i).getFoodPrice());
				} catch (SQLException e) {e.printStackTrace();}

				returnValue = ConnectionManager.executeUpdate(pstmt);

		}
			try {pstmt.close();	conn.close();} 
			catch (Exception e2) {}
		return returnValue;
	}

	@Override
	public List<Order> getOrdersByUser(int userID) 
	{
		ResultSet resultSet = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		String query = "SELECT * FROM wicare.wi_orders WHERE user_id = ?";
		try
		{
			con =  ConnectionManager.getConnectionFromDataSource();
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, userID);
			resultSet =  ConnectionManager.executeQuery(pstmt);
		}
		catch(SQLException e)	{e.printStackTrace();}
		catch(CustomException e){e.printStackTrace();}
		List<Order> orderList = new ArrayList<Order>();
		
		if(resultSet == null)
		{
			return orderList;
		}
		
		try
		{
			while(resultSet.next())
			{
				Order o = new Order();
				o.setOrderID(resultSet.getInt("order_id"));
				o.setCustomerID(resultSet.getInt("user_id"));
				o.setOrderTotal(resultSet.getDouble("order_total"));
				o.setOrderDate(resultSet.getString("order_date"));
				orderList.add(o);
			}
		}
		catch(SQLException e){System.out.println("Error Message: " + e);}
		finally
		{
			try
			{
				con.close();
			}
			catch(Exception e){e.printStackTrace();}
		}
		return orderList;
	}

	@Override
	public List<Order> getAllOrders() 
	{
		ResultSet resultSet = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		String query = "SELECT * FROM wicare.wi_orders";
		try
		{
			con =  ConnectionManager.getConnectionFromDataSource();
			pstmt = con.prepareStatement(query);
			resultSet =  ConnectionManager.executeQuery(pstmt);
		}
		catch(SQLException e)	{e.printStackTrace();}
		catch(CustomException e){e.printStackTrace();}
		List<Order> orderList = new ArrayList<Order>();
		
		if(resultSet == null)
		{
			return orderList;
		}
		
		try
		{
			while(resultSet.next())
			{
				Order o = new Order();
				o.setOrderID(resultSet.getInt("order_id"));
				o.setCustomerID(resultSet.getInt("user_id"));
				o.setOrderTotal(resultSet.getDouble("order_total"));
				o.setOrderDate(resultSet.getString("order_date"));
				orderList.add(o);
			}
		}
		catch(SQLException e){System.out.println("Error Message: " + e);}
		finally
		{
			try
			{
				con.close();
			}
			catch(Exception e){e.printStackTrace();}
		}
		return orderList;
	}

	
	public List<OrderDetail> getOrderDetails(int orderId) throws CustomException{
		
		{
			ResultSet resultSet = null;
			Connection con = null;
			PreparedStatement pstmt = null;
			String query = "SELECT a.order_id, a.product_price, a.product_quantity, b.product_name "
					+ " FROM wi_order_details a join wi_product b on b.product_id = a.product_id "
					+ " where a.order_id = ?";
			try
			{
				con =  ConnectionManager.getConnectionFromDataSource();
				pstmt = con.prepareStatement(query);
				pstmt.setInt(1, orderId);
				resultSet =  ConnectionManager.executeQuery(pstmt);
			}
			catch(SQLException e)	{e.printStackTrace();}
			catch(CustomException e){e.printStackTrace();}
			List<OrderDetail> orderDetailList = new ArrayList<OrderDetail>();
			
			if(resultSet == null)
			{
				return orderDetailList;
			}
			
			
			
			try
			{
				while(resultSet.next())
				{
					OrderDetail o = new OrderDetail();
					o.setOrderID(resultSet.getInt("order_id"));
					o.setProductPrice(resultSet.getDouble("product_price"));
					o.setProductQuantity(resultSet.getInt("product_quantity"));
					o.setProductName(resultSet.getString("product_name"));
					orderDetailList.add(o);
				}
			}
			catch(SQLException e){
				System.out.println("Error Message: " + e);}
			finally
			{
				try
				{
					con.close();
				}
				catch(Exception e){e.printStackTrace();}
			}
			return orderDetailList;
		}
		
		
	}
	
}
