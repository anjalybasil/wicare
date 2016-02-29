package com.wicare.ejb.login;

import java.rmi.RemoteException;

import javax.ejb.CreateException;
import javax.ejb.EJBHome;

public interface UserHome extends EJBHome {
	
	public UserObject create() throws CreateException,RemoteException;

}
