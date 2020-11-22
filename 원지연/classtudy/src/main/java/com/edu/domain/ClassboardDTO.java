package com.edu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ClassboardDTO {
	
	private int 	boardNo;
	private String 	writer;
	private String 	title;
	private String 	content;
	private String 	category; // TIL, 질문, 클래스
	private int 	views;
	private int 	likes;
	private Date 	writeDate;
	private int 	lectureNo;
	
	// Member Table에 있는 name 컬럼의 값
	// writer = memberId일 때의 값을 JOIN으로 가져옴
	private String 	writerName;
	
	public ClassboardDTO() {}
	
}