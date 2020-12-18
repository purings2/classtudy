package com.edu.admin.domain;



import lombok.Data;

@Data
public class AdminBoardDTO {


	private	String boardNo;
	private	String writer;
	private	String title;
	private	String content;
	private String category;
	private int views;
	private int likes;
	private String writeDate;
	private String tags;



	public AdminBoardDTO() {}
}
