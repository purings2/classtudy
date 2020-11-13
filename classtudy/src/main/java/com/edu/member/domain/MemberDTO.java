package com.edu.member.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberDTO {

	private	String userid;
	private	String passwd;
	private String passwdCheck;
	private	String name;
	private String dateOfBirth;
	private String gender;
	private String tel;
	private String zipcode;
	private String address;
	private String addressDetail;
	private String email;
	private Date   date;
			
	

	public String getUserid() {
		return userid;
	}



	public void setUserid(String userid) {
		this.userid = userid;
	}



	public String getPasswd() {
		return passwd;
	}



	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}



	public String getPasswdCheck() {
		return passwdCheck;
	}



	public void setPasswdCheck(String passwdCheck) {
		this.passwdCheck = passwdCheck;
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



	public Date getDate() {
		return date;
	}



	public void setDate(Date date) {
		this.date = date;
	}



	public MemberDTO() {}
}
