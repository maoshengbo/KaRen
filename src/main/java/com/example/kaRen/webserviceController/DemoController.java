package com.example.kaRen.webserviceController;

import com.example.kaRen.ConfigBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @Title: 【北京驰骛技术有限公司】
 * @Class:DemoController
 * @Description: (用一句话描述该类做什么)
 * @author maoshengbo
 * @email shengbo.mao@chiefclouds.com
 * @date 2018/4/10 11:43
 * @version V1.0
 */
@RestController
public class DemoController {
    
    /**
     * @Description: (用一句话描述该方法做什么)
     * @author maoshengbo
     * @param 
     * @return 
     * @date  2018/4/10 11:43 
     */
    @Autowired
    ConfigBean configBean;

    @RequestMapping(value = "/")
    public String hello(){

        return configBean.getGreeting();
    }
}
