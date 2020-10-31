package com.pojo;

// Generated 27 Apr, 2017 2:38:11 AM by Hibernate Tools 3.4.0.CR1

/**
 * Bsp generated by hbm2java
 */
public class Bsp implements java.io.Serializable {

	private Integer bspId;
	private String bspName;
	private Integer bspCandidateRegId;
	private Integer bspTotalVotes;
	private Integer bspStateTotalVotes;
	private Integer bspCityTotalVotes;
	private Integer bspAreaTotalVotes;
	private Integer bspFemaleTotalVotes;
	private Integer bspMaleTotalVotes;

	public Bsp() {
	}

	public Bsp(String bspName, Integer bspCandidateRegId, Integer bspTotalVotes, Integer bspStateTotalVotes,
			Integer bspCityTotalVotes, Integer bspAreaTotalVotes, Integer bspFemaleTotalVotes, Integer bspMaleTotalVotes) {
		this.bspName = bspName;
		this.bspCandidateRegId = bspCandidateRegId;
		this.bspTotalVotes = bspTotalVotes;
		this.bspStateTotalVotes = bspStateTotalVotes;
		this.bspCityTotalVotes = bspCityTotalVotes;
		this.bspAreaTotalVotes = bspAreaTotalVotes;
		this.bspFemaleTotalVotes = bspFemaleTotalVotes;
		this.bspMaleTotalVotes = bspMaleTotalVotes;
	}

	public Integer getBspId() {
		return this.bspId;
	}

	public void setBspId(Integer bspId) {
		this.bspId = bspId;
	}

	public String getBspName() {
		return this.bspName;
	}

	public void setBspName(String bspName) {
		this.bspName = bspName;
	}

	public Integer getBspCandidateRegId() {
		return this.bspCandidateRegId;
	}

	public void setBspCandidateRegId(Integer bspCandidateRegId) {
		this.bspCandidateRegId = bspCandidateRegId;
	}

	public Integer getBspTotalVotes() {
		return this.bspTotalVotes;
	}

	public void setBspTotalVotes(Integer bspTotalVotes) {
		this.bspTotalVotes = bspTotalVotes;
	}

	public Integer getBspStateTotalVotes() {
		return this.bspStateTotalVotes;
	}

	public void setBspStateTotalVotes(Integer bspStateTotalVotes) {
		this.bspStateTotalVotes = bspStateTotalVotes;
	}

	public Integer getBspCityTotalVotes() {
		return this.bspCityTotalVotes;
	}

	public void setBspCityTotalVotes(Integer bspCityTotalVotes) {
		this.bspCityTotalVotes = bspCityTotalVotes;
	}

	public Integer getBspAreaTotalVotes() {
		return this.bspAreaTotalVotes;
	}

	public void setBspAreaTotalVotes(Integer bspAreaTotalVotes) {
		this.bspAreaTotalVotes = bspAreaTotalVotes;
	}

	public Integer getBspFemaleTotalVotes() {
		return this.bspFemaleTotalVotes;
	}

	public void setBspFemaleTotalVotes(Integer bspFemaleTotalVotes) {
		this.bspFemaleTotalVotes = bspFemaleTotalVotes;
	}

	public Integer getBspMaleTotalVotes() {
		return this.bspMaleTotalVotes;
	}

	public void setBspMaleTotalVotes(Integer bspMaleTotalVotes) {
		this.bspMaleTotalVotes = bspMaleTotalVotes;
	}

}
