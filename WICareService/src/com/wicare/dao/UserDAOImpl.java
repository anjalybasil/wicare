package com.wicare.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.wicare.dto.Address;
import com.wicare.dto.User;
import com.wicare.exception.CustomException;
import com.wicare.exception.StatusCode;

public class UserDAOImpl implements UserDAO {
	
	
	public static final String SAVE_USER_ADDRESS = "INSERT INTO wi_address(address_type, address_line1, address_line2, city," +
			" state, zip, country, phone_no, user_id) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

	public static final String GET_USER_ADDRESS = "Select * from  wi_address where  user_id = ? and address_type = ?";
	
	public static final String UPDATE_USER_ADDRESS = "UPDATE wi_address SET address_type = ?, address_line1 = ?, address_line2 =?, city=?, state=?, zip=?, country=?, phone_no=? " +
			"  where  address_id = ? ";
	
	
	String updateQuery = "UPDATE wicare.wi_user SET `first_name` = ?,`middle_name` = ?,`last_name` = ?,`wic_acctno`=? WHERE `user_id` = ?";		
	



	@Override
	public User validateUser(String userName, String password) throws CustomException {
		
		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		User user = null;
		try {  		
		        conn = ConnectionManager.getConnectionFromDataSource();
				
				String query = "SELECT * FROM wicare.wi_user WHERE email = ? AND password = ?";
				
					pstmt = conn.prepareStatement(query);
					pstmt.setString(1, userName);
					pstmt.setString(2, password);
					
					rs = ConnectionManager.executeQuery(pstmt);
					
					

					while (rs.next()) {
						
						user = new User();
						user.setUserid(rs.getInt("user_id"));
						user.setFirstName(rs.getString("first_name"));
						user.setMiddleName(rs.getString("middle_name"));
						user.setLastName(rs.getString("last_name"));
						user.setEmail(rs.getString("email"));
						user.setWIC(rs.getBoolean("is_wic"));
						user.setWicAcctNo(rs.getString("wic_acctno"));
						user.setUserType(rs.getString("user_type"));
						if("admin".equalsIgnoreCase(user.getUserType())){
							user.setAdmin(true);
						}else{
							user.setAdmin(false);
						}
						user.setPassword(rs.getString("password"));					
						

						break;

					}
					
					
					

				} catch (Exception e) {
					System.out.println("Error occured during database operation!");
					e.printStackTrace();
				} finally {
					try {
						rs.close();
						conn.close();
						pstmt.close();
					} catch (SQLException e) {
						
						e.printStackTrace();
					}
				}
		
		return user;
	}
	
	
	public User getUser(String userName, String password) throws CustomException {
		
		return validateUser(userName,password);
	}
	
	@Override
	public int addUser(User user) throws CustomException {

		int returnValue = -1;
		String insertQuery = "INSERT INTO wicare.wi_user (`first_name`, `middle_name`, `last_name`,`email`,"
		+"`is_wic`, `wic_acctno`, `user_type` ,`password`, `cc_info`)VALUES( ?, ? , ? , ? , ? , ? , ? , ? , ? )";

		System.out.println("Insert query");

		Connection conn = ConnectionManager.getConnectionFromDataSource();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(insertQuery);
			pstmt.setString		(1, user.getFirstName());
			pstmt.setString		(2, user.getMiddleName());
			pstmt.setString		(3, user.getLastName());
			pstmt.setString		(4, user.getEmail());
			pstmt.setBoolean	(5, user.isWIC());
			pstmt.setString		(6, user.getWicAcctNo());
			if(user.isAdmin())	{pstmt.setString(7, "admin");}
							else{pstmt.setString(7, "user");}
			pstmt.setString		(8, user.getPassword());
			pstmt.setString		(9, user.getCcNumber());
			
			returnValue = ConnectionManager.executeUpdate(pstmt);


		} catch (SQLException e) {
			// e.printStackTrace();
			throw new CustomException(e, StatusCode.DB_ERROR);
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e2) {

			}
		}
		return returnValue;
	}
	
	
	@Override
	public int saveAddress(Address address, int userId) throws CustomException {

		int returnValue = -1;
		
		Connection conn = ConnectionManager.getConnectionFromDataSource();
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(SAVE_USER_ADDRESS);
			pstmt.setString		(1, address.getAddresstype());
			pstmt.setString		(2, address.getAddressLine1());
			pstmt.setString		(3, address.getAddressLine2());
			pstmt.setString		(4, address.getCity());
			pstmt.setString	    (5, address.getState());
			pstmt.setString	    (6, address.getZip());
			pstmt.setString		(7, address.getCountry());			
			pstmt.setString		(8, address.getPhoneNo());
			pstmt.setInt	    (9, userId);
			
			returnValue = ConnectionManager.executeUpdate(pstmt);


		} catch (SQLException e) {
			// e.printStackTrace();
			throw new CustomException(e, StatusCode.DB_ERROR);
		} finally {
			try {
				pstmt.close();
				conn.close();
			} catch (Exception e2) {

			}
		}
		return returnValue;
	}

	
	@Override
	public Address getAddress(int userId, String adddressType) throws CustomException {
		
		Connection conn = null;
		ResultSet rs = null;
		PreparedStatement pstmt = null;
		Address address = null;
		try {  		
		        conn = ConnectionManager.getConnectionFromDataSource();
		        
					pstmt = conn.prepareStatement(GET_USER_ADDRESS);
					pstmt.setInt(1, userId);
					pstmt.setString(2, adddressType);
					
					rs = ConnectionManager.executeQuery(pstmt);
					

					while (rs.next()) {
						
						address = new Address();
						address.setId(rs.getInt("address_id"));
						address.setAddresstype(rs.getString("address_type"));
						address.setAddressLine1(rs.getString("address_line1"));
						address.setAddressLine2(rs.getString("address_line2"));
						address.setCity(rs.getString("city"));
						address.setState(rs.getString("state"));
						address.setZip(rs.getString("zip"));
						address.setCountry(rs.getString("country"));
						address.setPhoneNo(rs.getString("phone_no"));

						break;

					}
					

				} catch (Exception e) {
					System.out.println("Error occured during database operation!");
					e.printStackTrace();
				} finally {
					try {
						rs.close();
						conn.close();
						pstmt.close();
					} catch (SQLException e) {
						
						e.printStackTrace();
					}
				}
		
		return address;
		
	}

	

	@Override
	public User searchUser(int id) throws CustomException {

		Connection conn = ConnectionManager.getConnectionFromDataSource();
		User user = null;
		String query = "SELECT * FROM wicare.wi_user WHERE id = ?";
		ResultSet rs = null;
		PreparedStatement pstmt = null;

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, id);
			rs = ConnectionManager.executeQuery(pstmt);

			user = new User();

			while (rs.next()) {
				user.setUserid(rs.getInt("user_id"));
				user.setFirstName(rs.getString("first_name"));
				user.setMiddleName(rs.getString("middle_name"));
				user.setLastName(rs.getString("last_name"));
				user.setEmail(rs.getString("email"));
				user.setWIC(rs.getBoolean("is_wic"));
				user.setWicAcctNo(rs.getString("wic_acctno"));
				user.setPassword(rs.getString("password"));
				user.setUserType(rs.getString("user_type"));
				if(rs.getString("user_type").equalsIgnoreCase("admin")){user.setAdmin(true);}
				else{user.setAdmin(false);}
				user.setCcNumber(rs.getString("cc_info"));

				break;

			}
			
		} catch (Exception e) {
			
			System.out.println("Error occured during database operation!");
			e.printStackTrace();
			
		} finally {
			try {
				rs.close();
				conn.close();
				pstmt.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
		}

		return user;
	}
	
	
	@Override
	public int updateUser(User user) throws CustomException {
		int returnValue = 0;
		
		Connection conn = ConnectionManager.getConnectionFromDataSource();
		PreparedStatement pstmt = null;

		String updateQuery = "UPDATE wicare.wi_user SET `first_name` = ?,`middle_name` = ?,`last_name` = ?,`wic_acctno`=?, `is_wic` =? WHERE `user_id` = ?";		
		

		try {
			pstmt = conn.prepareStatement(updateQuery);			
			pstmt.setString(1,user.getFirstName());
			pstmt.setString(2, user.getMiddleName());
			pstmt.setString(3, user.getLastName());			
			pstmt.setString(4, user.getWicAcctNo());
			pstmt.setBoolean(5, user.isWIC());		
			pstmt.setInt(6, user.getUserid());
			
			

			returnValue = ConnectionManager.executeUpdate(pstmt);

		} catch (SQLException e) {
			throw new CustomException(e, StatusCode.DB_ERROR);
		} finally {
			try {
				conn.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return returnValue;
	}
	
	
	public int updateAddress(Address address) throws CustomException {
		int returnValue = -1;
		
		Connection conn = ConnectionManager.getConnectionFromDataSource();
		PreparedStatement pstmt = null;

		

		try {
			pstmt = conn.prepareStatement(UPDATE_USER_ADDRESS);			
			
			
			
			pstmt.setString		(1, address.getAddresstype());
			pstmt.setString		(2, address.getAddressLine1());
			pstmt.setString		(3, address.getAddressLine2());
			pstmt.setString		(4, address.getCity());
			pstmt.setString	    (5, address.getState());
			pstmt.setString		(6, address.getZip());	
			pstmt.setString		(7, address.getCountry());			
			pstmt.setString		(8, address.getPhoneNo());
			pstmt.setInt	    (9, address.getId());
			
			

			returnValue = ConnectionManager.executeUpdate(pstmt);

		} catch (SQLException e) {
			throw new CustomException(e, StatusCode.DB_ERROR);
		} finally {
			try {
				conn.close();
				pstmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		return returnValue;
	}
	
}
