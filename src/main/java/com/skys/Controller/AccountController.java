package com.skys.Controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.skys.Config.TokenUtil;
import com.skys.Entity.Account;
import com.skys.Service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

@RestController
@RequestMapping("/account")
public class AccountController {


    private AccountService accountService;

    @Autowired
    public AccountController(AccountService accountService) {
        this.accountService = accountService;
    }

    @RequestMapping("/Login")
    public String selectAccountForLogin(String username,String password)throws JsonProcessingException {
            ObjectMapper objectMapper=new ObjectMapper();
            HashMap<String,Object> hs=new HashMap<>();
            if(accountService.login(username,password)){
                Account ac = new Account();
                ac.setAccountUsername(username);
                ac.setAccountUsername(password);
                hs.put("token",TokenUtil.sign(ac));
                hs.put("isLogin",true);
            }else{
                hs.put("token","");
                hs.put("isLogin",false);
            }
            return objectMapper.writeValueAsString(hs);
    }

    @RequestMapping("/Register")
    public boolean registerAccount(String username,String password){return accountService.register(username,password);}

    @RequestMapping("/Check")
    public boolean boforeRegisterCheck(String username){ return accountService.beforeRegisterCheck(username);}

    @RequestMapping("/findID")
    public String accountFindID(String username){return accountService.accountFindID(username);}

}
