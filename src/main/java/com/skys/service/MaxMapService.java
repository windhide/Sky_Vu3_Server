package com.skys.service;

import com.skys.pojo.MaxMap;
import com.skys.mapper.MaxMapMapper;
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
