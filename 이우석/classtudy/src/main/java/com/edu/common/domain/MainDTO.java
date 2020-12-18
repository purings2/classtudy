package com.edu.common.domain;

import lombok.Data;

@Data
public class MainDTO {

	private	String boardNo;
	private	String writer;
	private	String title;
	private	String content;
	private int views;
	private String writeDate;
	private int likes;

	

	public MainDTO() {}
}
