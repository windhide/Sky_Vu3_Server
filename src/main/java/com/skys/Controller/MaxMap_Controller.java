package com.skys.Controller;

import com.skys.Entity.MaxMap;
import com.skys.Service.MaxMap_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
@RequestMapping("/MaxMap")
public class MaxMap_Controller {
    @Autowired
    MaxMap_Service mms;

    @RequestMapping("/select")
    public List<MaxMap> selectAllMiniMap(){
        return mms.selectAllMaxMap();
    }
}
