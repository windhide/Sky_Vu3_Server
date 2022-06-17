package com.skys.pojo;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName("reprint")
public class Reprint {
    @TableId(value = "ReprintID",type = IdType.AUTO)
    private Integer ReprintID;
    private int SpritID;
    private String ReprintTime;
    private Sprit sprit;
    private int count;
}
