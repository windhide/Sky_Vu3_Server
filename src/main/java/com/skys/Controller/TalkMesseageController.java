package com.skys.Controller;

import com.skys.Entity.TalkMesseage;
import com.skys.Service.TalkMesseageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
@RequestMapping("/talkMesseage")
public class TalkMesseageController {

    @Autowired
    TalkMesseageService talkMesseageService;

    @RequestMapping("/select")
    public List<TalkMesseage> talkMesseageSelect(){
        return talkMesseageService.selectTalkMesseage();
    }

    @RequestMapping("/delete")
    public boolean talkMesseageDelete(int id){
        return talkMesseageService.deleteTalkMesseage(id);
    }

    @RequestMapping("/insert")
    public boolean talkMesseageInsert(TalkMesseage tm){
        return talkMesseageService.insertTalkMesseage(tm);
    }

}
