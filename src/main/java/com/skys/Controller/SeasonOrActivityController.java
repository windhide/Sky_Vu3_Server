package com.skys.Controller;

import com.skys.Entity.SeasonOrActivity;
import com.skys.Service.SeasonOrActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
@RequestMapping("/SeasonOrActivity")
public class SeasonOrActivityController {

    @Autowired
    SeasonOrActivityService seasonOrActivityService;

    @RequestMapping("/select")
    public List<SeasonOrActivity> selectSeasonOrActivity(){return seasonOrActivityService.selectAllSeasonOrActivity();}

    @RequestMapping("/daohang")
    public List<SeasonOrActivity> selectAllSeasonOrActivityForDaohang(){return seasonOrActivityService.selectAllSeasonOrActivityForDaohang();}

    @RequestMapping("/insert")
    public boolean insertSeassonOrActivity(SeasonOrActivity soa){return seasonOrActivityService.insertSeassonOrActivity(soa);}
    @RequestMapping("/delete")
    public boolean deleteSeassonOrActivity(int id){return seasonOrActivityService.deleteSeassonOrActivity(id);}
    @RequestMapping("/update")
    public boolean updateSeassonOrActivity(SeasonOrActivity soa){return seasonOrActivityService.updateSeassonOrActivity(soa);}
}
