package com.skys.service;

import com.skys.pojo.TalkMesseage;

import java.util.List;

public interface TalkMesseageService {
    public List<TalkMesseage> selectTalkMesseage();

    public boolean deleteTalkMesseage(int id);

    public boolean insertTalkMesseage(TalkMesseage tm);
}
