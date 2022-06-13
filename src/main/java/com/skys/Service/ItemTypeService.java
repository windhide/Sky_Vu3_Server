package com.skys.Service;

import com.skys.Entity.ItemType;
import com.skys.Mapper.ItemTypeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemTypeService {

    private ItemTypeMapper itemTypeMapper;

    @Autowired
    public ItemTypeService(ItemTypeMapper itemTypeMapper) {
        this.itemTypeMapper = itemTypeMapper;
    }

    public List<ItemType> selectAllItemType(){
        return itemTypeMapper.selectAllItemType();
    }

}
