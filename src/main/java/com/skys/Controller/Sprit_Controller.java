package com.skys.Controller;

import com.skys.Entity.Sprit;
import com.skys.Service.Sprit_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
public class Sprit_Controller {

    @Autowired
    Sprit_Service ss;

    @RequestMapping("/sprit")
    public List<Sprit> selectBySpritsPage(int id) {
        return ss.selectBySpritsPage(id);
    }

    @RequestMapping("/sprit/sreach")
    public List<Sprit> SelectSprit(String sereachData,String SeasonName,String MaxmapName) {
        return ss.SelectSprit(sereachData,SeasonName,MaxmapName);
    }

    @RequestMapping("/sprit/SpritPage")
    public int SelectSpritPage(){
        return ss.SelectSpritPage();
    }

    @RequestMapping("/sprit/delete")
    public boolean DeleteSprit(int id){return ss.DeleteSprit(id);}

    @RequestMapping("/sprit/insert")
    public boolean insertSprit(Sprit sprit){return ss.insertSprit(sprit);}

    @RequestMapping("/sprit/update")
    public boolean updateSprit(Sprit sprit){return ss.updateSprit(sprit);}

}
