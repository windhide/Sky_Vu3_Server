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
@TableName("sprit")
public class Sprit {
    @TableId(value = "spritID", type = IdType.AUTO)
    private Integer spritID;
    private String spritName;
    private String spritCost;
    private String spritLink;
    private int miniMapID;
    private int srID;
    private SeasonOrActivity seasonOrActivity;
    private MiniMap miniMap;
}
