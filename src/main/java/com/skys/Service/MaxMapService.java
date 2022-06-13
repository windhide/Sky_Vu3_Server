package com.skys.Service;

import com.skys.Entity.MaxMap;
import com.skys.Mapper.MaxMapMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MaxMapService {


    private MaxMapMapper maxMapMapper;

    @Autowired
    public MaxMapService(MaxMapMapper maxMapMapper) {
        this.maxMapMapper = maxMapMapper;
    }

    public List<MaxMap> selectAllMaxMap(){
        return maxMapMapper.selectAllMaxMap();
    };


}
