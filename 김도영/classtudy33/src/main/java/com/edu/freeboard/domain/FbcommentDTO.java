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
	
	
	
	public FbcommentDTO() {}
	
}