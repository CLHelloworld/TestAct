package com.lee.activity.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "membership")
public class MemVO {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "mem_id")
    private int memId;

    @Column(name = "mem_acc", nullable = false, unique = true, length = 50)
    private String memAcc;

    @Column(name = "mem_email", nullable = false, unique = true, length = 255)
    private String memEmail;

    @Column(name = "mem_pwd", nullable = false, length = 255)
    private String memPwd;

    @Column(name = "mem_name", nullable = false, length = 50)
    private String memName;

    @Column(name = "mem_gender", nullable = false)
    private byte memGender;

    @Column(name = "mem_birthdate", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date memBirthdate;

    @Column(name = "mem_username", nullable = false, length = 50)
    private String memUsername;

    @Lob
    @Column(name = "mem_pic")
    private byte[] memPic;

    @Column(name = "mem_intro", length = 2000)
    private String memIntro;

    @Column(name = "mem_phone", length = 10)
    private String memPhone;

    @Column(name = "block_start_time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date blockStartTime;

    @Column(name = "block_end_time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date blockEndTime;

    @Column(name = "is_acc_ena", nullable = false)
    private byte isAccEna;

    @Column(name = "is_part_ena", nullable = false)
    private byte isPartEna;

    @Column(name = "is_host_ena", nullable = false)
    private byte isHostEna;

    @Column(name = "is_rent_ena", nullable = false)
    private byte isRentEna;

    @Column(name = "is_msg_ena", nullable = false)
    private byte isMsgEna;

    @Column(name = "mem_cr_time", nullable = false)
    @Temporal(TemporalType.DATE)
    private Date memCrTime;

    @Column(name = "mem_login_time")
    @Temporal(TemporalType.TIMESTAMP)
    private Date memLoginTime;
}

