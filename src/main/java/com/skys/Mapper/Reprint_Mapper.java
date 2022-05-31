package com.skys.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.skys.Entity.Reprint;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface Reprint_Mapper extends BaseMapper<Reprint> {
    @Select("select * from reprint")
    List<Reprint> getAllReprint();

    @Insert("insert into reprint values(null,#{spritID},#{reprintTime})")
    boolean insertReprint(Reprint reprint);

    @Update("update reprint set spritID = #{spritID} , reprintTime = #{reprintTime} where reprintID = #{reprintID}")
    boolean updateReprint(Reprint reprint);
}
