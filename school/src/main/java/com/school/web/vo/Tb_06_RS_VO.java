package com.school.web.vo;

import java.util.Date;

public class Tb_06_RS_VO {
	
   private String surSeq;
   private String surTitle;
   private String queCnt;
   private String attachName;
   private String attachPath;
   private String surSatDate;
   private String surEndDate;
   private String hits;
   private String writer;
   private String regName;
   private Date regDate;
   private String udtName;
   private Date udtDate;
   private String surIsend;
   
	public String getSurSeq() {
		return surSeq;
	}
	public void setSurSeq(String surSeq) {
		this.surSeq = surSeq;
	}
	public String getSurTitle() {
		return surTitle;
	}
	public void setSurTitle(String surTitle) {
		this.surTitle = surTitle;
	}
	public String getQueCnt() {
		return queCnt;
	}
	public void setQueCnt(String queCnt) {
		this.queCnt = queCnt;
	}
	public String getAttachName() {
		return attachName;
	}
	public void setAttachName(String attachName) {
		this.attachName = attachName;
	}
	public String getAttachPath() {
		return attachPath;
	}
	public void setAttachPath(String attachPath) {
		this.attachPath = attachPath;
	}
	public String getSurSatDate() {
		return surSatDate;
	}
	public void setSurSatDate(String surSatDate) {
		this.surSatDate = surSatDate;
	}
	public String getSurEndDate() {
		return surEndDate;
	}
	public void setSurEndDate(String surEndDate) {
		this.surEndDate = surEndDate;
	}
	public String getHits() {
		return hits;
	}
	public void setHits(String hits) {
		this.hits = hits;
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
	public String getSurIsend() {
		return surIsend;
	}
	public void setSurIsend(String surIsend) {
		this.surIsend = surIsend;
	}
	
	@Override
	public String toString() {
		return "Tb_06_RS_VO [surSeq=" + surSeq + ", surTitle=" + surTitle + ", queCnt=" + queCnt + ", attachName="
				+ attachName + ", attachPath=" + attachPath + ", surSatDate=" + surSatDate + ", surEndDate="
				+ surEndDate + ", hits=" + hits + ", writer=" + writer + ", regName=" + regName + ", regDate=" + regDate
				+ ", udtName=" + udtName + ", udtDate=" + udtDate + ", surIsend=" + surIsend + "]";
	}

}
