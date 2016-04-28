package com.bookstore.service.impl;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.bookstore.service.FindPasswordService;

public class FindPasswordServiceImpl implements FindPasswordService{

	@Override
	public boolean sendEmail(String email){
		String serverHost = "smtp.163.com";
		String fromEmailAccount = "";
		String fromEmailPassword = " ";
		Properties props = new Properties();
		//set auth
		props.setProperty("mail.smtp.auth", "true");
		//set server host
		props.setProperty("mail.host", serverHost);
		//set protocol
		props.setProperty("mail.transport.protocol", "smtp");
		
		Session session = Session.getInstance(props);
		Transport transport;
		Message msg = new MimeMessage(session);
		try {
			transport = session.getTransport();
			transport.connect(serverHost, fromEmailAccount, fromEmailPassword);
			msg.setFrom(new InternetAddress(fromEmailAccount));
			msg.setSubject("找回密码-Bookaholic");
			msg.setText("您好,请点击下列链接重设您的密码\r\n");
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
			transport.sendMessage(msg, msg.getRecipients(Message.RecipientType.TO));
			transport.close();
		} catch (MessagingException e) {
			return false;
		}
		return false;
	}

	@Override
	public boolean changePassword(int userID, String password) {
		// TODO Auto-generated method stub
		return false;
	}

}
