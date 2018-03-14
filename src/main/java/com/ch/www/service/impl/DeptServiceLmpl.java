package com.ch.www.service.impl;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.www.domain.TbDept;
import com.ch.www.domain.TbDeptExample;
import com.ch.www.domain.TbDeptExample.Criteria;
import com.ch.www.mapper.TbDeptMapper;
import com.ch.www.service.DeptService;
import com.ch.www.vo.UserVO;

@Service("deptdervice")
public class DeptServiceLmpl implements DeptService {
    @Autowired
	private TbDeptMapper tbDeptMapper;
    //查找全部信息
	@Override
	public UserVO<TbDept> dpetJson(String name){
		UserVO<TbDept> userVO = new UserVO<>();
		TbDeptExample example = new TbDeptExample();
		Criteria createCriteria = example.createCriteria();
		List<TbDept> selectByExample=null;
		 //判断条件不为空按照部门名字查询
		if(!name.equals("")){
			createCriteria.andNameEqualTo(name);
			selectByExample=tbDeptMapper.selectByExample(example);
			userVO.setTotal(selectByExample.size());
			userVO.setRows(selectByExample);
		}else {
		    selectByExample = tbDeptMapper.selectByExample(example);
		    userVO.setTotal(selectByExample.size());
			userVO.setRows(selectByExample);	
		}
		return userVO;
	}
	
	//添加部门
	@Override
	public boolean addDept(TbDept tbDept) {
		
		return tbDeptMapper.insertSelective(tbDept)>0;
	}

	//id查找
	@Override
	public TbDept mySelectByID(Integer id) {
		 
		return tbDeptMapper.selectByPrimaryKey(id);
	}
    
	//修改
	@Override
	public boolean updataByDept(TbDept tbDept) {
		TbDeptExample example = new TbDeptExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andIdEqualTo(tbDept.getId());
		return tbDeptMapper.updateByExampleSelective(tbDept, example)>0;
	}
    
	//删除
	@Override
	public boolean deleteByIDDepe(Integer id) {
		
		return tbDeptMapper.deleteByPrimaryKey(id)>0;
	}
  
	//批量删除
	@Override
	public boolean deleteByAll(Integer[] ids) {
		TbDeptExample example = new TbDeptExample();
		Criteria createCriteria = example.createCriteria();
		createCriteria.andIdIn(Arrays.asList(ids));
		return tbDeptMapper.deleteByExample(example)>0;
	}
	
	
    
}
