package com.skys.Service;

import com.skys.Controller.Upload_Controller;
import com.skys.Entity.Item;
import com.skys.Entity.ItemType;
import com.skys.Entity.Sprit;
import com.skys.Mapper.Item_Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class Item_Service {

    @Autowired
    Item_Mapper im;
    @Autowired
    Sprit_Service ss;
    @Autowired
    ItemType_Service its;
    Upload_Controller uc = new Upload_Controller();


    int AllPage = 0;
    int ListCount = 21;


    public List<Item> selectAllItem() {
        List<Item> list1 = im.selectAllItems();
        List<Sprit> spritList = ss.SelectAllSprit();
        List<ItemType> itemtypeList = its.selectAllItemType();
        for (int i = 0; i < list1.size(); i++) {
            for (int a = 0; a < spritList.size(); a++) {
                if(list1.get(i).getSpritID() == spritList.get(a).getSpritID()){
                    list1.get(i).setSprit(spritList.get(a));break;
                }
            }
            for (int b = 0; b < itemtypeList.size(); b++) {
                if(list1.get(i).getItemTypeID() == itemtypeList.get(b).getItemTypeID()){
                    list1.get(i).setItemType(itemtypeList.get(b));break;
                }
            }
        }
        return list1;
    }

    public List<Item> selectItemsForyou(String sreach, String season, String Type, String Map){
        List<Item> list = selectAllItem();
        List<Item> list1 = new ArrayList<>();
        if ((sreach.equals("全部") || sreach.equals("")) && season.equals("全部") && Type.equals("全部") && Map.equals("全部"))
            return selectAllItem();
        for (Item i : list) {
            if (i.getItemName().indexOf(sreach) != -1 || sreach.equals("") || sreach.equals("全部"))
                if (i.getSprit().getSeasonOrActivity().getSrName().equals(season) || season.equals("全部"))
                    if (i.getItemType().getItemTypeName().equals(Type) || Type.equals("全部"))
                        if (i.getSprit().getMiniMap().getMaxMap().getMaxName().equals(Map) || Map.equals("全部"))
                            list1.add(i);
        }
        return list1;
    }


    public List<Item> selectByItemsPage(int id){
        List<Item> list = selectAllItem();
        List<Item> list1 = new ArrayList<>();
        for (int i = (id - 1) * ListCount; i < id * ListCount; i++)
            try {
                list1.add(list.get(i));
            } catch (Exception e) {
                break;
            }
        return list1;
    }
    public int SelectItemPage(){
        AllPage = (selectAllItem().size() / ListCount) + 1;
        return AllPage;
    }


    public List<Item> selectItemForDelSprit(int spritID) {
        return im.selectItemForDelSprit(spritID);
    }

    public boolean deleteItem(int itemID) {
        Item item = im.selectItemByID(itemID);
        uc.uploadDelete(item.getItemLink());
        return im.deleteItem(itemID);
    }

    public boolean updateItem(Item item) {
        Item newitem = item;
        Item olditem = im.selectItemByID(item.getItemID());
        if(newitem.getItemLink() == null || newitem.getItemLink().equals(""))
            newitem.setItemLink(olditem.getItemLink());
        else
            uc.uploadDelete(olditem.getItemLink());
        return im.updateItem(newitem);
    }

    public boolean insertItem(Item item) {return im.insertItem(item);}
}
