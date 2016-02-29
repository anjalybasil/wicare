package com.wicare.web.util;

import org.apache.commons.codec.binary.Base64;

public class EncryptionUtil {
	
	public String encodeBase64(String orginal){
		
		if(null != orginal){
			//encoding  byte array into base 64
	        byte[] encoded = Base64.encodeBase64(orginal.getBytes());
	        return new String(encoded);
		}		
		return null;
		
	}
	
	
	public String decodeBase64(String encrypted){
		
		if(null != encrypted){
		    byte[] decoded = Base64.decodeBase64(encrypted.getBytes());      
	        System.out.println("Base 64 Decoded  String : " + new String(decoded));
		}
		
		return null;

	}

}

