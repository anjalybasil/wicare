package com.wicare.ejb.locator;

import java.rmi.RemoteException;

import javax.ejb.CreateException;

import com.wicare.dto.User;
import com.wicare.ejb.login.UserHome;
import com.wicare.ejb.login.UserObject;
import com.wicare.exception.CustomException;


public class UserDelegate {
	
	private  UserObject session;
	static final String USER_BEAN_JNDI = "java:app/WICareEJB/UserBean!com.wicare.ejb.login.UserHome";
	
	@SuppressWarnings("rawtypes")
	private static final Class USER_HOME = UserHome.class;
	
	public UserDelegate() throws EmployeeResourceException{
		
		try{
			UserHome home = (UserHome)WICareServiceLocator.getInstance().getRemoteHHome(USER_BEAN_JNDI, USER_HOME);
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
	
	public UserDelegate(String id)throws EmployeeResourceException{
		
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
			session = (UserObject)WICareServiceLocator.getInstance().getService(id);
		}catch(ServiceException e){
			e.printStackTrace();
			throw new EmployeeResourceException();
			
		}
	}
	

	public User validateUser(String userName, String password) {
		// TODO Auto-generated method stub
		try {
			System.out.println("Calling EJB");
			return session.validateUser(userName, password);
		
		} catch (RemoteException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (CustomException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public User searchUser(int id) {
		
		try {
			
			return session.searchUser(id);
		} catch (RemoteException e) {
			
			e.printStackTrace();
			
		} catch (CustomException e) {
			
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public User addUser(User user) {
		
		try {
			
			return session.addUser(user);
		} catch (RemoteException e) {
			
			e.printStackTrace();
			
		} catch (CustomException e) {
			
			e.printStackTrace();
		}
		
		return null;
		
	}
	
	public User updateUser(User user) {
			
			try {
				
				return session.updateUser(user);
			} catch (RemoteException e) {
				
				e.printStackTrace();
				
			} catch (CustomException e) {
				
				e.printStackTrace();
			}
			
			return null;
			
		}
	

}
