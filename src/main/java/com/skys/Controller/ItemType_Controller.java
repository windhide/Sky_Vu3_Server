package com.skys.Controller;


import com.skys.Entity.ItemType;
import com.skys.Service.ItemType_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
@RequestMapping("/itemType")
public class ItemType_Controller {
    @Autowired
    ItemType_Service its;

    @RequestMapping("/select")
    public List<ItemType> selectAllItems(){
        return its.selectAllItemType();
    }
}
