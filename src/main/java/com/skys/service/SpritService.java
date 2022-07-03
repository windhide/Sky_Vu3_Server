package com.skys.service;

import com.skys.pojo.Sprit;

import java.util.List;

public interface SpritService {
    public List<Sprit> SelectAllSprit();

    public List<Sprit> selectBySpritsPage(int id);

    public List<Sprit> SelectSprit(String sereachData, String SeasonName, String MaxmapName);

    public int SelectSpritPage();

    public boolean insertSprit(Sprit sprit);

    public boolean DeleteSprit(int id);

    public Sprit selectBySpritID(int id);

    public boolean updateSprit(Sprit sprit);
}