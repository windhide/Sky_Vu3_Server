package com.skys.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.skys.pojo.MaxMap;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MaxMapMapper extends BaseMapper<MaxMap> {

    @Select("select * from maxmap")
    List<MaxMap> selectAllMaxMap();
}
