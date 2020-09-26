package com.hnguigu.controller;

import com.hnguigu.service.ShengService;
import com.hnguigu.vo.Area;
import com.hnguigu.vo.CityVo;
import com.hnguigu.vo.ShengVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ShengController {
    @Autowired
    ShengService shengService;

    @RequestMapping("/querysheng.action")
    @ResponseBody
    public List<ShengVo> queryAllSheng() {
        return shengService.queryallsheng();
    }

    @RequestMapping("/querycitybyid.action")
    @ResponseBody
    public List<CityVo> queryCityById(int id) {
        return shengService.queryCityByPid(id);
    }


    @RequestMapping("/queryAreaByid.action")
    @ResponseBody
    public List<Area> queryAreaById(int id) {
        return shengService.queryAreaByCid(id);
    }
}
