package com.skys.Controller;

import com.skys.Entity.TalkMesseage;
import com.skys.Service.TalkMesseage_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
@RequestMapping("/talkMesseage")
public class TalkMesseage_Controller {

    @Autowired
    TalkMesseage_Service tms;

    @RequestMapping("/select")
    public List<TalkMesseage> talkMesseageSelect(){
        return tms.selectTalkMesseage();
    }

    @RequestMapping("/delete")
    public boolean talkMesseageDelete(int id){
        return tms.deleteTalkMesseage(id);
    }

    @RequestMapping("/insert")
    public boolean talkMesseageInsert(TalkMesseage tm){
        return tms.insertTalkMesseage(tm);
    }

}
