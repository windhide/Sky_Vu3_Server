package com.skys.service.Imp;

import com.skys.mapper.ItemTypeMapper;
import com.skys.pojo.ItemType;
import com.skys.service.ItemTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ItemTypeServiceImp implements ItemTypeService {

    private ItemTypeMapper itemTypeMapper;

    @Autowired
    public ItemTypeServiceImp(ItemTypeMapper itemTypeMapper) {
        this.itemTypeMapper = itemTypeMapper;
    }

    public List<ItemType> selectAllItemType() {
        return itemTypeMapper.selectAllItemType();
    }

}
