package com.skys.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.skys.Entity.Activity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface Activity_Mapper extends BaseMapper<Activity> {

    @Select("select * from activity")
    List<Activity> selectActivity();

}
