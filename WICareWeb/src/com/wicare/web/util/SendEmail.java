package com.wicare.web.util;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.commons.lang3.RandomStringUtils;
import org.apache.log4j.Logger;

public class SendEmail
{
  
	private static Session session;
	static {
		
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		session = Session.getDefaultInstance(props,
				new javax.mail.Authenticator() {
					protected PasswordAuthentication getPasswordAuthentication() {
						return new PasswordAuthentication("anjalybbpm@gmail.com","");
					}
				});
	}
	
	public static Logger logger = Logger.getLogger(SendEmail.class);
	
	public static void main(String [] args)
     {    
		sendEmail("anjalybbpm@gmail.com");
     }


   
   
   
   public static String sendEmail(String toEmail) {
	
	


	try {

		Message message = new MimeMessage(session);
		message.setFrom(new InternetAddress("forgotpassword@wicare.com"));
		message.setRecipients(Message.RecipientType.TO,
				InternetAddress.parse(toEmail));
		message.setSubject("WICare Forgot Passwoed Support");
		String password = RandomStringUtils.randomAlphanumeric(6);
		message.setText("\n\n Please use the below password to login to WI Care \n\n" + password);
		Transport.send(message);
		
		logger.info("Email send successfully ");
		return password;

	} catch (MessagingException e) {
		logger.error("Failed to send email", e);
		return null;
	}
}
}