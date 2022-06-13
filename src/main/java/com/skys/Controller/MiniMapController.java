package com.skys.Controller;

import com.skys.Entity.MiniMap;
import com.skys.Service.MiniMapService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
@RequestMapping("/MiniMap")
public class MiniMapController {

    @Autowired
    MiniMapService miniMapService;

    @RequestMapping("/select")
    public List<MiniMap> selectAllMiniMap(){
        return miniMapService.selectAllMiniMap();
    }

}
