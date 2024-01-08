package com.lee.activity.controller;

import com.lee.activity.model.ActTypeVO;
import com.lee.activity.service.Impl.ActTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api")
public class ActTypeController {

    @Autowired
    private ActTypeService actTypeService;

    @GetMapping("/actTypes")
    public ResponseEntity<List<ActTypeVO>> getAllActTypes() {
        List<ActTypeVO> types = actTypeService.getAllActTypes();
        return ResponseEntity.status(HttpStatus.OK).body(types);
    }
}
