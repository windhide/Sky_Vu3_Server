package com.skys.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.skys.Entity.ItemType;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface ItemTypeMapper extends BaseMapper<ItemType> {

    @Select("select * from itemtype")
    List<ItemType> selectAllItemType();

}
