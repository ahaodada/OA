package com.ch.www.service.impl;

import java.text.ParseException;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.www.domain.TbSign;
import com.ch.www.domain.TbSignExample;
import com.ch.www.domain.TbSignExample.Criteria;

import com.ch.www.domain.TbUser;
import com.ch.www.mapper.TbSignMapper;
import com.ch.www.mapper.TbUserMapper;
import com.ch.www.service.SignService;
import com.ch.www.vo.SignChatrs;
import com.ch.www.vo.UserVO;

import sun.tools.jconsole.Tab;

@Service("signservice")
public class SignServiceLmpl implements SignService {
     
	@Autowired
	private TbSignMapper smapper;
	
	@Autowired
	private TbUserMapper umapper;
	
	//打卡
	@Override
	public boolean addSign(Integer uid) {
		TbSign tbSign = new TbSign();
	try {
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		String format = simpleDateFormat.format(new Date());
		Date parse = simpleDateFormat.parse(format);
		
		TbUser user = umapper.selectByPrimaryKey(uid);
		
		tbSign.setUid(uid);
		tbSign.setUser(user);
		tbSign.setCreatetime(parse);
		tbSign.setFlag(1);
		
		
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		return smapper.insertSelective(tbSign)>0;
	}
    
	//查询
	@Override
	public UserVO<TbSign> selectAll(String startDate, String endDate) {		
		 UserVO<TbSign> userVO = new UserVO<TbSign>();
	 try {
		 SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss"); 
		 TbSignExample example = new TbSignExample();
		 
		 Date start = format.parse(startDate+" 00:00:00");
		 Date end = format.parse(endDate+" 24:00:00");
		 
		 example.createCriteria().andCreatetimeBetween(start, end);
		 List<TbSign> tbSigns = smapper.selectByExample(example);
  
		  for (TbSign tb1:tbSigns) {
			 tb1.setUser(umapper.selectByPrimaryKey(tb1.getUid()));
		  }
		  
		  userVO.setRows(tbSigns);
		  userVO.setTotal(tbSigns.size());
		  
	     }catch (ParseException e) {
			
			e.printStackTrace();
		}
	
		return userVO;
	}
   
	//判断用户是否打卡
	@Override
	public boolean judgeUserForCard(Integer uid, String nowDate) {
	     try {
		     TbSignExample example = new TbSignExample();
		     Criteria criteria = example.createCriteria();
		     
		     SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			 Date parse = simpleDateFormat.parse(nowDate);
			 
			 criteria.andUidEqualTo(uid).andCreatetimeEqualTo(parse);
			 
			List<TbSign> tbSigns = smapper.selectByExample(example);
			  if(tbSigns!=null&&tbSigns.size()>0){
				    return true;
			  }
		}catch (ParseException e) {
			e.printStackTrace();
		}	
		return false;
	}

	//报表
	@Override
	public List<SignChatrs> table(String beginDay) {		
			 List<SignChatrs> tableForChatrs = smapper.TableForChatrs(beginDay);
		return tableForChatrs;
	}

}
