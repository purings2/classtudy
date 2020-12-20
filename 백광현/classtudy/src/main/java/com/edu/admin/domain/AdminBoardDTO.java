package com.edu.admin.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AdminBoardDTO {
	
	// 각 게시판에 공통되는 컬럼만 사용
	private int 	boardNo;
	private String 	writer;
	private String 	title;
	private String 	content;
	private int 	views;
	private int 	likes;
	private Date 	writeDate;
	
	// Member Table에 있는 이름의 값
	// writer = memberId일 때의 값을 가져온다.
	private String 	writerName;
	// 각 게시판 Comment Table에 있는 댓글의 개수
	// 게시글 번호(boardNo)에 해당하는 값을 가져온다.
	private int 	commentNum;
	
	// 각 게시판 이름 저장
	private String 	tableName;
	// 각 게시판별 특수정보 저장: 말머리 혹은 그룹이름
	private String 	specialInfo;
	// 자유게시판과 그룹게시판에만 필요한 컬럼
	private String 	tags; //클래스게시판은 공백 처리
	
	public AdminBoardDTO() {}
	
}