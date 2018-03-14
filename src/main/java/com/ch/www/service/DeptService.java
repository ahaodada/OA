package com.ch.www.service;

import com.ch.www.domain.TbDept;
import com.ch.www.domain.TbJob;
import com.ch.www.vo.UserVO;

public interface DeptService {
	//查找
    public UserVO<TbDept> dpetJson(String name);
    //添加
    public boolean addDept(TbDept tbDept);
    //id查找
    public TbDept mySelectByID(Integer id);
    //修改
    public boolean updataByDept(TbDept tbDept);
    //删除
    public boolean deleteByIDDepe(Integer id);
    //批量删除
    public boolean deleteByAll(Integer[] ids);
	
	
}
