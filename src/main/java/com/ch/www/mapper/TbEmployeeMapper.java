package com.ch.www.mapper;

import com.ch.www.domain.TbEmployee;
import com.ch.www.domain.TbEmployeeExample;
import com.ch.www.vo.UserVO;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbEmployeeMapper {
    long countByExample(TbEmployeeExample example);

    int deleteByExample(TbEmployeeExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbEmployee record);

    int insertSelective(TbEmployee record);

    List<TbEmployee> selectByExample(TbEmployeeExample example);

    TbEmployee selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbEmployee record, @Param("example") TbEmployeeExample example);

    int updateByExample(@Param("record") TbEmployee record, @Param("example") TbEmployeeExample example);

    int updateByPrimaryKeySelective(TbEmployee record);

    int updateByPrimaryKey(TbEmployee record);
    
    //动态SQl语句做查询
    List<TbEmployee> selectAll(TbEmployee tb);
 
}