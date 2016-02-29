package com.wicare.exception;

public class CustomException extends Exception {

	private static final long serialVersionUID = -6799032848903038359L;
	private Throwable exception;
	private StatusCode status;

	public CustomException() {
	}
	
	public CustomException(Throwable exception, StatusCode status) {
		super();
		this.exception = exception;
		this.status = status;
	}

	public Throwable getException() {
		return exception;
	}

	public void setException(Throwable exception) {
		this.exception = exception;
	}

	public StatusCode getStatus() {
		return status;
	}

	public void setStatus(StatusCode status) {
		this.status = status;
	}
	
	
}