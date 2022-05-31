package com.skys.Service;

import com.skys.Mapper.Account_Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class Account_Service {

    @Autowired
    Account_Mapper am;

    public boolean login(String username,String password){
        return am.selectAccountForLogin(username,password);
    }
    public boolean beforeRegisterCheck(String username) {return am.beforeRegisterCheck(username);}

    public boolean register(String username, String password) {return am.registerAccount(username,password);}

    public String accountFindID(String username){return am.accountFindID(username);}
}
