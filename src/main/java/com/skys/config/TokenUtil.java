package com.skys.config;

import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.skys.pojo.Account;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

public class TokenUtil {
    private static final long EXPIRE_TIME= 10*60*30*1000;

    private static final long ONLINE_TIME = 60*1000;
    private static final String TOKEN_SECRET="Sky_WindHide";  //密钥盐

    private static Map<String,String> onlineCountMap = new HashMap();
    /**
     * 签名生成
     * @param account
     * @return
     */
    public static String sign(Account account){
        String token = null;
        try {
            Date expiresAt = new Date(System.currentTimeMillis() + EXPIRE_TIME);
            token = JWT.create()
                    .withIssuer("auth0")
                    .withClaim("username", account.getAccountUsername())
                    .withExpiresAt(expiresAt)
                    // 使用了HMAC256加密算法。
                    .sign(Algorithm.HMAC256(TOKEN_SECRET));
            onlineCountMap.put(account.getAccountUsername(),token + "-Time:"+new Date().getTime());
            // 这里放一个OnlineCountMap put数据用来统计一下在线的人数。
        } catch (Exception e){
            e.printStackTrace();
        }
        return token;
    }

    /**
     * 签名验证
     * @param token
     * @return
     */
    public static boolean verify(String token){
        try {
            JWTVerifier verifier = JWT.require(Algorithm.HMAC256(TOKEN_SECRET)).withIssuer("auth0").build();
            DecodedJWT jwt = verifier.verify(token);
            System.out.println("认证经过：");
            System.out.println("username: " + jwt.getClaim("username").asString());
            System.out.println("过时时间：      " + jwt.getExpiresAt());
            String username = jwt.getClaim("username").asString();
            if(onlineCountMap.containsKey(username)){
                for(String keys : onlineCountMap.keySet()){
                    if(keys.equals(username)){
                        Long oldTime = Long.parseLong(onlineCountMap.get(username).split("-Time:")[1]);
                            onlineCountMap.put(keys,token + "-Time:"+new Date().getTime());
                            System.out.println("时间重置==============重置前剩余"+(new Date().getTime() - oldTime)/1000+"秒");
                            System.out.println("当前在线人数"+getLoginCount());
                        break;
                    }
                }
            }else{
                onlineCountMap.put(username,token + "-Time:"+new Date().getTime());
                System.out.println("当前登录人数"+getLoginCount());
            }
            return true;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    /**
     *
     * 登陆人数统计
     *
     */
    public static Integer getLoginCount(){
        for(String keys : onlineCountMap.keySet()){
            Long oldTime = Long.parseLong(onlineCountMap.get(keys).split("-Time:")[1]);
            if((new Date().getTime() - oldTime) >= ONLINE_TIME){
                onlineCountMap.remove(keys);
            }
        }
        return onlineCountMap.size();
    }

    /**
     * 在线人数统计
     *
     */
    public static Integer getOnlineCount(){
        return null;
    }
}
