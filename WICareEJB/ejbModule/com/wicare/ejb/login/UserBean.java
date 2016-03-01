package com.wicare.ejb.login;

import java.rmi.RemoteException;
import java.util.List;

import javax.ejb.EJBException;
import javax.ejb.SessionBean;
import javax.ejb.SessionContext;

import com.wicare.dto.Order;
import com.wicare.dto.User;
import com.wicare.exception.CustomException;
import com.wicare.service.OrderService;
import com.wicare.service.OrderServiceImpl;
import com.wicare.service.UserService;
import com.wicare.service.UserServiceImpl;

public class UserBean implements SessionBean {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private UserService userService = new UserServiceImpl();


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
	
	public User validateUser(String userName, String password) throws CustomException,RemoteException{
		return userService.validateUser(userName, password);
	}
	
	public User searchUser(int id) throws CustomException,RemoteException{
		
		return userService.searchUser(id);
		
	}
	
	public User addUser(User user)throws CustomException,RemoteException{
		
		return userService.addUser(user);

	}
	
	
	public User updateUser(User user) throws CustomException,RemoteException{
		return userService.updateUser(user);
	}
	
	

	
	

}
