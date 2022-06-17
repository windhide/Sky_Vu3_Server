package com.skys.controller;


import com.skys.pojo.ItemType;
import com.skys.service.ItemTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/itemType")
public class ItemTypeController {

    private ItemTypeService itemTypeService;

    @Autowired
    public ItemTypeController(ItemTypeService itemTypeService) {
        this.itemTypeService = itemTypeService;
    }

    @RequestMapping("/select")
    public List<ItemType> selectAllItems(){
        return itemTypeService.selectAllItemType();
    }
}
