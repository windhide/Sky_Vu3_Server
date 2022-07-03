package com.skys.service;

import com.skys.pojo.Item;

import java.util.List;

public interface ItemService {

    public List<Item> selectAllItem();

    public List<Item> selectItemsForyou(String sreach, String season, String Type, String Map);

    public List<Item> selectByItemsPage(int id);

    public int SelectItemPage();

    public List<Item> selectItemForDelSprit(int spritID);

    public boolean deleteItem(int itemID);

    public boolean updateItem(Item item);

    public boolean insertItem(Item item);
}
