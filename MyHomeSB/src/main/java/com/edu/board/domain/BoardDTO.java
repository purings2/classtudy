package com.edu.board.domain;

import java.util.Date;

import lombok.Data;

//import lombok.Data;

@Data
public class BoardDTO {

	private		int		bno;		//게시글 일련번호
	private		String	subject;	//게시글 제목
	private		String	content;	//게시글 내용
	private		String	writer;		//게시글 작성자
	private		Date	reg_date;	//게시글 작성일시
	
	
	
}
