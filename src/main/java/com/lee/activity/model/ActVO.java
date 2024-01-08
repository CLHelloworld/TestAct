package com.lee.activity.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import javax.persistence.*;
import java.math.BigDecimal;
import java.sql.Timestamp;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "activity")
public class ActVO {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "act_id")
    private Integer actId;

    //	@ManyToOne
//	@JoinColumn(name = "mem_id" , referencedColumnName ="mem_id" )
	@Column(name = "mem_id")
    private Integer memId = 1;

    @Column(name = "act_name", nullable = false, length = 50)
    private String actName;

    //	@Temporal(TemporalType.TIMESTAMP)
    @Column(name = "act_start_time", nullable = false)
    private Timestamp actStartTime;

    //	@Temporal(TemporalType.TIMESTAMP)
    @Column(name = "act_end_time", nullable = false)
    private Timestamp actEndTime;

    @Column(name = "act_loc")
    private String actLoc;

    @Column(name = "act_descr", length = 2000)
    private String actDescr;

    @Column(name = "act_upper")
    private Integer actUpper;

    @Column(name = "act_count")
    private Byte actCount = 0;

    @Column(name = "act_status")
    private Byte actStatus = 0;

    //	@Temporal(TemporalType.TIMESTAMP)
    @Column(name = "act_cr_time")
    private Date actCrTime;

    //	@Temporal(TemporalType.TIMESTAMP)
    @Column(name = "reg_start_time")
    private Timestamp regStartTime;

    //	@Temporal(TemporalType.TIMESTAMP)
    @Column(name = "reg_end_time")
    private Timestamp regEndTime;

    @Column(name = "act_pic" ,columnDefinition = "longblob")
    private byte[] actPic;

    @Column(name = "act_tot_rating")
    private Double actTotRating = 0.0;

    @Column(name = "act_rate_count")
    private Double actRateCount = 0.0;

    @Column(name = "act_follow_count")
    private Integer actFollowCount = 0;

    @Column(name = "lat", precision = 8, scale = 6)
    private BigDecimal lat;

    @Column(name = "lon", precision = 9, scale = 6)
    private BigDecimal lon;

    @Column(name = "act_type_id")
    private Integer actType;

//    @ManyToOne(fetch = FetchType.LAZY)
//    @JoinColumn(name = "act_type_id", referencedColumnName = "act_type_id")
//    private ActTypeVO actType;

}
