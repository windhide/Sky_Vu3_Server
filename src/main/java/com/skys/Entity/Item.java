package com.skys.Entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.relational.core.mapping.Table;

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName("item")
@Table("sprit")
public class Item {
    @TableId(value = "itemID", type = IdType.AUTO)
    private Integer itemID;
    private String itemName;
    private String itemLink;
    private int spritID;
    private int itemTypeID;
    private Sprit sprit;
    private ItemType itemType;
}
