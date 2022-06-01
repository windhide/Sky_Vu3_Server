package com.skys.Controller;

import com.skys.Service.Upload_Service;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.Map;

@RestController
public class Upload_Controller {
    private static final Logger LOGGER = LoggerFactory.getLogger(Upload_Controller.class) ;
    private final String filePath = "W:/Sky_Strategy_Image/image/"; // 定义文件输出的地方
    @Autowired
    Upload_Service us;
    /**
     * 文件上传
     */
    @RequestMapping("/upload")
    public String upload1 (HttpServletRequest request, @RequestParam("file") MultipartFile file){
        String type = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));
        Map<String, String[]> paramMap = request.getParameterMap() ;
        if (!paramMap.isEmpty()){
            LOGGER.info("paramMap == >>"+paramMap);
        }
        try{
            if (!file.isEmpty()){
                // 打印文件基础信息
                LOGGER.info("文件名字 == >>"+file.getName());
                LOGGER.info("文件上传时的名字 == >>"+file.getOriginalFilename());
                LOGGER.info("文件类型 == >>"+file.getContentType());
                LOGGER.info("文件大小 == >>"+file.getSize());
                // 文件输出地址
                new File(filePath).mkdirs();
                File writeFile = new File(filePath, us.getFileName()+type); // 文件上传的路径是上面自定义的，us.getFileName()是按照时间编辑的名字
                file.transferTo(writeFile);
            }
            return us.getFileName()+type ;
        } catch (Exception e){
            e.printStackTrace();
            return "false" ;
        }
    }

    /**
     * 文件删除
     */
    @RequestMapping("/uploadDelete")
    public String uploadDelete (String Filename){
        File file = new File(filePath+Filename);
        if (file == null || !file.exists()) {
            LOGGER.info("没有这个文件 == >> "+filePath+Filename);
            return "没有名字为"+Filename+"的文件";
        }
        //获取目录下子文件
        File[] files = file.listFiles();
        file.delete();
        System.out.println("已删除目录名：" + filePath+file.getName());
        return "删除文件"+Filename+"成功";
    }
}
