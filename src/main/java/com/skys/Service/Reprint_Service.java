package com.skys.Service;

import com.skys.Entity.Reprint;
import com.skys.Entity.Sprit;
import com.skys.Mapper.Reprint_Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class Reprint_Service {

    @Autowired
    Reprint_Mapper RM;
    @Autowired
    Sprit_Service ss;


    public List<Reprint> getAllReprint() {
        List<Reprint> ReprintList = RM.getAllReprint();
        List<Sprit> spritList = ss.SelectAllSprit();
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

    public boolean insertReprint(Reprint reprint) {return RM.insertReprint(reprint);}

    public boolean updateReprint(Reprint reprint) {return RM.updateReprint(reprint);}

    public boolean deleteReprint(int id) {
        return RM.deleteById(id) >= 1 ? true : false;
    }
}
