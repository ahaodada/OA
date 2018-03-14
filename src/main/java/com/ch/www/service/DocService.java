package com.ch.www.service;

import com.ch.www.domain.TbDoc;
import com.ch.www.vo.UserVO;

public interface DocService {
  
	//上传添加
	public boolean add(String title,String content,Integer uid,String filename);
	
	//查询
	public UserVO<TbDoc> lookUp(String title);
	
	//删除
	public void deleteID(Integer id);
	
	//批量删除
	public void deleteAll(Integer[] ids);
	
}
