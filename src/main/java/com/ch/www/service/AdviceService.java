package com.ch.www.service;


import com.ch.www.domain.TbAdvice;
import com.ch.www.vo.UserVO;

public interface AdviceService {
     //查全部
	public UserVO<TbAdvice> lookAll(String title,String content);
	//预览查
	public TbAdvice previewById(Integer nid);
	//添加
	public boolean addAdice(TbAdvice tbAdvice);
	//编辑
	public boolean updateByTba(TbAdvice tbAdvice);
	//删除
	public boolean deleteByID(Integer id);
	//批量删除
	public boolean deleteByAll(Integer[] ids);
	
	
}
