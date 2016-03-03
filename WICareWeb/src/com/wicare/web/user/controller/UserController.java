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
import com.wicare.web.util.SendEmail;

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
	  
	  
	  
	  return orderList;
  }
  
  
  public List<OrderDetail> getOrderDetails(HttpServletRequest request, HttpServletResponse response) throws CustomException{
		 
	
	  int orderId = Integer.parseInt(request.getParameter("orderID"));
	  logger.info("orderId" + orderId);
	  
	  
	  // TODO : Call Delegate.getOrdersByUser
	  
	  ShoppingDelegate shoppingDelegate = getShoppingDelegate();
	  List<OrderDetail> orderDetailList  = shoppingDelegate.getOrderDetails(orderId);
	  
	  System.out.println("orderDetailList" + orderDetailList);
	  
	
	  
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
	
	public boolean changePassword(HttpServletRequest request, HttpServletResponse response) throws CustomException{
		
		UserDelegate userDelegate = getUserDelegate();
		HttpSession session = request.getSession(false);
		int userId = ((User)session.getAttribute("user")).getUserid();
		EncryptionUtil  encryptionUtil = new EncryptionUtil();		
		return userDelegate.changePassword(userId, encryptionUtil.encodeBase64(request.getParameter("password")));
		
	}
	
	public boolean validateEmail(HttpServletRequest request, HttpServletResponse response) throws CustomException{
		
		UserDelegate userDelegate = getUserDelegate();
		return userDelegate.validateEmail(request.getParameter("email"));
		
	}
	
	public boolean updatePasswordAndSendEmail(HttpServletRequest request, HttpServletResponse response) throws CustomException{
		
		String email = request.getParameter("email");
		String password = SendEmail.sendEmail(email);
		if(null != password){
			UserDelegate userDelegate = getUserDelegate();
			EncryptionUtil  encryptionUtil = new EncryptionUtil();
			return userDelegate.updatePassword(email, encryptionUtil.encodeBase64(password));
		}else{
			return false;
		}
		
	}

}
