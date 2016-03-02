package com.wicare.web.user.controller;

import java.rmi.RemoteException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;

import com.wicare.dto.Address;
import com.wicare.dto.Order;
import com.wicare.dto.OrderDetail;
import com.wicare.dto.User;
import com.wicare.ejb.locator.EmployeeResourceException;
import com.wicare.ejb.locator.ShoppingDelegate;
import com.wicare.ejb.locator.UserDelegate;
import com.wicare.exception.CustomException;
import com.wicare.web.util.EncryptionUtil;

public class UserController {
	
	public static Logger logger = Logger.getLogger(UserController.class);
	
	public User register(HttpServletRequest request, HttpServletResponse response) throws CustomException{
		
		User user = new User();
		user.setFirstName(request.getParameter("firstName"));
		user.setMiddleName(request.getParameter("middleName"));
		user.setLastName(request.getParameter("lastName"));
		user.setEmail(request.getParameter("email"));
		EncryptionUtil  encryptionUtil = new EncryptionUtil();
		user.setPassword(encryptionUtil.encodeBase64(request.getParameter("password")));		
		user.setWicAcctNo(request.getParameter("wicacctno"));
		user.setWIC(Boolean.parseBoolean(request.getParameter("iswic")));
		
		Address address = new Address();
		address.setAddressLine1(request.getParameter("addressline1"));
		address.setAddressLine2(request.getParameter("addressline2"));		
		address.setCity(request.getParameter("city"));		
		address.setState(request.getParameter("state"));		
		address.setZip(request.getParameter("zip"));		
		address.setCountry(request.getParameter("country"));		
		address.setPhoneNo(request.getParameter("phoneNo"));
		
		address.setAddresstype("Billing");
		
		user.getAddressList().add(address);
		
		UserDelegate userDelegate = getUserDelegate();
		user = userDelegate.addUser(user);
		return user;
		
		
	}
	
	public User validateUser(HttpServletRequest request, HttpServletResponse response) throws CustomException {
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		EncryptionUtil  encryptionUtil = new EncryptionUtil();
		UserDelegate userDelegate = getUserDelegate();
		User user = userDelegate.validateUser(userName, encryptionUtil.encodeBase64(password));
		return user;
	}
	
	
  public User updateUser(HttpServletRequest request, HttpServletResponse response) throws CustomException{
		
		
		
		User user = new User();
		user.setUserid(Integer.parseInt(request.getParameter("userid")));
		user.setFirstName(request.getParameter("firstName"));
		user.setMiddleName(request.getParameter("middleName"));
		user.setLastName(request.getParameter("lastName"));				
		user.setWicAcctNo(request.getParameter("wicacctno"));
		user.setWIC(Boolean.parseBoolean(request.getParameter("iswic")));
		
		user.setEmail(request.getParameter("email"));	
		
		Address address = new Address();
		address.setAddressLine1(request.getParameter("addressline1"));
		address.setAddressLine2(request.getParameter("addressline2"));		
		address.setCity(request.getParameter("city"));		
		address.setState(request.getParameter("state"));		
		address.setZip(request.getParameter("zip"));		
		address.setCountry(request.getParameter("country"));		
		address.setPhoneNo(request.getParameter("phoneNo"));
		address.setId(Integer.parseInt(request.getParameter("addressid")));
		address.setAddresstype("Billing");
		
		user.getAddressList().add(address);
		
		
		UserDelegate userDelegate = getUserDelegate();
		user = userDelegate.updateUser(user);
		return user;
		
		
		
	}
  
  
  public List<Order> getOrdersByUser(HttpServletRequest request, HttpServletResponse response) throws CustomException{
	 
	  HttpSession session = request.getSession(false);
	
	  int userID = ((User)session.getAttribute("user")).getUserid();
	  logger.info("userID" + userID);
	  
	  ShoppingDelegate shoppingDelegate = getShoppingDelegate();
	  List<Order> orderList  = shoppingDelegate.getOrdersByUser(userID);
	  
	  
	  Order order = null;
	  orderList = new ArrayList<Order>();
	  order = new Order();
	  order.setOrderID(1);
	  order.setOrderDate(""+new Date());
	  order.setOrderTotal(999);
	  orderList.add(order);
	  
	  order = new Order();
	  order.setOrderID(2);
	  order.setOrderDate(""+new Date());
	  order.setOrderTotal(888);
	  orderList.add(order);
	  
	  return orderList;
  }
  
  
  public List<OrderDetail> getOrderDetails(HttpServletRequest request, HttpServletResponse response) throws CustomException{
		 
	
	  int orderId = Integer.parseInt(request.getParameter("orderID"));
	  logger.info("orderId" + orderId);
	  
	  
	  // TODO : Call Delegate.getOrdersByUser
	  
	  ShoppingDelegate shoppingDelegate = getShoppingDelegate();
	  List<OrderDetail> orderDetailList  = shoppingDelegate.getOrderDetails(orderId);
	  
	  System.out.println("orderDetailList" + orderDetailList);
	  
	  OrderDetail order = null;
	  orderDetailList = new ArrayList<OrderDetail>();
	  order = new OrderDetail();
	  order.setOrderID(1);
	  order.setProductName("Tomato");
	  order.setProductPrice(120);
	  order.setProductQuantity(2);
	  orderDetailList.add(order);
	  
	  order = new OrderDetail();
	  order.setOrderID(1);
	  order.setProductName("Spinach");
	  order.setProductPrice(50);
	  order.setProductQuantity(5);
	  orderDetailList.add(order);
	  
	  return orderDetailList;
  }
	
	
	private UserDelegate getUserDelegate() throws CustomException{
		UserDelegate userDelegate = new UserDelegate();
		return userDelegate;
		
		
	}
	
	
	private ShoppingDelegate getShoppingDelegate() throws CustomException{
		ShoppingDelegate shoppingDelegate = null;
		try {
			shoppingDelegate = new ShoppingDelegate();
			return shoppingDelegate;
		}catch (Exception e) {
			e.printStackTrace();
			logger.error("Error occured during getShoppingDelegate !", e);
			throw new CustomException("Error occured during getShoppingDelegate !", e);
		}
		
	}

}
