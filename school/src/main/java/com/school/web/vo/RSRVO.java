package com.school.web.vo;

import java.util.Date;

public class RSRVO {

	private String surrSeq;
	private String surSeq;
	private String surqSeq;
	private String suriSeq;
	private String suriNum;
	private String description; // suriTitle7
	private String writer;
	private String regName;
	private Date regDate;
	private String udtName;
	private Date udtDate;
	private String surqTitle;
	public String getSurrSeq() {
		return surrSeq;
	}
	public void setSurrSeq(String surrSeq) {
		this.surrSeq = surrSeq;
	}
	public String getSurSeq() {
		return surSeq;
	}
	public void setSurSeq(String surSeq) {
		this.surSeq = surSeq;
	}
	public String getSurqSeq() {
		return surqSeq;
	}
	public void setSurqSeq(String surqSeq) {
		this.surqSeq = surqSeq;
	}
	public String getSuriSeq() {
		return suriSeq;
	}
	public void setSuriSeq(String suriSeq) {
		this.suriSeq = suriSeq;
	}
	public String getSuriNum() {
		return suriNum;
	}
	public void setSuriNum(String suriNum) {
		this.suriNum = suriNum;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getRegName() {
		return regName;
	}
	public void setRegName(String regName) {
		this.regName = regName;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public String getUdtName() {
		return udtName;
	}
	public void setUdtName(String udtName) {
		this.udtName = udtName;
	}
	public Date getUdtDate() {
		return udtDate;
	}
	public void setUdtDate(Date udtDate) {
		this.udtDate = udtDate;
	}
	public String getSurqTitle() {
		return surqTitle;
	}
	public void setSurqTitle(String surqTitle) {
		this.surqTitle = surqTitle;
	}
	@Override
	public String toString() {
		return "RSRVO [surrSeq=" + surrSeq + ", surSeq=" + surSeq + ", surqSeq=" + surqSeq + ", suriSeq=" + suriSeq
				+ ", suriNum=" + suriNum + ", description=" + description + ", writer=" + writer + ", regName="
				+ regName + ", regDate=" + regDate + ", udtName=" + udtName + ", udtDate=" + udtDate + ", surqTitle="
				+ surqTitle + "]";
	}
}
