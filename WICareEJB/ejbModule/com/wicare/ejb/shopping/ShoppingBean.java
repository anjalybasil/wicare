package com.wicare.ejb.shopping;

import java.rmi.RemoteException;
import java.util.List;

import javax.ejb.EJBException;
import javax.ejb.SessionBean;
import javax.ejb.SessionContext;

import com.wicare.dto.Order;
import com.wicare.dto.OrderDetail;
import com.wicare.exception.CustomException;
import com.wicare.service.OrderService;
import com.wicare.service.OrderServiceImpl;

public class ShoppingBean implements SessionBean {

	/**
	 * 
	 */
	private static final long serialVersionUID = 7974489739072765595L;
	
	private OrderService orderService = new OrderServiceImpl();

	@Override
	public void ejbActivate() throws EJBException, RemoteException {
		// TODO Auto-generated method stub

	}

	@Override
	public void ejbPassivate() throws EJBException, RemoteException {
		// TODO Auto-generated method stub

	}

	@Override
	public void ejbRemove() throws EJBException, RemoteException {
		// TODO Auto-generated method stub

	}

	@Override
	public void setSessionContext(SessionContext arg0) throws EJBException, RemoteException {
		// TODO Auto-generated method stub

	}
	
	public void ejbCreate(){
		
	}
	
	public List<Order> getAllOrders()  throws CustomException,RemoteException{
		
		return orderService.getAllOrders();
		
	}
	
	public List<Order> getOrdersByUser(int userID)  throws CustomException,RemoteException{
			
			return orderService.getOrdersByUser(userID);
			
		}
	
	public List<OrderDetail> getOrderDetails(int orderId)  throws CustomException,RemoteException{
		
		return orderService.getOrderDetails(orderId);
		
	}

}
