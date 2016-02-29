package com.wicare.ejb.login;

import java.rmi.RemoteException;

import javax.ejb.EJBObject;

import com.wicare.dto.User;
import com.wicare.exception.CustomException;

public interface UserObject extends EJBObject {
	
	public User validateUser(String userName, String password) throws CustomException,RemoteException;

	public User searchUser(int id) throws CustomException,RemoteException;

	public User addUser(User user)throws CustomException,RemoteException;
	
	public User updateUser(User user) throws CustomException,RemoteException;
}
