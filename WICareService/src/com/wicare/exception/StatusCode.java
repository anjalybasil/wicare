package com.wicare.exception;

public enum StatusCode {
	DB_ERROR("Error accessing database. Please try later"), SUCCESS("success");
	
	private String msg;
	
	 StatusCode(String msg) {
		this.msg = msg;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
}