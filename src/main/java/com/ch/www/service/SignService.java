package com.ch.www.service;

import java.util.Date;
import java.util.List;

import com.ch.www.domain.TbSign;

import com.ch.www.vo.SignChatrs;
import com.ch.www.vo.UserVO;

public interface SignService {
   
	//打卡
	public boolean addSign(Integer uid);
	
	//查询
	public UserVO<TbSign> selectAll(String startDate,String endDate);
		
	//判断是否已经打卡
	public boolean judgeUserForCard(Integer uid,String nowDate);
	
	//生成报表
	public List<SignChatrs> table(String date);
}
