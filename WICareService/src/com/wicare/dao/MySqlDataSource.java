package com.wicare.dao;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class MySqlDataSource {
	
	private static DataSource ds;

	public DataSource getDs() {
		return ds;
	}
	
	public static DataSource getMySqlDataSource() throws NamingException{
		
		Context ctx = new InitialContext();
		
		ds =(DataSource) ctx.lookup("java:jboss/datasources/MySqlDB");
		return ds;
	}

}
