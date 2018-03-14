package com.ch.www.web;

import java.io.IOException;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ch.www.domain.TbUser;
import com.ch.www.service.impl.UserUapateServiceLmpl;
import com.ch.www.vo.UserVO;

@Controller
public class UserUapateAction {
     @Autowired
     @Qualifier("uapateService")
	 private UserUapateServiceLmpl uapateServiceLmpl;
      //主页
     @RequestMapping("/home")
     public String  home() {
		
    	 return "/home";
	}
     //跳转到用户查询界面
     @RequestMapping("/selectUser")
     public String  selectUser() {
		 
    	 
    	 return "/user/user";
	}
     //查全部
     @RequestMapping("/userJson")
     @ResponseBody
     public UserVO<TbUser>  showUser(String username,@RequestParam(defaultValue="0")Integer status) {
    	 UserVO<TbUser> showUser = uapateServiceLmpl.showUser(username, status);
    	 System.out.println("data="+showUser.getRows().get(0).getCreatedate().toString());
    	 return showUser;
	}
   //跳转到添加页面和添加
     @RequestMapping("/addUser")
     public String  addUser(TbUser tbUser,HttpServletResponse response,Integer flag) {
    	 response.setCharacterEncoding("utf-8");
    	 response.setContentType("text/html;charset=UTF-8");
		 if(flag==1){
			 return "/user/showAddUser";		 
		 }else{
			 try {
	    	 boolean insertUser = uapateServiceLmpl.insertUser(tbUser);
	    	  System.out.println(insertUser);
	    	     if(insertUser){
						response.getWriter().print("success");
					 }else{
						 response.getWriter().print("error");
					 }  
	    	    }catch (IOException e) {
					e.printStackTrace();
				}
		 }    
		 return null;
	}
    //修改
     @RequestMapping("/updateUser")
     public String updateUser(Model model,TbUser tbUser,HttpServletResponse response,Integer flag,HttpSession session){
    	 response.setCharacterEncoding("utf-8");
    	 response.setContentType("text/html;charset=UTF-8");
    	 System.out.println(flag);
    	 TbUser selectID = uapateServiceLmpl.selectID(tbUser.getId());
    	 if(flag==1){
    		 model.addAttribute("user", selectID);
    		  return "/user/showUpdateUser";
    	 }else{
    		 try {
    		 boolean updataUser = uapateServiceLmpl.updataUser(tbUser);
    		 if(updataUser){
						response.getWriter().print("success");
					}else{
						response.getWriter().print("error");
					} 
    		 }catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
    	 }
             
    	 
    	 return null;	 
     }
     //删除
     @RequestMapping("/removeUser")
     public String deleteID(Integer flag,Integer id,@RequestParam(value = "ids[]",required=false)Integer[] ids,HttpServletResponse response){
    	 response.setCharacterEncoding("utf-8");
    	 response.setContentType("text/html;charset=UTF-8");
    	 //删除单个
    	 if(flag==1){
    		 boolean deleteID = uapateServiceLmpl.deleteID(id);
        	 if(deleteID){
        		 System.out.println("删除成功");
        		 return "/user/user";
        		 
        	 }
    	 }else{
    		 boolean deleteID = uapateServiceLmpl.deleteAll(ids);
    		 if(deleteID){
    			 try {
					response.getWriter().print("success");
					System.out.println("批量删除成功");
				} catch (IOException e) {
					e.printStackTrace();
				}
        	 }
    	 }	 
    	 return null;
     }
}
