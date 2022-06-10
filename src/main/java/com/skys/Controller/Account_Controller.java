package com.skys.Controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.skys.Config.TokenUtil;
import com.skys.Entity.Account;
import com.skys.Service.Account_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;

@Controller
@RestController
@RequestMapping("/account")
public class Account_Controller {

    @Autowired
    Account_Service as;

    @RequestMapping("/Login")
    public String selectAccountForLogin(String username,String password)throws JsonProcessingException {
            ObjectMapper objectMapper=new ObjectMapper();
            HashMap<String,Object> hs=new HashMap<>();
            if(as.login(username,password)){
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
    public boolean registerAccount(String username,String password){
        return as.register(username,password);
    }

    @RequestMapping("/Check")
    public boolean boforeRegisterCheck(String username){ return as.beforeRegisterCheck(username);}

    @RequestMapping("/findID")
    public String accountFindID(String username){return as.accountFindID(username);}

}
