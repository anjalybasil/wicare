package com.wicare.ejb.shopping;

import java.rmi.RemoteException;
import java.util.List;

import javax.ejb.EJBObject;

import com.wicare.dto.Order;
import com.wicare.dto.OrderDetail;
import com.wicare.exception.CustomException;


 public interface ShoppingObject extends EJBObject {

	public List<Order> getAllOrders() throws CustomException,RemoteException; 
	public List<Order> getOrdersByUser(int userID) throws CustomException,RemoteException;
	public List<OrderDetail> getOrderDetails(int orderId) throws CustomException,RemoteException;

}
