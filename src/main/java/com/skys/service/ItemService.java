package com.skys.service;

import com.skys.controller.UploadController;
import com.skys.pojo.Item;
import com.skys.pojo.ItemType;
import com.skys.pojo.Sprit;
import com.skys.mapper.ItemMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class ItemService {


    private ItemMapper itemMapper;
    private SpritService spritService;
    private ItemTypeService itemTypeService;
    private UploadController uploadController;
    Integer AllPage = 0;
    Integer ListCount = 24;

    @Autowired
    public ItemService(ItemMapper itemMapper, SpritService spritService, ItemTypeService itemTypeService, UploadController uploadController) {
        this.itemMapper = itemMapper;
        this.spritService = spritService;
        this.itemTypeService = itemTypeService;
        this.uploadController = uploadController;
    }



    public List<Item> selectAllItem() {
        List<Item> list1 = itemMapper.selectAllItems();
        List<Sprit> spritList = spritService.SelectAllSprit();
        List<ItemType> itemtypeList = itemTypeService.selectAllItemType();
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
        return itemMapper.selectItemForDelSprit(spritID);
    }

    public boolean deleteItem(int itemID) {
        Item item = itemMapper.selectItemByID(itemID);
        uploadController.uploadDelete(item.getItemLink());
        return itemMapper.deleteItem(itemID);
    }

    public boolean updateItem(Item item) {
        Item newitem = item;
        Item olditem = itemMapper.selectItemByID(item.getItemID());
        if(newitem.getItemLink() == null || newitem.getItemLink().equals(""))
            newitem.setItemLink(olditem.getItemLink());
        else
            uploadController.uploadDelete(olditem.getItemLink());
        return itemMapper.updateItem(newitem);
    }

    public boolean insertItem(Item item) {return itemMapper.insertItem(item);}
}
