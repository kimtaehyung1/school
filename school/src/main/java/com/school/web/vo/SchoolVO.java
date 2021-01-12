package com.school.web.vo;

import java.util.Date;

public class SchoolVO {
	private String memberSeq;
	private String memberName;
	private String schoolName;
	private String position;
	private String userId;
	private String senEmail;
	private String adminYn;
	private String adminPw;
	private String approveYn;
	private String schoolType;
	private Date regDate;
	public String getMemberSeq() {
		return memberSeq;
	}
	public void setMemberSeq(String memberSeq) {
		this.memberSeq = memberSeq;
	}
	public String getMemberName() {
		return memberName;
	}
	public void setMemberName(String memberName) {
		this.memberName = memberName;
	}
	public String getSchoolName() {
		return schoolName;
	}
	public void setSchoolName(String schoolName) {
		this.schoolName = schoolName;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getSenEmail() {
		return senEmail;
	}
	public void setSenEmail(String senEmail) {
		this.senEmail = senEmail;
	}
	public String getAdminYn() {
		return adminYn;
	}
	public void setAdminYn(String adminYn) {
		this.adminYn = adminYn;
	}
	public String getAdminPw() {
		return adminPw;
	}
	public void setAdminPw(String adminPw) {
		this.adminPw = adminPw;
	}
	public String getApproveYn() {
		return approveYn;
	}
	public void setApproveYn(String approveYn) {
		this.approveYn = approveYn;
	}
	public String getSchoolType() {
		return schoolType;
	}
	public void setSchoolType(String schoolType) {
		this.schoolType = schoolType;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	@Override
	public String toString() {
		return "SchoolVO [memberSeq=" + memberSeq + ", memberName=" + memberName + ", schoolName=" + schoolName
				+ ", position=" + position + ", userId=" + userId + ", senEmail=" + senEmail + ", adminYn=" + adminYn
				+ ", adminPw=" + adminPw + ", approveYn=" + approveYn + ", schoolType=" + schoolType + ", regDate="
				+ regDate + ", getMemberSeq()=" + getMemberSeq() + ", getMemberName()=" + getMemberName()
				+ ", getSchoolName()=" + getSchoolName() + ", getPosition()=" + getPosition() + ", getUserId()="
				+ getUserId() + ", getSenEmail()=" + getSenEmail() + ", getAdminYn()=" + getAdminYn()
				+ ", getAdminPw()=" + getAdminPw() + ", getApproveYn()=" + getApproveYn() + ", getSchoolType()="
				+ getSchoolType() + ", getRegDate()=" + getRegDate() + ", getClass()=" + getClass() + ", hashCode()="
				+ hashCode() + ", toString()=" + super.toString() + "]";
	}

}
