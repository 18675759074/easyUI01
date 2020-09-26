package com.hnguigu.service.impl;

import com.hnguigu.dao.ShengDao;
import com.hnguigu.service.ShengService;
import com.hnguigu.vo.Area;
import com.hnguigu.vo.CityVo;
import com.hnguigu.vo.ShengVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ShengServiceImpl implements ShengService {

    @Autowired
    ShengDao shengDao;
    @Override
    public List<ShengVo> queryallsheng() {
        return shengDao.queryallsheng();
    }

    @Override
    public List<CityVo> queryCityByPid(int pid) {
        return shengDao.queryCityByPid(pid);
    }

    @Override
    public List<Area> queryAreaByCid(int cid) {
        return shengDao.queryAreaByCid(cid);
    }
}
