package com.skys.controller;

import com.skys.pojo.Reprint;
import com.skys.service.ReprintService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/reprint")
public class ReprintController {

    private ReprintService reprintService;

    @Autowired
    public ReprintController(ReprintService reprintService) {
        this.reprintService = reprintService;
    }

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
