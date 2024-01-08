package com.lee.activity.service.Impl;

import com.lee.activity.dao.ActTypeDao;
import com.lee.activity.model.ActTypeVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ActTypeService {

    @Autowired
    private ActTypeDao actTypeDao;

    public List<ActTypeVO> getAllActTypes() {
        return actTypeDao.findAll();
    }
}
