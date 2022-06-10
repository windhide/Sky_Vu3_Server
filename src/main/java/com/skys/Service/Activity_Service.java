package com.skys.Service;

import com.skys.Entity.Activity;
import com.skys.Mapper.Activity_Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Activity_Service {

    @Autowired
    Activity_Mapper activm;

    public List<Activity> selectActivity(){
        return activm.selectActivity();
    }

}
