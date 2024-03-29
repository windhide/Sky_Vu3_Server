package com.skys.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.skys.pojo.Reprint;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface ReprintMapper extends BaseMapper<Reprint> {
    @Select("select * from reprint")
    List<Reprint> getAllReprint();

    @Insert("insert into reprint values(null,#{spritID},#{reprintTime})")
    boolean insertReprint(Reprint reprint);

    @Update("update reprint set spritID = #{spritID} , reprintTime = #{reprintTime} where reprintID = #{reprintID}")
    boolean updateReprint(Reprint reprint);
}
