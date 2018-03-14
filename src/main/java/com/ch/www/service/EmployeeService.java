package com.ch.www.service;

import java.util.List;

import com.ch.www.domain.TbDept;
import com.ch.www.domain.TbEmployee;
import com.ch.www.domain.TbJob;
import com.ch.www.vo.UserVO;

public interface EmployeeService {
	
	//查全部
	public UserVO<TbEmployee> show(TbEmployee tbEmployee);
	//添加
	public boolean addEmployee(TbEmployee tbEmployee);
	//查部门
	public List<TbDept> selectDept();
	//查职业
	public List<TbJob> selectJob();
	//按ID查
	public TbEmployee byID(Integer id);
	//修改
	public boolean updateByTB(TbEmployee tb);
	//删除
	public boolean deleteForId(Integer id);
	//批量删除
	public boolean deleteForAll(Integer[] ids);
    
}
