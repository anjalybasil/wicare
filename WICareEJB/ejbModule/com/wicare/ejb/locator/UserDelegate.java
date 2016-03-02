package com.wicare.ejb.locator;

import java.rmi.RemoteException;

import javax.ejb.CreateException;

import org.apache.log4j.Logger;

import com.wicare.dto.User;
import com.wicare.ejb.login.UserHome;
import com.wicare.ejb.login.UserObject;
import com.wicare.exception.CustomException;


public class UserDelegate {
	
	public static Logger logger = Logger.getLogger(UserDelegate.class);
	private  UserObject session;
	static final String USER_BEAN_JNDI = "java:app/WICareEJB/UserBean!com.wicare.ejb.login.UserHome";
	
	@SuppressWarnings("rawtypes")
	private static final Class USER_HOME = UserHome.class;
	
	public UserDelegate() throws CustomException{
		
		try{
			UserHome home = (UserHome)WICareServiceLocator.getInstance().getRemoteHome(USER_BEAN_JNDI, USER_HOME);
			session = home.create();
		
		}catch(RemoteException e){
			logger.error("RemoteException occured during create UserDelegate !", e);
			throw new CustomException("RemoteException", e);
		}catch(CreateException e){
			logger.error("CreateException occured during create UserDelegate !", e);
			throw new CustomException("CreateException", e);
		}catch(ServiceException e){
			logger.error("ServiceException occured during create UserDelegate !", e);
			throw new CustomException("ServiceException", e);
		}
		
	}
	
	public UserDelegate(String id)throws CustomException{
		
		reconnect(id);
	}
	
	public String getId()throws CustomException{
		try{
			return WICareServiceLocator.getInstance().getId(session);
		}catch(ServiceException e){
			logger.error("ServiceException occured during getId !", e);
			throw new CustomException("ServiceException", e);
			
		}
	}
	
	public void reconnect(String id)throws CustomException{
		
		try{
			session = (UserObject)WICareServiceLocator.getInstance().getService(id);
		}catch(ServiceException e){
			e.printStackTrace();
			logger.error("ServiceException occured reconnect !", e);
			throw new CustomException("reconnect", e);
			
		}
	}
	

	public User validateUser(String userName, String password) throws CustomException {
	  try {
		return session.validateUser(userName, password);
	} catch (RemoteException e) {
		e.printStackTrace();
		logger.error("Error occured during validateUser !", e);
		throw new CustomException("Error occured during validateUser !", e);
	
	}
	
	}
	
	public User searchUser(int id) throws CustomException {
	  try {
		return session.searchUser(id);
	} catch (RemoteException e) {
		e.printStackTrace();
		logger.error("Error occured during searchUser !", e);
		throw new CustomException("Error occured during searchUser !", e);
	}
	}
	
	
	public User addUser(User user) throws CustomException{
		try {
			return session.addUser(user);
		} catch (RemoteException e) {
			e.printStackTrace();
			logger.error("Error occured during addUser !", e);
			throw new CustomException("Error occured during addUser !", e);
		}
	}
	
	public User updateUser(User user) throws CustomException {
		try {
			return session.updateUser(user);
		} catch (RemoteException e) {
			e.printStackTrace();
			logger.error("Error occured during updateUser !", e);
			throw new CustomException("Error occured during updateUser !", e);
		}
	}	
			
	

}
