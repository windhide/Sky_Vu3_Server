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
@TableName("account")
public class Account {
    @TableId(value = "accountID",type = IdType.AUTO)
    private Integer accountID;
    private String accountUsername;
    private String accountPassword;

}
