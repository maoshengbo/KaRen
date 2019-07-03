package com.example.kaRen.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/web")
public class TestController {

    @RequestMapping(value = "/index")
    public String toIndex(ModelMap model){
        System.out.println("index");
        model.addAttribute("hello","1233");
        return "Helloqwe";
    }
    @RequestMapping(value = "/index1")
    public String toIndex1(ModelMap model){
        System.out.println("index");
        model.addAttribute("hello","1233");
        return "layui";
    }
}
