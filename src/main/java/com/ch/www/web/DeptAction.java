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

import com.ch.www.domain.TbDept;
import com.ch.www.service.impl.DeptServiceLmpl;
import com.ch.www.vo.UserVO;

@Controller
public class DeptAction {
    @Autowired
    @Qualifier("deptdervice")
	private DeptServiceLmpl dServiceLmpl;
    
    //跳转页面
    @RequestMapping("/dept/selectDept")
    public String servletDept(){
    	   
    	return "/dept/dept";
    }
    //进入页面查询和查找
    @RequestMapping("/deptJson")
    @ResponseBody
    public UserVO<TbDept> deptJson(String name){
    	
    	UserVO<TbDept> dpetJson = dServiceLmpl.dpetJson(name);
     
    	return dpetJson;	
    }
    //跳转添加页面和添加
    @RequestMapping("/dept/addDept")
    public String addDept(Integer flag,TbDept tbDept,HttpServletResponse response){
    	//判断是添加还是跳转页面
    try {
		if(flag==1){
			return "/dept/showAddDept";
		}else{
			boolean addDept = dServiceLmpl.addDept(tbDept);
			if(addDept){
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
    
    //编辑部门信息
    @RequestMapping("/dept/updateDept")
    public String updateDept(Model model,Integer flag,TbDept tbDept,HttpSession session,Integer id,HttpServletResponse response){
		//判断是跳转页面还是修改 
    try {
    	System.out.println("1111");
    	if(flag==1){
    		TbDept tDept = dServiceLmpl.mySelectByID(id);
    		model.addAttribute("dept", tDept);
			return "/dept/showUpdateDept";
		 }else{
			 boolean updataByDept = dServiceLmpl.updataByDept(tbDept);
			 if(updataByDept){
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
    
    //刪除和批量刪除
    @RequestMapping("dept/removeDept")
    public String deleteALL(Integer flag,Integer id,HttpServletResponse response,@RequestParam(value = "ids[]",required=false)Integer[] ids){
		//判断是删除还是批量删除
    try {
    	if(flag==1){
    		boolean deleteByIDDepe = dServiceLmpl.deleteByIDDepe(id);
    		if(deleteByIDDepe){
    			return "/dept/dept";
    		}
		}else{
			boolean deleteByAll = dServiceLmpl.deleteByAll(ids);
			if(deleteByAll){
				response.getWriter().print("success");
			}else{
				response.getWriter().print("error");
				}
			}
		}catch (IOException e) {
			e.printStackTrace();
		}
    return null; 	
    }
    
}
