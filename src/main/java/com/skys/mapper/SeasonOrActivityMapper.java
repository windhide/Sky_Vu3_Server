package com.skys.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.skys.pojo.SeasonOrActivity;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface SeasonOrActivityMapper extends BaseMapper<SeasonOrActivity> {
        @Select("select * from SeasonOrActivity")
        List<SeasonOrActivity> selectAllSeasonOrActivity();

        @Insert("insert into seasonoractivity values(null,#{srName},#{srStartTime},#{srEndTime},#{srIsSeason})")
        boolean insertSeassonOrActivity(SeasonOrActivity soa);

        @Delete("delete from seasonoractivity where srID = #{id}")
        boolean deleteSeassonOrActivity(int id);

        @Update("update seasonoractivity set srName = #{srName} ,srStartTime = #{srStartTime} ,srEndTime = #{srEndTime},srIsSeason = #{srIsSeason} where srID = #{srID}")
        boolean updateSeassonOrActivity(SeasonOrActivity soa);
}
