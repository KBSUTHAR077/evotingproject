package com.pojo;

// Generated 27 Apr, 2017 2:38:11 AM by Hibernate Tools 3.4.0.CR1

/**
 * Trackapplication generated by hbm2java
 */
public class Trackapplication implements java.io.Serializable {

	private Integer appliId;
	private Admin admin;
	private Integer appliNo;
	private String appliName;
	private String appliMobNo;
	private String appliEmailId;

	public Trackapplication() {
	}

	public Trackapplication(Admin admin, Integer appliNo, String appliName, String appliMobNo, String appliEmailId) {
		this.admin = admin;
		this.appliNo = appliNo;
		this.appliName = appliName;
		this.appliMobNo = appliMobNo;
		this.appliEmailId = appliEmailId;
	}

	public Integer getAppliId() {
		return this.appliId;
	}

	public void setAppliId(Integer appliId) {
		this.appliId = appliId;
	}

	public Admin getAdmin() {
		return this.admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public Integer getAppliNo() {
		return this.appliNo;
	}

	public void setAppliNo(Integer appliNo) {
		this.appliNo = appliNo;
	}

	public String getAppliName() {
		return this.appliName;
	}

	public void setAppliName(String appliName) {
		this.appliName = appliName;
	}

	public String getAppliMobNo() {
		return this.appliMobNo;
	}

	public void setAppliMobNo(String appliMobNo) {
		this.appliMobNo = appliMobNo;
	}

	public String getAppliEmailId() {
		return this.appliEmailId;
	}

	public void setAppliEmailId(String appliEmailId) {
		this.appliEmailId = appliEmailId;
	}

}