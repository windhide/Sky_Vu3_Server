package com.skys.service.Imp;

import com.skys.mapper.AccountMapper;
import com.skys.mapper.TalkMesseageMapper;
import com.skys.pojo.Account;
import com.skys.pojo.TalkMesseage;
import com.skys.service.TalkMesseageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TalkMesseageServiceImp implements TalkMesseageService {

    private TalkMesseageMapper talkMesseageMapper;
    private AccountMapper accountMapper;

    @Autowired
    public TalkMesseageServiceImp(TalkMesseageMapper talkMesseageMapper, AccountMapper accountMapper) {
        this.talkMesseageMapper = talkMesseageMapper;
        this.accountMapper = accountMapper;
    }

    public List<TalkMesseage> selectTalkMesseage() {
        List<TalkMesseage> list1 = talkMesseageMapper.selectTalkMesseage();
        List<Account> list2 = accountMapper.accountFindForTalkMesseage();
        for (int i = 0; i < list1.size(); i++) {
            list1.get(i).setAccount(list2.get(i));
        }
        return list1;
    }

    public boolean deleteTalkMesseage(int id) {
        return talkMesseageMapper.deleteTalkMesseage(id);
    }

    public boolean insertTalkMesseage(TalkMesseage tm) {
        return talkMesseageMapper.insertTalkMesseage(tm);
    }

}
