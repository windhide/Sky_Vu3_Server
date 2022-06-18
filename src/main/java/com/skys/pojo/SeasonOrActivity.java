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
@TableName("seasonoractivity")
public class SeasonOrActivity {
    @TableId(value = "srID", type = IdType.AUTO)
    private Integer srID;
    private String srName;
    private String srStartTime;
    private String srEndTime;
    private boolean srIsSeason;


}
