package com.edu.groupboard.domain;

import java.util.Date;

import lombok.Data;

@Data
public class GsCommentDTO {
	
	private int commentNo; //댓글 번호
	private int boardNo; //게시판 번호
	private String writer; //댓글 작성자
	private String content; //댓글내용
	private Date writeDate; //댓글 작성 시간
	
	public GsCommentDTO() {}
}
