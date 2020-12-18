package com.edu.freeboard.domain;

import java.util.Date;

import lombok.Data;

@Data
public class FbcommentDTO {
	
	private int 	commentNo;
	private String 	writer;
	private String 	content;
	private int 	likes;
	private Date 	writeDate;
	private int 	boardNo;
	
	// Member Table에 있는 name 컬럼의 값
	// writer = memberId일 때의 값을 가져온다.
	private String 	writerName;
	
	// fbcommentlikes Table에 있는 댓글 좋아요의 개수
	// 댓글 번호(commentNo)에 해당하는 값을 가져온다.
	private int 	commentLikesNum;
	
	public FbcommentDTO() {}
	
}