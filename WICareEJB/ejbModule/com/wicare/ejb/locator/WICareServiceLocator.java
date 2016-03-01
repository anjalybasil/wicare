package com.wicare.ejb.locator;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.rmi.RemoteException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import javax.ejb.EJBObject;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.rmi.PortableRemoteObject;
import javax.sql.DataSource;

import com.wicare.ejb.login.UserHome;
import com.wicare.ejb.shopping.ShoppingHome;

public class WICareServiceLocator {

	private InitialContext initialContext;
	private Map<String, Object> cache;

	private static WICareServiceLocator hrServiceLocatorInstance;

	static {
		try {

			hrServiceLocatorInstance = new WICareServiceLocator();

		} catch (ServiceException e) {

			e.printStackTrace();
		}
	}

	private WICareServiceLocator() throws ServiceException {
		try {
			initialContext = new InitialContext();
			cache = Collections.synchronizedMap(new HashMap<String, Object>());
		} catch (NamingException e) {
			e.printStackTrace();
			throw new ServiceException("Error creating HRServiceLocator");
		}
	}

	static public WICareServiceLocator getInstance() {

		return hrServiceLocatorInstance;

	}

	@SuppressWarnings("rawtypes")
	public UserHome getRemoteHome(String jndiHomeName, Class homeClassName) throws ServiceException {

		UserHome remoteHome = null;

		if (cache.containsKey(jndiHomeName)) {
			remoteHome = (UserHome) cache.get(jndiHomeName);
		} else {
			try {
				Object object = initialContext.lookup(jndiHomeName);
				Object objHome = PortableRemoteObject.narrow(object, homeClassName);
				remoteHome = (UserHome) objHome;
				cache.put(jndiHomeName, remoteHome);
			} catch (NamingException e) {
				e.printStackTrace();
				throw new ServiceException("Error getting EmployeeHome" + jndiHomeName);
			}
		}
		return remoteHome;
	}
	
	@SuppressWarnings("rawtypes")
	public ShoppingHome getRemoteShoppingHome(String jndiHomeName, Class homeClassName) throws ServiceException {

		ShoppingHome remoteHome = null;

		if (cache.containsKey(jndiHomeName)) {
			remoteHome = (ShoppingHome) cache.get(jndiHomeName);
		} else {
			try {
				Object object = initialContext.lookup(jndiHomeName);
				Object objHome = PortableRemoteObject.narrow(object, homeClassName);
				remoteHome = (ShoppingHome) objHome;
				cache.put(jndiHomeName, remoteHome);
			} catch (NamingException e) {
				e.printStackTrace();
				throw new ServiceException("Error getting EmployeeHome" + jndiHomeName);
			}
		}
		return remoteHome;
	}

	public DataSource getDataSource(String dataSourceName) throws ServiceException {
		DataSource ds = null;
		try {
			if (cache.containsKey(dataSourceName)) {
				ds = (DataSource) cache.get(dataSourceName);

			} else {
				ds = (DataSource) initialContext.lookup(dataSourceName);
				cache.put(dataSourceName, ds);
			}
		} catch (NamingException e) {
			e.printStackTrace();
			throw new ServiceException("Error getting DataSource");
		}
		return ds;

	}
	
	public EJBObject getService(String id)throws ServiceException {
		if(id == null){
			throw new ServiceException("Invalid ID: cannot create handle");
		}
		
		try{
			byte[] bytes = new String(id).getBytes();
			InputStream io = new ByteArrayInputStream(bytes);
			ObjectInputStream os = new ObjectInputStream(io);
			javax.ejb.Handle handle =(javax.ejb.Handle)os.readObject();
			return handle.getEJBObject();
			
		}catch(Exception e){
			e.printStackTrace();
			throw new ServiceException("Error finding service");
		}
	}

	public String getId(EJBObject session) throws ServiceException {

		String id = null;

		try {
			javax.ejb.Handle handle = session.getHandle();
			ByteArrayOutputStream fo = new ByteArrayOutputStream();
			ObjectOutputStream os = new ObjectOutputStream(fo);
			os.writeObject(handle);
			os.flush();
			os.close();
			id = new String(fo.toByteArray());

		} catch (RemoteException e) {

			e.printStackTrace();
			throw new ServiceException("Error getting handle");

		} catch (IOException e) {

			e.printStackTrace();
			throw new ServiceException("Error getting handle");
		}
		return id;

	}

}
