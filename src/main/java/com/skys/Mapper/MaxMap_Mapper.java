package com.skys.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.skys.Entity.MaxMap;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MaxMap_Mapper extends BaseMapper<MaxMap> {

    @Select("select * from maxmap")
    List<MaxMap> selectAllMaxMap();
}
