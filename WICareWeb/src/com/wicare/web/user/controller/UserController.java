package com.wicare.web.user.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.wicare.dto.Address;
import com.wicare.dto.User;
import com.wicare.ejb.locator.EmployeeResourceException;
import com.wicare.ejb.locator.UserDelegate;
import com.wicare.web.util.EncryptionUtil;

public class UserController {
	
	public User register(HttpServletRequest request, HttpServletResponse response){
		
		User user = new User();
		user.setFirstName(request.getParameter("firstName"));
		user.setMiddleName(request.getParameter("middleName"));
		user.setLastName(request.getParameter("lastName"));
		user.setEmail(request.getParameter("email"));
		EncryptionUtil  encryptionUtil = new EncryptionUtil();
		user.setPassword(encryptionUtil.encodeBase64(request.getParameter("password")));		
		user.setWicAcctNo(request.getParameter("wicacctno"));
		System.out.println("IsWic" +request.getParameter("iswic"));
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
		
		UserDelegate userDelegate = null;
		try {
			userDelegate = new UserDelegate();
			user = userDelegate.addUser(user);
			return user;
		} catch (EmployeeResourceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
		
	}
	
	public User validateUser(HttpServletRequest request, HttpServletResponse response) {
		
		String userName = request.getParameter("username");
		String password = request.getParameter("password");
		EncryptionUtil  encryptionUtil = new EncryptionUtil();
		UserDelegate userDelegate = getUserDelegate();
		User user = userDelegate.validateUser(userName, encryptionUtil.encodeBase64(password));
		return user;
	}
	
	
  public User updateUser(HttpServletRequest request, HttpServletResponse response){
		
		
		
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
		
		
		UserDelegate userDelegate = null;
		try {
			userDelegate = new UserDelegate();
			user = userDelegate.updateUser(user);
			return user;
		} catch (EmployeeResourceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
		
		
	}
	
	
	private UserDelegate getUserDelegate(){
		UserDelegate userDelegate = null;
		try {
			userDelegate = new UserDelegate();
			return userDelegate;
		} catch (EmployeeResourceException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null;
	}

}
