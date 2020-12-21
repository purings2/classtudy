package com.edu.member.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ResumeDTO {

	private int 	resumeNo;
	private String	writer;
	private	String 	schoolName;			// 학교이름
	private String	schoolLevel;		// 학력구분
	private String	univMajor;			// 전공명
	
	private String	schoolGrade;		// 학점
	private String	companyName;		// 회사이름
	private String	companyPart;		// 부서명
	private String	position;			// 직급
	private int		workPeriod;			// 근무기간
	
	private int		salary;				// 연봉
	private String	license;			// 자격증
	private String	certificateAgency;	// 발행기관
	private String	certificateDay;		// 취득일
	private String	content1;			// 자기소개서 내용1
	
	private String	content2;			// 자기소개서 내용2
	private String	content3;			// 자기소개서 내용3
	private String	title;				// 이력서 이름
	private Date	writeDate;			// 작성일
	
	private String 	writerName;
	
	public ResumeDTO() {}
}


