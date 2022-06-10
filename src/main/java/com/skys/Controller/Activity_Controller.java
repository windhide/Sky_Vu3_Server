package com.skys.Controller;

import com.skys.Entity.Activity;
import com.skys.Service.Activity_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
@RequestMapping("/activity")
public class Activity_Controller {
    @Autowired
    Activity_Service activis;

    @RequestMapping("/select")
    public List<Activity> selectActivity(){
        return activis.selectActivity();
    }

}
