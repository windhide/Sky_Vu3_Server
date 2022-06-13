package com.skys.Service;

import com.skys.Entity.ItemType;
import com.skys.Mapper.ItemTypeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemTypeService {

    @Autowired
    ItemTypeMapper itm;

    public List<ItemType> selectAllItemType(){
        return itm.selectAllItemType();
    }

}
