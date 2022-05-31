package com.skys.Controller;

import com.skys.Service.Account_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
@RestController
public class Test {

    @Autowired
    Account_Service as;

    @ResponseBody
    @RequestMapping("/login")
    public String s(Model model) {
        return as.login("admin","admin")+"";
    }




}
