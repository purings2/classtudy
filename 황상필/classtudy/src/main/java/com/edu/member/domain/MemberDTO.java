package com.edu.member.domain;

import java.util.Date;

import lombok.Data;

@Data
public class MemberDTO {

	private String 	memberId;
	private String 	passwd;
	private String 	name;
	private String 	dateOfBirth;
	private String 	gender;
	private String 	tel;
	private String 	zipcode;
	private String 	address;
	private String 	addressDetail;
	private String 	email;
	private Date 	regDate;
	private int 	lectureNo;
	private int 	grade;
	private int 	point;
	private int 	reward;
	private int 	group1;
	private int 	group2;
	private int 	group3;
	
	public MemberDTO() {}	
	
}