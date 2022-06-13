package com.skys.Controller;

import com.skys.Entity.MiniMap;
import com.skys.Service.MiniMapService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/MiniMap")
public class MiniMapController {


    private MiniMapService miniMapService;

    @Autowired
    public MiniMapController(MiniMapService miniMapService) {
        this.miniMapService = miniMapService;
    }

    @RequestMapping("/select")
    public List<MiniMap> selectAllMiniMap(){
        return miniMapService.selectAllMiniMap();
    }

}
