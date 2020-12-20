package com.edu.admin.domain;

import lombok.Data;

@Data
public class RegisterlistDTO {
	
	private int 	listNo;
	private String 	member;
	private int 	lectureNo;
	private boolean checked;
	
	// Lecture Table에 있는 lectureName 컬럼의 값
	// lectureNo가 일치할 때의 값을 가져온다.
	private String 	lectureName;
	
	public RegisterlistDTO() {}
	
}