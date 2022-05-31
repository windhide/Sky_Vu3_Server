package com.skys.Controller;

import com.skys.Entity.TalkMesseage;
import com.skys.Service.TalkMesseage_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
public class TalkMesseage_Controller {

    @Autowired
    TalkMesseage_Service tms;

    @RequestMapping("/talkMesseage/select")
    public List<TalkMesseage> talkMesseageSelect(){
        return tms.selectTalkMesseage();
    }

    @RequestMapping("/talkMesseage/delete")
    public boolean talkMesseageDelete(int id){
        return tms.deleteTalkMesseage(id);
    }

    @RequestMapping("/talkMesseage/insert")
    public boolean talkMesseageInsert(TalkMesseage tm){
        return tms.insertTalkMesseage(tm);
    }

}
