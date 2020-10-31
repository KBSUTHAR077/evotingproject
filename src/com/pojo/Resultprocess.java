package com.pojo;

// Generated 27 Apr, 2017 2:38:11 AM by Hibernate Tools 3.4.0.CR1

import java.util.HashSet;
import java.util.Set;

/**
 * Resultprocess generated by hbm2java
 */
public class Resultprocess implements java.io.Serializable {

	private Integer resultPid;
	private Castvote castvote;
	private Integer resultVid;
	private Integer resultCanId;
	private Integer resultCountVotes;
	private Set results = new HashSet(0);

	public Resultprocess() {
	}

	public Resultprocess(Castvote castvote, Integer resultVid, Integer resultCanId, Integer resultCountVotes,
			Set results) {
		this.castvote = castvote;
		this.resultVid = resultVid;
		this.resultCanId = resultCanId;
		this.resultCountVotes = resultCountVotes;
		this.results = results;
	}

	public Integer getResultPid() {
		return this.resultPid;
	}

	public void setResultPid(Integer resultPid) {
		this.resultPid = resultPid;
	}

	public Castvote getCastvote() {
		return this.castvote;
	}

	public void setCastvote(Castvote castvote) {
		this.castvote = castvote;
	}

	public Integer getResultVid() {
		return this.resultVid;
	}

	public void setResultVid(Integer resultVid) {
		this.resultVid = resultVid;
	}

	public Integer getResultCanId() {
		return this.resultCanId;
	}

	public void setResultCanId(Integer resultCanId) {
		this.resultCanId = resultCanId;
	}

	public Integer getResultCountVotes() {
		return this.resultCountVotes;
	}

	public void setResultCountVotes(Integer resultCountVotes) {
		this.resultCountVotes = resultCountVotes;
	}

	public Set getResults() {
		return this.results;
	}

	public void setResults(Set results) {
		this.results = results;
	}

}