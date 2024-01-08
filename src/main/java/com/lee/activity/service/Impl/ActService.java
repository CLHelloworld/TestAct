package com.lee.activity.service.Impl;

import com.lee.activity.dao.ActDao;
import com.lee.activity.model.ActVO;
import com.lee.activity.dto.ActVoRequest;
import com.lee.activity.service.IActService;
import lombok.extern.slf4j.Slf4j;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
@Slf4j
// 標記為Spring的服務類別，Spring會管理這個類的實例（即Spring Bean）
public class ActService implements IActService {

    @Autowired
    private ActDao actDao;
    // 注入ActRepository接口的實例，用於執行數據庫操作
    @Autowired
    private ModelMapper modelMapper;


    // 創建活動
    @Override
    public ActVO createAct(ActVoRequest actVoRequest) {
        ActVO actVO = new ActVO();

        modelMapper.map(actVoRequest,actVO);
        actVO.setActCrTime(new Date());
        actVO.setActStatus((byte) 1);
        return actDao.save(actVO);
    }

    @Override
    public ActVO updateAct(Integer id, ActVoRequest actVoRequest) {
        return null;
    }
}
