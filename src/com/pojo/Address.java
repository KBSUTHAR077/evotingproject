package com.pojo;

// Generated 27 Apr, 2017 2:38:11 AM by Hibernate Tools 3.4.0.CR1

/**
 * Address generated by hbm2java
 */
public class Address implements java.io.Serializable {

	private Integer addId;
	private Candidateregistration candidateregistration;
	private Voterregistration voterregistration;
	private String addCountry;
	private String addState;
	private String addCity;
	private String addDistrict;
	private String addPincode;

	public Address() {
	}

	public Address(Candidateregistration candidateregistration, Voterregistration voterregistration, String addCountry,
			String addState, String addCity, String addDistrict, String addPincode) {
		this.candidateregistration = candidateregistration;
		this.voterregistration = voterregistration;
		this.addCountry = addCountry;
		this.addState = addState;
		this.addCity = addCity;
		this.addDistrict = addDistrict;
		this.addPincode = addPincode;
	}

	public Integer getAddId() {
		return this.addId;
	}

	public void setAddId(Integer addId) {
		this.addId = addId;
	}

	public Candidateregistration getCandidateregistration() {
		return this.candidateregistration;
	}

	public void setCandidateregistration(Candidateregistration candidateregistration) {
		this.candidateregistration = candidateregistration;
	}

	public Voterregistration getVoterregistration() {
		return this.voterregistration;
	}

	public void setVoterregistration(Voterregistration voterregistration) {
		this.voterregistration = voterregistration;
	}

	public String getAddCountry() {
		return this.addCountry;
	}

	public void setAddCountry(String addCountry) {
		this.addCountry = addCountry;
	}

	public String getAddState() {
		return this.addState;
	}

	public void setAddState(String addState) {
		this.addState = addState;
	}

	public String getAddCity() {
		return this.addCity;
	}

	public void setAddCity(String addCity) {
		this.addCity = addCity;
	}

	public String getAddDistrict() {
		return this.addDistrict;
	}

	public void setAddDistrict(String addDistrict) {
		this.addDistrict = addDistrict;
	}

	public String getAddPincode() {
		return this.addPincode;
	}

	public void setAddPincode(String addPincode) {
		this.addPincode = addPincode;
	}

}