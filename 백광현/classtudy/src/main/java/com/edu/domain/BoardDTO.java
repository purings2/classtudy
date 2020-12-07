package com.edu.domain;

import java.util.Date;

import lombok.Data;

@Data
public class BoardDTO {

	private	int 	boardNo;
	private	String 	writer;
	private	String 	title;
	private String 	content; 
	private int 	views;
	private int 	likes;
	private Date	writeDate;
	private int 	groupNo;
	private int 	tags;
	private Date	startStudy;
	

	public BoardDTO() {}	
	
}