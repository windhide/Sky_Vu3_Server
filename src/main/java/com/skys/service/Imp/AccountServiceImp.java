package com.skys.service.Imp;

import com.skys.mapper.AccountMapper;
import com.skys.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccountServiceImp implements AccountService {
    private AccountMapper accountMapper;

    @Autowired
    public AccountServiceImp(AccountMapper accountMapper) {
        this.accountMapper = accountMapper;
    }

    public boolean login(String username, String password) {
        return accountMapper.selectAccountForLogin(username, password);
    }

    public boolean beforeRegisterCheck(String username) {
        return accountMapper.beforeRegisterCheck(username);
    }

    public boolean register(String username, String password) {
        return accountMapper.registerAccount(username, password);
    }

    public String accountFindID(String username) {
        return accountMapper.accountFindID(username);
    }
}
