package com.skys.Service;

import com.skys.Entity.Account;
import com.skys.Entity.TalkMesseage;
import com.skys.Mapper.Account_Mapper;
import com.skys.Mapper.TalkMesseage_Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TalkMesseage_Service {

    @Autowired
    TalkMesseage_Mapper tmm;
    @Autowired
    Account_Mapper am;

    public List<TalkMesseage> selectTalkMesseage(){
        List<TalkMesseage> list1 = tmm.selectTalkMesseage();
        List<Account> list2 = am.accountFindForTalkMesseage();
        for(int i = 0;i<list1.size();i++){
            list1.get(i).setAccount(list2.get(i));
        }
        return list1;
    }

    public boolean deleteTalkMesseage(int id) {
        return tmm.deleteTalkMesseage(id);
    }

    public boolean insertTalkMesseage(TalkMesseage tm){
        return tmm.insertTalkMesseage(tm);
    }

}
