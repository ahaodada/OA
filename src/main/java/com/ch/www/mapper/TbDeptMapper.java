package com.ch.www.mapper;

import com.ch.www.domain.TbDept;
import com.ch.www.domain.TbDeptExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TbDeptMapper {
    long countByExample(TbDeptExample example);

    int deleteByExample(TbDeptExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(TbDept record);

    int insertSelective(TbDept record);

    List<TbDept> selectByExample(TbDeptExample example);

    TbDept selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") TbDept record, @Param("example") TbDeptExample example);

    int updateByExample(@Param("record") TbDept record, @Param("example") TbDeptExample example);

    int updateByPrimaryKeySelective(TbDept record);

    int updateByPrimaryKey(TbDept record);
}