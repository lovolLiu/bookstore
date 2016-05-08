package com.bookstore.service.impl;

import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.bookstore.dao.UserDAO;
import com.bookstore.domain.User;
import com.bookstore.service.FindPasswordService;

public class FindPasswordServiceImpl implements FindPasswordService{
	
	UserDAO userDao;

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
		MimeMessage msg = new MimeMessage(session);
		try {
			transport = session.getTransport();
			transport.connect(serverHost, fromEmailAccount, fromEmailPassword);
			msg.setFrom(new InternetAddress(fromEmailAccount));
			msg.setRecipient(Message.RecipientType.TO, new InternetAddress(email));
			msg.setSubject("找回密码-Bookaholic","utf-8");
			String body = "点击下面链接，找回密码<br><a href=http://localhost:8080/BookStore/changepassword.jsp#"+email+">找回密码</a>";
			msg.setText(body,"utf-8");
			msg.setContent(body, "text/html;charset=utf-8");
			msg.setSentDate(new Date());
			msg.saveChanges();
			transport.sendMessage(msg, msg.getRecipients(Message.RecipientType.TO));
			transport.close();
		} catch (MessagingException e) {
			return false;
		}
		return true;
	}

	@Override
	public boolean changePassword(String email, String password) {
		User user = userDao.findByEmail(email);
		user.setPassword(password);
		userDao.update(user);
		return true;
	}
	
	public UserDAO getUserDao(){
		return userDao;
	}
	
	public void setUserDao(UserDAO userDao){
		this.userDao = userDao;
	}

	@Override
	public boolean userExists(String email) {
		if (userDao.findByEmail(email) != null){
			return true;
		}
		return false;
	}

}
