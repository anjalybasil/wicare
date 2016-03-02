package com.wicare.service;

import com.wicare.dao.UserDAO;
import com.wicare.dao.UserDAOImpl;
import com.wicare.dto.Address;
import com.wicare.dto.User;
import com.wicare.exception.CustomException;

public class UserServiceImpl implements UserService {
	
	private UserDAO userDAO  = new UserDAOImpl();

	@Override
	public User validateUser(String userName, String password)throws CustomException {
		User userDetails = userDAO.validateUser(userName, password);
		if(null != userDetails){
			Address address = userDAO.getAddress(userDetails.getUserid(), "Billing");
			userDetails.getAddressList().add(address);
		}
		return userDetails;
	}

	@Override
	public User addUser(User user) throws CustomException {
		userDAO.addUser(user);
		User userDetails = userDAO.getUser(user.getEmail(), user.getPassword());
		if(null != userDetails){
			userDAO.saveAddress(user.getAddressList().get(0), userDetails.getUserid());
			Address address = userDAO.getAddress(userDetails.getUserid(), user.getAddressList().get(0).getAddresstype());
			userDetails.getAddressList().add(address);
		}
		return userDetails;
	}

	@Override
	public User searchUser(int id) throws CustomException {		
		return userDAO.searchUser(id);
	}
	
	@Override
	public User updateUser(User user) throws CustomException{
	   userDAO.updateUser(user);
	   userDAO.updateAddress(user.getAddressList().get(0));
	   return user;
	}

	
}
