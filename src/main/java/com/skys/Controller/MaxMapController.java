package com.skys.Controller;

import com.skys.Entity.MaxMap;
import com.skys.Service.MaxMapService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
@RequestMapping("/MaxMap")
public class MaxMapController {
    @Autowired
    MaxMapService maxMapService;

    @RequestMapping("/select")
    public List<MaxMap> selectAllMiniMap(){
        return maxMapService.selectAllMaxMap();
    }
}
