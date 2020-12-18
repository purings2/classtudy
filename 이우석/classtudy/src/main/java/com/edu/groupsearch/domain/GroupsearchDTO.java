package com.edu.groupsearch.domain;

import java.util.Date;

import lombok.Data;

@Data
public class GroupsearchDTO {

	private	int 	boardNo;
	private	String 	writer;
	private	String 	title;
	private String 	content; 
	private int 	views;
	private int 	likes;
	private Date	writeDate;
	private int 	groupNo;
	private String 	groupName;
	private String 	tags;
	private Date	startStudy;
	public GroupsearchDTO() {}	
	
}