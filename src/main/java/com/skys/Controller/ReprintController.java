package com.skys.Controller;

import com.skys.Entity.Reprint;
import com.skys.Service.ReprintService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
@RequestMapping("/reprint")
public class ReprintController {

    @Autowired
    ReprintService reprintService;

    @RequestMapping("/select")
    public List<Reprint> getAllReprint(){
        return reprintService.getAllReprint();
    }

    @RequestMapping("/insert")
    public boolean insertReprint(Reprint reprint){return reprintService.insertReprint(reprint);}

    @RequestMapping("/update")
    public boolean updateReprint(Reprint reprint){return reprintService.updateReprint(reprint);}

    @RequestMapping("/delete")
    public boolean deleteReprint(int id){return reprintService.deleteReprint(id);}
}
