package com.skys.Controller;

import com.skys.Entity.Activity;
import com.skys.Service.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/activity")
public class ActivityController {

    private ActivityService activityService;

    @Autowired
    public ActivityController(ActivityService activityService) {
        this.activityService = activityService;
    }

    @RequestMapping("/select")
    public List<Activity> selectActivity(){
        return activityService.selectActivity();
    }

}
