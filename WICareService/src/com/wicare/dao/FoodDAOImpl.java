package com.wicare.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.wicare.dao.ConnectionManager;
import com.wicare.dto.FoodProduct;
import com.wicare.dto.FoodProduct.Category;
import com.wicare.dto.FoodProduct.SubCategory;
import com.wicare.exception.CustomException;

public class FoodDAOImpl implements FoodDAO
{

	@Override
	public int addFood(FoodProduct f) 
	{
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteFood(int foodID) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateFood(FoodProduct f) 
	{
//		SELECT * FROM `wicare`.`product` WHERE product_category = ?
//		pstmt.setString(1, category);
		return 0;
	}

	@Override
	public List<FoodProduct> getFoodByCategory(Category c) 
	{
		ResultSet resultSet = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		String query = "SELECT * FROM wicare.wi_product WHERE product_category = ?";
		try
		{
			con =  ConnectionManager.getConnectionFromDataSource();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, c.name());
			resultSet =  ConnectionManager.executeQuery(pstmt);
		}
		catch(SQLException e)	{e.printStackTrace();}
		catch(CustomException e){e.printStackTrace();}
		List<FoodProduct> foodList = new ArrayList<FoodProduct>();
		
		if(resultSet == null)
		{
			return foodList;
		}
		
		try
		{
			while(resultSet.next())
			{
				FoodProduct food = new FoodProduct();
				food.setFoodID(resultSet.getInt("product_id"));
				food.setFoodName(resultSet.getString("product_name"));
				food.setFoodPrice(resultSet.getDouble("product_price"));
				food.setWicPrice(resultSet.getDouble("product_wic_price"));
				food.setFoodCategory(resultSet.getString("product_category"));
				food.setFoodAmount(resultSet.getInt("product_amount"));
				food.setImgFile(resultSet.getString("product_img_file"));
				food.setFoodSubCategory(resultSet.getString("product_subcategory"));
				foodList.add(food);
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
		return foodList;
	}

	@Override
	public List<FoodProduct> getFoodBySubCategory(SubCategory sc)
	{
		ResultSet resultSet = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		String query = "SELECT * FROM wicare.wi_product WHERE product_subcategory = ?";
		
		try
		{
			con =  ConnectionManager.getConnectionFromDataSource();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, sc.name());
			resultSet =  ConnectionManager.executeQuery(pstmt);
		}
		catch(SQLException e)	{e.printStackTrace();}
		catch(CustomException e){e.printStackTrace();}
		List<FoodProduct> foodList = new ArrayList<FoodProduct>();
		
		if(resultSet == null)
		{
			return foodList;
		}
		
		try
		{
			while(resultSet.next())
			{
				FoodProduct food = new FoodProduct();
				food.setFoodID(resultSet.getInt("product_id"));
				food.setFoodName(resultSet.getString("product_name"));
				food.setFoodPrice(resultSet.getDouble("product_price"));
				food.setWicPrice(resultSet.getDouble("product_wic_price"));
				food.setFoodCategory(resultSet.getString("product_category"));
				food.setFoodAmount(resultSet.getInt("product_amount"));
				food.setImgFile(resultSet.getString("product_img_file"));
				food.setFoodSubCategory(resultSet.getString("product_subcategory"));
				foodList.add(food);
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
		return foodList;
	}

	@Override
	public List<FoodProduct> getFoodByID(int foodID) 
	{
		ResultSet resultSet = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		String query = "SELECT * FROM wicare.wi_product WHERE product_id = ?";
		try
		{
			con =  ConnectionManager.getConnectionFromDataSource();
			pstmt = con.prepareStatement(query);
			pstmt.setInt(1, foodID);
			resultSet =  ConnectionManager.executeQuery(pstmt);
		}
		catch(SQLException e)	{e.printStackTrace();}
		catch(CustomException e){e.printStackTrace();}
		List<FoodProduct> foodList = new ArrayList<FoodProduct>();
		
		if(resultSet == null)
		{
			return foodList;
		}
		
		try
		{
			while(resultSet.next())
			{
				FoodProduct food = new FoodProduct();
				food.setFoodID(resultSet.getInt("product_id"));
				food.setFoodName(resultSet.getString("product_name"));
				food.setFoodPrice(resultSet.getDouble("product_price"));
				food.setWicPrice(resultSet.getDouble("product_wic_price"));
				food.setFoodCategory(resultSet.getString("product_category"));
				food.setFoodAmount(resultSet.getInt("product_amount"));
				food.setImgFile(resultSet.getString("product_img_file"));
				food.setFoodSubCategory(resultSet.getString("product_subcategory"));
				foodList.add(food);
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
		return foodList;
	}

	public List<FoodProduct> getAllFood()
	{
		ResultSet resultSet = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		String query = "SELECT * FROM wicare.wi_product";
		try
		{
			con =  ConnectionManager.getConnectionFromDataSource();
			pstmt = con.prepareStatement(query);
			resultSet =  ConnectionManager.executeQuery(pstmt);
		}
		catch(SQLException e)	{e.printStackTrace();}
		catch(CustomException e){e.printStackTrace();}
		List<FoodProduct> foodList = new ArrayList<FoodProduct>();
		
		if(resultSet == null)
		{
			return foodList;
		}
		
		try
		{
			while(resultSet.next())
			{
				FoodProduct food = new FoodProduct();
				food.setFoodID(resultSet.getInt("product_id"));
				food.setFoodName(resultSet.getString("product_name"));
				food.setFoodPrice(resultSet.getDouble("product_price"));
				food.setWicPrice(resultSet.getDouble("product_wic_price"));
				food.setFoodCategory(resultSet.getString("product_category"));
				food.setFoodAmount(resultSet.getInt("product_amount"));
				food.setImgFile(resultSet.getString("product_img_file"));
				food.setFoodSubCategory(resultSet.getString("product_subcategory"));
				foodList.add(food);
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
		return foodList;
	}

	@Override
	public List<FoodProduct> getFoodByName(String name) 
	{
		//SELECT * FROM `wicare`.wi_product WHERE product_name LIKE "%name%"
		ResultSet resultSet = null;
		Connection con = null;
		PreparedStatement pstmt = null;
		String query = "SELECT * FROM wicare.wi_product WHERE product_name LIKE ?";
		try
		{
			con =  ConnectionManager.getConnectionFromDataSource();
			pstmt = con.prepareStatement(query);
			pstmt.setString(1, "%"+name+"%");
			resultSet =  ConnectionManager.executeQuery(pstmt);
		}
		catch(SQLException e)	{e.printStackTrace();}
		catch(CustomException e){e.printStackTrace();}
		List<FoodProduct> foodList = new ArrayList<FoodProduct>();
		
		if(resultSet == null)
		{
			return foodList;
		}
		
		try
		{
			while(resultSet.next())
			{
				FoodProduct food = new FoodProduct();
				food.setFoodID(resultSet.getInt("product_id"));
				food.setFoodName(resultSet.getString("product_name"));
				food.setFoodPrice(resultSet.getDouble("product_price"));
				food.setWicPrice(resultSet.getDouble("product_wic_price"));
				food.setFoodCategory(resultSet.getString("product_category"));
				food.setFoodAmount(resultSet.getInt("product_amount"));
				food.setImgFile(resultSet.getString("product_img_file"));
				food.setFoodSubCategory(resultSet.getString("product_subcategory"));
				foodList.add(food);
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
		return foodList;
	}
	
}
