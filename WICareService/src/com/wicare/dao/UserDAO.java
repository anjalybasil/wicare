package com.wicare.dao;

import com.wicare.dto.Address;
import com.wicare.dto.User;
import com.wicare.exception.CustomException;

public interface UserDAO {
	
	public User validateUser(String userName , String password)throws CustomException;
	public int addUser(User user) throws CustomException ;
	public User searchUser(int id) throws CustomException;
	public int updateUser(User user) throws CustomException;
	public int saveAddress(Address address, int userId) throws CustomException;
	public User getUser(String userName, String password) throws CustomException;
	public Address getAddress(int userId, String adddressType) throws CustomException;
	public int updateAddress(Address address) throws CustomException;
	public boolean changePassword(int userId, String password) throws CustomException;
	public boolean validateEmail(String email) throws CustomException;
	public boolean updatePassword(String email, String password) throws CustomException;
	

}
