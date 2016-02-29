package com.wicare.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.NamingException;

import com.wicare.exception.CustomException;
import com.wicare.exception.StatusCode;

public class ConnectionManager 
{
	//standard driver
	private static String JDBC_DRIVER="com.mysql.jdbc.Driver";
	//address of server, port of server, name of database
	private static String DATABASE_URL="jdbc:mysql://localhost:3306/wicare";
	
	static
	{
		try
		{
			Class.forName(JDBC_DRIVER);
		}
		catch(Exception e)
		{
			System.out.println("Error Loading Driver");
		}
	}
	
	/*public static void main(String[] args)
	{
		String query = "select * from employee";
		executeQuery(getConnection(),query);
	}*/
	
	public static Connection getConnection() throws CustomException
	{
		Connection connection = null;
		
		try
		{
			connection = DriverManager.getConnection(DATABASE_URL, "root", "Mysqlroot007");
			System.out.println("Connection object is: " + connection);
		}catch(SQLException e)
		{
			System.out.println("Error getting Connection " +e);
			throw new CustomException(e, StatusCode.DB_ERROR);
		}
		
		return connection;
	}
	
	public static Connection getConnectionFromDataSource() throws CustomException
	{
		
		Connection connection = null;
	
	try
	{
		connection = MySqlDataSource.getMySqlDataSource().getConnection();
		System.out.println("Connection object is: " + connection);
		
		
	}catch(SQLException e)
	{
		System.out.println("Error getting Connection " +e);
		throw new CustomException(e, StatusCode.DB_ERROR);
	}
	catch(NamingException e1)
	{
		throw new CustomException(e1,StatusCode.DB_ERROR );
	}
	return connection;
		
	}
	
	/*public static void executeQuery(Connection con, String query)
	{
		Statement statement = null;
		
		try
		{
			statement = con.createStatement();
			ResultSet resultSet = statement.executeQuery(query);
			ResultSetMetaData metaData = resultSet.getMetaData();
			int numberOfColumns = metaData.getColumnCount();
			
			for(int i =1; i <= numberOfColumns; i++)
			{
				System.out.printf("%-8s\t", metaData.getColumnName(i));
			}
			System.out.println();
			
			while(resultSet.next())
			{
				for(int i=1;i <= numberOfColumns;i++)
				{
					System.out.printf("%-8s\t", resultSet.getObject(i));
				}
				System.out.println();
			}
		}catch(SQLException e)
		{
			System.out.println("Error executing query " +e);
		}finally
		{
			try
			{
				statement.close();
				con.close();
			}catch(Exception e)
			{
				e.printStackTrace();
				System.exit(1);
			}
		}
	}*/
	
	/*public static ResultSet executeQuery(Connection con, String query)
	{
		Statement statement = null;
		ResultSet resultSet=null; 
		try
		{
			statement = con.createStatement();
			resultSet = statement.executeQuery(query);
			
			
		}catch(SQLException e)
		{
			System.out.println("Error executing query " +e);
		}finally
		{
			try
			{
				//statement.close();
				//con.close();
			}catch(Exception e)
			{
				e.printStackTrace();
				System.exit(1);
			}
		}
		return resultSet;
	}
	
	public static int executeUpdate(Connection con,String query)
	{
		Statement statement = null;
		int returnValue=-1;
		
		try
		{
			statement = con.createStatement();
			returnValue=statement.executeUpdate(query);
		}
		catch(SQLException e)
		{
			System.out.println("Error executing query " +e);
		
		}
		finally
		{
			try
			{
				statement.close();
				con.close();
			}catch(Exception e)
			{
				e.printStackTrace();
				System.exit(1);
			}
		}
		return returnValue;
	}*/
	
	//Overloaded version of executeQuery using preparedStatement
		public static ResultSet executeQuery(PreparedStatement pstmt) {
			
			ResultSet rs = null;
			try {
				rs = pstmt.executeQuery();
				
			} catch (SQLException e) {
				System.out.println("Error executing query " + e);
			}

			return rs;
		}


	//Overloaded version of executeUpdate using preparedStatement
		public static int executeUpdate(PreparedStatement pstmt) {
			int returnValue = -1;
			try {
				returnValue = pstmt.executeUpdate();
			} catch (SQLException e) {
				System.out.println("Error executing query " + e);
			}
			return returnValue;
		}
}
