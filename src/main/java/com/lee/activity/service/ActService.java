package com.lee.activity.service;

import com.lee.activity.dao.ActDao;
import com.lee.activity.model.ActVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
// 標記為Spring的服務類別，Spring會管理這個類的實例（即Spring Bean）
public class ActService {

    private final ActDao actDao;
    // 注入ActRepository接口的實例，用於執行數據庫操作

    @Autowired
    // 透過構造函數自動注入ActRepository的實例
    public ActService(ActDao actDao) {
        this.actDao = actDao;
        // 將注入的ActRepository實例賦值給成員變量
    }

    // 創建活動
    public ActVO createAct(ActVO act) {
        // 方法接受一個ActVO對象，用於創建新的活動
        // 設置創建時間為當前時間
        act.setActCrTime(new Date());

        return actDao.save(act);
        // 調用ActRepository的save方法將對象保存到數據庫，並返回保存的對象
    }

    // 依據 ID 查詢活動
    public ActVO getActById(Integer id) {
        // 方法接受一個ID，用於查找特定的活動
        return actDao.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Activity not found for this id : " + id));
        // 調用ActRepository的findById方法查找活動，如果未找到則拋出異常
    }

    // 查詢所有活動
    public List<ActVO> getAllActs() {
        // 方法用於獲取數據庫中的所有活動
        return actDao.findAll();
        // 調用ActRepository的findAll方法獲取所有活動並返回
    }

    // 更新活動
    public ActVO updateAct(Integer id, ActVO actVO) {
        ActVO act = actDao.findById(id).orElseThrow(() -> new IllegalArgumentException("Activity not found for this id : " + id));
        // 更新其他屬性
        act.setActName(actVO.getActName());
        act.setActStartTime(actVO.getActStartTime());
        act.setActEndTime(actVO.getActEndTime());
        act.setActLoc(actVO.getActLoc());
        act.setActDescr(actVO.getActDescr());
        act.setActUpper(actVO.getActUpper());
        act.setActCrTime(actVO.getActCrTime());
        act.setRegStartTime(actVO.getRegStartTime());
        act.setRegEndTime(actVO.getRegEndTime());
        act.setActPic(actVO.getActPic());
        act.setLat(actVO.getLat());
        act.setLon(actVO.getLon());

        return actDao.save(act);
    }

    // 刪除活動
    public void deleteAct(Integer id) {
        // 方法接受一個ID，用於刪除特定的活動
        ActVO act = actDao.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Activity not found for this id : " + id));
        // 首先查找特定ID的活動，如果未找到則拋出異常

        actDao.delete(act);
        // 調用ActRepository的delete方法刪除找到的活動
    }
}
