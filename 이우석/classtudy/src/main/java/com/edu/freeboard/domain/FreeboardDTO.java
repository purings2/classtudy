package com.edu.freeboard.domain;

import java.util.Date;

import lombok.Data;


@Data
public class FreeboardDTO {
	private	int		boardNo;	//게시글번호
	private	String	writer;		//작성자
	private	String	title;		//글제목
	private String	content;	//글내용
	private	String	category;	//말머리
	private	int		views;		//조회수
	private	int		likes;		//좋아요
	private	Date	writeDate;	//작성일자
	private	String	tags;		//태그
	
	// Member Table에 있는 name 컬럼의 값
	// writer = memberId일 때의 값을 가져온다.
	private String 	writerName;
	
	// Cbcomment Table에 있는 댓글의 개수
	// 게시글 번호(boardNo)에 해당하는 값을 가져온다.
	private int 	commentNum;
	
	// main/list.jsp 에 쓰일 조회 컬럼
	private String	tblName;		// 게시판이름 (groupsearch, freeboard)
	public FreeboardDTO() {}
	

}
