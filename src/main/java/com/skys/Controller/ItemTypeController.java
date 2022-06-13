package com.skys.Controller;


import com.skys.Entity.ItemType;
import com.skys.Service.ItemTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
@RequestMapping("/itemType")
public class ItemTypeController {
    @Autowired
    ItemTypeService itemTypeService;

    @RequestMapping("/select")
    public List<ItemType> selectAllItems(){
        return itemTypeService.selectAllItemType();
    }
}
