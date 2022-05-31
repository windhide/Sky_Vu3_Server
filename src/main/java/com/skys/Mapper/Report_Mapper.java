package com.skys.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.skys.Entity.Report;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface Report_Mapper extends BaseMapper<Report> {

    @Select("SELECT r.*,a.accountUsername from report r,account a where r.accountID = a.accountID")
    List<Report> selectAllReport();

    @Update("update report set reportListTitle=#{reportListTitle},reportListimage=#{reportListimage},reportListMesseage=#{reportListMesseage},accountID=#{accountID},reportTime=#{reportTime} where reportListID=#{reportListID}")
    boolean updateReport(Report report);

    @Insert("insert into report values(null,#{reportListTitle},#{reportListimage},#{reportListMesseage},#{accountID},#{reportTime}")
    boolean insertReport(Report report);
}
