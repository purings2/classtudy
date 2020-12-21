package com.edu.admin.domain;

import java.util.Date;

import lombok.Data;

@Data
public class AdminCommentDTO {
	
	private int 	commentNo;
	private String 	writer;
	private String 	content;
	private Date 	writeDate;
	private int 	boardNo;
	
	// Member Table에 있는 name 컬럼의 값
	// writer = memberId일 때의 값을 가져온다.
	private String 	writerName;
	
	// 각 게시판 이름 저장
	private String 	tableName;
	
	// 자유게시판에만 필요한 컬럼
	private int 	likes; //나머지게시판은 0 처리
	// fbcommentlikes Table에 있는 댓글 좋아요의 개수
	// 댓글 번호(commentNo)에 해당하는 값을 가져온다.
	private int 	commentLikesNum;
	
	public AdminCommentDTO() {}
	
}