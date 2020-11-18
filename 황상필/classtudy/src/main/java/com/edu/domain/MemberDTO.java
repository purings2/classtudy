package com.edu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberDTO {

	private	String 	memberId;
	private	String 	passwd;
	private	String 	name;
	private String 	dateOfBirth;
	private String 	gender;
	private String 	tel;
	private String 	zipcode;
	private String 	address;
	private String 	addressDetail;
	private String 	email;
	private Date 	regDate;
	private int 	lectureId;
	private int 	grade;
	private int 	point;
	private int 	reward;
	private int 	group1;
	private int 	group2;
	private int 	group3;
	
	
	public String getMemberId() {
		return memberId;
	}


	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}


	public String getPasswd() {
		return passwd;
	}


	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getDateOfBirth() {
		return dateOfBirth;
	}


	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public String getZipcode() {
		return zipcode;
	}


	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getAddressDetail() {
		return addressDetail;
	}


	public void setAddressDetail(String addressDetail) {
		this.addressDetail = addressDetail;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public Date getRegDate() {
		return regDate;
	}


	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}


	public int getLectureId() {
		return lectureId;
	}


	public void setLectureId(int lectureId) {
		this.lectureId = lectureId;
	}


	public int getGrade() {
		return grade;
	}


	public void setGrade(int grade) {
		this.grade = grade;
	}


	public int getPoint() {
		return point;
	}


	public void setPoint(int point) {
		this.point = point;
	}


	public int getReward() {
		return reward;
	}


	public void setReward(int reward) {
		this.reward = reward;
	}


	public int getGroup1() {
		return group1;
	}


	public void setGroup1(int group1) {
		this.group1 = group1;
	}


	public int getGroup2() {
		return group2;
	}


	public void setGroup2(int group2) {
		this.group2 = group2;
	}


	public int getGroup3() {
		return group3;
	}


	public void setGroup3(int group3) {
		this.group3 = group3;
	}


	public MemberDTO() {}	
	
}