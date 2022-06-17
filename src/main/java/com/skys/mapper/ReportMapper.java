package com.skys.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.skys.pojo.Report;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface ReportMapper extends BaseMapper<Report> {

    @Select("SELECT r.*,a.accountUsername from report r,account a where r.accountID = a.accountID")
    List<Report> selectAllReport();

    @Update("update report set reportListTitle=#{reportListTitle},reportListimage=#{reportListimage},reportListMesseage=#{reportListMesseage},accountID=#{accountID},reportTime=#{reportTime} where reportListID=#{reportListID}")
    boolean updateReport(Report report);

    @Insert("insert into report values(null,#{reportListTitle},#{reportListimage},#{reportListMesseage},(select accountID from account where accountUsername = #{accountUsername}),#{reportTime})")
    boolean insertReport(Report report);
}
