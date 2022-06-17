package com.skys.service;

import com.skys.pojo.MaxMap;
import com.skys.pojo.MiniMap;
import com.skys.mapper.MiniMapMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MiniMapService {

    private MiniMapMapper miniMapMapper;
    private MaxMapService maxMapService;

    @Autowired
    public MiniMapService(MiniMapMapper miniMapMapper, MaxMapService maxMapService) {
        this.miniMapMapper = miniMapMapper;
        this.maxMapService = maxMapService;
    }

    public List<MiniMap> selectAllMiniMap() {
        List<MiniMap> list = miniMapMapper.selectAllMiniMap();
        List<MaxMap> list2 = maxMapService.selectAllMaxMap();
        for (int i = 0; i < list.size(); i++) {
            for (int a = 0; a < list2.size(); a++) {
                if(list.get(i).getMaxMapID() == list2.get(a).getMaxMapID()){
                    list.get(i).setMaxMap(list2.get(a));
                    break;
                }
            }
        }
        return list;
    }


}
