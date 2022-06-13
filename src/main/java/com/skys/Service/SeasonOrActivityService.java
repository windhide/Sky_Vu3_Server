package com.skys.Service;

import com.skys.Entity.SeasonOrActivity;
import com.skys.Mapper.SeasonOrActivityMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SeasonOrActivityService {

    @Autowired
    SeasonOrActivityMapper seasonOrActivityMapper;


    public List<SeasonOrActivity> selectAllSeasonOrActivity() {
        return seasonOrActivityMapper.selectAllSeasonOrActivity();
    }

    public List<SeasonOrActivity> selectAllSeasonOrActivityForDaohang() {
        List<SeasonOrActivity> list = seasonOrActivityMapper.selectAllSeasonOrActivity();
        SeasonOrActivity list1 = list.get(13);
        SeasonOrActivity list2 = list.get(12);
        List<SeasonOrActivity> list3 = new ArrayList<SeasonOrActivity>();

        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getSrName().equals("全部") || list.get(i).getSrName().equals("常规")) continue;
            else list3.add(list.get(i));
        }
        list3.add(list2);
        list3.add(list1);

        return list3;
    }

    public boolean insertSeassonOrActivity(SeasonOrActivity soa) { return seasonOrActivityMapper.insertSeassonOrActivity(soa);   }
    public boolean deleteSeassonOrActivity(int id) { return seasonOrActivityMapper.deleteSeassonOrActivity(id);   }
    public boolean updateSeassonOrActivity(SeasonOrActivity soa) { return seasonOrActivityMapper.updateSeassonOrActivity(soa);   }
}