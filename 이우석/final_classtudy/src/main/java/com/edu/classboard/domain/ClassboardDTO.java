package com.edu.classboard.domain;

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
	// writer = memberId일 때의 값을 가져온다.
	private String 	writerName;
	
	// Cbcomment Table에 있는 댓글의 개수
	// 게시글 번호(boardNo)에 해당하는 값을 가져온다.
	private int 	commentNum;
	
	public ClassboardDTO() {}
	
}