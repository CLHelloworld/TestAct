package com.lee.activity.controller;

import com.lee.activity.dto.ActVoRequest;
import com.lee.activity.model.ActVO;
import com.lee.activity.service.IActService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.sql.Timestamp;

@RestController
// 標註這是一個 REST 控制器，自動將方法的返回值序列化為 JSON
@RequestMapping("/activities")
// 設定這個控制器處理的基礎路徑，所有路徑都會加上 "/activities" 前綴
public class ActController {


    @Autowired
    private IActService actService;
    // 注入 ActService，用於處理與活動相關的業務邏輯

    // 獲取所有活動
//    @GetMapping
//    // 處理 GET 請求至 "/activities"，用於獲取所有活動的列表
//    public List<ActVO> getAllActivities() {
//        return actService.getAllActs();
//        // 調用 service 層的方法獲取所有活動並返回
//    }
//
//    // 根據 ID 獲取單個活動
//    @GetMapping("/{id}")
//    // 處理 GET 請求至 "/activities/{id}"，其中 {id} 是活動的ID
//    public ResponseEntity<ActVO> getActivityById(@PathVariable Integer id) {
//        // 使用 @PathVariable 獲取 URL 中的 id 參數
//        ActVO actVO = actService.getActById(id);
//        // 調用 service 層的方法根據 ID 獲取特定活動
//        return ResponseEntity.ok().body(actVO);
//        // 返回包含找到的活動的 ResponseEntity，HTTP 狀態碼為 200 OK
//    }

    // 創建新活動

    @PostMapping
    // 處理 POST 請求至 "/activities"，用於創建新的活動
    public ResponseEntity<ActVO> createActivity(

            @RequestParam("actName") String actName,
            @RequestParam("actUpper") Integer actUpper,
            @RequestParam("regStartTime") Timestamp regStartTime,
            @RequestParam("regEndTime") Timestamp regEndTime,
            @RequestParam("actStartTime") Timestamp actStartTime,
            @RequestParam("actEndtime") Timestamp actEndtime,
            @RequestParam("actLoc") String actLoc,
            @RequestParam("actDescr") String actDescr,
            @RequestParam(required = false) MultipartFile actPic
    ) {
        ActVoRequest actVoRequest = new ActVoRequest();
        actVoRequest.setActName(actName);
        actVoRequest.setActUpper(actUpper);
        actVoRequest.setRegStartTime(regStartTime);
        actVoRequest.setRegEndTime(regEndTime);
        actVoRequest.setActStartTime(actStartTime);
        actVoRequest.setActEndTime(actEndtime);
        actVoRequest.setActLoc(actLoc);
        actVoRequest.setActDescr(actDescr);

        // 處理文件數據
        if (actPic != null && !actPic.isEmpty()) {
            byte[] actPicBytes = new byte[0]; // 或其他所需的文件處理邏輯
            try {
                actPicBytes = actPic.getBytes();
                actVoRequest.setActPic(actPicBytes);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }

        }
        ActVO actVO = actService.createAct(actVoRequest);
        return ResponseEntity.status(HttpStatus.CREATED).body(actVO);
}

        // 創建新活動
//    @PostMapping
//    // 處理 POST 請求至 "/activities"，用於創建新的活動
//    public ActVO createActivity(@RequestBody ActVO actVO) {
//
//        // 使用 @RequestBody 獲取請求體中的 actVO 對象
//        System.out.println(actVO);
//        return actService.createAct(actVO);
//        // 調用 service 層的方法創建新活動並返回創建的活動
//
//    }

        // 更新活動
//    @PutMapping("/{id}")
//    // 處理 PUT 請求至 "/activities/{id}"，用於更新特定ID的活動
//    public ResponseEntity<ActVO> updateActivity(@PathVariable Integer id, @RequestBody ActVO actDetails) {
//        // 使用 @PathVariable 獲取 URL 中的 id 參數
//        // 使用 @RequestBody 獲取請求體中的 actDetails 對象
//        ActVO updatedAct = actService.updateAct(id, actDetails);
//        // 調用 service 層的方法更新特定 ID 的活動
//        return ResponseEntity.ok(updatedAct);
//        // 返回包含更新後的活動的 ResponseEntity，HTTP 狀態碼為 200 OK
//    }
//
//    // 刪除活動
//    @DeleteMapping("/{id}")
//    // 處理 DELETE 請求至 "/activities/{id}"，用於刪除特定ID的活動
//    public ResponseEntity<Void> deleteActivity(@PathVariable Integer id) {
//        // 使用 @PathVariable 獲取 URL 中的 id 參數
//        actService.deleteAct(id);
//        // 調用 service 層的方法刪除特定 ID 的活動
//        return ResponseEntity.ok().build();
//        // 返回 ResponseEntity，HTTP 狀態碼為 200 OK，響應體為空
//    }
    }
