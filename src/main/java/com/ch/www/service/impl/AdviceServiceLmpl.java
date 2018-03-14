package com.ch.www.service.impl;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.www.domain.TbAdvice;
import com.ch.www.domain.TbAdviceExample;
import com.ch.www.domain.TbAdviceExample.Criteria;
import com.ch.www.domain.TbUser;
import com.ch.www.mapper.TbAdviceMapper;
import com.ch.www.mapper.TbUserMapper;
import com.ch.www.service.AdviceService;
import com.ch.www.vo.UserVO;
@Service("adviceService")
public class AdviceServiceLmpl implements AdviceService {
	
	@Autowired
	private TbAdviceMapper mapper;
	
	@Autowired
	private TbUserMapper umapper;

	//查全部
	@Override
	public UserVO<TbAdvice> lookAll(String title, String content) {
		 UserVO<TbAdvice> userVO = new UserVO<TbAdvice>();
		 TbAdviceExample example = new TbAdviceExample(); 
		 Criteria criteria = example.createCriteria();
		 List<TbAdvice> tb1=null;
		 
		 if(title.equals("")&&content.equals("")){
			 tb1 = mapper.selectByExample(example);
		 }else if ((!title.equals(""))&&content.equals("")) { 
			 criteria.andTitleLike("%"+title+"%");
		     tb1 = mapper.selectByExample(example);
		}else if ((title.equals(""))&&(!content.equals(""))) {
			criteria.andContentLike("%"+content+"%");
			tb1 = mapper.selectByExample(example);
		}else {
			criteria.andTitleLike("%"+title+"%");
			criteria.andContentEqualTo("%"+content+"%");
			tb1 = mapper.selectByExample(example);
		}
		 
		 for(TbAdvice ta:tb1){
			 TbUser tbUser = umapper.selectByPrimaryKey(ta.getUid());
			  ta.setUser(tbUser);
		 }
		 
		 userVO.setTotal(tb1.size());
		 userVO.setRows(tb1);
		 
		return  userVO;
	}
    
	//预览查
	@Override
	public TbAdvice previewById(Integer nid) {
		   
		return mapper.selectByPrimaryKey(nid);
	}
    //添加
	@Override
	public boolean addAdice(TbAdvice tbAdvice) {
		try {
		   TbUser selectByPrimaryKey = umapper.selectByPrimaryKey(tbAdvice.getUid());  
		   tbAdvice.setUser(selectByPrimaryKey);
		   SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:dd:ss");
		   String format = simpleDateFormat.format(new Date()); 
		   tbAdvice.setCreatedate(simpleDateFormat.parse(format));
		 } catch (ParseException e) {	
			e.printStackTrace();
		}
		return mapper.insert(tbAdvice)>0;
	}
    //修改编辑
	@Override
	public boolean updateByTba(TbAdvice tbAdvice) {
		  
		return mapper.updateByPrimaryKeySelective(tbAdvice)>0;
	}
    
	//删除
	@Override
	public boolean deleteByID(Integer id) {
		
		return mapper.deleteByPrimaryKey(id)>0;
	}
    //批量删除
	@Override
	public boolean deleteByAll(Integer[] ids) {
		 TbAdviceExample example = new TbAdviceExample();
		 Criteria criteria = example.createCriteria();
		 criteria.andIdIn(Arrays.asList(ids));
		
		return mapper.deleteByExample(example)>0;
	}
	
	

}
