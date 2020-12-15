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
	
	// Lecture Table에 있는 lectureName 컬럼의 값
	// lectureNo가 일치할 때의 값을 가져온다.
	private String 	lectureName;
	
	// Grouplist Table에 있는 groupName 컬럼의 값
	// groupNo가 일치할 때의 값을 가져온다.
	private String 	groupName1;
	private String 	groupName2;
	private String 	groupName3;
	
	public MemberDTO() {}
	
}