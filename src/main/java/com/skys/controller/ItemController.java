package com.skys.controller;

import com.skys.pojo.Item;
import com.skys.service.ItemService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/item")
public class ItemController {

    private ItemService itemService;

    @Autowired
    public ItemController(ItemService itemService) {
        this.itemService = itemService;
    }

    @RequestMapping("/select")
    public List<Item> selectByItemsPage(int id) {
        return itemService.selectByItemsPage(id);
    }

    @RequestMapping("/itemPage")
    public int SelectItemPage() {
        return itemService.SelectItemPage();
    }

    @RequestMapping("/sreach")
    public List<Item> selectItemsForyou(String sreach, String season, String Type, String Map) {return itemService.selectItemsForyou(sreach,season,Type,Map);}

    @RequestMapping("/delete/sprit")
    public List<Item> selectItemForDelSprit(int spritID){return itemService.selectItemForDelSprit(spritID);}

    @RequestMapping("/update")
    public boolean updateItem(Item item){return itemService.updateItem(item);}

    @RequestMapping("/delete")
    public boolean deleteItem(int itemID){return itemService.deleteItem(itemID);}

    @RequestMapping("/insert")
    public boolean insertItem(Item item){return itemService.insertItem(item);}
}
