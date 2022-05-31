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
@TableName("emote")
public class Emote {
    @TableId(value = "emoteID", type = IdType.AUTO)
    private Integer emoteID;
    private String emoteName;
    private String emoteImage;
    private Sprit sprit;
}
