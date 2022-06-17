package com.skys.controller;

import com.skys.pojo.TalkMesseage;
import com.skys.service.TalkMesseageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/talkMesseage")
public class TalkMesseageController {

    private TalkMesseageService talkMesseageService;

    @Autowired
    public TalkMesseageController(TalkMesseageService talkMesseageService) {
        this.talkMesseageService = talkMesseageService;
    }

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
