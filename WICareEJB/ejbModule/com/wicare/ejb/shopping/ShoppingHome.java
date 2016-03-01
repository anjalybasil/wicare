package com.wicare.ejb.shopping;

import java.rmi.RemoteException;

import javax.ejb.CreateException;
import javax.ejb.EJBHome;

public interface ShoppingHome extends EJBHome {

	public ShoppingObject create() throws CreateException,RemoteException;

}
