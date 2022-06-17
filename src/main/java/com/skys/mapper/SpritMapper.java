package com.skys.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.skys.pojo.Sprit;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface SpritMapper extends BaseMapper<Sprit> {

    @Select("select * from sprit")
    List<Sprit> SelectAllSprit();

    @Delete("delete from sprit where spritID = #{id}")
    boolean DeleteSprit(int id);

    @Insert("insert into sprit values(null,#{spritName},#{spritCost},#{spritLink},#{srID},#{miniMapID})")
    boolean insertSprit(Sprit sprit);

    @Select("select * from sprit where spritID = #{id}")
    Sprit selectByspritID(int id);

    @Update("update sprit set  spritName = #{spritName},spritCost = #{spritCost},spritLink = #{spritLink},srID = #{srID},miniMapID = #{miniMapID} where spritID = #{spritID}")
    boolean updateSprit(Sprit sprit);
}
