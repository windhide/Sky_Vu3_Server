package com.skys.service.Imp;

import com.skys.mapper.MaxMapMapper;
import com.skys.pojo.MaxMap;
import com.skys.service.MaxMapService;
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


}
