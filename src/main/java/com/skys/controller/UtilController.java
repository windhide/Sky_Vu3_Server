package com.skys.controller;

import com.skys.config.TokenUtil;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/Util")
public class UtilController {

    @RequestMapping("/loginCount")
    public Integer onlineCount() {
        return TokenUtil.getLoginCount();
    }
}
