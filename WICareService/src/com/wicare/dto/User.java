package com.wicare.dto;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class User  implements Serializable, Cloneable 
{
	
	private static final long serialVersionUID = 1L;
	
	private int userid;
    private String firstName;
    private String middleName;
    private String lastName;
    private String email;
	private String password;
	private String ccNumber;
	private String wicAcctNo;
	private boolean isWIC;
	private boolean isAdmin;
	
	private ShoppingCart currentOrder;
	private List<Address> addressList;
	private String userType;
    private List<Order> pastOrders;
	
	
 
	
    public int getUserid() {
        return userid;
    }
    public void setUserid(int userid) {
        this.userid = userid;
    }
    public String getFirstName() {
        return firstName;
    }
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    @Override
    public String toString() {
        return "User [userid=" + userid + ", firstName=" + firstName
                + ", lastName=" + lastName + ", email="
                + email + "]";
    }
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCcNumber() {
		return ccNumber;
	}
	public void setCcNumber(String ccNumber) {
		this.ccNumber = ccNumber;
	}
	public boolean isWIC() {
		return isWIC;
	}
	public void setWIC(boolean isWIC) {
		this.isWIC = isWIC;
	}
	
	public void getWIC(boolean isWIC) {
		this.isWIC = isWIC;
	}
	/**
	 * @return the wicAcctNo
	 */
	public String getWicAcctNo() {
		return wicAcctNo;
	}
	/**
	 * @param wicAcctNo the wicAcctNo to set
	 */
	public void setWicAcctNo(String wicAcctNo) {
		this.wicAcctNo = wicAcctNo;
	}
	public boolean isAdmin() {
		return isAdmin;
	}
	public void setAdmin(boolean isAdmin) {
		this.isAdmin = isAdmin;
	}
	
	public List<Address> getAddressList() {
		if(null == addressList){
			addressList = new ArrayList<Address>();
		   }
	    return 	addressList;	
	}
	/**
	 * @param addressList the addressList to set
	 */
	public void setAddressList(List<Address> addressList) {
		this.addressList = addressList;
	}
	/**
	 * @return the middleName
	 */
	public String getMiddleName() {
		return middleName;
	}
	/**
	 * @param middleName the middleName to set
	 */
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	/**
	 * @return the currentOrder
	 */
	public String getUserType() {
		return userType;
	}
	public void setUserType(String userType) {
		this.userType = userType;
	}
	
		public ShoppingCart getCurrentOrder()
	{
		return currentOrder;
	}
	
	public void setCurrentOrder(ShoppingCart f) 
	{
		currentOrder = f;
	}
	/**
	 * @return the pastOrders
	 */
	public List<Order> getPastOrders() {
		return pastOrders;
	}
	/**
	 * @param pastOrders the pastOrders to set
	 */
	public void setPastOrders(List<Order> pastOrders) {
		this.pastOrders = pastOrders;
	}
	
	
	/**
	 * @param currentOrder the currentOrder to set
	 */
	public Object clone()throws CloneNotSupportedException{  
		return super.clone();  
		}   

    



}