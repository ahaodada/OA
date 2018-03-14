package com.ch.www.util;

import java.util.Properties;

import javax.mail.Address;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

//发送邮件的工具类
public class MailUtil {
    
	public boolean sendMail(String recerver,String title,String content){
	try {
	    //创建Properties对象props;
		Properties props = new Properties();
		//发送邮件的配置
	     props.setProperty("mail.smtp.host", "localhost");
	     props.setProperty("mail.smtp.auto", "true");
	     props.setProperty("mail.smtp.protocol", "smtp");
		//2。邮件回话对象
		Session session = Session.getInstance(props);
		//1.创建一个消息对象
		MimeMessage msg = new MimeMessage(session);
		//设置发件人地址
		msg.setFrom(new InternetAddress("ch@ch.com"));
		//设置邮件的主题,也就是标题
		msg.setSubject(title);
		//设置邮件内容
		msg.setContent(content, "text/html;charset=UTF-8");
		Transport transport = session.getTransport();
		//建立连接
		transport.connect("localhost",25 ,"ch@ch.com", "123");
		transport.sendMessage(msg, new Address[]{new InternetAddress(recerver)});
		transport.close();
		return true;
	  } catch (NoSuchProviderException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		} catch (MessagingException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
		
		
			
	}
}
