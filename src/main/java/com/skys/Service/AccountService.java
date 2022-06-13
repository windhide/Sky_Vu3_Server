package com.skys.Service;

import com.skys.Mapper.AccountMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountService {

    @Autowired
    AccountMapper accountMapper;

    public boolean login(String username,String password){return accountMapper.selectAccountForLogin(username,password);}

    public boolean beforeRegisterCheck(String username) {return accountMapper.beforeRegisterCheck(username);}

    public boolean register(String username, String password) {return accountMapper.registerAccount(username,password);}

    public String accountFindID(String username){return accountMapper.accountFindID(username);}
}
