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
@TableName("report")
public class Report {
    @TableId(value = "reportListID", type = IdType.AUTO)
    private Integer reportListID;
    private String reportListTitle;
    private String reportListimage;
    private String reportListMesseage;
    private String accountUsername;
    private String reportTime;
}
