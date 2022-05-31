package com.skys.Mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.skys.Entity.Item;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface Item_Mapper extends BaseMapper<Item> {

    @Select("select * from item")
    List<Item> selectAllItems();

    @Select("select * from item where spritID = #{spritID}")
    List<Item> selectItemForDelSprit(int spritID);

    @Delete("delete from item where itemID = #{itemID}")
    boolean deleteItem(int itemID);

    @Update("update item set itemName = #{itemName}, itemLink = #{itemLink}, spritID = #{spritID}, itemTypeID = #{itemTypeID} where itemID = #{itemID}")
    boolean updateItem(Item item);

    @Insert("insert into item values(null,#{itemName},#{itemLink},#{spritID},#{itemTypeID})")
    boolean insertItem(Item item);

    @Select("select * from item where itemID = #{itemID}")
    Item selectItemByID(int itemID);
}
