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
@TableName("activity")
public class Activity {
    @TableId(value = "activityID", type = IdType.AUTO)
    Integer activityID;
    String activityName;
    String activityStartTime;
    String activityEndTime;
    String activityImage;
}
