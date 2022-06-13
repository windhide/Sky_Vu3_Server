package com.skys.Controller;

import com.skys.Entity.Sprit;
import com.skys.Service.SpritService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/sprit")
public class SpritController {

    private SpritService spritService;

    @Autowired
    public SpritController(SpritService spritService) {
        this.spritService = spritService;
    }

    @RequestMapping("/select")
    public List<Sprit> selectBySpritsPage(int id) {
        return spritService.selectBySpritsPage(id);
    }

    @RequestMapping("/sreach")
    public List<Sprit> SelectSprit(String sereachData,String SeasonName,String MaxmapName) {return spritService.SelectSprit(sereachData,SeasonName,MaxmapName);}

    @RequestMapping("/SpritPage")
    public int SelectSpritPage(){
        return spritService.SelectSpritPage();
    }

    @RequestMapping("/delete")
    public boolean DeleteSprit(int id){return spritService.DeleteSprit(id);}

    @RequestMapping("/insert")
    public boolean insertSprit(Sprit sprit){return spritService.insertSprit(sprit);}

    @RequestMapping("/update")
    public boolean updateSprit(Sprit sprit){return spritService.updateSprit(sprit);}

}
