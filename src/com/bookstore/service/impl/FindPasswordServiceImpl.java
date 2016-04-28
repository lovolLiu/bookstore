package com.bookstore.service.impl;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.bookstore.service.FindPasswordService;

public class FindPasswordServiceImpl implements FindPasswordService{

	@Override
	public boolean sendEmail(String email){
		String serverHost = "smtp.163.com";
		String fromEmailAccount = "bookaholicstore@163.com";
		String fromEmailPassword = "asdf12345";
		Properties props = new Properties();
		props.setProperty("mail.host", serverHost);
		props.setProperty("mail.transport.protocol", "smtp");
		props.put("mail.smtp.socketFactory.port", "465");
	    props.put("mail.smtp.socketFactory.class",
	            "javax.net.ssl.SSLSocketFactory");
	    props.put("mail.smtp.auth", "true");
	    props.put("mail.smtp.port", "465"); 
		
		Session session = Session.getInstance(props);
		Transport transport;
		Message msg = new MimeMessage(session);
		try {
			transport = session.getTransport();
			transport.connect(serverHost, fromEmailAccount, fromEmailPassword);
			msg.setFrom(new InternetAddress(fromEmailAccount));
			msg.setSubject("Bookaholic");
			msg.setText("\r\nhttp://");
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
			transport.sendMessage(msg, msg.getRecipients(Message.RecipientType.TO));
			transport.close();
		} catch (MessagingException e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean changePassword(int userID, String password) {
		// TODO Auto-generated method stub
		return false;
	}

}
