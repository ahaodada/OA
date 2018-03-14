package com.ch.www.web;

import java.io.IOException;


import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ch.www.domain.TbAdvice;
import com.ch.www.domain.TbUser;
import com.ch.www.service.impl.AdviceServiceLmpl;
import com.ch.www.util.MailUtil;
import com.ch.www.vo.UserVO;

import java.io.UnsupportedEncodingException;
import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.NameValuePair;
import org.apache.commons.httpclient.methods.PostMethod;

@Controller
public class AdviceController {
	@Autowired
	@Qualifier("adviceService")
	private AdviceServiceLmpl asl;
    
	@RequestMapping("notice/selectNotice")
	public String jump(){
	
		return "/notice/notice";	
	}
	//查全部
	@RequestMapping("/ajson")
	@ResponseBody
	public UserVO<TbAdvice> showAll(String title,String content){
         UserVO<TbAdvice> showAll = asl.lookAll(title, content);
		return showAll;	
	}
	//预览效果
	@RequestMapping("notice/prenotice")
	@ResponseBody
	public TbAdvice preview(Integer id){
	
		    TbAdvice date = asl.previewById(id);
		  
		return date;	
	}
	
	//添加和跳转页面
	@RequestMapping("notice/addNotice")
	public String addAdvice(Integer flag,TbAdvice tbAdvice,HttpServletResponse response,HttpSession session){
	try {
	    if(flag==1){
	    	return "/notice/showAddNotice";
	    }else{
	    	if(asl.addAdice(tbAdvice)){
					response.getWriter().print("success");
				}else {
					response.getWriter().print("error");
				}
	    	}
	    }catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;	
	}
	
	//编辑和跳转页
	@RequestMapping("notice/updateNotice")
	public String updateAdice(Integer flag,Integer id,Model model,TbAdvice tbAdvice,HttpServletResponse response){
     try {
	    if(flag==1){
		   TbAdvice previewById = asl.previewById(id);
		   model.addAttribute("notice", previewById);
		   return "/notice/showUpdateNotice";
	  }else{
		  if(asl.updateByTba(tbAdvice)){
				response.getWriter().print("success");
			}else {
				response.getWriter().print("error");
			 }
	     }
	   }catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
	} 
		return null;	
	}
	
	//删除和批量删除
	@RequestMapping("notice/removeNotice")
	public String deleteAllOrID(Integer flag,Integer id,@RequestParam(value="ids[]",required=false)Integer[] ids){
		if(flag==1){
		   if(asl.deleteByID(id)){
			    return "/notice/notice";
		   } 
	   }else {    
		   if(asl.deleteByAll(ids)){
			   return "/notice/notice";  
		    }
	 }
		return null;	
	}
	
	//发送短信和跳转
	@RequestMapping("notice/addMsg")
	public String sendOut(Integer flag,String phone,String content,HttpServletResponse response){
		PostMethod post=null;
	try {
	    if(flag==1){
	    	return "/notice/showAddMsg";
	    }else {
	    	HttpClient client = new HttpClient();
	    	post = new PostMethod("http://gbk.api.smschinese.cn"); 
	    	post.addRequestHeader("Content-Type","application/x-www-form-urlencoded;charset=gbk");//在头文件中设置转码
	    	NameValuePair[] data ={ new NameValuePair("Uid", "chss"),new NameValuePair("Key", "ef83f6cbbaa00536a484"),new NameValuePair("smsMob",phone),new NameValuePair("smsText",content)};
	    	post.setRequestBody(data);
				client.executeMethod(post);
			  } 
	    	Header[] headers = post.getResponseHeaders();
	    	int statusCode = post.getStatusCode();
	    	System.out.println("statusCode:"+statusCode);
	    	for(Header h : headers){
	    	   System.out.println(h.toString());
	    	  }
	    	String result = new String(post.getResponseBodyAsString().getBytes("gbk")); 
	    	
	    	if(result.equals("1")){
	    		response.getWriter().print("success");
	    	}else{
	    		response.getWriter().print("error");
	    	}
	    	
	    	System.out.println(result); //打印返回消息状态
	    	post.releaseConnection();

	    	}catch (HttpException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}	
		return null;
	}
	//发送邮件
	@RequestMapping("notice/addEmail")
	public String  sendMsg(Integer flag,String email,String title,String content,HttpServletResponse response){
	try {
	  if(flag==1){
		   return "/notice/showAddEmail";
	  }else{
		  MailUtil mailUtil = new MailUtil();
		  if(mailUtil.sendMail(email, title, content)){
				response.getWriter().print("success");
			 
		  }else{
			  response.getWriter().print("error");
		  }
	  }
	  }catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}
}
