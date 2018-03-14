package com.ch.www.web;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.ws.FaultAction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.core.annotation.AliasFor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ch.www.domain.TbDept;
import com.ch.www.domain.TbJob;
import com.ch.www.service.impl.JobServiceLmpl;
import com.ch.www.vo.UserVO;

@Controller
public class JobController {
	  @Autowired
	  @Qualifier("jobservice")
      private JobServiceLmpl jServiceLmpl;
	  //跳转到job页面
	  @RequestMapping("/job/selectJob")
	  public String selectJob(){
		  
		return "/job/job";  
	  }
	  //查看信息
	  @RequestMapping("/jobjson")
	  @ResponseBody
	  public UserVO<TbJob> selectJobAll(String name,Integer pageNumber,Integer pageSize){
		  UserVO<TbJob> dpetJson = jServiceLmpl.dpetJson(name,pageNumber,pageSize);  
		  return dpetJson;  
	  }
	  
	  //跳转添加页面和添加
	  @RequestMapping("/job/addJob")
	  public String addJob(Integer flag,TbJob tbJob,HttpServletResponse response){
		  try {
				if(flag==1){
					return "/job/showAddJob";
				}else{
					boolean addDept = jServiceLmpl.addDept(tbJob);
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
	    @RequestMapping("/job/updateJob")
	    public String updateDept(Model model,Integer flag,TbJob tbJob,HttpSession session,Integer id,HttpServletResponse response){
			//判断是跳转页面还是修改 
	    try {
	    	if(flag==1){
	    		 TbJob mySelectByID = jServiceLmpl.mySelectByID(id);
	    		 model.addAttribute("job", mySelectByID);
				 return "/job/showUpdateJob";
			 }else{
				 boolean updataByDept = jServiceLmpl.updataByDept(tbJob);
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
	    @RequestMapping("/job/removeJob")
	    public String deleteALL(Integer flag,Integer id,HttpServletResponse response,@RequestParam(value = "ids[]",required=false)Integer[] ids){
			//判断是删除还是批量删除
	    try {
	    	if(flag==1){
	    		boolean deleteByIDDepe = jServiceLmpl.deleteByIDDepe(id);
	    		if(deleteByIDDepe){
	    			return "/job/job"; 
	    		}
			}else{
				boolean deleteByAll = jServiceLmpl.deleteByAll(ids);
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
