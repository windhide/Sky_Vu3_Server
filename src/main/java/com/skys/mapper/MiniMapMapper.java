package com.skys.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.skys.pojo.MiniMap;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface MiniMapMapper extends BaseMapper<MiniMap> {

    @Select("select * from MiniMap")
    List<MiniMap> selectAllMiniMap();


}
