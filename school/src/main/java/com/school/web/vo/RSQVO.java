package com.school.web.vo;

import java.util.Date;

public class RSQVO {
	
	private String surqSeq;
	private String surSeq;
	private String surqTitle;
	private String writer;
	private String regName;
	private Date regDate;
	private String udtName;
	private Date udtDate;
	public String getSurqSeq() {
		return surqSeq;
	}
	public void setSurqSeq(String surqSeq) {
		this.surqSeq = surqSeq;
	}
	public String getSurSeq() {
		return surSeq;
	}
	public void setSurSeq(String surSeq) {
		this.surSeq = surSeq;
	}
	public String getSurqTitle() {
		return surqTitle;
	}
	public void setSurqTitle(String surqTitle) {
		this.surqTitle = surqTitle;
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
	@Override
	public String toString() {
		return "RSQVO [surqSeq=" + surqSeq + ", surSeq=" + surSeq + ", surqTitle=" + surqTitle + ", writer=" + writer
				+ ", regName=" + regName + ", regDate=" + regDate + ", udtName=" + udtName + ", udtDate=" + udtDate
				+ "]";
	}
	
	

}
