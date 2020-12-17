package com.edu.member.domain;

import lombok.Data;

@Data
public class ResumeDTO {

	private int 	boardNo;
	private String	writer;
	private	String 	schoolName;
	private String	schoolLevel;
	private String	univMajor;
	
	private String	schoolGrade;
	private String	companyName;
	private String	companyPart;
	private String	position;
	private int		workPeriod;
	
	private int		salary;
	private String	license;
	private String	certificateAgency;
	private String	certificateDay;
	private String	content1;
	
	private String	content2;
	private String	content3;
	
	private String 	writerName;
	
	public ResumeDTO() {}
}


