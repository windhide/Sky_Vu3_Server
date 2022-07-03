package com.skys.service;

import com.skys.mapper.ReprintMapper;
import com.skys.pojo.Reprint;
import com.skys.pojo.Sprit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReprintServiceImp implements ReprintService {

    private ReprintMapper reprintMapper;
    private SpritService spritService;

    @Autowired
    public ReprintServiceImp(ReprintMapper reprintMapper, SpritService spritService) {
        this.reprintMapper = reprintMapper;
        this.spritService = spritService;
    }

    public List<Reprint> getAllReprint() {
        List<Reprint> ReprintList = reprintMapper.getAllReprint();
        List<Sprit> spritList = spritService.SelectAllSprit();
        int count = 0;
        for (int i = 0; i < ReprintList.size(); i++)
            for (Sprit s : spritList)
                if (ReprintList.get(i).getSpritID() == s.getSpritID())
                    ReprintList.get(i).setSprit(s);
        for (int i = 0; i < ReprintList.size(); i++) {
            for (int j = 0; j < ReprintList.size(); j++) {
                if (ReprintList.get(i).getSpritID() == ReprintList.get(j).getSpritID())
                    count++;
            }
            ReprintList.get(i).setCount(count);
            count = 0;
        }
        return ReprintList;
    }

    public boolean insertReprint(Reprint reprint) {
        return reprintMapper.insertReprint(reprint);
    }

    public boolean updateReprint(Reprint reprint) {
        return reprintMapper.updateReprint(reprint);
    }

    public boolean deleteReprint(int id) {
        return reprintMapper.deleteById(id) >= 1 ? true : false;
    }
}
