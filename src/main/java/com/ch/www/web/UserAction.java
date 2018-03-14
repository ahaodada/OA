package com.ch.www.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.FaultAction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ch.www.domain.TbUser;
import com.ch.www.service.impl.UserServiceLmpl;

@Controller
public class UserAction {
      @Autowired
      @Qualifier("service")
	  private UserServiceLmpl userServiceLmpl;
	
      //登录
	 @RequestMapping("/login")
	public String UserLogin(String loginame,String password,String ishave,
			HttpServletResponse response,HttpServletRequest request,HttpSession session){
		  //记住账号    
		 String string="remeber";
		       if(string.equals(ishave)){
		    	   Cookie cookie1 = new Cookie("loginName", loginame);
		    	   Cookie cookie2 = new Cookie("remeber", "checked='checked'");
		    	   cookie1.setMaxAge(1800);
		    	   cookie2.setMaxAge(1800);
		    	   response.addCookie(cookie1);
		    	   response.addCookie(cookie2);
		       }else{
		    	    Cookie[] cookies = request.getCookies();
		    	     if(cookies!=null){
		    	    	   for(Cookie ck:cookies){
		    	    		   if(ck.getName().equals("loginName")){
		    	    			   ck.setMaxAge(0);
		    	    			   response.addCookie(ck);
		    	    		   }else if(ck.getName().equals("remeber")){
		    	    			   ck.setMaxAge(0);
		    	    			   response.addCookie(ck);
		    	    		   }
		    	    	   }
		    	     }
		       }
		 //登录
		     TbUser login = userServiceLmpl.login(loginame, password);
		     
		 if(login!=null){
			  session.setAttribute("user_session",login);       
			  return "/index";
		 }
		return "/error";	
	}
	 //退出登录
	 @RequestMapping("loginOut")
	 private String loginOut(HttpSession session){
		  session.invalidate();
		return "/login"; 
	 }
}
