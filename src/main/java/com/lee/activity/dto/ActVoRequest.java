package com.lee.activity.dto;

import lombok.Data;

import java.sql.Timestamp;

@Data
public class ActVoRequest {

//    @NonNull
    private Integer actId;
//    @NonNull
    private Integer memId;
//    @NonNull
    private String actName;
//    @NonNull
    private Timestamp actStartTime;
//    @NonNull
    private Timestamp actEndTime;
//    @NonNull
    private Timestamp regStartTime;
//    @NonNull
    private Timestamp regEndTime;
//    @NonNull
    private String actLoc;
//    @NonNull
    private String actDescr;
//    @NonNull
    private Integer actUpper;

    private byte[] actPic;
    public ActVoRequest() {

    }
}
