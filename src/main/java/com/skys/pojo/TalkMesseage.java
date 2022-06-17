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
@TableName("talkmesseage")
public class TalkMesseage {
    @TableId(value = "talkMesseageID", type = IdType.AUTO)
    private Integer talkMesseageID;
    private String talkMesseageContent;
    private int talkMesseageAccountID;
    private String  talkMesseageTime;
    private Account account;

}
