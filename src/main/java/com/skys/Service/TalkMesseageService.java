package com.skys.Service;

import com.skys.Entity.Account;
import com.skys.Entity.TalkMesseage;
import com.skys.Mapper.AccountMapper;
import com.skys.Mapper.TalkMesseageMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TalkMesseageService {

    private TalkMesseageMapper talkMesseageMapper;
    private AccountMapper accountMapper;

    @Autowired
    public TalkMesseageService(TalkMesseageMapper talkMesseageMapper, AccountMapper accountMapper) {
        this.talkMesseageMapper = talkMesseageMapper;
        this.accountMapper = accountMapper;
    }

    public List<TalkMesseage> selectTalkMesseage(){
        List<TalkMesseage> list1 = talkMesseageMapper.selectTalkMesseage();
        List<Account> list2 = accountMapper.accountFindForTalkMesseage();
        for(int i = 0;i<list1.size();i++){
            list1.get(i).setAccount(list2.get(i));
        }
        return list1;
    }

    public boolean deleteTalkMesseage(int id) {
        return talkMesseageMapper.deleteTalkMesseage(id);
    }

    public boolean insertTalkMesseage(TalkMesseage tm){
        return talkMesseageMapper.insertTalkMesseage(tm);
    }

}
