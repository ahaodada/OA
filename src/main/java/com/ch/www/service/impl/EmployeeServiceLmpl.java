package com.ch.www.service.impl;


import java.text.ParseException;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ch.www.domain.TbDept;
import com.ch.www.domain.TbDeptExample;
import com.ch.www.domain.TbEmployee;
import com.ch.www.domain.TbEmployeeExample;
import com.ch.www.domain.TbEmployeeExample.Criteria;
import com.ch.www.domain.TbJob;
import com.ch.www.domain.TbJobExample;
import com.ch.www.mapper.TbDeptMapper;
import com.ch.www.mapper.TbEmployeeMapper;
import com.ch.www.mapper.TbJobMapper;
import com.ch.www.service.EmployeeService;
import com.ch.www.vo.UserVO;

@Service("employeeService")
public class EmployeeServiceLmpl implements EmployeeService{
      @Autowired
	  private TbEmployeeMapper tmapping;
      
      @Autowired
      private TbDeptMapper  dmapping;
      
      @Autowired
      private TbJobMapper  jmapping; 
       
	//查全部   部门，姓名，身份证，职位，性别，手机号
	@Override
	public UserVO<TbEmployee> show(TbEmployee tb) {
		UserVO<TbEmployee> userVO = new UserVO<TbEmployee>();
		TbEmployeeExample example = new TbEmployeeExample();
	  //判断前端是否传值过来
			if(tb.getPhone().equals("")){
				tb.setPhone(null);
			}
			if(tb.getName().equals("")){
				tb.setName(null);
			}
			 List<TbEmployee> selectAll = tmapping.selectAll(tb);
			 for(TbEmployee tbe:selectAll){
				    //根据ID查部门
					TbDept tbDept = dmapping.selectByPrimaryKey(tbe.getDid());
					//根据id查职业
					TbJob tbJob = jmapping.selectByPrimaryKey(tbe.getJid());
					tbe.setJob(tbJob);
					tbe.setDept(tbDept);
			  }
			  userVO.setTotal(selectAll.size());
			  userVO.setRows(selectAll);	  
	  
		return userVO;
       }
	//添加
	@Override
	public boolean addEmployee(TbEmployee tbEmployee) {
	try {
		 SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		 String format = simpleDateFormat.format(new Date());
		 Date parse = simpleDateFormat.parse(format);
		 tbEmployee.setCreatedate(parse);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}  
		return tmapping.insertSelective(tbEmployee)>0;
	}
	//查部门
	@Override
	public List<TbDept> selectDept() {
		TbDeptExample example = new TbDeptExample();
		List<TbDept> selectByExample = dmapping.selectByExample(example);
		return selectByExample;
	}
	//查职业
	@Override
	public List<TbJob> selectJob() {
	    TbJobExample example = new TbJobExample();
		List<TbJob> selectByExample = jmapping.selectByExample(example);
		return selectByExample;
	}
	@Override
	public TbEmployee byID(Integer id) {
		 TbEmployee tbEmployee = tmapping.selectByPrimaryKey(id);
		 TbJob tbJob = jmapping.selectByPrimaryKey(tbEmployee.getJid());
		 TbDept tbDept = dmapping.selectByPrimaryKey(id);
		 tbEmployee.setJob(tbJob);;
		 tbEmployee.setDept(tbDept);
	  return tbEmployee;
	}
	@Override
	public boolean updateByTB(TbEmployee tb) {
	
		return tmapping.updateByPrimaryKeySelective(tb)>0;
	}
	//删除
	@Override
	public boolean deleteForId(Integer id) {
		   
		return tmapping.deleteByPrimaryKey(id)>0;
	}
	//批量删除
	@Override
	public boolean deleteForAll(Integer[] ids) {
		  TbEmployeeExample example = new TbEmployeeExample();
		  List<Integer> arrayList = new ArrayList<Integer>();
		  for(int i=0;i<ids.length;i++){
			  arrayList.add(ids[i]);
		  }
		  Criteria createCriteria = example.createCriteria();
		  createCriteria.andIdIn(arrayList);
		
		return tmapping.deleteByExample(example)>0;
	}
   
}
