# 光遇综合网站
### 代码
    1、  Account     (仅限于后台管理员登录，不开放注册)
    2、  Emote       (季节或者常规的动作，对应上先祖)
    3、  Item        (物品，对应物品类型并归属先祖或活动)
    4、  ItemType    (物品类型)
    5、  Magic       (魔法)
    6、  MainHtml    (主页的对象)
    7、  MaxMap      (大地图)
    8、  MiniMap     (小地图)
    9、  Report      (计划是当作挂人的区域)
    10、 SeasonOrActivity (季节或活动)
    11、 Sprit       (先祖)
    12、 Strategy    (活动)
# 数据库
    account(accountID,accountUsername,accountPassword)

    emote(emoteID,emoteName,emoteImage,spritID)

    item(itemID,itemName,spritID,itemTypeID)

    itemtype(itemTypeID,itemTypeName)

    magic(magicID,magicName,magicImage,srID) 

    mainhtml(BigLogo,introduct,backgrountLink,nowSeason) 

    maxmap(maxMapID,maxNormalName,maxName)

    minimap(miniMapID,miniNormalName,miniName,maxMapID)

    report(reportListID,reportListTitle,reportListimage,reportListMesseage,reportTime)

    seasonoractivity(srID,srName,isSeason)

    sprit(spritID,spritName,spritLink,srID,miniMapID)

    strategy(strategyID,strategyName,strategyLink) 
