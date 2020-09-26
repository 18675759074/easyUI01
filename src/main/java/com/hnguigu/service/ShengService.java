package com.hnguigu.service;

import com.hnguigu.vo.Area;
import com.hnguigu.vo.CityVo;
import com.hnguigu.vo.ShengVo;

import java.util.List;

public interface ShengService {
    public List<ShengVo> queryallsheng();

    public  List<CityVo> queryCityByPid(int pid);

    List<Area> queryAreaByCid(int cid);
}
