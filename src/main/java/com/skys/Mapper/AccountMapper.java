package com.skys.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.skys.Entity.Account;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface AccountMapper extends BaseMapper<Account> {

    @Select("select count(*) from account where accountUsername = #{username} and accountPassword = #{password}")
    boolean selectAccountForLogin(String username,String password);

    @Update("insert into account values(null,#{username},#{password})")
    boolean registerAccount(String username, String password);

    @Select("select count(*) from account where accountUsername = #{username}")
    boolean beforeRegisterCheck(String username);

    @Select("select accountID from account where accountUsername = #{username}")
    String accountFindID(String username);

    @Select("select a.accountID,a.accountUsername from talkmesseage t,account a where t.talkMesseageAccountID = a.accountID ORDER BY t.talkMesseageID")
    List<Account> accountFindForTalkMesseage();
}
