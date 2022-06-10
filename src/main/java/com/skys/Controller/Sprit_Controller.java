package com.skys.Controller;

import com.skys.Entity.Sprit;
import com.skys.Service.Sprit_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
@RequestMapping("/sprit")
public class Sprit_Controller {

    @Autowired
    Sprit_Service ss;

    @RequestMapping("/select")
    public List<Sprit> selectBySpritsPage(int id) {
        return ss.selectBySpritsPage(id);
    }

    @RequestMapping("/sreach")
    public List<Sprit> SelectSprit(String sereachData,String SeasonName,String MaxmapName) {
        return ss.SelectSprit(sereachData,SeasonName,MaxmapName);
    }

    @RequestMapping("/SpritPage")
    public int SelectSpritPage(){
        return ss.SelectSpritPage();
    }

    @RequestMapping("/delete")
    public boolean DeleteSprit(int id){return ss.DeleteSprit(id);}

    @RequestMapping("/insert")
    public boolean insertSprit(Sprit sprit){return ss.insertSprit(sprit);}

    @RequestMapping("/update")
    public boolean updateSprit(Sprit sprit){return ss.updateSprit(sprit);}

}
