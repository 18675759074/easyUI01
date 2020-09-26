package com.hnguigu.controller;

import com.hnguigu.vo.Person;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {

    @RequestMapping(value = "/adduser.action",produces ={"application/json;charset=UTF-8"})
    @ResponseBody
    public String addUser(Person person,@RequestParam("sheng") int shengid){

        System.out.println(person);
        System.out.println("省id："+shengid);

        return "添加成功";

    }
}
