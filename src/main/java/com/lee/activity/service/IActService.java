package com.lee.activity.service;

import com.lee.activity.model.ActVO;
import com.lee.activity.dto.ActVoRequest;

public interface IActService {
    ActVO createAct(ActVoRequest actVoRequest);
    ActVO updateAct(Integer id, ActVoRequest actVoRequest);

}
