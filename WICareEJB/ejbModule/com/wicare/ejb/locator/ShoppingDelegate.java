package com.wicare.ejb.locator;

import java.rmi.RemoteException;
import java.util.List;

import javax.ejb.CreateException;

import com.wicare.dto.Order;
import com.wicare.dto.OrderDetail;
import com.wicare.dto.User;
import com.wicare.ejb.login.UserHome;
import com.wicare.ejb.login.UserObject;
import com.wicare.ejb.shopping.ShoppingHome;
import com.wicare.ejb.shopping.ShoppingObject;
import com.wicare.exception.CustomException;

public class ShoppingDelegate {

	
	private  ShoppingObject session;
	static final String SHOPPING_BEAN_JNDI = "java:app/WICareEJB/ShoppingBean!com.wicare.ejb.shopping.ShoppingHome";
	
	@SuppressWarnings("rawtypes")
	private static final Class SHOPPING_HOME = ShoppingHome.class;
	
	public ShoppingDelegate() throws EmployeeResourceException{
		
		try{
			ShoppingHome home = (ShoppingHome)WICareServiceLocator.getInstance().getRemoteShoppingHome(SHOPPING_BEAN_JNDI, SHOPPING_HOME);
			session = home.create();
		
		}catch(RemoteException e){
			e.printStackTrace();
			throw new EmployeeResourceException();
		}catch(CreateException e){
			e.printStackTrace();
			throw new EmployeeResourceException();
		}catch(ServiceException e){
			e.printStackTrace();
			throw new EmployeeResourceException();
		}
		
	}
	
	public ShoppingDelegate(String id)throws EmployeeResourceException{
		
		reconnect(id);
	}
	
	public String getId()throws EmployeeResourceException{
		try{
			return WICareServiceLocator.getInstance().getId(session);
		}catch(ServiceException e){
			e.printStackTrace();
			throw new EmployeeResourceException();
			
		}
	}
	
	public void reconnect(String id)throws EmployeeResourceException{
		
		try{
			session = (ShoppingObject)WICareServiceLocator.getInstance().getService(id);
		}catch(ServiceException e){
			e.printStackTrace();
			throw new EmployeeResourceException();
			
		}
	}
	
	
	public List<Order> getOrdersByUser(int userID) {
		try {
			return session.getOrdersByUser(userID);
		} catch (RemoteException e) {
			e.printStackTrace();
		} catch (CustomException e) {
			e.printStackTrace();
		}
		return null;
	}
	
   public List<OrderDetail> getOrderDetails(int orderId) {
		
	  try{
			return session.getOrderDetails(orderId);
		}catch (RemoteException e) {
			e.printStackTrace();
		} catch (CustomException e) {
			e.printStackTrace();
		}
		return null;
	}
}
