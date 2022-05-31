package com.skys.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.skys.Entity.MiniMap;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MiniMap_Mapper extends BaseMapper<MiniMap> {

    @Select("select * from MiniMap")
    List<MiniMap> selectAllMiniMap();


}
