package com.edu.domain;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;
import lombok.EqualsAndHashCode;


@Data
public class FreeboardDTO {
	@Id
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
	
	public FreeboardDTO() {}
}
