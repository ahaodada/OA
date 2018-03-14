package com.ch.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.www.domain.TbUser;
import com.ch.www.domain.TbUserExample;
import com.ch.www.domain.TbUserExample.Criteria;
import com.ch.www.mapper.TbUserMapper;
import com.ch.www.service.UserService;
@Service("service")
public class UserServiceLmpl implements UserService {
      @Autowired
	  private TbUserMapper mapper;
	
	@Override
	public TbUser login(String loginame, String password) {
		      TbUserExample example = new TbUserExample();    
		      Criteria createCriteria = example.createCriteria();
		      createCriteria.andUsernameEqualTo(loginame).andPasswordEqualTo(password);
		       List<TbUser> selectByExample = mapper.selectByExample(example);
		        if(selectByExample!=null&&selectByExample.size()>0){
		        	 return selectByExample.get(0);
		        }
		return null;
	}

}
