package com.wicare.service;

import com.wicare.dto.User;
import com.wicare.exception.CustomException;

public interface UserService {
	
	public User validateUser(String userName , String password) throws CustomException;
	public User addUser(User user) throws CustomException ;
	public User searchUser(int id) throws CustomException;
	public User updateUser(User user) throws CustomException;
	public boolean changePassword(int userId, String password) throws CustomException;
	public boolean validateEmail(String email) throws CustomException;
	public boolean updatePassword(String email, String password) throws CustomException;
	

}
