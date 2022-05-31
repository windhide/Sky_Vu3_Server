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
@TableName("magic")
public class Magic {
    @TableId(value = "magicID",type = IdType.AUTO)
    private Integer  magicID;
    private String magicName;
    private String magicImage;
    private int srID;
}
