package com.skys.Controller;

import com.skys.Entity.SeasonOrActivity;
import com.skys.Service.SeasonOrActivity_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
@RequestMapping("/SeasonOrActivity")
public class SeasonOrActivity_Controller {

    @Autowired
    SeasonOrActivity_Service soas;

    @RequestMapping("/select")
    public List<SeasonOrActivity> selectSeasonOrActivity(){return soas.selectAllSeasonOrActivity();}

    @RequestMapping("/daohang")
    public List<SeasonOrActivity> selectAllSeasonOrActivityForDaohang(){return soas.selectAllSeasonOrActivityForDaohang();}

    @RequestMapping("/insert")
    public boolean insertSeassonOrActivity(SeasonOrActivity soa){
        return soas.insertSeassonOrActivity(soa);
    }
    @RequestMapping("/delete")
    public boolean deleteSeassonOrActivity(int id){
        return soas.deleteSeassonOrActivity(id);
    }
    @RequestMapping("/update")
    public boolean updateSeassonOrActivity(SeasonOrActivity soa){
        return soas.updateSeassonOrActivity(soa);
    }
}
