package com.lee.activity.service;

import com.lee.activity.model.ActVO;
import com.lee.activity.dto.ActVoRequest;
import java.util.List;

public interface IActService {
    ActVO createAct(ActVoRequest actVoRequest);
    ActVO updateAct(Integer id, ActVoRequest actVoRequest);

    List<ActVO> getAllActs();

    ActVO getActById(Integer id);

    List<ActVO> getLatestTenActivities();
}
