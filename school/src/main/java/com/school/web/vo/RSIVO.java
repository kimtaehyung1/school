package com.school.web.vo;

import java.util.Date;

public class RSIVO {
	private String suriSeq;
	private String surTitle;
	private String queCnt;
	private String surSatDate;
	private String surEndDate;
	
	private String keyword;
	private String search_option;
	private int rnum;
	private int rank;
	private int ref;
	private int step;
	private int depth;
	

	private String suriTitle1;
	private String suriTitle2;
	private String suriTitle3;
	private String suriTitle4;
	private String suriTitle5;
	private String suriTitle6;
	private String suriTitle7;

	private String writer;
	private String regName;
	private Date regDate;
	private String udtName;
	private Date udtDate;

	private String suriNum1;
	private String suriNum2;
	private String suriNum3;
	private String suriNum4;
	private String suriNum5;
	private String surIsend;
	
	private RSRVO rsrvo;
	
	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getSearch_option() {
		return search_option;
	}

	public void setSearch_option(String search_option) {
		this.search_option = search_option;
	}

	public int getRnum() {
		return rnum;
	}

	public void setRnum(int rnum) {
		this.rnum = rnum;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
	}

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public int getDepth() {
		return depth;
	}

	public void setDepth(int depth) {
		this.depth = depth;
	}

	public String getSuriSeq() {
		return suriSeq;
	}

	public void setSuriSeq(String suriSeq) {
		this.suriSeq = suriSeq;
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

	public String getSuriTitle1() {
		return suriTitle1;
	}

	public void setSuriTitle1(String suriTitle1) {
		this.suriTitle1 = suriTitle1;
	}

	public String getSuriTitle2() {
		return suriTitle2;
	}

	public void setSuriTitle2(String suriTitle2) {
		this.suriTitle2 = suriTitle2;
	}

	public String getSuriTitle3() {
		return suriTitle3;
	}

	public void setSuriTitle3(String suriTitle3) {
		this.suriTitle3 = suriTitle3;
	}

	public String getSuriTitle4() {
		return suriTitle4;
	}

	public void setSuriTitle4(String suriTitle4) {
		this.suriTitle4 = suriTitle4;
	}

	public String getSuriTitle5() {
		return suriTitle5;
	}

	public void setSuriTitle5(String suriTitle5) {
		this.suriTitle5 = suriTitle5;
	}

	public String getSuriTitle6() {
		return suriTitle6;
	}

	public void setSuriTitle6(String suriTitle6) {
		this.suriTitle6 = suriTitle6;
	}

	public String getSuriTitle7() {
		return suriTitle7;
	}

	public void setSuriTitle7(String suriTitle7) {
		this.suriTitle7 = suriTitle7;
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

	public String getSuriNum1() {
		return suriNum1;
	}

	public void setSuriNum1(String suriNum1) {
		this.suriNum1 = suriNum1;
	}

	public String getSuriNum2() {
		return suriNum2;
	}

	public void setSuriNum2(String suriNum2) {
		this.suriNum2 = suriNum2;
	}

	public String getSuriNum3() {
		return suriNum3;
	}

	public void setSuriNum3(String suriNum3) {
		this.suriNum3 = suriNum3;
	}

	public String getSuriNum4() {
		return suriNum4;
	}

	public void setSuriNum4(String suriNum4) {
		this.suriNum4 = suriNum4;
	}

	public String getSuriNum5() {
		return suriNum5;
	}

	public void setSuriNum5(String suriNum5) {
		this.suriNum5 = suriNum5;
	}

	public String getSurIsend() {
		return surIsend;
	}

	public void setSurIsend(String surIsend) {
		this.surIsend = surIsend;
	}

	public RSRVO getRsrvo() {
		return rsrvo;
	}

	public void setRsrvo(RSRVO rsrvo) {
		this.rsrvo = rsrvo;
	}

	@Override
	public String toString() {
		return "RSIVO [suriSeq=" + suriSeq + ", surTitle=" + surTitle + ", queCnt=" + queCnt + ", surSatDate="
				+ surSatDate + ", surEndDate=" + surEndDate + ", suriTitle1=" + suriTitle1 + ", suriTitle2="
				+ suriTitle2 + ", suriTitle3=" + suriTitle3 + ", suriTitle4=" + suriTitle4 + ", suriTitle5="
				+ suriTitle5 + ", suriTitle6=" + suriTitle6 + ", suriTitle7=" + suriTitle7 + ", writer=" + writer
				+ ", regName=" + regName + ", regDate=" + regDate + ", udtName=" + udtName + ", udtDate=" + udtDate
				+ ", suriNum1=" + suriNum1 + ", suriNum2=" + suriNum2 + ", suriNum3=" + suriNum3 + ", suriNum4="
				+ suriNum4 + ", suriNum5=" + suriNum5 + ", surIsend=" + surIsend + ", rsrvo=" + rsrvo + "]";
	}

	
}
