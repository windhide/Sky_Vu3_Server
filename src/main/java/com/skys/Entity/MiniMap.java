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
@TableName("minimap")
public class MiniMap {
    @TableId(value = "miniMapID", type = IdType.AUTO)
    private Integer miniMapID;
    private String miniNormalName;
    private String miniName;
    private int maxMapID;
    private MaxMap maxMap;
}
