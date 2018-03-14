package com.ch.www.service.impl;

import java.util.Arrays;


import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ch.www.domain.TbJobExample;
import com.ch.www.domain.TbJob;
import com.ch.www.domain.TbJobExample.Criteria;
import com.ch.www.mapper.TbJobMapper;
import com.ch.www.service.JobService;
import com.ch.www.vo.UserVO;

@Service("jobservice")
public class JobServiceLmpl implements JobService{
    @Autowired
	private TbJobMapper tbjobtMapper;
    //查找全部信息
	@Override
	public UserVO<TbJob> dpetJson(String name,Integer pageNumber,Integer pageSize){
		pageNumber=(pageNumber-1)*pageSize;
		pageSize++;
		UserVO<TbJob> userVO = new UserVO<>();
		 //判断条件不为空按照职业查询
		if(!name.equals("")){
			 TbJobExample example = new TbJobExample();
			 Criteria createCriteria = example.createCriteria();
			 createCriteria.andNameEqualTo(name);
			 List<TbJob> selectByExample = tbjobtMapper.selectByExample(example);
			 userVO.setTotal(selectByExample.size());
			 userVO.setRows(selectByExample);
		}else {
			List<TbJob> fenyiByID = tbjobtMapper.fenyiByID(pageNumber, pageSize);
		    userVO.setTotal(fenyiByID.size());
			userVO.setRows(fenyiByID);
		}
		return userVO;
	}
	
	//添加职业
	@Override
	public boolean addDept(TbJob tbJob) {
		
		return tbjobtMapper.insertSelective(tbJob)>0;
	}

	//id查找
	@Override
	public TbJob mySelectByID(Integer id) {
		 
		return tbjobtMapper.selectByPrimaryKey(id);
	}
    
	//修改
	@Override
	public boolean updataByDept(TbJob tbJob) {
		TbJobExample example = new TbJobExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andIdEqualTo(tbJob.getId());
		return tbjobtMapper.updateByExampleSelective(tbJob, example)>0;
	}
    
	//删除
	@Override
	public boolean deleteByIDDepe(Integer id) {
		
		return tbjobtMapper.deleteByPrimaryKey(id)>0;
	}
  
	//批量删除
	@Override
	public boolean deleteByAll(Integer[] ids) {
		TbJobExample example = new TbJobExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andIdIn(Arrays.asList(ids));
		return tbjobtMapper.deleteByExample(example)>0;
	}
	
    
}
