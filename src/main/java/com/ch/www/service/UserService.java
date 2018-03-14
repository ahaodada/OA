package com.ch.www.service;

import com.ch.www.domain.TbUser;

public interface UserService {
  
	public TbUser login(String loginname,String password);
}
