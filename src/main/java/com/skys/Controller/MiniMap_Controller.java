package com.skys.Controller;

import com.skys.Entity.MiniMap;
import com.skys.Service.MiniMap_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
public class MiniMap_Controller {

    @Autowired
    MiniMap_Service mns;

    @RequestMapping("/MiniMap")
    public List<MiniMap> selectAllMiniMap(){
        return mns.selectAllMiniMap();
    }

}
