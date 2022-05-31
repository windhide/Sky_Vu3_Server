package com.skys.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.skys.Entity.TalkMesseage;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface TalkMesseage_Mapper extends BaseMapper<TalkMesseage> {

    @Select("select t.* from talkmesseage t,account a where t.talkMesseageAccountID = a.accountID ORDER BY t.talkMesseageID")
    List<TalkMesseage> selectTalkMesseage();

    @Delete("delete from talkmesseage where talkMesseageID=#{id}")
    boolean deleteTalkMesseage(int id);

    @Insert("insert into talkmesseage values(null,#{talkMesseageContent},#{talkMesseageAccountID},#{talkMesseageTime})")
    boolean insertTalkMesseage(TalkMesseage tm);
}
