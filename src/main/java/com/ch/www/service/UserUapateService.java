package com.ch.www.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.ch.www.domain.TbUser;
import com.ch.www.vo.UserVO;

public interface UserUapateService {
     
	public UserVO<TbUser> showUser(String username,Integer status);
	public boolean insertUser(TbUser tbUser);
	public boolean updataUser(TbUser tbUser);
	public TbUser selectID(Integer id);
	public boolean deleteID(Integer id);
	public boolean deleteAll(Integer[] ids);
}
