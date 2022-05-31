package com.skys.Service;

import com.skys.Entity.ItemType;
import com.skys.Mapper.ItemType_Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemType_Service {

    @Autowired
    ItemType_Mapper itm;

    public List<ItemType> selectAllItemType(){
        return itm.selectAllItemType();
    }

}
