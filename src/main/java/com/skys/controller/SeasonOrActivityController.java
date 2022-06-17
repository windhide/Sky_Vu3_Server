package com.skys.controller;

import com.skys.pojo.SeasonOrActivity;
import com.skys.service.SeasonOrActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/SeasonOrActivity")
public class SeasonOrActivityController {


    private SeasonOrActivityService seasonOrActivityService;

    @Autowired
    public SeasonOrActivityController(SeasonOrActivityService seasonOrActivityService) {
        this.seasonOrActivityService = seasonOrActivityService;
    }

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
