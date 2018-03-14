package com.ch.www.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.www.domain.TbUser;
import com.ch.www.domain.TbUserExample;
import com.ch.www.domain.TbUserExample.Criteria;
import com.ch.www.mapper.TbUserMapper;
import com.ch.www.service.UserUapateService;
import com.ch.www.vo.UserVO;
@Service("uapateService")
public class UserUapateServiceLmpl implements UserUapateService {
    
	 @Autowired
	 private TbUserMapper mapper;  
	//查全部
	@Override
	public UserVO<TbUser> showUser(String username, Integer status) {
		TbUserExample example = new TbUserExample();
		UserVO<TbUser> userVO = new UserVO<>();  
		Criteria createCriteria = example.createCriteria(); 
		     if(username.equals("")&&status!=null){
		    	  createCriteria.andStatusEqualTo(status);
		     }else if(username!=null&&status!=null){
		    	   createCriteria.andUsernameLike("%"+username+"%");
		    	   createCriteria.andStatusEqualTo(status);
		     }else {
		    	 createCriteria.andUsernameLike("%"+username+"%");
			 }
		     List<TbUser> selectByExample = mapper.selectByExample(example);
		    /* for(TbUser tp:selectByExample){
		    	 try {
		    	 Date createdate = tp.getCreatedate();
		    	 SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
				 String format = simpleDateFormat.format(createdate);
				 Date parse = simpleDateFormat.parse(format);
			     System.out.println(parse);
				 System.out.println("找到username="+tp.getUsername());
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		    	  
		     }*/
		     userVO.setTotal(selectByExample.size());
		     userVO.setRows(selectByExample);
		     //转换时间格式
		     
		  return userVO;
	}
	//添加
	@Override
	public boolean insertUser(TbUser tbUser) {
		try {
			SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String format = simpleDateFormat.format(new Date());
			Date parse = simpleDateFormat.parse(format);
			tbUser.setCreatedate(parse);
			int insertSelective = mapper.insertSelective(tbUser);
			if(insertSelective!=0){
				 return true;
			}
		} catch (ParseException e) {
			e.printStackTrace();
		}  
		return false;
	}
	//修改
	@Override
	public boolean updataUser(TbUser tbUser) {
		try {
		  SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		  String format = simpleDateFormat.format(new Date());
		  Date parse = simpleDateFormat.parse(format);
		  tbUser.setCreatedate(parse);
		  int updateByPrimaryKey = mapper.updateByPrimaryKey(tbUser);
		   if(updateByPrimaryKey!=0){
			return true;
		   }
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	//ID查
	@Override
	public TbUser selectID(Integer id) {
		  TbUser selectByPrimaryKey = mapper.selectByPrimaryKey(id);
		return selectByPrimaryKey;
		
	}
	//删除
	@Override
	public boolean deleteID(Integer id) {
	         int deleteByPrimaryKey = mapper.deleteByPrimaryKey(id);
	         if(deleteByPrimaryKey!=0){
	        	 return true;
	         }
		return false;
	}
	//批量删除
	@Override
	public boolean deleteAll(Integer[] ids) {
		 /*ArrayList<Integer> arrayList = new ArrayList<Integer>();
		 for(int i=0;i<ids.length;i++){
			 arrayList.add(new Integer(ids[i]));
		 }*/
			TbUserExample example = new TbUserExample();
		    Criteria criteria = example.createCriteria();
		    criteria.andIdIn(Arrays.asList(ids));
		    int deleteByExample = mapper.deleteByExample(example);
		    if(deleteByExample>0){
		    	 return true;
		    }
			return false;
	}
		
}
