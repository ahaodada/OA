package com.ch.www.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ch.www.service.impl.PoiServiceImpl;

@Controller
public class PoiController {
     @Autowired
     @Qualifier("poiservice")
	private PoiServiceImpl psl;
	
	@RequestMapping("poi/createPoi")
	public String show(){
		return "/poi/poi";
	}
	
	//导出为Excel
	@RequestMapping("poi/createExcel")
	public String showExcel(@RequestParam(defaultValue="")String username){
		   
		   String filename = psl.showExcel(username);
		return "redirect:/doc/downloadDocument?filename="+filename;
	}
}
