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
	
	public MemberDTO() {
		super();
	}	
	
}
