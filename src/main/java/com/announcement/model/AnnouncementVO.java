package com.announcement.model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "announcement")
public class AnnouncementVO implements java.io.Serializable {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ann_id", insertable = false , updatable = false)
	private Integer annId;
	
	@Column(name = "emp_id")
	private Integer empId;
	
	@Column(name = "ann_name")
	private String annName;
	
	@Column(name = "ann_descr")
	private String annDescr;
	
	@Column(name = "ann_time", insertable = false)
	private Timestamp annTime;

	public Integer getAnnId() {
		return annId;
	}

	public void setAnnId(Integer annId) {
		this.annId = annId;
	}

	public Integer getEmpId() {
		return empId;
	}

	public void setEmpId(Integer empId) {
		this.empId = empId;
	}

	public String getAnnName() {
		return annName;
	}

	public void setAnnName(String annName) {
		this.annName = annName;
	}

	public String getAnnDescr() {
		return annDescr;
	}

	public void setAnnDescr(String annDescr) {
		this.annDescr = annDescr;
	}

	public Timestamp getAnnTime() {
		return annTime;
	}

	public void setAnnTime(Timestamp annTime) {
		this.annTime = annTime;
	}
}
