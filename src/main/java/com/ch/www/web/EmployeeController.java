package com.ch.www.web;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.persistence.PostRemove;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ch.www.domain.TbDept;
import com.ch.www.domain.TbEmployee;
import com.ch.www.domain.TbJob;
import com.ch.www.service.impl.EmployeeServiceLmpl;
import com.ch.www.vo.UserVO;


@Controller
public class EmployeeController {
     @Autowired
     @Qualifier("employeeService")
	 private EmployeeServiceLmpl empservice;
	 //页面跳转
	@RequestMapping("/employee/selectEmployee")
	 public String jump(Model model){
		List<TbDept> selectDept = empservice.selectDept();
		List<TbJob> selectJob = empservice.selectJob();
		model.addAttribute("deptList",selectDept);
		model.addAttribute("jobList",selectJob);
		return "/employee/employee"; 
	 }
	//查全部
	@RequestMapping("/ejson")
	@ResponseBody
	public UserVO<TbEmployee> ejson(TbEmployee tbEmployee,Model model){
	
		UserVO<TbEmployee> show = empservice.show(tbEmployee);
		return show;	
	}
	
	//添加
	@RequestMapping("/employee/addEmployee")
	public String addEmployee(Integer flag, TbEmployee tbEmployee,HttpServletResponse response,Model model){
		List<TbDept> selectDept = empservice.selectDept();
		List<TbJob> selectJob = empservice.selectJob();
		model.addAttribute("deptList",selectDept);
		model.addAttribute("jobList",selectJob);
	try {
		if(flag==1){	
			return "/employee/showAddEmployee";	
		}else {
			  boolean addEmployee = empservice.addEmployee(tbEmployee);
			  if(addEmployee){
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
	
	//编辑
	@RequestMapping("/employee/updateEmployee")
	public String updateEmployee(Integer flag,Integer id,Model model,TbEmployee tbEmployee,HttpServletResponse response){
	try {
	   if(flag==1){
		    TbEmployee byID = empservice.byID(id);
		    model.addAttribute("employee", byID);
		    return "/employee/showUpdateEmployee";
	   }else{
		   boolean updateByTB = empservice.updateByTB(tbEmployee);
		   if(updateByTB){
					response.getWriter().print("success");
				}else {
					response.getWriter().print("erroe");
				}
		   }
	   }catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	   
		return null;
	}
	//删除和批量删除
	@RequestMapping("/employee/removeEmployee")
	public String deleteByIdAndAll(Integer flag,Integer id,@RequestParam(value="ids[]",required=false ) Integer[] ids,HttpServletResponse response){
	try {
		//判断是删除还是批量删除
		if(flag==1){
			boolean deleteForId = empservice.deleteForId(id);
			if(deleteForId){
				return "/employee/employee"; 		
			}else{
					response.getWriter().print("error");
				} 
			}else{
				boolean deleteForAll = empservice.deleteForAll(ids);
				if(deleteForAll){
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
