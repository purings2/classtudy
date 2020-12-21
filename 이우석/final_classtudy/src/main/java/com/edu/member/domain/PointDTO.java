package com.edu.member.domain;

import java.util.Date;

import lombok.Data;

@Data
public class PointDTO {
	
	private int 	pointNo;
	private String 	member;
	private String 	content;
	private int 	changeVal;
	private Date 	accrDate;
	
	public PointDTO() {}
	
}