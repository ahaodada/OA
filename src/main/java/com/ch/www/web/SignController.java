package com.ch.www.web;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.persistence.PostRemove;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.ServletRequestDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ch.www.domain.TbSign;
import com.ch.www.service.impl.SignServiceLmpl;
import com.ch.www.vo.SignChatrs;
import com.ch.www.vo.UserVO;


@Controller
public class SignController {
	
	@Autowired
	@Qualifier("signservice")
	private SignServiceLmpl ssl;
    
	//跳转页面
	@RequestMapping("sign/selectSign")
	public String show(){
		return "/sign/sign";
	}
	//跳转页面
	@RequestMapping("sign/showChart")
	public String showTU(){
		return "/sign/signCharts";
	}
	
	//查询
	@RequestMapping("sign/signJson")
	@ResponseBody
	public UserVO<TbSign> selectAllOrG(@RequestParam(defaultValue="2015-01-01")String startDate,
			@RequestParam(defaultValue="2020-12-31") String endDate){	 
		return ssl.selectAll(startDate, endDate); 	
	}
	
	//打卡
    @RequestMapping("sign/addSign")
    public String addSign(Integer uid,HttpServletResponse response){
	      try {
	        if(ssl.addSign(uid)){
		        response.getWriter().print(1);
		     }else{
		        response.getWriter().print(2);
	        }	   
	      }catch (IOException e) {
		     e.printStackTrace();
	      }
	       return null;	
        }
	
	//判断用户今天是否已经打卡
    @RequestMapping("sign/decideSign")
	public String judgeUserForCard(Integer uid,String nowDate,HttpServletResponse response){
    try {
		if(ssl.judgeUserForCard(uid,nowDate)){
			 response.getWriter().print(1);
		}else{
			 response.getWriter().print(2);
		 }
	 } catch (IOException e) {
		e.printStackTrace();
	   }
		return null;
	}
    
    //生成图表
    @RequestMapping("sign/chartsJson")
    @ResponseBody
    public List<SignChatrs> table(@RequestParam(defaultValue="1990-01-01")String beginDay){
		 
    	return ssl.table(beginDay);
    	
    }
}