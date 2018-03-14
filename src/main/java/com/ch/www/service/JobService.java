package com.ch.www.service;


import com.ch.www.domain.TbJob;
import com.ch.www.vo.UserVO;

public interface JobService {
	//查找
    public UserVO<TbJob> dpetJson(String name,Integer pageNumber,Integer pageSize);
    //添加
    public boolean addDept(TbJob tbJobt);
    //id查找
    public TbJob mySelectByID(Integer id);
    //修改
    public boolean updataByDept(TbJob tbJob);
    //删除
    public boolean deleteByIDDepe(Integer id);
    //批量删除
    public boolean deleteByAll(Integer[] ids);
}
