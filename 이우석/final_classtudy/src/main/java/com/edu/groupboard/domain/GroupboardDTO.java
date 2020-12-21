package com.edu.groupboard.domain;

import java.util.Date;

import lombok.Data;

@Data
public class GroupboardDTO {
	private int 	boardNo; 	//게시글번호
	private String 	writer; 	//작성자
	private String 	title; 		//글제목
	private String 	content; 	//글내용
	private int 	views; 		//조회수
	private int 	likes; 		//좋아요
	private Date 	writeDate; 	//작성일자
	private String 	tags; 		//태그
	private int 	groupNo; 	//그룹번호
	
	// Member Table에 있는 이름의 값
	// writer = memberId일 때의 값을 가져온다.
	private String 	writerName;
	
	// Gbcomment Table에 있는 댓글의 개수
	// 게시글 번호(boardNo)에 해당하는 값을 가져온다.
	private int 	commentNum;
	
	// Grouplist Table에 있는 그룹이름 값
	// 그룹번호(groupNo)에 해당하는 값을 가져온다.
	private String 	groupName;
	
	public GroupboardDTO() {}
}