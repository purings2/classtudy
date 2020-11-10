package com.edu.board.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CommentDTO {
	
	private		int			cno;		//댓글 일련번호
	private		int			bno;		//댓글이 달릴 게시글의 일련번호
	private		String		content;	//댓글의 내용
	private		String		writer;		//댓글 작성자
	private		Date		reg_date;	//댓글 작성 일시
	
}
