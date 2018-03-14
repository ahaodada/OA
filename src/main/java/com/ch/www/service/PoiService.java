package com.ch.www.service;

public interface PoiService {
    //生成Excel
	public String showExcel(String username);
	//生成PDF
	public String showPDF(String username);
}
