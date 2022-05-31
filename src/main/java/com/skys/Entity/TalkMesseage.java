package com.skys.Entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName("talkmesseage")
public class TalkMesseage {

    private Integer talkMesseageID;
    private String talkMesseageContent;
    private int talkMesseageAccountID;
    private String  talkMesseageTime;
    private Account account;

}
