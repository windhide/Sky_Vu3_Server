package com.skys.service;

import com.skys.mapper.MaxMapMapper;
import com.skys.pojo.MaxMap;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MaxMapServiceImp implements MaxMapService {


    private MaxMapMapper maxMapMapper;

    @Autowired
    public MaxMapServiceImp(MaxMapMapper maxMapMapper) {
        this.maxMapMapper = maxMapMapper;
    }

    public List<MaxMap> selectAllMaxMap() {
        return maxMapMapper.selectAllMaxMap();
    }

    ;


}
