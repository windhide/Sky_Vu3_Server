package com.skys.Controller;

import com.skys.Entity.Item;
import com.skys.Service.Item_Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@Controller
@RestController
@RequestMapping("/item")
public class Item_Controller {
    @Autowired
    Item_Service is;

    @RequestMapping("/select")
    public List<Item> selectByItemsPage(int id) {
        return is.selectByItemsPage(id);
    }

    @RequestMapping("/itemPage")
    public int SelectItemPage() {
        return is.SelectItemPage();
    }

    @RequestMapping("/sreach")
    public List<Item> selectItemsForyou(String sreach, String season, String Type, String Map) {return is.selectItemsForyou(sreach,season,Type,Map);}

    @RequestMapping("/delete/sprit")
    public List<Item> selectItemForDelSprit(int spritID){return is.selectItemForDelSprit(spritID);}

    @RequestMapping("/update")
    public boolean updateItem(Item item){return is.updateItem(item);}

    @RequestMapping("/delete")
    public boolean deleteItem(int itemID){return is.deleteItem(itemID);}

    @RequestMapping("/insert")
    public boolean insertItem(Item item){return is.insertItem(item);}
}
