package com.lee.activity.controller;

import com.lee.activity.util.ActStatusUpdateService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class utilController {
    private final ActStatusUpdateService actStatusUpdateService;

    public utilController(ActStatusUpdateService actStatusUpdateService) {
        this.actStatusUpdateService = actStatusUpdateService;
    }

    @GetMapping("/Act/update-act-statuses")
    public String updateActStatuses() {
        actStatusUpdateService.updateActStatuses();
        return "Activity statuses updated";
    }
}
