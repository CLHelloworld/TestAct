package com.lee.activity.model;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;
import java.math.BigDecimal;
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

	@Column(name = "mem_id", nullable = false)
	@JoinColumn(name = "mem_id")
	private Integer memId;

	@Column(name = "act_name", nullable = false, length = 50)
	private String actName;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "act_start_time", nullable = false)
	private Date actStartTime;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "act_end_time", nullable = false)
	private Date actEndTime;

	@Column(name = "act_loc")
	private String actLoc;

	@Column(name = "act_descr", length = 2000)
	private String actDescr;

	@Column(name = "act_upper")
	private Integer actUpper;

	@Column(name = "act_count")
	private Byte actCount;

	@Column(name = "act_status")
	private Byte actStatus;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "act_cr_time")
	private Date actCrTime;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "reg_start_time")
	private Date regStartTime;

	@Temporal(TemporalType.TIMESTAMP)
	@Column(name = "reg_end_time")
	private Date regEndTime;

	@Lob
	@Column(name = "act_pic")
	private byte[] actPic;

	@Column(name = "act_tot_rating")
	private Double actTotRating;

	@Column(name = "act_rate_count")
	private Double actRateCount;

	@Column(name = "act_follow_count")
	private Integer actFollowCount;

	@Column(name = "lat", precision = 8, scale = 6)
	private BigDecimal lat;

	@Column(name = "lon", precision = 9, scale = 6)
	private BigDecimal lon;

}
