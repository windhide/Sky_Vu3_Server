package com.skys.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.concurrent.ConcurrentTaskExecutor;
import org.springframework.web.servlet.config.annotation.AsyncSupportConfigurer;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executors;

@Configuration
public class CrossConfig implements WebMvcConfigurer {

    private TokenInterceptor tokenInterceptor;
    //构造方法
    public CrossConfig(TokenInterceptor tokenInterceptor){
        this.tokenInterceptor = tokenInterceptor;
    }

    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**")
                .allowedOrigins("*")
                .allowedHeaders("*")
                .allowedMethods("*");
    }

    @Override
    public void configureAsyncSupport(AsyncSupportConfigurer configurer){
        configurer.setTaskExecutor(new ConcurrentTaskExecutor(Executors.newFixedThreadPool(3)));
        configurer.setDefaultTimeout(30000);
    }

    @Override
    public void addInterceptors(InterceptorRegistry registry){
        List<String> excludePath = new ArrayList<>();
        //排除拦截，除了注册登陆(此时还没token)，其余都拦截
        excludePath.add("/upload");      //上传图片
        excludePath.add("/uploadDelete");// 删除图片
        excludePath.add("/item");
        excludePath.add("/itemType");
        excludePath.add("/MaxMap");
        excludePath.add("/MiniMap");
        excludePath.add("/report");
        excludePath.add("/activity");
        excludePath.add("/activity/**");
        //excludePath.add("/reprint");
        excludePath.add("/SeasonOrActivity");
        excludePath.add("/sprit");
        excludePath.add("/account");
        excludePath.add("/item/**");
        excludePath.add("/itemType/**");
        excludePath.add("/MaxMap/**");
        excludePath.add("/MiniMap/**");
        excludePath.add("/report/**");
        excludePath.add("/Util/**");
        //excludePath.add("/reprint/**");
        excludePath.add("/SeasonOrActivity/**");
        excludePath.add("/sprit/**");
        excludePath.add("/account/**");
        excludePath.add("/talkMesseage/select");
        excludePath.add("/image/**");  //静态资源
        excludePath.add("/css/**");  //静态资源
        excludePath.add("/cost/**");  //静态资源
        excludePath.add("/font/**");  //静态资源
        excludePath.add("/js/**");  //静态资源
        excludePath.add("/main/**");  //静态资源
        excludePath.add("/map/**");  //静态资源




        registry.addInterceptor(tokenInterceptor)
                .addPathPatterns("/**")
                .excludePathPatterns(excludePath);
        WebMvcConfigurer.super.addInterceptors(registry);
    }

}
