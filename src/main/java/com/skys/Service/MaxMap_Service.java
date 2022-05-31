package com.skys.Service;

import com.skys.Entity.MaxMap;
import com.skys.Mapper.MaxMap_Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MaxMap_Service {

    @Autowired
    MaxMap_Mapper maxMapper;

    public List<MaxMap> selectAllMaxMap(){
        return maxMapper.selectAllMaxMap();
    };


}
