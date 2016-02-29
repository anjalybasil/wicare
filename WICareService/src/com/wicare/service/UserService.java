package com.wicare.service;

import com.wicare.dto.User;
import com.wicare.exception.CustomException;

public interface UserService {
	
	public User validateUser(String userName , String password) throws CustomException;
	public User addUser(User user) throws CustomException ;
	public User searchUser(int id) throws CustomException;
	public User updateUser(User user) throws CustomException;
	

}
