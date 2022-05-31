package com.skys.Entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName("itemtype")
public class ItemType {
    @TableId(value = "itemTypeID",type = IdType.AUTO)
    private Integer itemTypeID;
    private String itemTypeName;
}
