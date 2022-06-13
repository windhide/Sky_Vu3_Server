package com.skys.Service;

import com.skys.Entity.Activity;
import com.skys.Mapper.ActivityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ActivityService {

    @Autowired
    ActivityMapper activityMapper;

    public List<Activity> selectActivity(){
        return activityMapper.selectActivity();
    }

}
