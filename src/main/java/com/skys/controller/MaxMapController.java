package com.skys.controller;

import com.skys.pojo.MaxMap;
import com.skys.service.MaxMapService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/MaxMap")
public class MaxMapController {

    private MaxMapService maxMapService;

    @Autowired
    public MaxMapController(MaxMapService maxMapService) {
        this.maxMapService = maxMapService;
    }

    @RequestMapping("/select")
    public List<MaxMap> selectAllMiniMap(){
        return maxMapService.selectAllMaxMap();
    }
}
