package com.skys.Controller;

import com.skys.Entity.Reprint;
import com.skys.Service.Reprint_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@Controller
@RestController
public class Reprint_Controller {

    @Autowired
    Reprint_Service rs;

    @RequestMapping("/reprint")
    public List<Reprint> getAllReprint(){
        return rs.getAllReprint();
    }

    @RequestMapping("/reprint/insert")
    public boolean insertReprint(Reprint reprint){return rs.insertReprint(reprint);}

    @RequestMapping("/reprint/update")
    public boolean updateReprint(Reprint reprint){return rs.updateReprint(reprint);}

    @RequestMapping("/reprint/delete")
    public boolean deleteReprint(int id){return rs.deleteReprint(id);}
}
